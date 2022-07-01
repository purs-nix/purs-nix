with builtins;
deps:
  let
    l = p.lib; p = pkgs; u = import ./utils.nix p;
    inherit (deps) builders easy-ps pkgs purescript-language-server;
    purescript' = easy-ps.purescript;
    ps-package-stuff = import ./build-pkgs.nix { inherit pkgs; utils = u; };
  in
  { inherit (ps-package-stuff) build ps-pkgs ps-pkgs-ns;
    inherit (pkgs) esbuild;
    inherit (pkgs.lib) licenses;
    purescript = purescript';
    inherit purescript-language-server;

    purs =
      { srcs
        ? throw
            ''
            In order to build derivations from your PureScript code, you must supply a 'srcs' argument to 'purs'

            See:
            https://github.com/ursi/purs-nix/blob/master/docs/purs-nix.md#purs
            ''
      , nodejs ? pkgs.nodejs
      , purescript ? purescript'
      , foreign ? null
      , ...
      }@args:
      let
        inherit (p.stdenv) mkDerivation;

        create-closure = deps:
          let
            f = direct:
              foldl'
                (acc: dep:
                   let name = dep.purs-nix-info.name; in
                   if l.hasInfix "." name then
                     let path = l.splitString "." name; in
                     if direct || !l.hasAttrByPath path acc.ps-pkgs-ns then
                       let
                         namespace = head path;
                         name' = head (tail path);
                       in
                       f false
                         (acc
                          // { ps-pkgs-ns =
                                 acc.ps-pkgs-ns
                                 // { ${namespace} =
                                        acc.ps-pkgs-ns.${namespace} or {}
                                        // { ${name'} = dep; };
                                    };
                             }
                         )
                         dep.purs-nix-info.dependencies
                     else
                       acc
                   else if direct || !acc.ps-pkgs?${name} then
                     f false
                       (acc
                        // { ps-pkgs =
                               acc.ps-pkgs
                               // { ${name} = dep; };
                           }
                       )
                       dep.purs-nix-info.dependencies
                   else
                     acc
                );

            package-sets =
              f true
                { ps-pkgs = {};  ps-pkgs-ns = {}; }
                (sort (a: b: a.purs-nix-info.name < b.purs-nix-info.name) deps);
          in
          attrValues package-sets.ps-pkgs
          ++ concatMap attrValues (attrValues package-sets.ps-pkgs-ns);

        dependencies =
          if args?dependencies
          then create-closure args.dependencies
          else [];

        all-dependencies =
          if args?test-dependencies
          then create-closure (dependencies ++ args.test-dependencies)
          else dependencies;

        make-dep-globs = deps:
          toString (map (a: ''"${a}/**/*.purs"'') deps);

        dep-globs = make-dep-globs dependencies;
        all-dep-globs = make-dep-globs all-dependencies;

        make-srcs-str = a:
          concatStringsSep " " (map (src: ''"${src}/**/*.purs"'') a);

        local-graph =
          let
            make-graph = extra:
              if extra + dep-globs != "" then
                l.pipe "${purescript}/bin/purs graph ${extra} ${dep-globs} > $out"
                  [ (p.runCommand "purescript-dependency-graph" {})
                    readFile
                    # is this safe?
                    unsafeDiscardStringContext
                    fromJSON
                  ]
              else
                {};

            deps-graph = make-graph "";
            graph = make-graph (make-srcs-str srcs);

            partial =
              l.filterAttrs
                (n: _: !deps-graph?${n})
                graph;
          in
          mapAttrs
            (_: v:
               { depends =
                   filter
                     (v: partial?${v})
                     v.depends;

                 inherit (v) path;
               }
            )
            partial;

        foreign-stuff = deps: prefix:
          let
            foreign-stuff' =
              let
                split-foreign = init: foreign':
                  l.foldl
                    (acc': { name, value }:
                       if value?src then
                         l.recursiveUpdate
                           acc'
                           { src.${name} = value; }
                       else if value?node_modules then
                         l.recursiveUpdate
                           acc'
                           { node.${name} = value; }
                       else
                         acc'
                    )
                    init
                    (l.mapAttrsToList l.nameValuePair foreign');
              in
              foldl'
                (acc: dep:
                   let info = dep.purs-nix-info; in
                   if info?foreign then
                       split-foreign acc info.foreign
                   else
                     acc
                )
                (split-foreign
                   { src = {}; node = {}; }
                   (if isNull foreign then {} else foreign)
                )
                deps;

            foreign-derivation =
              l.concatStringsSep "\n"
                (l.mapAttrsToList
                   (module: { src, paths }:
                      let
                        purs-nix-js =
                          l.pipe paths
                            [ (l.mapAttrsToList
                                 (n: v:
                                    ''
                                    export * as ${n} from "${src}${toString v}";
                                    ''
                                 )
                              )

                              (l.concatStringsSep "\n")
                              (p.writeText "purs-nix.js")
                            ];

                        module-path = "${prefix}/${module}";
                      in
                      ''
                      if [[ -e ${module-path} ]]; then
                        cp ${purs-nix-js} ${module-path}/purs-nix.js
                      fi
                      ''

                   )
                   foreign-stuff'.src
                );

            foreign-node =
              l.concatStringsSep "\n"
                (l.mapAttrsToList
                   (module: { node_modules }:
                      let module-path = "${prefix}/${module}"; in
                      ''
                      if [[ -e ${module-path} ]]; then
                        ln -fsT ${node_modules} ${module-path}/node_modules
                      fi
                      ''
                   )
                   foreign-stuff'.node
                );
          in
          ''
          ${foreign-derivation}
          ${foreign-node}
          '';

        build-single = name: local-deps:
          let
            built-deps = args:
              mkDerivation
                { name = "built-deps";
                  phases = [ "buildPhase" "installPhase" ];

                  buildPhase =
                    if dep-globs != ""
                    then u.compile purescript (args // { globs = dep-globs; })
                    else "mkdir output";

                  installPhase = "mv output $out";
                };

            src =
              let
                graph-path = local-graph.${name}.path;

                purs-path =
                  let matches = match "/nix/store/[^/]+/(.+)$" graph-path; in
                  if matches != null then
                    head matches
                  else
                    throw "${name}: there should be a match here!";

                js-path = replaceStrings [ ".purs" ] [ ".js" ] purs-path;

                subsrc =
                  let
                    src' =
                      l.findFirst
                        (path: l.hasPrefix "${path}" graph-path)
                        (throw "should always find a match")
                        srcs;

                    relative-path = u.subtract-string graph-path "${src'}";
                    matches = match "(.+)/[^/]+$" relative-path;
                  in
                  if matches == null then src'
                  else src' + head matches;
              in
              filterSource
                (path: _: l.hasSuffix purs-path path || l.hasSuffix js-path path)
                subsrc;

            output = args:
              let
                trans-deps =
                  let
                    go = ds:
                      foldl' (acc: d: acc ++ go d.local-deps) [] ds
                      ++ ds;
                  in
                  l.unique (go local-deps);
              in
              mkDerivation
                { name = "${name}-compiled";
                  phases = [ "buildPhase" "installPhase" ];

                  buildPhase =
                    let
                      augmentations =
                        toString
                          (map
                             (a: "${a.bin args} output;")
                             trans-deps
                          );

                      local-dep-globs =
                        toString
                          (map
                            (a: ''"${a.src}/**/*.purs"'')
                            trans-deps
                          );
                    in
                    ''
                    cp --no-preserve=mode --preserve=timestamps -r ${built-deps args} output
                    ${augmentations}

                    ${u.compile
                        purescript
                        (args
                         // { globs = ''"${src}/**/*.purs" ${local-dep-globs} ${dep-globs}'';
                              output = "output";
                            }
                        )
                    }
                    '';

                  installPhase =
                    ''
                    mv output $out
                    cd $out
                    ${foreign-stuff dependencies "."}
                    '';
                };

            bundle = { esbuild ? {}, main ? true }:
              p.runCommand "${name}-bundle" {}
                (u.bundle
                   { entry-point = output {} + "/${name}/index.js";
                     esbuild = esbuild // { outfile = "$out"; };
                     inherit main;
                   }
                );

            app =
              { name
              , version ? null
              , command ? name
              , auto-flags ? false
              }:
              let
                command-shell = l.escapeShellArg command;
                command-drv = l.strings.sanitizeDerivationName command;

                exe =
                  let
                    bundle' = bundle { esbuild.platform = "node"; };

                    partial =
                      p.runCommand "${command-drv}-partial" {}
                        ''
                        mkdir $out; cd $out
                        echo $'#! ${nodejs}/bin/node' > ${command-shell}
                        cat ${bundle'} >> ${command-shell}
                        chmod +x ${command-shell}
                        '';
                  in
                  if auto-flags then
                    pkgs.writeShellScript "${command-drv}-auto-flags"
                      ''
                      if [[ $1 = --version ]]; then
                        echo ${if version == null then "none" else version}
                      else
                        ${partial}/${command-shell}
                      fi
                      ''
                  else
                    "${partial}/${command-shell}";
              in
              mkDerivation
                ({ phases = [ "installPhase" ];

                   buildInputs = [ p.makeWrapper nodejs ];

                   installPhase =
                     # The makeWrapper setup allows you to add more runtime dependencies to your executable by overrideing buildInputs
                     ''
                     mkdir -p $out/bin
                     makeWrapper ${exe} $out/bin/${command-shell} --set PATH $PATH
                     '';
                 }
                 // u.make-name name version
                );
          in
          { inherit bundle local-deps app name output src;

            bin = args:
              let
                merge-cache =
                  builders.write-js-script
                    "merge-cache"
                    ''
                    const fs = require(`fs`);

                    const [c1Path, c2Path, outPath] = process.argv.slice(2);

                    c1 = JSON.parse(fs.readFileSync(c1Path));
                    c2 = JSON.parse(fs.readFileSync(c2Path));

                    fs.writeFileSync(outPath, JSON.stringify({...c1, ...c2}));
                    '';

                output' = output args;
              in
              p.writeShellScript name
                ''
                cp --no-preserve=mode --preserve=timestamps -r ${output'}/${name} $1/${name}
                ${merge-cache} ${output'}/cache-db.json $1/cache-db.json $1/cache-db.json
                '';
          };

        builds =
          mapAttrs
            (name: v:
               build-single
                 name
                 (map (v: builds.${v}) v.depends)
            )
            local-graph;
      in
      { modules =
          mapAttrs
            (_: v: { inherit (v) bundle output app; })
            builds;

        command =
          import ./purs-nix-command.nix
            { inherit all-dependencies;
              inherit all-dep-globs dep-globs nodejs pkgs purescript;

              repl-globs =
                make-dep-globs
                  (all-dependencies ++ [ ps-package-stuff.ps-pkgs.psci-support ]);

              utils = u;
              foreign = foreign-stuff all-dependencies;
            };
      };
  }
