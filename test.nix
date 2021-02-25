let pkgs = import /home/mason/git/nixpkgs {}; in
with pkgs;

let
  spago2nix = import ./spago-packages.nix { inherit pkgs; };
  lib = import /home/mason/git/nixpkgs/lib;
in
  rec
  { buildDependencies =
      inputs:
        stdenv.mkDerivation {
          name = "dependency-output";
          dontUnpack = true;
          buildInputs = [ purescript ];

          buildPhase =
            ''
            purs compile ${
              toString
                (builtins.map
                  (x: ''"${x.outPath}/src/**/*.purs"'')
                  (builtins.attrValues inputs)
                )
            }
            '';

          installPhase = "mv output $out";
        };

    bdTest =
        stdenv.mkDerivation {
          name = "dependency-output";
          dontUnpack = true;
          nativeBuildInputs = [ purescript Main.bin Parser.bin ];

          buildPhase =
            ''
            cp --no-preserve=mode --preserve=timestamps -r ${buildDependencies} output
            Main output
            Parser output

            purs compile "${Main.srcs}/**/*.purs" "${Parser.srcs}/**/*.purs" ${builtins.toString
              (builtins.map
                (x: ''"${x.outPath}/src/**/*.purs"'')
                (builtins.attrValues spago2nix.inputs))}
            '';

          installPhase = "mv output $out";
      };

    buildSingle = import ./build-single.nix
      { inherit pkgs lib;
        src = ./src;
        deps = spago2nix.inputs;
      };

    Parser = buildSingle { name = "Parser"; };

    Main = buildSingle
      { name = "Main";
        localDeps = [ Parser ];
      };

    test = builtins.head (mkDerivation ./src);

    getSrcs = src: name:
      let
        pathFilter = path:
          let
            pathSuffixPrefix = (builtins.replaceStrings [ "." ] [ "/" ] name) + ".";
            js = pathSuffixPrefix + "js";
            purs = pathSuffixPrefix + "purs";
          in
            lib.hasSuffix js path || lib.hasSuffix purs path;
      in
        builtins.filterSource
          (path: _: pathFilter path)
          src;

    useSrcs = src: srcs:
      builtins.filterSource
        (path: _: builtins.any (p: toString p == path) srcs)
        src;

  }

/*

build dependencies output

in the project, find all base level modules

  create derivations that will augment outputs with their contents

*/
