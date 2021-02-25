let myPackageSet =
      https://raw.githubusercontent.com/ursi/purescript-package-set/9b5fb7b55e11f80a438cf72a0cfee987d8d429d3/packages.dhall sha256:fad552b7dedc7aecf3a74c64067458476f4fbdcb63bf3e10e7a5abd2ed80c828

in  (   myPackageSet
      ⫽ https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20210118/packages.dhall sha256:a59c5c93a68d5d066f3815a89f398bcf00e130a51cb185b2da29b20e2d8ae115
    )
  with elmish =
      ( myPackageSet.elmish
        with version = "6d57ec6c9aa3404571561ed2d5ea429308839630"
      )
  with ffi-options.version = "480d923f70da0f2366e3625a2a09ec837b5d5521"
  with task-file.version = "c6fca2e315e39aa4892cdc3eae1081798c444f73"
  with whatwg-html.version = "203e785a7dfdc69978080fd6d08d6f7cdfa80641"
