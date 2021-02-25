let pkgs = import /home/mason/git/nixpkgs {}; in
with pkgs;

let
  spago2nix = import ./spago-packages.nix { inherit pkgs; };
  lib = import /home/mason/git/nixpkgs/lib;


  # takes a sorted list of .js and .purs paths
  goThroughPaths = list:
    let
      go = acc: list':
        if builtins.length list' == 0 then
          acc
        else
          let
            tail = builtins.tail list';
            path = builtins.head list';
          in
            if lib.hasSuffix ".js" path then
              let
                matchingPursFile = builtins.head tail;
                tail' = builtins.tail tail;
              in
                go
                  ([ [ (/. + path) (/. + matchingPursFile) ] ] ++ acc)
                  tail'
            else if lib.hasSuffix ".purs" path then
                go ([ [ (/. + path) ] ] ++ acc) tail
            else
              go acc tail;
    in
      go [] list;
in
  rec {
    separateSrcs = src:
      goThroughPaths
        (lib.naturalSort
          (builtins.foldl'
            (acc: path:
              if lib.hasSuffix ".js" path || lib.hasSuffix ".purs" path then
                acc ++ [ path ]
              else
                acc
            )
            []
            (map toString (lib.filesystem.listFilesRecursive src))
          )
        );

    # mkDerivation = src:
    #   map
    #     (srcs:
    #       stdenv.mkDerivation {
    #         name = lib.strings.sanitizeDerivationName
    #           (toString (builtins.head srcs));

    #         inherit srcs;
    #         dontUnpack = true;
    #         buildInputs = [ purescript ];

    #         buildPhase = ''
    #           purs compile $srcs ${buildDependencies}
    #         '';

    #         installPhase = ''
    #           mkdir $out
    #           mv output $out
    #         '';
    #       }
    #     )
    #     (separateSrcs src);

    buildDependencies =
        stdenv.mkDerivation {
          name = "dependency-output";
          dontUnpack = true;
          buildInputs = [ purescript ];

          buildPhase = ''
            purs compile ${builtins.toString
              (builtins.map
                (x: ''"${x.outPath}/src/**/*.purs"'')
                (builtins.attrValues spago2nix.inputs))}
          '';

          installPhase = ''
            mv output $out
          '';
      };

    bdTest =
        stdenv.mkDerivation {
          name = "dependency-output";
          dontUnpack = true;
          nativeBuildInputs = [ purescript Main.bin Parser.bin ];

          buildPhase = ''
            cp --no-preserve=mode --preserve=timestamps -r ${buildDependencies} output
            Main output
            Parser output

            purs compile "${Main.srcs}/**/*.purs" "${Parser.srcs}/**/*.purs" ${builtins.toString
              (builtins.map
                (x: ''"${x.outPath}/src/**/*.purs"'')
                (builtins.attrValues spago2nix.inputs))}
          '';

          installPhase = ''
            mv output $out
          '';
      };

    augment = {
      name,
      augmentations ? [],
      srcs,
      deps,
      builtDeps
    }:
      let
        output =
          stdenv.mkDerivation {
            inherit name;
            inherit srcs;
            dontUnpack = true;
            nativeBuildInputs =
              [ purescript mergeCache ]
                ++ builtins.map
                    (a: a.bin)
                    augmentations;

            buildPhase = ''
              cp --no-preserve=mode --preserve=timestamps -r ${builtDeps} output

              ${toString
                (builtins.map
                  (a: "${a.name} output;")
                  augmentations
                )
              }

              purs compile "$srcs/**/*.purs" ${toString
                (builtins.map
                  (a: ''"${a.srcs}/**/*.purs"'')
                  augmentations
                )} ${builtins.toString
                (builtins.map
                  (x: ''"${x.outPath}/src/**/*.purs"'')
                  (builtins.attrValues deps))}
            '';

            installPhase = "mv output $out";
          };
      in
        {
          inherit name srcs;
          bin2 = writeShellScriptBin name
            "cp --no-preserve=mode --preserve=timestamps -r ${output}/${name} $1/${name}";
          bin =
            stdenv.mkDerivation {
              inherit name;
              dontUnpack = true;
              buildInputs = [ makeWrapper mergeCache ];

              exe = pkgs.writeShellScript "exe"
                ''
                cp --no-preserve=mode --preserve=timestamps -r ${output}/${name} $1/${name}
                merge-cache ${output}/cache-db.json $1/cache-db.json $1/cache-db.json
                '';

              installPhase = ''
                mkdir -p $out/bin
                makeWrapper $exe $out/bin/${name} --set PATH $PATH
              '';
            };
        };

    Parser = augment {
      name = "Parser";
      srcs = useSrcs ./src [ ./src/Parser.purs ];
      deps = spago2nix.inputs;
      builtDeps = buildDependencies;
    };

    Main = augment {
      name = "Main";
      srcs = useSrcs ./src [ ./src/Main.purs ./src/Main.js ];
      augmentations = [ Parser ];
      deps = spago2nix.inputs;
      builtDeps = buildDependencies;
    };

    test = builtins.head (mkDerivation ./src);

    useSrcs = src: srcs:
      builtins.filterSource
      (path: _: builtins.any (p: toString p == path) srcs)
      src;

    mergeCache =
      let
        js = writeText "merge-cache-js"
          ''
          const fs = require(`fs`);

          const [c1Path, c2Path, outPath] = process.argv.slice(2);

          c1 = JSON.parse(fs.readFileSync(c1Path));
          c2 = JSON.parse(fs.readFileSync(c2Path));

          fs.writeFileSync(outPath, JSON.stringify({...c1, ...c2}));
          '';
      in
        stdenv.mkDerivation {
          name = "merge-cache";
          buildInputs = [ makeWrapper nodejs ];
          exe = writeShellScript "exe" "node ${js} $1 $2 $3";
          dontUnpack = true;

          installPhase = ''
            mkdir -p $out/bin
            makeWrapper $exe $out/bin/merge-cache --set PATH $PATH
          '';
        };
  }

/*

build dependencies output

in the project, find all base level modules

  create derivations that will augment outputs with their contents

*/
