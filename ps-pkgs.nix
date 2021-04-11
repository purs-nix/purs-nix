{ ps-pkgs, ps-pkgs-ns }@pkgs:
  with ps-pkgs;
  { ansi =
      { version = "6.1.0";
        repo = "https://github.com/hdgarrood/purescript-ansi.git";
        rev = "e89e6fede616bd16b001841cf30ac320c95313a6";
        dependencies =
          [ foldable-traversable
            lists
            strings
          ];
      };

    arrays =
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

    arraybuffer-types =
      { version = "3.0.0";
        repo = "https://github.com/purescript-contrib/purescript-arraybuffer-types.git";
        rev = "2c63e02e7ff091e88e147e98c97ec70e1462f586";
      };

    "assert" =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-assert.git";
        rev = "71a3b1f3b9917c23691fdbb1858de171be871a10";
        dependencies = [ console effect prelude ];
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

    datetime =
      { version = "5.0.0";
        repo = "https://github.com/purescript/purescript-datetime.git";
        rev = "e52f1fd50c05dad05709319d86b8b022b7c0485a";
        dependencies =
          [ bifunctors
            control
            either
            enums
            foldable-traversable
            functions
            gen
            integers
            lists
            math
            maybe
            newtype
            ordered-collections
            partial
            prelude
            tuples
          ];
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

    foreign =
      { version = "6.0.0";
        repo = "https://github.com/purescript/purescript-foreign.git";
        rev = "2f5fd0ed66535156703ba7929a96a03dc32f1da6";
        dependencies =
          [ either
            functions
            identity
            lists
            maybe
            prelude
            strings
            transformers
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

    js-date =
      { version = "5.0.0";
        repo = "https://github.com/purescript-contrib/purescript-js-date.git";
        rev = "f34f0a14b9d94cb55bb5e3048e757ad12bf7ecff";
        dependencies =
          [ datetime
            effect
            foreign
            integers
            now
          ];
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

    media-types =
      { version = "5.0.0";
        repo = "https://github.com/purescript-contrib/purescript-media-types.git";
        rev = "a49a066f8a7a098ba4a00eb10b44fff616a3f517";
        dependencies = [ newtype prelude ];
      };

    newtype =
      { version = "4.0.0";
        repo = "https://github.com/purescript/purescript-newtype.git";
        rev = "7b292fcd2ac7c4a25d7a7a8d3387d0ee7de89b13";
        dependencies = [ prelude safe-coerce ];
      };

    node-buffer =
      { version = "7.0.0";
        repo = "https://github.com/purescript-node/purescript-node-buffer.git";
        rev = "8ec24154287bf90b7a5d9565a92ea12ea7ab06db";
        dependencies =
          [ arraybuffer-types
            effect
            maybe
            st
            unsafe-coerce
          ];
      };

    node-child-process =
      { version = "7.0.0";
        repo = "https://github.com/purescript-node/purescript-node-child-process.git";
        rev = "e16bcd291d93c52f470f72f7dcf46e9936017279";
        dependencies =
          [ exceptions
            foreign
            foreign-object
            functions
            node-fs
            node-streams
            nullable
            posix-types
            unsafe-coerce
          ];
      };

    node-fs =
      { version = "6.0.0";
        repo = "https://github.com/purescript-node/purescript-node-fs.git";
        rev = "009787abd658fdb206147ef0e00d9a35ec3dab74";
        dependencies =
          [ datetime
            effect
            either
            enums
            exceptions
            functions
            integers
            js-date
            maybe
            node-buffer
            node-path
            node-streams
            nullable
            partial
            prelude
            strings
            unsafe-coerce
          ];
      };

    node-path =
      { version = "4.0.0";
        repo = "https://github.com/purescript-node/purescript-node-path.git";
        rev = "a2d7cf05e40b607ef7d048a3684cda788cd42890";
        dependencies = [ effect ];
      };

    node-process =
      { version = "8.1.0";
        repo = "https://github.com/purescript-node/purescript-node-process.git";
        rev = "2b745b0b60824fca873482fb33e3b8d6cb1cf219";
        dependencies =
          [ effect
            foreign-object
            maybe
            node-streams
            posix-types
            prelude
            unsafe-coerce
          ];
      };

    node-streams =
      { version = "5.0.0";
        repo = "https://github.com/purescript-node/purescript-node-streams.git";
        rev = "886bb2045685e3b9031687d69ccfed29972147bb";
        dependencies =
          [ effect
            either
            exceptions
            node-buffer
            prelude
          ];
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

    now =
      { version = "5.0.0";
        repo = "https://github.com/purescript-contrib/purescript-now.git";
        rev = "aa085b059b7eff3ad335045859820010fba651a4";
        dependencies = [ datetime effect ];
      };

    nullable =
      { version = "5.0.0";
        repo = "https://github.com/purescript-contrib/purescript-nullable.git";
        rev = "5941cf0624d4783f5c471fabd17929bb16aba215";
        dependencies = [ effect functions maybe ];
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

    ordered-collections =
      { version = "2.0.0";
        repo = "https://github.com/purescript/purescript-ordered-collections.git";
        rev = "e834498ade247ac06e4791302d6007a26dd910b4";
        dependencies =
          [ arrays
            foldable-traversable
            gen
            lists
            maybe
            partial
            prelude
            st
            tailrec
            tuples
            unfoldable
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

    point-free =
      { repo = "https://github.com/ursi/purescript-point-free.git";
        rev = "703a87be330e762d66148e9baa3c1b9f5c6f148f";
        info = /package.nix;
      };

    posix-types =
      { version = "8.1.0";
        repo = "https://github.com/purescript-node/purescript-posix-types.git";
        rev = "e562680fce64b67e26741a61a51160a04fd3e7fb";
        dependencies = [ maybe prelude ];
      };

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

    return =
      { repo = "https://github.com/ursi/purescript-return.git";
        rev = "e2e8417436c532adadb40579a38d6aff254888e6";
        info = /package.nix;
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

    string-parsers =
      { version = "6.0.0";
        repo = "https://github.com/purescript-contrib/purescript-string-parsers.git";
        rev = "8cf080bf0f11b07afb8ae9da5d9da328bf4ba4c2";
        dependencies =
          [ arrays
            bifunctors
            control
            either
            foldable-traversable
            lists
            maybe
            prelude
            strings
            tailrec
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

    substitute =
      { repo = "https://github.com/ursi/purescript-substitute.git";
        rev = "0b43ed1b512a5165af8661eb6aaf9b793f5140dd";
        info = /package.nix;
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

    task =
      { repo = "https://github.com/ursi/purescript-task.git";
        rev = "ffd9c147261ba5cbf2c49e7250595815f7879503";
        info = /package.nix;
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

    web-dom =
      { version = "5.0.0";
        repo = "https://github.com/purescript-web/purescript-web-dom.git";
        rev = "03dfc2f512e124615ab183ade357e3d54007c79d";
        dependencies = [ web-events ];
      };

    web-events =
      { version = "5.0.0";
        repo = "https://github.com/purescript-web/purescript-web-events.git";
        rev = "c8a50893f04f54e2a59be7f885d25caef3589c57";
        dependencies = [ datetime enums nullable ];
      };

    web-file =
      { version = "3.0.0";
        repo = "https://github.com/purescript-web/purescript-web-file.git";
        rev = "3e42263b4392d82c0e379b7a481bbee9b38b1308";
        dependencies = [ foreign media-types web-dom ];
      };

    web-html =
      { version = "3.0.1";
        repo = "https://github.com/purescript-web/purescript-web-html.git";
        rev = "9e0e3fd78cd5b4e2f956a272247ec0af6808bfd2";
        dependencies =
          [ js-date
            web-dom
            web-file
            web-storage
          ];
      };

    web-storage =
      { version = "4.0.0";
        repo = "https://github.com/purescript-web/purescript-web-storage.git";
        rev = "22fa56bac204c708e521e746ad4ca2b5810f62c5";
        dependencies = [ nullable web-events ];
      };
  }
