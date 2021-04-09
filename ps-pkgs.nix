{ ps-pkgs, ps-pkgs-ns }@args:
  with ps-pkgs;
  { arrays =
      { version = "6.0.0";
        repo = "https://github.com/purescript/purescript-arrays.git";
        rev = "5b71501b04f96cee4234447b35d62d041317f64b";
        dependencies =
          [ bifunctors
            control
            foldable-traversable
            maybe
            nonempty
            partial
            prelude
            st
            tailrec
            tuples
            unfoldable
            unsafe-coerce
          ];
      };

    bifunctors =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-bifunctors.git";
        rev = "a31d0fc4bbebf19d5e9b21b65493c28b8d3fba62";
        dependencies =
          [ const
            either
            newtype
            prelude
            tuples
          ];
      };

    console =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-console.git";
        rev = "d7cb69ef8fed8a51466afe1b623868bb29e8586e";
        dependencies = [ effect prelude ];
      };

    const =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-const.git";
        rev = "3a3a4bdc44f71311cf27de9bd22039b110277540";
        dependencies = [ invariant newtype prelude ];
      };

    contravariant =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-contravariant.git";
        rev = "ae1a765f7ddbfd96ae1f12e399e46d554d8e3b38";
        dependencies =
          [ const
            either
            newtype
            prelude
            tuples
          ];
      };

    control =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-control.git";
        rev = "18d582e311f1f8523f9eb55fb93c91bd21e22837";
        dependencies = [ newtype prelude ];
      };

    distributive =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-distributive.git";
        rev = "11f3f87ca5720899e1739cedb58dd6227cae6ad5";
        dependencies =
          [ identity
            newtype
            prelude
            tuples
            type-equality
          ];
      };

    effect =
      { version = "3.0.0";
        repo = "https://github.com/purescript/purescript-effect.git";
        rev = "985d97bd5721ddcc41304c55a7ca2bb0c0bfdc2a";
        dependencies = [ prelude ];
      };

    either =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-either.git";
        rev = "c1a1af35684f10eecaf6ac7d38dbf6bd48af2ced";
        dependencies =
          [ control
            invariant
            maybe
            prelude
          ];
      };

    enums =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-enums.git";
        rev = "170d959644eb99e0025f4ab2e38f5f132fd85fa4";
        dependencies =
          [ control
            either
            gen
            maybe
            newtype
            nonempty
            partial
            prelude
            tuples
            unfoldable
          ];
      };

    exceptions =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-exceptions.git";
        rev = "410d0b8813592bda3c25028540eeb2cda312ddc9";
        dependencies =
          [ effect
            either
            maybe
            prelude
          ];
      };

    exists =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-exists.git";
        rev = "435ca7199d101a88c56fa9590532d3d4815f3d9b";
        dependencies = [ unsafe-coerce ];
      };

    foldable-traversable =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-foldable-traversable.git";
        rev = "f45f03a5b4a568c79ba36a8764edbb0cbee203e6";
        dependencies =
          [ bifunctors
            const
            control
            either
            functors
            identity
            maybe
            newtype
            orders
            prelude
            tuples
          ];
      };

    foreign-object =
      { version = "3.0.0";
        repo = "https://github.com/purescript/purescript-foreign-object.git";
        rev = "c9a7b7bb8bed1b87c5545c4ebe85a70f86c0e6b1";
        dependencies =
          [ arrays
            foldable-traversable
            functions
            gen
            lists
            prelude
            st
            tailrec
            tuples
            typelevel-prelude
            unfoldable
          ];
      };

    functions =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-functions.git";
        rev = "691b3345bc2feaf914e5299796c606b6a6bf9ca9";
        dependencies = [ prelude ];
      };

    functors =
      { version = "4.1.0";
        repo = "https://github.com/purescript/purescript-functors.git";
        rev = "0cd232e39e3778bf4c1f28b471961bad3611c127";
        dependencies =
          [ bifunctors
            const
            contravariant
            control
            distributive
            either
            invariant
            maybe
            newtype
            prelude
            profunctor
            tuples
            unsafe-coerce
          ];
      };

    gen =
      { version = "3.0.0";
        repo = "https://github.com/purescript/purescript-gen.git";
        rev = "85c369f56545a3de834b7e7475a56bc9193bb4b4";
        dependencies =
          [ either
            foldable-traversable
            identity
            maybe
            newtype
            nonempty
            prelude
            tailrec
            tuples
            unfoldable
          ];
      };

    heterogeneous =
      { version = "0.5.0";
        repo = "https://github.com/natefaubion/purescript-heterogeneous.git";
        rev = "55f7563d1945785d6648d0f814f163e9b0970b2f";
        dependencies =
          [ either
            functors
            prelude
            record
            tuples
            variant
          ];
      };

    identity =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-identity.git";
        rev = "98b6d327c9572916c1deb617f55c3ee2e28608e6";
        dependencies =
          [ control
            invariant
            newtype
            prelude
          ];
      };

    integers =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-integers.git";
        rev = "8a783f2d92596c43afca53066ac18eb389d15981";
        dependencies =
          [ math
            maybe
            numbers
            prelude
          ];
      };

    invariant =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-invariant.git";
        rev = "c421b49dec7a1511073bb408a08bdd8c9d17d7b1";
        dependencies = [ control prelude ];
      };

    js-timers =
      { version = "5.0.1";
        repo = "https://github.com/purescript-contrib/purescript-js-timers.git";
        rev = "a298417b239581608b7a4f6173246c4ae36a698f";
        dependencies = [ effect ];
      };

    lazy =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-lazy.git";
        rev = "2f73f61e7ac1ae1cfe05564112e3313530e673ff";
        dependencies =
          [ control
            foldable-traversable
            invariant
            prelude
          ];
      };

    lists =
      { version = "6.0.0";
        repo = "https://github.com/purescript/purescript-lists.git";
        rev = "2578dd817ea9950558feca46bbae25e6b79cd13c";
        dependencies =
          [ bifunctors
            control
            foldable-traversable
            lazy
            maybe
            newtype
            nonempty
            partial
            prelude
            tailrec
            tuples
            unfoldable
          ];
      };

    math =
      { version = "3.0.0";
        repo = "https://github.com/purescript/purescript-math.git";
        rev = "59746cc74e23fb1f04e09342884c5d1e3943a04f";
      };

    maybe =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-maybe.git";
        rev = "8e96ca0187208e78e8df6a464c281850e5c9400c";
        dependencies =
          [ control
            invariant
            newtype
            prelude
          ];
      };

    newtype =
      { version = "4.0.0";
        repo = "https://github.com/purescript/purescript-newtype.git";
        rev = "7b292fcd2ac7c4a25d7a7a8d3387d0ee7de89b13";
        dependencies = [ prelude safe-coerce ];
      };

    nonempty =
      { version = "6.0.0";
        repo = "https://github.com/purescript/purescript-nonempty.git";
        rev = "d3e91e3d6e06e5bdcc5b2c21c8e5d0f9b946bb9e";
        dependencies =
          [ control
            foldable-traversable
            maybe
            prelude
            tuples
            unfoldable
          ];
      };

    numbers =
      { version = "8.0.0";
        repo = "https://github.com/purescript/purescript-numbers.git";
        rev = "f5bbd96cbed58403c4445bd4c73df50fc8d86f46";
        dependencies =
          [ functions
            math
            maybe
          ];
      };

    orders =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-parallel.git";
        rev = "c25b7075426cf82bcb960495f28d2541c9a75510";
        dependencies = [ newtype prelude ];
      };

    parallel =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-parallel.git";
        rev = "16b38a2e148639b04ae67e0ce63cc220da8857f7";
        dependencies =
          [ control
            effect
            either
            foldable-traversable
            functors
            maybe
            newtype
            prelude
            profunctor
            refs
            transformers
          ];
      };

    partial =
      { version = "3.0.0";
        repo = "https://github.com/purescript/purescript-partial.git";
        rev = "2f0a5239efab68179a684603263bcec8f1489b08";
      };

    point-free = import ((builtins.fetchGit { rev = "6cbeb854d7e669069bbfed7dd0b8c840fea6aef7"; url = "https://github.com/ursi/purescript-point-free.git"; }) + /package.nix) args;

    prelude =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-prelude.git";
        rev = "37717776a3693fd5a0a614239f7de1285cba8cdf";
      };

    profunctor =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-profunctor.git";
        rev = "4551b8e437a00268cc9b687cbe691d75e812e82b";
        dependencies =
          [ control
            distributive
            either
            exists
            invariant
            newtype
            prelude
            tuples
          ];
      };

    record =
      { version = "3.0.0";
        repo = "https://github.com/purescript/purescript-record.git";
        rev = "091495d61fcaa9d8d8232e7b800f403a3165a38f";
        dependencies =
          [ functions
            prelude
            unsafe-coerce
          ];
      };

    refs =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-refs.git";
        rev = "f66d3cdf6a6bf4510e5181b3fac215054d8f1e2e";
        dependencies = [ unsafe-coerce ];
      };

    safe-coerce =
      { version = "1.0.0";
        repo = "https://github.com/purescript/purescript-safe-coerce.git";
        rev = "e719defd227d932da067a1f0d62a60b3d3ff3637";
        dependencies = [ unsafe-coerce ];
      };

    st =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-st.git";
        rev = "1028e084b703d1a7a98a8d923c3603a5610e577e";
        dependencies =
          [ partial
            prelude
            tailrec
            unsafe-coerce
          ];
      };

    strings =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-strings.git";
        rev = "157e372a23e4becd594d7e7bff6f372a6f63dd82";
        dependencies =
          [ arrays
            control
            either
            enums
            foldable-traversable
            gen
            integers
            maybe
            newtype
            nonempty
            partial
            prelude
            tailrec
            tuples
            unfoldable
            unsafe-coerce
          ];
      };

    tailrec =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-tailrec.git";
        rev = "494f33bdea4b659c5232efdef4cffeb8a57fc250";
        dependencies =
          [ bifunctors
            effect
            either
            identity
            maybe
            partial
            prelude
            refs
          ];
      };

    transformers =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-transformers.git";
        rev = "846581729493343f5257d62c142ab5d1746b18dc";
        dependencies =
          [ control
            distributive
            effect
            either
            exceptions
            foldable-traversable
            identity
            lazy
            maybe
            newtype
            prelude
            tailrec
            tuples
            unfoldable
          ];
      };

    tuples =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-tuples.git";
        rev = "3fb71a817767f782c3dfbdcaf1f160228ffb78a1";
        dependencies =
          [ control
            invariant
            prelude
          ];
      };

    type-equality =
      { version = "4.0.0";
        repo = "https://github.com/purescript/purescript-type-equality.git";
        rev = "f7644468f22ed267a15d398173d234fa6f45e2e0";
      };

    typelevel-prelude =
      { version = "6.0.0";
        repo = "https://github.com/purescript/purescript-typelevel-prelude.git";
        rev = "83ddcdb23d06c8d5ea6196596a70438f42cd4afd";
        dependencies = [ prelude type-equality ];
      };

    unfoldable =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-unfoldable.git";
        rev = "bbcc2b062b9b7d3d61f123cfb32cc8c7fb811aa6";
        dependencies =
          [ foldable-traversable
            maybe
            partial
            prelude
            tuples
          ];
      };

    unsafe-coerce =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-unsafe-coerce.git";
        rev = "ee24f0d3b94bf925d9c50fcc2b449579580178c0";
      };

    variant =
      { version = "7.0.2";
        repo = "https://github.com/natefaubion/purescript-variant.git";
        rev = "2a2e02e68a02911799bb99bb82e3d9ace182cd47";
        dependencies =
          [ enums
            lists
            maybe
            partial
            prelude
            record
            tuples
            unsafe-coerce
          ];
      };
  }
