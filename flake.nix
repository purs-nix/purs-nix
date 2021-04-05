{
  inputs.utils.url = "github:ursi/flake-utils";

  outputs = { self, nixpkgs, utils }:
    { __functor = _:
      { deps
      , lib
      , src
      , system ? "x86_64-linux"
      , pkgs ? nixpkgs.legacyPackages.${system}
      , purescript ? pkgs.purescript
      }:
        let
          inherit (pkgs.stdenv) mkDerivation;

          mergeCache =
            utils.builders.writeJsScriptBin
              { name = "merge-cache";
                js =
                  ''
                  const fs = require(`fs`);

                  const [c1Path, c2Path, outPath] = process.argv.slice(2);

                  c1 = JSON.parse(fs.readFileSync(c1Path));
                  c2 = JSON.parse(fs.readFileSync(c2Path));

                  fs.writeFileSync(outPath, JSON.stringify({...c1, ...c2}));
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
                    phases = [ "buildPhase" "installPhase" ];
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
                      phases = [ "buildPhase" "installPhase" ];

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
                      phases = [ "installPhase" ];
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
              };
    };
}
