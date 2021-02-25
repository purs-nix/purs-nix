{ deps
, lib
, pkgs
, purescript ? pkgs.purescript
, src
}:
let
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

      output =
        mkDerivation {
          inherit name srcs;
          dontUnpack = true;
          nativeBuildInputs =
            [ purescript mergeCache ]
              ++ builtins.map
                   (a: a.bin)
                   localDeps;

          buildPhase =
            let
              augmentations =
                toString
                  (builtins.map
                     (a: "${a.name} output;")
                     localDeps
                  );

              localDepsSrcs =
                toString
                  (builtins.map
                    (a: ''"${a.srcs}/**/*.purs"'')
                    localDeps
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
      { inherit name srcs;
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
