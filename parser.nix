with builtins;
{ l, parsec }:
let
  p = parsec;

  r = rec {
    csl = re: "(${re}?(${ws}*,${ws}*${re})*)";

    ws = ''
      ([ 
      ]|--[^
      ]*
      |\{-([^-]|-[^}])*-})'';
    module-name = "([^ ${"\r\n"}()=:{},-]+)";
    fun-type-name = "([^ ${"\r\n"}()=:{},.-]+)";
    op-name = "(\\([^ ${"\n"})]*\\))";
    fun-type-export = "(${fun-type-name}(${ws}*\\(${ws}*(${csl fun-type-name}|\\.\\.)${ws}*\\))?)";
    type-op-export = "(type${ws}*${op-name})";
    class-export = "(class${ws}+${fun-type-name})";
    module-export = "(module${ws}+${module-name})";
    single-export = "(${fun-type-export}|${op-name}|${class-export}|${module-export}|${type-op-export})";
    exports = "((hiding)?${ws}*\\(${ws}*${csl single-export}${ws}*\\))";
    import-end = "((${exports})?${ws}*(as${ws}+${module-name})?)";
  };

  parse-module =
    str:
    let
      toss = re: p.skipThen (p.matching re);
      keep = re: p.bind (p.fmap head (p.matching re));

      import' = toss "import${r.ws}+" (
        (keep r.module-name) (
          name: toss "${r.ws}*${r.import-end}${r.ws}*" (p.pure name)
        )
      );

      result =
        p.runParser
          (toss "${r.ws}*module${r.ws}+" (
            keep "${r.module-name}" (
              name:
              toss "${r.ws}*${r.exports}?${r.ws}*where${r.ws}*" (
                p.bind (p.many import') (imports: p.pure { inherit imports name; })
              )
            )
          ))
          # `builtins.match` will stack overflow if strings are too large
          (
            substring 0 50000 str
          );
    in
    if result.type == "success" then
      result.value
    else
      throw (l.traceSeq result "Failed to parse module.");
in
dirs:
foldl'
  (
    acc:
    { path, parser-stuff }:
    acc
    // {
      ${parser-stuff.name} = {
        depends = filter (a: !l.hasPrefix "Prim" a) parser-stuff.imports;
        inherit path;
      };
    }
  )
  { }
  (
    map
      (f: {
        path = f;
        parser-stuff = parse-module (readFile f);
      })
      (
        l.concatMap
          (dir: filter (l.hasSuffix ".purs") (l.filesystem.listFilesRecursive dir))
          dirs
      )
  )
