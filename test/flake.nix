{ inputs =
    { get-flake.url = "github:ursi/get-flake";

      npmlock2nix =
        { flake = false;
          url = "github:nix-community/npmlock2nix";
        };

      purs-nix-test-packages =
        { flake = false;
          url = "github:purs-nix/test-packages";
        };
    };

  outputs = { get-flake, purs-nix-test-packages, ... }@inputs:
    with builtins;
    let purs-nix = get-flake ../.; in
    purs-nix.inputs.utils.apply-systems
      { inputs =
          inputs
          // { inherit purs-nix;
               inherit (purs-nix.inputs) make-shell nixpkgs;
             };

        systems = [ "x86_64-linux" ];
      }
      ({ make-shell, pkgs, purs-nix, ... }:
         let
           minimal = false;

           switches =
             mapAttrs
               (n: v: (a: l.warnIf (!a) "switches.${n} == false" a) (!minimal && v))
               { packages = true;
                 repl = true;
               };

           l = p.lib; p = pkgs;
           inherit (purs-nix) ps-pkgs purs;
           package = import ./package.nix purs-nix-test-packages purs-nix;
           easy-ps = import (get-flake ../.).inputs.easy-ps { inherit pkgs; };

           ps-custom = { nodejs ? null, purescript ? null }:
             purs
               ({ inherit (package) dependencies;
                  test-dependencies = [ ps-pkgs."assert" ];
                  srcs = [ ./src ./src2 ];

                  foreign =
                    { IsNumber.node_modules =
                        (p.callPackages inputs.npmlock2nix {})
                        .node_modules { src = ./foreign-js; } + /node_modules;

                      Nested.src = ./foreign-js;
                    };
                }
                // (if isNull nodejs then {} else { inherit nodejs; })
                // (if isNull purescript then {} else { inherit purescript; })
               );

           ps = ps-custom {};

           ps2 =
             purs
               { dependencies =
                   with ps-pkgs;
                   [ console
                     effect
                     markdown-it
                     prelude
                   ];

                  test-dependencies = [ ps-pkgs."assert" ];
                  srcs = [ ./src3 ];
               };

           make-script-custom = args: module:
             "${(ps-custom args).modules.${module}.app { name = "test run"; }}/bin/'test run'";

           make-script = make-script-custom {};

           make-test = description: info: test:
             ''
             echo TEST: ${l.escapeShellArg description}
             ${info}
             ${test "$(${info})"}
             echo
             '';

           package-tests = import ./packages.nix ({ inherit l p; } // purs-nix);

           expected-output = i:
             ''
             target="test run
             argument
             1.2 is a number
             foreign1
             foreign2
             ❄"

             [[ ${i} == $target ]]
             '';
         in
         { apps.default =
             { type = "app";

               program =
                 let
                   path =
                     package-tests."compiled packages bucket 1"
                     + /cache-db.json;
                 in
                 (p.writeScript "inspect-packages"
                    "${p.jq}/bin/jq . ${path} | less"
                 ).outPath;
             };

           checks =
             mapAttrs
               (n: v: p.runCommand n {} "${v}\ntouch $out")
               { "compiler flags" =
                   let
                     output =
                       ps.modules.Main.output
                         { codegen = "corefn,js";
                           comments = true;
                           no-prefix = true;
                         };
                   in
                   make-test "codegen"
                     ""
                     (_: "ls ${output}/Main/corefn.json") +

                   make-test "comments"
                      ''grep "// a comment for testing purposes" ${output}/Main/index.js''
                      (i: "[[ ${i} ]]") +

                   make-test "no-prefix"
                     "echo $(head -n 1 ${output}/Main/index.js | grep //)"
                     (i: "[[ -z ${i} ]]");

                 "custom node package" =
                   # don't pull this out into its own project, it is also a test for
                   # 2f5285a97c9a575e70bebf8e614fff3a42b0fe68
                   let nodejs = p.nodejs-14_x; in
                   make-test "node version"
                     (make-script-custom { inherit nodejs; } "Node")
                     (i: "[[ ${i} == v${nodejs.version} ]]");

                 "custom purescript package" =
                   let
                     output =
                         (ps-custom { inherit purescript; }).modules.Main.output {};

                     purescript = easy-ps.purs-0_14_7;
                   in
                   make-test "purescript version"
                     "head -n 1 ${output}/Main/index.js"
                     (i: ''[[ ${i} == "// Generated by purs version ${substring 1 99 purescript.version}" ]]'');

                 "main output" =
                   make-test "expected output"
                     "${make-script "Main"} argument"
                     expected-output;

                 "zephyr" =
                   let
                     inherit (ps.modules.Main) app bundle output;
                     b = args: bundle ({ esbuild.platform = "node"; } // args);
                     a = args: app ({ name = "_"; } // args);
                   in
                   make-test "output"
                     ""
                     (_: ''
                         a=$(ls ${output {}} | wc -l)
                         b=$(ls ${output { zephyr = "Main.main"; }} | wc -l)
                         echo $a
                         echo $b
                         (( $a > $b ))
                         ''
                     ) +

                   make-test "bundle"
                     ""
                     (_: ''
                         a=$(wc -c < ${b {}})
                         b=$(wc -c < ${b { zephyr = false; }})
                         echo $a
                         echo $b
                         (( $a < $b ))
                         ''
                     ) +

                   make-test "app"
                     ""
                     (_: ''
                         a=$(wc -c < ${a {}}/bin/_)
                         b=$(wc -c < ${a { zephyr = false; }}/bin/_)
                         echo $a
                         echo $b
                         (( $a < $b ))
                         ''
                     );

                 "app minification" =
                   let a = args: ps.modules.Main.app ({ name = "_"; } // args); in
                   ''
                   a=$(wc -c < ${a {}}/bin/_)
                   b=$(wc -c < ${a { minify = false; }}/bin/_)
                   echo $a
                   echo $b
                   (( $a < $b ))
                   '';
                 "ps.dependencies" =
                   make-test "expected number"
                     "echo ${toString (length ps.dependencies)}"
                     (i: "[[ ${i} == 43 ]]");
               }
             // (with ps.modules.Main;
                 { "non-incremental output" = output { incremental = false; };

                   "non-incremental bundle" =
                     bundle { esbuild.platform = "node"; incremental = false; };

                   "non-incremental app" = app { name = "_"; incremental = false; };
                 }
                )
             // mapAttrs
                  (n:
                   { args ? {}
                   , less ? false
                   , ps' ? ps
                   , run-output ? expected-output
                   , test
                   }:
                     let
                       name = "test";
                       default-srcs = [ "src" "src2" ];

                       command =
                         ps'.command
                           (l.recursiveUpdate
                              { bundle.esbuild =
                                  { legal-comments = "none";
                                    platform = "node";
                                  };

                                inherit name package;
                                srcs = default-srcs;
                              }
                              args
                           )
                         + "/bin/${name}";
                     in
                     p.stdenv.mkDerivation
                       { name = l.strings.sanitizeDerivationName n;
                         phases = [ "unpackPhase" "installPhase" "checkPhase" ];

                         src =
                           filterSource
                             (path: type:
                                (type == "directory"
                                 && any
                                      (s: !isNull (match ".*/${s}" path)
                                          || l.hasInfix "/${s}/" path
                                      )
                                      (args.srcs or default-srcs
                                       ++ [ (args.test or "test") ]
                                      )
                                )
                                || l.hasSuffix ".purs" path
                                || l.hasSuffix ".js" path
                             )
                             ./.;

                         buildInputs = [ p.nodejs ];
                         installPhase = "touch $out";
                         doCheck = true;

                         checkPhase =
                           (if less then
                              ""
                            else
                              make-test "purs-nix test"
                                ""
                                (_: "${command} test")
                           ) +

                           make-test "purs-nix bundle"
                             ""
                             (_: "${command} bundle") +

                           make-test "purs-nix run"
                             "${command} run argument"
                             run-output +

                           make-test "purs-nix docs"
                             ""
                             (_: "${command} docs") +

                           make-test "purs-nix docs --format markdown"
                             ""
                             (_: "${command} docs --format markdown") +

                           "\n" + test command + "\n" +

                           (if switches.repl then
                              let repl = "echo :q | HOME=. ${command} repl"; in
                              make-test "purs-nix repl"
                                ""
                                (_: repl) +

                              make-test "purs-nix repl: create .purs-repl"
                                "cat .purs-repl"
                                (i: ''[[ ${i} == "import Prelude" ]]'') +

                              make-test "purs-nix repl: don't override .purs-repl"
                                ""
                                (_: ''
                                    echo -- comment > .purs-repl
                                    ${repl}
                                    cat .purs-repl
                                    [[ $(cat .purs-repl) == "-- comment" ]]
                                    ''
                                )
                            else
                              ""
                           );
                       }
                  )
                  { "purs-nix command defaults" =
                      { args.compile.codegen = "docs,js";

                        test = command:
                          make-test "purs-nix srcs"
                            "${command} srcs"
                            (i: ''${purs-nix.purescript}/bin/purs compile ${i}'') +

                          make-test "main.js exists"
                            ""
                            (_: "ls main.js") +

                          "cp main.js 'test run'\n" +

                          make-test "running main.js is the same as purs-nix run"
                            "node 'test run'; ${command} run"
                            (_: ''
                                [[ "$(node 'test run')" \
                                == "$(${command} run)" \
                                ]]
                                ''
                            );
                      };

                    "purs-nix command configured" =
                      let
                        outfile = "outfile.js";
                        output = "compiled";
                      in
                      { args =
                          { inherit output;

                            bundle =
                              { esbuild = { inherit outfile; };
                                module = "App";
                                main = false;
                              };

                            compile.codegen = "docs,js";
                            test = "test-dir";
                            test-module = "Test.Test";
                          };

                        test = _:
                          make-test "custom-named output exists"
                            ""
                            (_: "ls ${outfile}") +

                          make-test "${outfile} does not call main"
                            "tail -n 1 ${outfile}"
                            (i: ''
                                # for some reason this doesn't fail if the file doesn't exists
                                [[ -e ${outfile} ]]
                                [[ ! ${i} == "main();" ]]
                                ''
                            ) +

                          make-test ''"output" does not exist''
                            "ls"
                            (_: "[[ ! -e output ]]");
                      };

                    "purs-nix command flake dependencies" =
                      { args =
                          { srcs = [ "src3" ];
                            test = "nonexistent";
                          };

                        less = true;
                        ps' = ps2;
                        run-output = (i: ''[[ ${i} == "<h1>md</h1>" ]]'');

                        test = command:
                          make-test "purs-nix package-info markdown-it"
                            "${command} package-info markdown-it"
                            (i: ''
                                info="name:    markdown-it
                                version: 0.4.0
                                flake:   github:purs-nix/purescript-markdown-it/b8221bf5a77fb35742655539c346fe1938473365
                                package: default
                                source:  /nix/store/75mmp7m5i2wmp0jnm7afzxz8xvf2dzf9-markdown-it-0.4.0"

                                [[ ${i} == $info ]]
                                ''
                            );
                      };
                  }
                  // (if switches.packages then package-tests else {});

           devShells.default =
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs

                     (ps.command
                        { bundle.esbuild.platform = "node";
                          inherit package;
                          srcs = [ "src" "src2" ];
                        }
                     )

                     (ps2.command
                        { name = "ps2";
                          bundle.esbuild.platform = "node";
                          inherit package;
                          srcs = [ "src3" ];
                        }
                     )

                     purs-nix.esbuild
                     purs-nix.purescript
                     purs-nix.purescript-language-server
                   ];
               };
         }
      );
}
