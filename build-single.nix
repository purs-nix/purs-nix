{ deps
, lib
, pkgs
, purescript ? pkgs.purescript
, src
}:
let
  log = a: builtins.trace a a;
  logShow = a: builtins.trace (toString a) a;
  logNames = a: builtins.trace (toString (builtins.map (b: b.name) a)) a;

  inherit (pkgs.stdenv) mkDerivation;

  mergeCache = with pkgs;
    let
      js = writeText "merge-cache.js"
        ''
        const fs = require(`fs`);

        const [c1Path, c2Path, outPath] = process.argv.slice(2);

        c1 = JSON.parse(fs.readFileSync(c1Path));
        c2 = JSON.parse(fs.readFileSync(c2Path));

        fs.writeFileSync(outPath, JSON.stringify({...c1, ...c2}));
        '';
    in
      mkDerivation
        { name = "merge-cache";
          buildInputs = [ makeWrapper nodejs ];
          exe = writeShellScript "exe" "node ${js} $1 $2 $3";
          dontUnpack = true;

          installPhase = ''
            mkdir -p $out/bin
            makeWrapper $exe $out/bin/merge-cache --set PATH $PATH
          '';
        };
in
  { name
  , localDeps ? []
  }:
    let
      depsSrcs =
        toString
          (builtins.map
             (a: ''"${a}/src/**/*.purs"'')
             (builtins.attrValues deps)
          );

      builtDeps =
        mkDerivation
          { name = "built-deps";
            dontUnpack = true;
            nativeBuildInputs = [ purescript ];
            buildPhase ="purs compile ${depsSrcs}";
            installPhase = "mv output $out";
          };

      srcs =
        let
          paths =
            builtins.filter
              (a: pathFilter (toString a))
              (lib.filesystem.listFilesRecursive src);

          pathSuffixPrefix = (builtins.replaceStrings [ "." ] [ "/" ] name) + ".";

          subSrc =
            let
              match =
                builtins.match
                  "(.*)/[^/]+$"
                  pathSuffixPrefix;
            in
              if match == null then
                src
              else
                src + ("/" + builtins.head match);

          pathFilter = path:
            let
              js = pathSuffixPrefix + "js";
              purs = pathSuffixPrefix + "purs";
            in
              lib.hasSuffix js path || lib.hasSuffix purs path;
        in
          builtins.filterSource
            (path: _: pathFilter path)
            subSrc;

      output =
        let
          transLocalDeps =
            let
              go = lds:
                builtins.foldl'
                  (acc: ld:
                    acc ++ go ld.localDeps
                  )
                  []
                  lds
                  ++ lds;
            in
              lib.unique (go localDeps);
        in
          mkDerivation
            { inherit name srcs;
              dontUnpack = true;
              nativeBuildInputs =
                [ purescript mergeCache ]
                  ++ builtins.map
                       (a: a.bin)
                       transLocalDeps;

              buildPhase =
                let
                  augmentations =
                    toString
                      (builtins.map
                         (a: "${a.name} output;")
                         transLocalDeps
                      );

                  localDepsSrcs =
                    toString
                      (builtins.map
                        (a: ''"${a.srcs}/**/*.purs"'')
                        transLocalDeps
                      );
                in
                  ''
                  cp --no-preserve=mode --preserve=timestamps -r ${builtDeps} output
                  ${augmentations}
                  purs compile "$srcs/**/*.purs" ${localDepsSrcs} ${depsSrcs}
                  '';

              installPhase = "mv output $out";
            };
    in
      { inherit localDeps name output srcs;
        bin =
          mkDerivation
            { inherit name;
              dontUnpack = true;
              buildInputs = [ pkgs.makeWrapper mergeCache ];

              exe = pkgs.writeShellScript "exe"
                ''
                cp --no-preserve=mode --preserve=timestamps -r ${output}/${name} $1/${name}
                merge-cache ${output}/cache-db.json $1/cache-db.json $1/cache-db.json
                '';

              installPhase =
                ''
                mkdir -p $out/bin
                makeWrapper $exe $out/bin/${name} --set PATH $PATH
                '';
            };
      }
