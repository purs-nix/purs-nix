with builtins;
deps:
  let
    l = p.lib; p = pkgs; u = import ./utils.nix p;
    inherit (deps) builders easy-ps pkgs purescript-language-server;
    purescript' = easy-ps.purescript;
  in
  { inherit (import ./build-pkgs.nix { inherit pkgs; utils = u; })
      build ps-pkgs ps-pkgs-ns;

    inherit (pkgs) esbuild;
    inherit (pkgs.lib) licenses;
    purescript = purescript';
    inherit purescript-language-server;

    purs =
      { dependencies ? []
      , test-dependencies ? []
      , srcs
        ? throw
            ''
            In order to build derivations from your PureScript code, you must supply a 'srcs' argument to 'purs'

            See:
            https://github.com/ursi/purs-nix/blob/master/docs/purs-nix.md#purs
            ''
      , nodejs ? pkgs.nodejs
      , purescript ? purescript'
      , foreign ? null
      }:
      let
        inherit (p.stdenv) mkDerivation;

        get-dep-globs = deps:
          let
            trans-deps =
              let
                flatten = ds:
                  foldl'
                    (acc: d:
                       acc ++ flatten d.dependencies
                    )
                    []
                    ds
                  ++ ds;

              in
              l.pipe (flatten deps)
                [ (foldl'
                     (acc: d:
                        if acc?${d.name} && d._local then
                          acc
                        else
                          acc // { ${d.name} = d; }
                     )
                     {}
                  )

                  attrValues
                ];
          in
          toString (map (a: ''"${a}/**/*.purs"'') trans-deps);

        dep-globs = get-dep-globs dependencies;
        all-dep-globs = get-dep-globs (dependencies ++ test-dependencies);

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

        build-single = name: local-deps:
          let
            built-deps =
              mkDerivation
                { name = "built-deps";
                  phases = [ "buildPhase" "installPhase" ];
                  nativeBuildInputs = [ purescript ];

                  buildPhase =
                    if dep-globs != ""
                    then "purs compile ${dep-globs}"
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
                             (a: "${a.bin} output;")
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
                    cp --no-preserve=mode --preserve=timestamps -r ${built-deps} output
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
                    let
                      foreign-stuff =
                        let
                          foreign-stuff' =
                            foldl'
                              (acc: dep:
                                 if dep?foreign then
                                   l.foldl
                                     (acc': { name, value }:
                                        if value?derivation then
                                          l.recursiveUpdate
                                            acc'
                                            { derivation.${name} = value; }
                                        else if value?node_modules then
                                          l.recursiveUpdate
                                            acc'
                                            { node.${name} = value; }
                                        else
                                          acc'
                                     )
                                     acc
                                     (l.mapAttrsToList l.nameValuePair dep.foreign)
                                 else
                                   acc
                              )
                              { derivation = {};
                                node = {};
                              }
                              (trans-deps ++ dependencies)
                            // (if isNull foreign then {} else foreign);

                          foreign-derivation =
                            l.concatStringsSep "\n"
                              (l.mapAttrsToList
                                 (module: { derivation, paths }:
                                    let
                                      purs-nix-js =
                                        l.pipe paths
                                          [ (l.mapAttrsToList
                                               (n: v:
                                                  ''
                                                  export * as ${n} from "${derivation}${toString v}";
                                                  ''
                                               )
                                            )

                                            (l.concatStringsSep "\n")
                                            (p.writeText "purs-nix.js")
                                          ];
                                    in
                                    "cp ${purs-nix-js} ${module}/purs-nix.js"
                                 )
                                 foreign-stuff'.derivation
                              );

                          foreign-node =
                            l.concatStringsSep "\n"
                              (l.mapAttrsToList
                                 (module: { node_modules }:
                                    "ln -s ${node_modules} ${module}"
                                 )
                                 foreign-stuff'.node
                              );
                        in
                        ''
                        ${foreign-derivation}
                        ${foreign-node}
                        '';
                    in
                    ''
                    mv output $out
                    cd $out
                    ${foreign-stuff}
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
                exe =
                  let
                    partial = "node ${bundle {}} $@";
                  in
                  pkgs.writeShellScript command
                    (if auto-flags then
                       ''
                       if [[ $1 = --version ]]; then
                         echo ${if version == null then "none" else version}
                       else
                         ${partial}
                       fi
                       ''
                     else
                       partial
                    );
              in
              mkDerivation
                ({ phases = [ "installPhase" ];

                   buildInputs = [ p.makeWrapper nodejs ];

                   installPhase =
                     # The makeWrapper setup allows you to add more runtime dependencies to your executable by overrideing buildInputs
                     ''
                     mkdir -p $out/bin
                     makeWrapper ${exe} $out/bin/${command} --set PATH $PATH
                     '';
                 }
                 // u.make-name name version
                );
          in
          { inherit bundle local-deps app name output src;

            bin =
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

                output' = output {};
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
            { all-dependencies = dependencies ++ test-dependencies;
              inherit all-dep-globs dep-globs nodejs pkgs purescript;
              utils = u;
            };
      };
  }
