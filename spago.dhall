let testDependencies = [ "substitute" ]

in  { name = "my-project"
    , dependencies =
          [ "elmish"
          , "mason-prelude"
          , "node-process"
          , "string-parsers"
          , "task-file"
          ]
        # testDependencies
    , packages = ./packages.dhall
    , sources = [ "src/**/*.purs", "test/**/*.purs" ]
    }
