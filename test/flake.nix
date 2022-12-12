{ inputs =
    { get-flake.url = "github:ursi/get-flake";

      npmlock2nix =
        { flake = false;
          url = "github:nix-community/npmlock2nix";
        };

      purs-nix-test-packages =
        { flake = false;
          url = "github:purs-nix/test-packages/new-api";
        };
    };

  outputs = { get-flake, ... }@inputs:
    with builtins;
    let purs-nix-flake = get-flake ../.; in
    purs-nix-flake.inputs.utils.apply-systems
      { inputs =
          inputs
          // { purs-nix = purs-nix-flake;
               inherit (purs-nix-flake.inputs) make-shell nixpkgs ps-tools;
             };

        systems = [ "x86_64-linux" ];
      }
      ({ make-shell, pkgs, ps-tools, system, ... }:
         let
           purs-nix =
             purs-nix-flake
               { inherit system;

                 overlays =
                   [ (_: super: assert !super?test-package; {})

                     (self: super:
                        with self;
                        { inherit (super) console;

                          # test if later overlays have access to this package
                          test-package = prelude;
                        }
                     )

                     (self: super:
                        with self;
                        { "test.prelude" = super.test-package; }
                     )
                   ];
               };

           minimal = false;

           switches =
             mapAttrs
               (n: v: (a: l.warnIf (!a) "switches.${n} == false" a) (!minimal && v))
               { packages-compile = true;
                 repl = true;
               };

           l = p.lib; p = pkgs;
           inherit (purs-nix) ps-pkgs purs;
           package = import ./package.nix purs-nix;

           ps-custom = { dir ? ./., ...}@args:
             purs
               ({ inherit (package) dependencies;
                  test-dependencies =
                    [ "assert"
                      "markdown-it"
                    ];

                  srcs = [ "src" "src2" ];

                  foreign =
                    { IsNumber.node_modules =
                        (p.callPackages inputs.npmlock2nix {})
                        .node_modules { src = ./foreign-js; } + /node_modules;

                      Nested.src = ./foreign-js;
                    };
                }
                // (if dir == null then {} else { inherit dir; })
                // (removeAttrs args [ "dir" ])
               );

           ps = ps-custom {};

           ps2 =
             purs
               { dependencies =
                   with ps-pkgs;
                   [ "console"
                     "effect"
                     "markdown-it"
                     "test.prelude"
                   ];

                  test-dependencies = [ ps-pkgs."assert" ];
                  srcs = [ ./src3 ];
               };

           run-app-custom = args: module:
             "${(ps-custom args).app { inherit module; name = "test run"; }}/bin/'test run'";

           run-app = run-app-custom {};

           make-test = description: info: test:
             ''
             echo TEST: ${l.escapeShellArg description}
             ${info}
             ${test "$(${info})"}
             echo
             '';

           package-tests =
             import ./packages.nix
               ({ inherit l p switches; }
                // (purs-nix-flake { inherit system; })
               );

           expected-output-tail =
             ''
             argument
             1.2 is a number
             foreign1
             foreign2
             ❄'';

           expected-output = i:
             ''
             target="test run
             ${expected-output-tail}"
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
                       ps.output
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
                     (run-app-custom { inherit nodejs; } "Node")
                     (i: "[[ ${i} == v${nodejs.version} ]]");

                 "custom purescript package" =
                   let
                     output = (ps-custom { inherit purescript; }).output {};
                     purescript = ps-tools.purescript-0_14_7;
                   in
                   make-test "purescript version"
                     "head -n 1 ${output}/Main/index.js"
                     (i: ''[[ ${i} == "// Generated by purs version ${substring 1 99 purescript.version}" ]]'');

                 "main app output" =
                   make-test "expected output"
                     "${run-app "Main"} argument"
                     expected-output;

                 "zephyr" =
                   let
                     inherit (ps) app bundle output;
                     b = args: bundle ({ esbuild.platform = "node"; } // args);
                     a = args: app ({ name = "_"; } // args);

                     make-zephyr-test = name: a: b:
                       make-test name
                         ""
                         (_: ''
                             a=$(wc -c < ${a})
                             b=$(wc -c < ${b})
                             echo $a
                             echo $b
                             (( $a < $b ))
                             ''
                         );
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

                   make-zephyr-test "bundle"
                     (b {})
                     (b { zephyr = false; }) +

                   make-zephyr-test "bundle no main"
                     (b { main = false; })
                     (b { main = false; zephyr = false; }) +

                   make-zephyr-test "app"
                     "${a {}}/bin/_"
                     "${a { zephyr = false; }}/bin/_";

                 "main script output head" =
                   make-test "expected output"
                     "head -n 1 <(${ps.script {}})"
                     (i: ''[[ ${i} == *-Main-script ]]'');

                 "main script output tail" =
                   make-test "expected output"
                     "tail -n +2 <(${ps.script {}} argument)"
                     (i: ''[[ ${i} == "${expected-output-tail}" ]]'');

                 "app minification" =
                   let a = args: ps.app ({ name = "_"; } // args); in
                   ''
                   a=$(wc -c < ${a {}}/bin/_)
                   b=$(wc -c < ${a { esbuild.minify = false; }}/bin/_)
                   echo $a
                   echo $b
                   (( $a < $b ))
                   '';

                 "ps.dependencies" =
                   make-test "expected number"
                     "echo ${toString (length ps.dependencies)}"
                     (i: "[[ ${i} == 52 ]]");

                 "test run defaults" =
                   make-test "expected output"
                     "${ps.test.run {}}"
                     (i: "[[ ${i} == testing ]]");

                 "test run configured" =
                   make-test "expected output"
                     "${(ps-custom { test = "test-dir"; test-module = "Test.Test"; })
                          .test.run {}
                      }"
                     (i: "[[ ${i} == testing ]]");

                 "no test app" =
                   make-test "expected output"
                     "${(ps-custom { test = "nonexistent"; }).app
                          { name = "test run"; }
                      }/bin/'test run' argument"
                      expected-output;

                 "no dir app" =
                   make-test "expected output"
                     "${(ps-custom { dir = null; srcs = [ ./src ./src2 ];}).app
                          { name = "test run"; }
                      }/bin/'test run' argument"
                     expected-output;

                 "no dir test" =
                   make-test "expected output"
                     "${(ps-custom
                           { dir = null; srcs = [ ./src ./src2 ]; test = ./test;}
                        ).test.run {}
                      }"
                     (i: "[[ ${i} == testing ]]");
               }
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

                       command =
                         ps'.command
                           (l.recursiveUpdate
                              { bundle.esbuild =
                                  { legal-comments = "none";
                                    platform = "node";
                                  };

                                compile.codegen = "docs,js";
                                inherit name package;
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
                                      (s: (match ".*/${s}" path != null)
                                          || l.hasInfix "/${s}/" path
                                      )
                                      (args.srcs or [ "src" "src2" ]
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
                                "${command} test"
                                (i: "[[ ${i} == testing ]]")
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
                      { test = command:
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
                              { esbuild =
                                  { external = [ 1 ''"2"'' "$three" "'4'" ];
                                    inherit outfile;
                                  };

                                module = "App";
                                main = false;
                              };
                          };

                        ps' =
                          ps-custom { test = "test-dir"; test-module = "Test.Test"; };

                        test = command:
                          make-test "list flags work"
                            "echo ${command}"
                            (_: ''cat ${command} | grep -- "--external:'1' --external:\"2\" --external:\$three --external:'4'"'') +

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
                        run-output = i: ''[[ ${i} == "<h1>md</h1>" ]]'';

                        test = command:
                          make-test "purs-nix package-info markdown-it"
                            "${command} package-info markdown-it"
                            (i: ''
                                info="name:    markdown-it
                                version: 0.4.0
                                flake:   github:purs-nix/purescript-markdown-it/34d412a7f51a2f2782a12c5ed91908decdd82211
                                package: default
                                source:  /nix/store/gnjs91j7ssqlyim66madp1hqqxz3q656-markdown-it-0.4.0"


                                [[ ${i} == $info ]]
                                ''
                            );
                      };
                  }
                  // package-tests
                  // { "'check' api" = ps.test.check {}; };

           devShells.default =
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs

                     (ps.command
                        { bundle.esbuild.platform = "node";
                          # compile.codegen = "corefn,js";
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

                     ps-tools.for-0_14.purescript-language-server
                     purs-nix.esbuild
                     purs-nix.purescript
                   ];
               };
         }
      );
}
