ps-pkgs:
  with ps-pkgs;
  { abc-parser =
  { src.git =
      { repo = "https://github.com/newlandsvalley/purescript-abc-parser.git";
        rev = "177e4631a6c85a212ed06993242de23ef02629c5";
      };

    info =
      { version = "2.0.1";

        dependencies =
          [ "arrays" "bifunctors" "control" "either" "enums" "foldable-traversable" "identity" "integers" "js-bigints" "lists" "maybe" "midi" "newtype" "ordered-collections" "partial" "prelude" "profunctor-lenses" "rationals" "string-parsers" "strings" "stringutils" "transformers" "tuples" "unfoldable" 
          ];
      };
  };

ace =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-ace.git";
        rev = "9f13d2027b3d9766215285381a332393850387ab";
      };

    info =
      { version = "9.1.0";

        dependencies =
          [ "arrays" "effect" "foreign" "nullable" "prelude" "web-html" "web-uievents" 
          ];
      };
  };

aff =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-aff.git";
        rev = "6adec6ff048a7876f74c294c440374cd21342d39";
      };

    info =
      { version = "7.1.0";

        dependencies =
          [ "arrays" "bifunctors" "control" "datetime" "effect" "either" "exceptions" "foldable-traversable" "functions" "maybe" "newtype" "parallel" "prelude" "refs" "tailrec" "transformers" "unsafe-coerce" 
          ];
      };
  };

aff-bus =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-aff-bus.git";
        rev = "9456c593dd814880c34fd4c8b9e235c128147fa5";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "aff" "avar" "console" "effect" "either" "exceptions" "foldable-traversable" "lists" "prelude" "refs" "tailrec" "transformers" "tuples" 
          ];
      };
  };

aff-coroutines =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-aff-coroutines.git";
        rev = "ff20b14a1a8c14af382a211f7d66e97ff97f91b4";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "aff" "avar" "coroutines" "effect" 
          ];
      };
  };

aff-promise =
  { src.git =
      { repo = "https://github.com/nwolverson/purescript-aff-promise.git";
        rev = "3aa74e68e3e4c3e38d821375703e0b2f49d831eb";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "aff" "foreign" 
          ];
      };
  };

aff-retry =
  { src.git =
      { repo = "https://github.com/Unisay/purescript-aff-retry.git";
        rev = "d35856c35b3a471563f93c9da7dd19548552c8e9";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "aff" "arrays" "datetime" "effect" "either" "exceptions" "integers" "maybe" "newtype" "numbers" "prelude" "random" "transformers" 
          ];
      };
  };

affjax =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-affjax.git";
        rev = "87a8ffce89a476c1425370eb4b2b7e15408e0d1c";
      };

    info =
      { version = "13.0.0";

        dependencies =
          [ "aff" "argonaut-core" "arraybuffer-types" "foreign" "form-urlencoded" "http-methods" "integers" "media-types" "nullable" "refs" "unsafe-coerce" "web-xhr" 
          ];
      };
  };

affjax-node =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-affjax-node.git";
        rev = "e34901bab82cc741dd62511b4185b75dd7f315d3";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "affjax" "either" "maybe" "prelude" 
          ];
      };
  };

affjax-web =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-affjax-web.git";
        rev = "f53a865f4012e4c8bafdd52c6ba39697df68c9d9";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "affjax" "either" "maybe" "prelude" 
          ];
      };
  };

ansi =
  { src.git =
      { repo = "https://github.com/hdgarrood/purescript-ansi.git";
        rev = "d0d0507a0d88b6efc26bbe352756c85ae20922a1";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "foldable-traversable" "lists" "strings" 
          ];
      };
  };

argonaut =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-argonaut.git";
        rev = "7505a47f2edb0c9cacaac4f11dcedf4723a3e9c8";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "argonaut-codecs" "argonaut-core" "argonaut-traversals" 
          ];
      };
  };

argonaut-aeson-generic =
  { src.git =
      { repo = "https://github.com/coot/purescript-argonaut-aeson-generic.git";
        rev = "4cee717e3e0003b76e699550f5fc35976901078c";
      };

    info =
      { version = "0.4.1";

        dependencies =
          [ "argonaut-codecs" "argonaut-core" "argonaut-generic" "arrays" "bifunctors" "control" "effect" "either" "foldable-traversable" "foreign-object" "maybe" "partial" "prelude" "psci-support" "record" "test-unit" "typelevel-prelude" 
          ];
      };
  };

argonaut-codecs =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-argonaut-codecs.git";
        rev = "f8fdc1e34142fa84e66022ea5d417a008d709146";
      };

    info =
      { version = "9.1.0";

        dependencies =
          [ "argonaut-core" "arrays" "effect" "foreign-object" "identity" "integers" "maybe" "nonempty" "ordered-collections" "prelude" "record" 
          ];
      };
  };

argonaut-core =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-argonaut-core.git";
        rev = "68da81dd80ec36d3b013eff46dc067a972c22e5d";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "arrays" "control" "either" "foreign-object" "functions" "gen" "maybe" "nonempty" "prelude" "strings" "tailrec" 
          ];
      };
  };

argonaut-generic =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-argonaut-generic.git";
        rev = "2df4080f036762df91a24b22842e389395ef0bdd";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "argonaut-codecs" "argonaut-core" "prelude" "record" 
          ];
      };
  };

argonaut-traversals =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-argonaut-traversals.git";
        rev = "8d2403d8d57afb568933dbb36063d5670ce770a0";
      };

    info =
      { version = "10.0.0";

        dependencies =
          [ "argonaut-codecs" "argonaut-core" "profunctor-lenses" 
          ];
      };
  };

argparse-basic =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-argparse-basic.git";
        rev = "7bccde3fda0124c1bf25e91b05f9988e45f584d9";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "arrays" "bifunctors" "control" "either" "foldable-traversable" "integers" "lists" "maybe" "newtype" "numbers" "prelude" "record" "strings" "tuples" "unfoldable" 
          ];
      };
  };

array-builder =
  { src.git =
      { repo = "https://github.com/paluh/purescript-array-builder.git";
        rev = "c5ff12dc1f206c335a71511f5034640cbb0374ed";
      };

    info =
      { version = "0.1.2";

        dependencies =
          [ "arrays" "assert" "console" "effect" "foldable-traversable" "maybe" "nullable" "prelude" 
          ];
      };
  };

array-search =
  { src.git =
      { repo = "https://github.com/joellefkowitz/array-search.git";
        rev = "21347a33226b6667e2c91e1658e3bd611270f14d";
      };

    info =
      { version = "0.5.6";

        dependencies =
          [ "arrays" "effect" "foldable-traversable" "maybe" "prelude" 
          ];
      };
  };

arraybuffer =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-arraybuffer.git";
        rev = "6cc1a1ac27a2f280f9b908542c38b7672449875f";
      };

    info =
      { version = "13.2.0";

        dependencies =
          [ "arraybuffer-types" "arrays" "effect" "float32" "functions" "gen" "maybe" "nullable" "prelude" "tailrec" "uint" "unfoldable" 
          ];
      };
  };

arraybuffer-builder =
  { src.git =
      { repo = "https://github.com/jamesdbrock/purescript-arraybuffer-builder.git";
        rev = "32305e6b211da98f1d4a7e70b94acc47d99e823e";
      };

    info =
      { version = "3.1.0";

        dependencies =
          [ "arraybuffer" "arraybuffer-types" "effect" "float32" "identity" "lists" "maybe" "newtype" "prelude" "tailrec" "transformers" "uint" 
          ];
      };
  };

arraybuffer-types =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-arraybuffer-types.git";
        rev = "9b0b7a0f9ee034e039f3d3a2a9c3f74eb7c9264a";
      };

    info =
      { version = "3.0.2";

        dependencies =
          [ 
          ];
      };
  };

arrays =
  { src.git =
      { repo = "https://github.com/purescript/purescript-arrays.git";
        rev = "ad760640451bd6b4bdd5d44969940217767accba";
      };

    info =
      { version = "7.2.1";

        dependencies =
          [ "bifunctors" "control" "foldable-traversable" "functions" "maybe" "nonempty" "partial" "prelude" "safe-coerce" "st" "tailrec" "tuples" "unfoldable" "unsafe-coerce" 
          ];
      };
  };

arrays-zipper =
  { src.git =
      { repo = "https://github.com/JordanMartinez/purescript-arrays-zipper.git";
        rev = "b9f218ec04008f107ebc2be6525e7e74a3e30b02";
      };

    info =
      { version = "2.0.1";

        dependencies =
          [ "arrays" "control" "quickcheck" 
          ];
      };
  };

ask =
  { src.git =
      { repo = "https://github.com/Mateiadrielrafael/purescript-ask.git";
        rev = "536e8f5855222c580d198f9742e6de012bd1a4c7";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "unsafe-coerce" 
          ];
      };
  };

"assert" =
  { src.git =
      { repo = "https://github.com/purescript/purescript-assert.git";
        rev = "27c0edb57d2ee497eb5fab664f5601c35b613eda";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "console" "effect" "prelude" 
          ];
      };
  };

assert-multiple =
  { src.git =
      { repo = "https://github.com/joellefkowitz/assert-multiple.git";
        rev = "cbe5759e56c12b772db392aed90c405ad6d5d8f3";
      };

    info =
      { version = "0.3.4";

        dependencies =
          [ "effect" "foldable-traversable" "prelude" 
          ];
      };
  };

avar =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-avar.git";
        rev = "d00f5784d9cc8f079babd62740f5c52b87e5caa5";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "aff" "effect" "either" "exceptions" "functions" "maybe" 
          ];
      };
  };

b64 =
  { src.git =
      { repo = "https://github.com/menelaos/purescript-b64.git";
        rev = "1d66c26733ed5924bcab8901204245daac0f2952";
      };

    info =
      { version = "0.0.8";

        dependencies =
          [ "arraybuffer-types" "either" "encoding" "enums" "exceptions" "functions" "partial" "prelude" "strings" 
          ];
      };
  };

barbies =
  { src.git =
      { repo = "https://github.com/the-dr-lazy/purescript-barbies.git";
        rev = "3d4e1e971925eb976ee65f431002815addd75faa";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "console" "const" "control" "effect" "prelude" "psci-support" "transformers" 
          ];
      };
  };

barlow-lens =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-barlow-lens.git";
        rev = "aabe75e66acb3ce68017f8a74517528673634c03";
      };

    info =
      { version = "0.9.0";

        dependencies =
          [ "either" "foldable-traversable" "lists" "maybe" "newtype" "prelude" "profunctor" "profunctor-lenses" "tuples" "typelevel-prelude" 
          ];
      };
  };

basic-auth =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-basic-auth.git";
        rev = "cdf48c2bfd486eca551bc7240e44c430202ecf5e";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ "arrays" "crypto" "effect" "foreign-object" "maybe" "node-buffer" "node-http" "prelude" "strings" "transformers" 
          ];
      };
  };

bifunctors =
  { src.git =
      { repo = "https://github.com/purescript/purescript-bifunctors.git";
        rev = "16ba2fb6dd7f05528ebd9e2f9ca3a068b325e5b3";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "const" "either" "newtype" "prelude" "tuples" 
          ];
      };
  };

bigints =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-bigints.git";
        rev = "e73f55b866e437c7bf04c7d262de7c205c47bbca";
      };

    info =
      { version = "7.0.1";

        dependencies =
          [ "arrays" "assert" "console" "effect" "foldable-traversable" "integers" "maybe" "numbers" "partial" "prelude" "quickcheck" "quickcheck-laws" "strings" 
          ];
      };
  };

bolson =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-bolson.git";
        rev = "d07a7a3b981b4a89d6750c15c00ccc1c29fbd044";
      };

    info =
      { version = "0.3.9";

        dependencies =
          [ "control" "effect" "fast-vect" "filterable" "foldable-traversable" "foreign-object" "hyrule" "maybe" "prelude" "record" "st" "tuples" "unsafe-coerce" 
          ];
      };
  };

bookhound =
  { src.git =
      { repo = "https://github.com/albertprz/purescript-bookhound.git";
        rev = "582728f1b293426ec402255fb3b34ca4b83a5170";
      };

    info =
      { version = "0.1.3";

        dependencies =
          [ "arrays" "bifunctors" "control" "either" "foldable-traversable" "integers" "lazy" "lists" "maybe" "newtype" "numbers" "ordered-collections" "partial" "prelude" "psci-support" "strings" "tuples" "unfoldable" "unicode" 
          ];
      };
  };

bower-json =
  { src.git =
      { repo = "https://github.com/klntsky/purescript-bower-json.git";
        rev = "3df8217cccb81c634ebc5b4bb83574001e352686";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "argonaut-codecs" "arrays" "either" "foldable-traversable" "foreign-object" "maybe" "newtype" "prelude" "tuples" 
          ];
      };
  };

bucketchain =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain.git";
        rev = "f55a82eae649b354ed95cd01940076a3f397728a";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "console" "control" "effect" "either" "exceptions" "foreign-object" "maybe" "node-buffer" "node-http" "node-streams" "nullable" "options" "prelude" "refs" "tailrec" "transformers" "unsafe-coerce" 
          ];
      };
  };

bucketchain-basic-auth =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-basic-auth.git";
        rev = "c00cf6f421872e225b5732f0cbf11ed77f530712";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "basic-auth" "bucketchain" "effect" "maybe" "prelude" "transformers" 
          ];
      };
  };

bucketchain-conditional =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-conditional.git";
        rev = "464f79ca4f211a9753b602fe539e6073693996d9";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "bucketchain" "effect" "foreign-object" "js-date" "maybe" "prelude" "strings" "transformers" 
          ];
      };
  };

bucketchain-cors =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-cors.git";
        rev = "7fa69f5751bbae616771ef68a5c49e98d91a818a";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "arrays" "bucketchain" "bucketchain-header-utils" "datetime" "effect" "either" "foldable-traversable" "foreign-object" "http-methods" "integers" "maybe" "prelude" "strings" "transformers" 
          ];
      };
  };

bucketchain-csrf =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-csrf.git";
        rev = "bb5eccdfeea203dc842b3286de76906d2c3be444";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "bucketchain" "control" "effect" "foldable-traversable" "foreign-object" "maybe" "prelude" "transformers" 
          ];
      };
  };

bucketchain-header-utils =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-header-utils.git";
        rev = "fafe440540476a0a62020ecaf2d17693683b2e2c";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "arrays" "bucketchain" "datetime" "effect" "foreign-object" "integers" "maybe" "prelude" "strings" "tuples" 
          ];
      };
  };

bucketchain-health =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-health.git";
        rev = "0ad59876d8df712ede9919e6228d0d39a4670e71";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "bucketchain" "effect" "maybe" "prelude" "transformers" 
          ];
      };
  };

bucketchain-history-api-fallback =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-history-api-fallback.git";
        rev = "7e671730fb811e741b4b9497fce58b0630d7febf";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "bucketchain" "effect" "foreign-object" "maybe" "node-url" "nullable" "prelude" "strings" "transformers" 
          ];
      };
  };

bucketchain-logger =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-logger.git";
        rev = "7d0fb318335f47d628f6eb3fb8e9c7d57ab94a6d";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "arrays" "bucketchain" "effect" "either" "exceptions" "foldable-traversable" "foreign-object" "js-date" "maybe" "node-buffer" "node-http" "node-process" "node-streams" "prelude" "strings" "transformers" "tuples" 
          ];
      };
  };

bucketchain-secure =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-secure.git";
        rev = "8e617bea33a32323de7b8ed02b04e7bbaa645350";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "arrays" "bucketchain" "datetime" "effect" "integers" "maybe" "newtype" "prelude" "strings" "transformers" 
          ];
      };
  };

bucketchain-simple-api =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-simple-api.git";
        rev = "c21bd46117695557ce04d674422b97fbb976d1b8";
      };

    info =
      { version = "5.0.1";

        dependencies =
          [ "aff" "arrays" "bucketchain" "control" "effect" "either" "exceptions" "foreign" "foreign-object" "freet" "lists" "maybe" "media-types" "nullable" "parallel" "prelude" "simple-json" "strings" "tailrec" "transformers" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

bucketchain-sslify =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-sslify.git";
        rev = "dd2e50c33336efc747ee70552a65cc381e453312";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "bucketchain" "effect" "foreign-object" "maybe" "node-http" "prelude" "transformers" 
          ];
      };
  };

bucketchain-static =
  { src.git =
      { repo = "https://github.com/Bucketchain/purescript-bucketchain-static.git";
        rev = "d20e8be0c68da625d1a39bc4100b631120c509e3";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "bucketchain" "datetime" "effect" "either" "exceptions" "foldable-traversable" "foreign-object" "integers" "js-date" "maybe" "newtype" "node-fs" "node-fs-aff" "node-path" "node-url" "nullable" "prelude" "strings" "transformers" "tuples" 
          ];
      };
  };

call-by-name =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-call-by-name.git";
        rev = "1f4a7ca0ef1cda0067bafdf5ca30f22619e3634f";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "control" "either" "lazy" "maybe" "unsafe-coerce" 
          ];
      };
  };

canvas =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-canvas.git";
        rev = "bb640e46d64324678111262a8b5dddc13d7e61b6";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "arraybuffer-types" "effect" "exceptions" "functions" "maybe" 
          ];
      };
  };

canvas-action =
  { src.git =
      { repo = "https://github.com/artemisSystem/purescript-canvas-action.git";
        rev = "c3ec16cc9fd0edf1442c7445aec43bd67778bced";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "aff" "arrays" "canvas" "colors" "effect" "either" "exceptions" "foldable-traversable" "maybe" "numbers" "polymorphic-vectors" "prelude" "refs" "run" "transformers" "tuples" "type-equality" "typelevel-prelude" "unsafe-coerce" "web-dom" "web-events" "web-html" 
          ];
      };
  };

cartesian =
  { src.git =
      { repo = "https://github.com/Ebmtranceboy/purescript-cartesian.git";
        rev = "ab070c14f79ef6f49093436db2441b3a8a223a1d";
      };

    info =
      { version = "1.0.6";

        dependencies =
          [ "console" "effect" "integers" "psci-support" 
          ];
      };
  };

catenable-lists =
  { src.git =
      { repo = "https://github.com/purescript/purescript-catenable-lists.git";
        rev = "09abe1f4888bc00841ad2b59e56a9e7ce7ebd4ab";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "control" "foldable-traversable" "lists" "maybe" "prelude" "tuples" "unfoldable" 
          ];
      };
  };

chameleon =
  { src.git =
      { repo = "https://github.com/thought2/purescript-chameleon.git";
        rev = "f9d8085726f7fcde54a459f2eacc4e55b1d6b3d1";
      };

    info =
      { version = "0.0.5";

        dependencies =
          [ "either" "foreign" "maybe" "prelude" "strings" "transformers" "tuples" "variant" 
          ];
      };
  };

chameleon-halogen =
  { src.git =
      { repo = "https://github.com/thought2/purescript-chameleon-halogen.git";
        rev = "79e4e4cfcd2f6e7144ca90ba489738692f0ebd46";
      };

    info =
      { version = "0.0.5";

        dependencies =
          [ "aff" "bifunctors" "chameleon" "effect" "foreign" "foreign-object" "halogen" "halogen-vdom" "maybe" "prelude" "safe-coerce" "strings" "tuples" "unsafe-coerce" "web-events" "web-html" 
          ];
      };
  };

chameleon-react-basic =
  { src.git =
      { repo = "https://github.com/thought2/purescript-chameleon-react-basic.git";
        rev = "9a74183f20efa581b0aed959c2faee7f8cd42770";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "arrays" "chameleon" "effect" "foreign" "foreign-object" "maybe" "prelude" "react-basic" "react-basic-dom" "react-basic-hooks" "strings" "tuples" "unsafe-coerce" "web-dom" 
          ];
      };
  };

chameleon-styled =
  { src.git =
      { repo = "https://github.com/thought2/purescript-chameleon-styled.git";
        rev = "4e65c056c815c7da1dbde8067fc1210f06c5735a";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "arrays" "chameleon" "chameleon-transformers" "foldable-traversable" "maybe" "newtype" "prelude" "strings" "tuples" "unordered-collections" 
          ];
      };
  };

chameleon-transformers =
  { src.git =
      { repo = "https://github.com/thought2/purescript-chameleon-transformers.git";
        rev = "09b5ba0a721065dd3ca2d055c956c6c58dc0c7c6";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "chameleon" "foldable-traversable" "maybe" "prelude" "these" "transformers" "tuples" 
          ];
      };
  };

channel =
  { src.git =
      { repo = "https://github.com/ConnorDillon/purescript-channel.git";
        rev = "8f446034a829a652c18ed2a4e8168f9672ba21f6";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "assert" "avar" "console" "contravariant" "control" "effect" "either" "exceptions" "foldable-traversable" "lazy" "maybe" "newtype" "prelude" "tailrec" "transformers" "tuples" 
          ];
      };
  };

checked-exceptions =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-checked-exceptions.git";
        rev = "6ece020df25d01ee95474f7545f28e75dcfb0f0c";
      };

    info =
      { version = "3.1.1";

        dependencies =
          [ "prelude" "transformers" "variant" 
          ];
      };
  };

classless =
  { src.git =
      { repo = "https://github.com/thought2/purescript-classless.git";
        rev = "46c72d7903ec808ab38466e0726660379b57a5c2";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "heterogeneous" "prelude" "record" 
          ];
      };
  };

classless-arbitrary =
  { src.git =
      { repo = "https://github.com/thought2/purescript-classless-arbitrary.git";
        rev = "8cf0b4d9401d0fa2b3b028d718bed809a05eeffa";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "arrays" "classless" "either" "enums" "gen" "heterogeneous" "identity" "lists" "maybe" "partial" "prelude" "quickcheck" "record" "st" "strings" "tuples" "type-equality" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

classless-decode-json =
  { src.git =
      { repo = "https://github.com/thought2/purescript-classless-decode-json.git";
        rev = "85d155f63824ddc96f221c589d3ee64394e016da";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "argonaut" "classless" "console" "effect" "either" "maybe" "prelude" "record" "tuples" 
          ];
      };
  };

classless-encode-json =
  { src.git =
      { repo = "https://github.com/thought2/purescript-classless-encode-json.git";
        rev = "c48bca4c1b1679947c310ca627a7b503c0ba76c5";
      };

    info =
      { version = "0.1.3";

        dependencies =
          [ "argonaut" "argonaut-codecs" "argonaut-core" "classless" "either" "foreign-object" "maybe" "partial" "prelude" "record" "tuples" "type-equality" 
          ];
      };
  };

classnames =
  { src.git =
      { repo = "https://github.com/dewey92/purescript-classnames.git";
        rev = "09e9fb3bad04173d89fe2288a1d1e3b47c2cffad";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "maybe" "prelude" "record" "strings" "tuples" 
          ];
      };
  };

codec =
  { src.git =
      { repo = "https://github.com/garyb/purescript-codec.git";
        rev = "0e427b4665d2a6b1b34f97df1fa1dd65ebada16f";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "bifunctors" "profunctor" 
          ];
      };
  };

codec-argonaut =
  { src.git =
      { repo = "https://github.com/garyb/purescript-codec-argonaut.git";
        rev = "d6c26da5638f19eded1e269117e7ddd7e0b78fd8";
      };

    info =
      { version = "10.0.0";

        dependencies =
          [ "argonaut-core" "codec" "foreign-object" "ordered-collections" "type-equality" "variant" 
          ];
      };
  };

colors =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-colors.git";
        rev = "e1967ff4f1d30c707fc6d9368943e1535c22b748";
      };

    info =
      { version = "7.0.1";

        dependencies =
          [ "arrays" "integers" "lists" "numbers" "partial" "strings" 
          ];
      };
  };

concur-core =
  { src.git =
      { repo = "https://github.com/purescript-concur/purescript-concur-core.git";
        rev = "033f3cf96ecf4ebdf1f86110c91657657556c6ef";
      };

    info =
      { version = "0.5.0";

        dependencies =
          [ "aff" "aff-bus" "arrays" "avar" "console" "control" "datetime" "effect" "either" "exceptions" "foldable-traversable" "free" "identity" "lazy" "maybe" "newtype" "parallel" "prelude" "profunctor-lenses" "tailrec" "transformers" "tuples" 
          ];
      };
  };

concur-react =
  { src.git =
      { repo = "https://github.com/purescript-concur/purescript-concur-react.git";
        rev = "92d811b957e6e3d4c790a0db34be0fb5ee2c5981";
      };

    info =
      { version = "0.5.0";

        dependencies =
          [ "aff" "arrays" "avar" "concur-core" "console" "foldable-traversable" "free" "nonempty" "profunctor-lenses" "react" "react-dom" "tailrec" "web-dom" "web-html" 
          ];
      };
  };

concurrent-queues =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-concurrent-queues.git";
        rev = "905a0cb902dec070fa621819455363660de289c4";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "aff" "avar" "effect" 
          ];
      };
  };

console =
  { src.git =
      { repo = "https://github.com/purescript/purescript-console.git";
        rev = "3b83d7b792d03872afeea5e62b4f686ab0f09842";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "effect" "prelude" 
          ];
      };
  };

const =
  { src.git =
      { repo = "https://github.com/purescript/purescript-const.git";
        rev = "ab9570cf2b6e67f7e441178211db1231cfd75c37";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "invariant" "newtype" "prelude" 
          ];
      };
  };

contravariant =
  { src.git =
      { repo = "https://github.com/purescript/purescript-contravariant.git";
        rev = "9ad3e105b8855bcc25f4e0893c784789d05a58de";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "const" "either" "newtype" "prelude" "tuples" 
          ];
      };
  };

control =
  { src.git =
      { repo = "https://github.com/purescript/purescript-control.git";
        rev = "a6033808790879a17b2729e73747a9ed3fb2264e";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "newtype" "prelude" 
          ];
      };
  };

convertable-options =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-convertable-options.git";
        rev = "58728f24d9a5f28e359b4e7940b347c80cb56c6a";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "console" "effect" "maybe" "record" 
          ];
      };
  };

coroutines =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-coroutines.git";
        rev = "7aa4174c1a981ad0a43dba1d3efad78d76838f5a";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "freet" "parallel" "profunctor" 
          ];
      };
  };

crypto =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-crypto.git";
        rev = "c6880b7574d336a1b204e0aa4262d5a61538570b";
      };

    info =
      { version = "5.0.1";

        dependencies =
          [ "aff" "effect" "functions" "maybe" "node-buffer" "nullable" "prelude" 
          ];
      };
  };

css =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-css.git";
        rev = "710d6a742beb88299faf08aaeb997ee1e24483ab";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "colors" "console" "effect" "nonempty" "profunctor" "strings" "these" "transformers" 
          ];
      };
  };

css-frameworks =
  { src.git =
      { repo = "https://github.com/deemp/purescript-css-frameworks.git";
        rev = "651daf1d0a23396d6479d18ec815a14509da91ef";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "web-html" 
          ];
      };
  };

data-mvc =
  { src.git =
      { repo = "https://github.com/thought2/purescript-data-mvc.git";
        rev = "9efdcfb5ce37e2cedb8f4f33e9e432ef1b62a644";
      };

    info =
      { version = "0.0.2";

        dependencies =
          [ "arrays" "bifunctors" "either" "heterogeneous" "maybe" "mvc" "newtype" "prelude" "profunctor" "record" "variant" 
          ];
      };
  };

datetime =
  { src.git =
      { repo = "https://github.com/purescript/purescript-datetime.git";
        rev = "7f6062346055e654942caed6c44612b59031f059";
      };

    info =
      { version = "6.1.0";

        dependencies =
          [ "bifunctors" "control" "either" "enums" "foldable-traversable" "functions" "gen" "integers" "lists" "maybe" "newtype" "numbers" "ordered-collections" "partial" "prelude" "tuples" 
          ];
      };
  };

datetime-parsing =
  { src.git =
      { repo = "https://github.com/flounders/purescript-datetime-parsing.git";
        rev = "9d496b7ae82e0bf1dd337dfe6a0618c5c5f92fd5";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "arrays" "datetime" "either" "enums" "foldable-traversable" "integers" "lists" "maybe" "numbers" "parsing" "prelude" "strings" "unicode" 
          ];
      };
  };

debug =
  { src.git =
      { repo = "https://github.com/garyb/purescript-debug.git";
        rev = "a37b82f62c89734934c0962ece3412913020460a";
      };

    info =
      { version = "6.0.2";

        dependencies =
          [ "functions" "prelude" 
          ];
      };
  };

decimals =
  { src.git =
      { repo = "https://github.com/sharkdp/purescript-decimals.git";
        rev = "1347856b26ba194f8ee7682a038c4e95c971e064";
      };

    info =
      { version = "7.1.0";

        dependencies =
          [ "maybe" 
          ];
      };
  };

default-values =
  { src.git =
      { repo = "https://github.com/imsaravana369/purescript-default.git";
        rev = "43c2b2bc3ff19718232a51557c10316cbd30375b";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "either" "foreign-object" "lists" "maybe" "ordered-collections" "prelude" "tuples" 
          ];
      };
  };

deku =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-deku.git";
        rev = "778a6ee1883bd353c9f51cbc27aa2ccfc1838dde";
      };

    info =
      { version = "0.9.23";

        dependencies =
          [ "aff" "arrays" "bolson" "catenable-lists" "control" "css" "effect" "either" "fast-vect" "filterable" "foldable-traversable" "foreign-object" "free" "hyrule" "maybe" "newtype" "ordered-collections" "prelude" "profunctor" "quickcheck" "record" "safe-coerce" "st" "strings" "stringutils" "transformers" "tuples" "unsafe-coerce" "web-dom" "web-events" "web-html" "web-uievents" 
          ];
      };
  };

deno =
  { src.git =
      { repo = "https://github.com/njaremko/purescript-deno.git";
        rev = "87bfe517d9ad0fc846979e0dee32e6932377d8f6";
      };

    info =
      { version = "0.0.5";

        dependencies =
          [ "aff" "aff-promise" "argonaut" "arraybuffer-types" "console" "effect" "either" "functions" "maybe" "ordered-collections" "prelude" "strings" "tuples" "unsafe-coerce" "web-streams" 
          ];
      };
  };

dissect =
  { src.git =
      { repo = "https://github.com/PureFunctor/purescript-dissect.git";
        rev = "289ba44d0f711dbc54054fac5f05df861b4e3661";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "arrays" "bifunctors" "foreign-object" "functors" "newtype" "partial" "prelude" "tailrec" "type-equality" "typelevel-prelude" "unsafe-coerce" "variant" 
          ];
      };
  };

distributive =
  { src.git =
      { repo = "https://github.com/purescript/purescript-distributive.git";
        rev = "6005e513642e855ebf6f884d24a35c2803ca252a";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "identity" "newtype" "prelude" "tuples" "type-equality" 
          ];
      };
  };

dodo-printer =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-dodo-printer.git";
        rev = "831c5c963a57ca4bfd62f96335267d7d0785851d";
      };

    info =
      { version = "2.2.1";

        dependencies =
          [ "aff" "ansi" "arrays" "avar" "console" "control" "effect" "either" "exceptions" "foldable-traversable" "integers" "lists" "maybe" "minibench" "newtype" "node-buffer" "node-child-process" "node-fs-aff" "node-path" "node-process" "node-streams" "parallel" "partial" "posix-types" "prelude" "safe-coerce" "strings" "tuples" 
          ];
      };
  };

dom-filereader =
  { src.git =
      { repo = "https://github.com/nwolverson/purescript-dom-filereader.git";
        rev = "c65f2594c5dbf536c8b2717e6027f16321e752d9";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "aff" "arraybuffer-types" "web-file" "web-html" 
          ];
      };
  };

dom-indexed =
  { src.git =
      { repo = "https://github.com/purescript-halogen/purescript-dom-indexed.git";
        rev = "b462b7391f89cda71d8559cc6f0a49755fae6a99";
      };

    info =
      { version = "11.0.0";

        dependencies =
          [ "media-types" "prelude" "web-clipboard" "web-pointerevents" "web-touchevents" 
          ];
      };
  };

dotenv =
  { src.git =
      { repo = "https://github.com/nsaunders/purescript-dotenv.git";
        rev = "1b1ddeaf5e5869b9dd98517b20b4ff0b79036f59";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "aff" "arrays" "control" "effect" "either" "exceptions" "foldable-traversable" "lists" "maybe" "node-buffer" "node-child-process" "node-fs-aff" "node-process" "parsing" "prelude" "run" "strings" "sunde" "transformers" "tuples" "typelevel-prelude" 
          ];
      };
  };

droplet =
  { src.git =
      { repo = "https://github.com/easafe/purescript-droplet.git";
        rev = "372b8571bf8bb5b33b3dde33777bbb8c4885b399";
      };

    info =
      { version = "0.6.0";

        dependencies =
          [ "aff" "arrays" "bifunctors" "bigints" "datetime" "debug" "effect" "either" "enums" "exceptions" "foldable-traversable" "foreign" "foreign-object" "integers" "maybe" "newtype" "nonempty" "nullable" "ordered-collections" "partial" "prelude" "profunctor" "record" "spec" "strings" "transformers" "tuples" "type-equality" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

dts =
  { src.git =
      { repo = "https://github.com/thought2/purescript-dts.git";
        rev = "11e8d4288ac4520ee81d16ad07d2e1e553603e5c";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "arrays" "console" "effect" "maybe" "newtype" "ordered-collections" "ordered-set" "prelude" "tuples" 
          ];
      };
  };

dynamic-buffer =
  { src.git =
      { repo = "https://github.com/kritzcreek/purescript-dynamic-buffer.git";
        rev = "0442b10905199576f49f8f9db58389709ac6660f";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ "arraybuffer-types" "effect" "refs" 
          ];
      };
  };

echarts-simple =
  { src.git =
      { repo = "https://github.com/lucasdicioccio/purescript-echarts-simple.git";
        rev = "f8d12e9e88f669c2c5b4e953108cb60d213f151b";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "console" "effect" "functions" "prelude" "web-dom" 
          ];
      };
  };

effect =
  { src.git =
      { repo = "https://github.com/purescript/purescript-effect.git";
        rev = "a192ddb923027d426d6ea3d8deb030c9aa7c7dda";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "prelude" 
          ];
      };
  };

either =
  { src.git =
      { repo = "https://github.com/purescript/purescript-either.git";
        rev = "2a84a9cfce9fc33dfbaf9f6f8ec31588c9340aea";
      };

    info =
      { version = "6.1.0";

        dependencies =
          [ "control" "invariant" "maybe" "prelude" 
          ];
      };
  };

elmish =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish.git";
        rev = "0c435bb3602565c0d01ed8c4c1b9de0a2b16d5e2";
      };

    info =
      { version = "0.10.0";

        dependencies =
          [ "aff" "argonaut-core" "arrays" "bifunctors" "console" "debug" "effect" "either" "foldable-traversable" "foreign" "foreign-object" "functions" "integers" "js-date" "maybe" "nullable" "partial" "prelude" "refs" "safe-coerce" "type-equality" "typelevel-prelude" "undefined-is-not-a-problem" "unsafe-coerce" "web-dom" "web-html" 
          ];
      };
  };

elmish-enzyme =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish-enzyme.git";
        rev = "7c63cd710d11cf1d3434ee9bec2f55c8975bb4a0";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "aff" "aff-promise" "arrays" "console" "debug" "effect" "elmish" "foldable-traversable" "foreign" "functions" "prelude" "transformers" "unsafe-coerce" 
          ];
      };
  };

elmish-hooks =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish-hooks.git";
        rev = "2d15237b86ead1cba9a2221607445fb0d7b14360";
      };

    info =
      { version = "0.9.1";

        dependencies =
          [ "aff" "debug" "elmish" "maybe" "prelude" "tuples" "undefined-is-not-a-problem" 
          ];
      };
  };

elmish-html =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish-html.git";
        rev = "083f75a10e1d7dcdf0987989b6dbdd110224c5b7";
      };

    info =
      { version = "0.8.1";

        dependencies =
          [ "effect" "elmish" "foreign" "foreign-object" "maybe" "prelude" "record" "typelevel-prelude" "unsafe-coerce" "web-dom" "web-events" "web-html" 
          ];
      };
  };

elmish-testing-library =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish-testing-library.git";
        rev = "ac456e7c1fa38d5254a9c6f68a44c4d22644b76c";
      };

    info =
      { version = "0.3.1";

        dependencies =
          [ "aff" "arrays" "datetime" "effect" "elmish" "exceptions" "foldable-traversable" "maybe" "nullable" "prelude" "transformers" "web-dom" "web-html" 
          ];
      };
  };

email-validate =
  { src.git =
      { repo = "https://github.com/cdepillabout/purescript-email-validate.git";
        rev = "fba8ff54ad352bfd790a1ea34823524ab23754ff";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "aff" "string-parsers" "transformers" 
          ];
      };
  };

encoding =
  { src.git =
      { repo = "https://github.com/menelaos/purescript-encoding.git";
        rev = "a9d1913de736821c133ecd7944a08b2ab07ad774";
      };

    info =
      { version = "0.0.8";

        dependencies =
          [ "arraybuffer-types" "either" "exceptions" "functions" "prelude" 
          ];
      };
  };

enums =
  { src.git =
      { repo = "https://github.com/purescript/purescript-enums.git";
        rev = "bf8cd640314f051a910a2df4427f0b99529c098c";
      };

    info =
      { version = "6.0.1";

        dependencies =
          [ "control" "either" "gen" "maybe" "newtype" "nonempty" "partial" "prelude" "tuples" "unfoldable" 
          ];
      };
  };

env-names =
  { src.git =
      { repo = "https://github.com/joellefkowitz/env-names.git";
        rev = "0c591c8f7a205ddb31400ec45a4c67ce99e3f4ea";
      };

    info =
      { version = "0.3.4";

        dependencies =
          [ "arrays" "maybe" "prelude" 
          ];
      };
  };

error =
  { src.git =
      { repo = "https://github.com/bklaric/purescript-error.git";
        rev = "0fee4d26ecf047bd9f48146ef31db700169de0f8";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "console" "effect" "prelude" 
          ];
      };
  };

exceptions =
  { src.git =
      { repo = "https://github.com/purescript/purescript-exceptions.git";
        rev = "afab3c07c820bb49b6c5be50049db46a964a6161";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "effect" "either" "maybe" "prelude" 
          ];
      };
  };

exists =
  { src.git =
      { repo = "https://github.com/purescript/purescript-exists.git";
        rev = "f765b4ace7869c27b9c05949e18c843881f9173b";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "unsafe-coerce" 
          ];
      };
  };

exitcodes =
  { src.git =
      { repo = "https://github.com/Risto-Stevcev/purescript-exitcodes.git";
        rev = "8a9a93fd1776aba4a14cdc9a31094c9e05b05348";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "enums" 
          ];
      };
  };

expect-inferred =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-expect-inferred.git";
        rev = "f43fda03d49647e6c598fceee684168a76cc76eb";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "prelude" "typelevel-prelude" 
          ];
      };
  };

fahrtwind =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-fahrtwind.git";
        rev = "8c7ac94bf4620f8a40e4f478b21bce2edeabbcc5";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "arrays" "colors" "foreign-object" "integers" "prelude" "react-basic" "react-basic-dom" "react-basic-emotion" "tuples" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

fallback =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-fallback.git";
        rev = "df46585e622de68b56eca612b00c3f36229b68b0";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "console" "effect" "either" "foldable-traversable" "prelude" "transformers" 
          ];
      };
  };

fast-vect =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-fast-vect.git";
        rev = "719b961c539cb5b728c6bdef52b42b317813e397";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ "arrays" "distributive" "filterable" "foldable-traversable" "lists" "maybe" "ordered-collections" "prelude" "profunctor" "tuples" "unfoldable" "unsafe-coerce" 
          ];
      };
  };

fetch =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-fetch.git";
        rev = "37dd5d714181558078461bb3ece7cb9d64a57580";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "aff" "arraybuffer-types" "effect" "fetch-core" "foreign" "http-methods" "js-promise-aff" "newtype" "prelude" "record" "typelevel-prelude" "web-file" "web-streams" 
          ];
      };
  };

fetch-argonaut =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-fetch-argonaut.git";
        rev = "05c77ea059ad71ad26c840b96272bb2290ac5a80";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "argonaut" "console" "effect" "either" "foreign" "prelude" "transformers" "unsafe-coerce" 
          ];
      };
  };

fetch-core =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-fetch-core.git";
        rev = "83aad59e6a8ba4ef06d2398103e7fbe98ee98999";
      };

    info =
      { version = "5.1.0";

        dependencies =
          [ "arraybuffer-types" "arrays" "console" "effect" "foldable-traversable" "foreign" "foreign-object" "functions" "http-methods" "js-promise" "maybe" "newtype" "nullable" "prelude" "record" "tuples" "typelevel-prelude" "unfoldable" "unsafe-coerce" "web-file" "web-streams" 
          ];
      };
  };

fetch-yoga-json =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-fetch-yoga-json.git";
        rev = "19994479fe7d76848d84ab3ff6eb181b828956fd";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ "aff" "either" "exceptions" "foreign" "lists" "prelude" "transformers" "yoga-json" 
          ];
      };
  };

filterable =
  { src.git =
      { repo = "https://github.com/purescript/purescript-filterable.git";
        rev = "7c5b8c72779997f2b17d12ce478ff81e7ddda285";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "arrays" "either" "foldable-traversable" "identity" "lists" "ordered-collections" 
          ];
      };
  };

fixed-points =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-fixed-points.git";
        rev = "2b7f480038a15c707adf49178181cefed167afb2";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "exists" "newtype" "prelude" "transformers" 
          ];
      };
  };

fixed-precision =
  { src.git =
      { repo = "https://github.com/lumihq/purescript-fixed-precision.git";
        rev = "63781fda654ffaecbb1dfac5fa7112f14f860081";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "arrays" "bigints" "control" "integers" "maybe" "numbers" "partial" "prelude" "strings" 
          ];
      };
  };

flame =
  { src.git =
      { repo = "https://github.com/easafe/purescript-flame.git";
        rev = "b64ae08e8b15e7d3f0948452a71467331c09636b";
      };

    info =
      { version = "1.3.0";

        dependencies =
          [ "aff" "argonaut-codecs" "argonaut-core" "argonaut-generic" "arrays" "bifunctors" "console" "effect" "either" "exceptions" "foldable-traversable" "foreign" "foreign-object" "maybe" "newtype" "nullable" "partial" "prelude" "random" "refs" "spec" "strings" "tuples" "typelevel-prelude" "unsafe-coerce" "web-dom" "web-events" "web-html" "web-uievents" 
          ];
      };
  };

float32 =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-float32.git";
        rev = "3b70984d823c12c1b84a45a9b3d45199a4fcc67d";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "gen" "maybe" "prelude" 
          ];
      };
  };

foldable-traversable =
  { src.git =
      { repo = "https://github.com/purescript/purescript-foldable-traversable.git";
        rev = "b3926f870532d287ea59e2d5cd3873b81ef2a93a";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "bifunctors" "const" "control" "either" "functors" "identity" "maybe" "newtype" "orders" "prelude" "tuples" 
          ];
      };
  };

foreign =
  { src.git =
      { repo = "https://github.com/purescript/purescript-foreign.git";
        rev = "2dd222d1ec7363fa0a0a7adb0d8eaf81bb7006dd";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "either" "functions" "identity" "integers" "lists" "maybe" "prelude" "strings" "transformers" 
          ];
      };
  };

foreign-object =
  { src.git =
      { repo = "https://github.com/purescript/purescript-foreign-object.git";
        rev = "9bfb4eb6271b151414594cfec669fb4b18b91bd1";
      };

    info =
      { version = "4.1.0";

        dependencies =
          [ "arrays" "foldable-traversable" "functions" "gen" "lists" "maybe" "prelude" "st" "tailrec" "tuples" "typelevel-prelude" "unfoldable" 
          ];
      };
  };

foreign-readwrite =
  { src.git =
      { repo = "https://github.com/artemisSystem/purescript-foreign-readwrite.git";
        rev = "6ff7bd755272e61c80cfb7cf9882e98488c4e666";
      };

    info =
      { version = "3.4.0";

        dependencies =
          [ "foldable-traversable" "foreign" "foreign-object" "identity" "lists" "maybe" "newtype" "prelude" "record" "safe-coerce" "transformers" "unsafe-coerce" 
          ];
      };
  };

forgetmenot =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-forgetmenot.git";
        rev = "71473758dbcbce2efc14dfea44b16f5524f39eb6";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ 
          ];
      };
  };

fork =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-fork.git";
        rev = "a5c3bc6f357e97669e8c29c6f79f5f55be0d42c0";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "aff" 
          ];
      };
  };

form-urlencoded =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-form-urlencoded.git";
        rev = "e0e3eebc76f62f2594a0e823e8d6241ca00b2459";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "foldable-traversable" "js-uri" "maybe" "newtype" "prelude" "strings" "tuples" 
          ];
      };
  };

formatters =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-formatters.git";
        rev = "0b4deda4c6664209173e3e21b8fcbc6151a4549c";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "datetime" "fixed-points" "lists" "numbers" "parsing" "prelude" "transformers" 
          ];
      };
  };

framer-motion =
  { src.git =
      { repo = "https://github.com/i-am-the-slime/purescript-framer-motion.git";
        rev = "85ce5317faf49e1ada1de8de90409b0b8a95fb77";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "aff-promise" "arrays" "effect" "foreign" "foreign-object" "heterogeneous" "literals" "maybe" "nullable" "prelude" "react-basic" "react-basic-dom" "react-basic-hooks" "record" "tuples" "two-or-more" "typelevel-prelude" "unsafe-coerce" "untagged-union" "web-dom" "web-events" "web-uievents" 
          ];
      };
  };

free =
  { src.git =
      { repo = "https://github.com/purescript/purescript-free.git";
        rev = "e2d8fa8023a864363857834e11393483bced5e38";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "catenable-lists" "control" "distributive" "either" "exists" "foldable-traversable" "invariant" "lazy" "maybe" "prelude" "tailrec" "transformers" "tuples" "unsafe-coerce" 
          ];
      };
  };

freeap =
  { src.git =
      { repo = "https://github.com/ethul/purescript-freeap.git";
        rev = "a57cad136ffea31860b805ccc94492a128560e71";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "const" "exists" "gen" "lists" 
          ];
      };
  };

freer-free =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-freer-free.git";
        rev = "e6e82b55f320bf96a0d04f04efcb74d092222f76";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "prelude" "record" 
          ];
      };
  };

freet =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-freet.git";
        rev = "21be6fba22599a25812430dda6ba2ca8135920a1";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "aff" "bifunctors" "effect" "either" "exists" "free" "prelude" "tailrec" "transformers" "tuples" 
          ];
      };
  };

functions =
  { src.git =
      { repo = "https://github.com/purescript/purescript-functions.git";
        rev = "f626f20580483977c5b27a01aac6471e28aff367";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "prelude" 
          ];
      };
  };

functor1 =
  { src.git =
      { repo = "https://github.com/garyb/purescript-functor1.git";
        rev = "d71ab5f37bd44b3f08d8a9acb80018cd7c1a39ae";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "newtype" "prelude" 
          ];
      };
  };

functors =
  { src.git =
      { repo = "https://github.com/purescript/purescript-functors.git";
        rev = "022ffd7a2a7ec12080314f3d217b400674a247b4";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "bifunctors" "const" "contravariant" "control" "distributive" "either" "invariant" "maybe" "newtype" "prelude" "profunctor" "tuples" "unsafe-coerce" 
          ];
      };
  };

fuzzy =
  { src.git =
      { repo = "https://github.com/citizennet/purescript-fuzzy.git";
        rev = "35666ab7440c8a7d9a89a57be3c60418624c4b48";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "foldable-traversable" "foreign-object" "newtype" "ordered-collections" "prelude" "rationals" "strings" "tuples" 
          ];
      };
  };

gen =
  { src.git =
      { repo = "https://github.com/purescript/purescript-gen.git";
        rev = "9fbcc2a1261c32e30d79c5418edef4d96fe76931";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "either" "foldable-traversable" "identity" "maybe" "newtype" "nonempty" "prelude" "tailrec" "tuples" "unfoldable" 
          ];
      };
  };

generate-values =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-generate-values.git";
        rev = "acd8a2b084a3cdca241cb174e011bd506419f240";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "arrays" "control" "effect" "enums" "foldable-traversable" "gen" "identity" "integers" "lcg" "lists" "maybe" "newtype" "numbers" "partial" "prelude" "tailrec" "transformers" "tuples" 
          ];
      };
  };

generic-router =
  { src.git =
      { repo = "https://github.com/njaremko/purescript-generic-router.git";
        rev = "e12d6674c94484a73ccd52335a2a0ec7fea44887";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "arrays" "assert" "effect" "foldable-traversable" "lists" "maybe" "ordered-collections" "prelude" "record" "strings" "tuples" 
          ];
      };
  };

geojson =
  { src.git =
      { repo = "https://github.com/sumew/purescript-geojson.git";
        rev = "1137ebf542874188087c4a9962c5a887db2f7fb8";
      };

    info =
      { version = "0.0.3";

        dependencies =
          [ "argonaut" "argonaut-codecs" "arrays" "console" "effect" "either" "exceptions" "foldable-traversable" "foreign-object" "maybe" "nonempty" "prelude" "transformers" "tuples" "typelevel-prelude" 
          ];
      };
  };

geometry-plane =
  { src.git =
      { repo = "https://github.com/Ebmtranceboy/purescript-geometry-plane.git";
        rev = "34fb5d5a1a76d971ef105a9531fe7c7f7827edf2";
      };

    info =
      { version = "1.0.3";

        dependencies =
          [ "console" "effect" "psci-support" "sparse-polynomials" 
          ];
      };
  };

github-actions-toolkit =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-github-actions-toolkit.git";
        rev = "1fc2138d66563b51c511e9d6f91ed45eff0d247a";
      };

    info =
      { version = "0.5.0";

        dependencies =
          [ "aff" "aff-promise" "effect" "foreign-object" "node-buffer" "node-path" "node-streams" "nullable" "transformers" 
          ];
      };
  };

grain =
  { src.git =
      { repo = "https://github.com/purescript-grain/purescript-grain.git";
        rev = "308d98a4bf2268d8c5c3e1012afdcd700e7d7798";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arrays" "effect" "exceptions" "foreign" "functions" "integers" "lazy" "maybe" "nullable" "prelude" "strings" "tailrec" "transformers" "tuples" "unsafe-coerce" "web-dom" "web-events" 
          ];
      };
  };

grain-router =
  { src.git =
      { repo = "https://github.com/purescript-grain/purescript-grain-router.git";
        rev = "31fb87cd62d8657bddfc846771617565f08ac1ca";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arrays" "control" "effect" "foldable-traversable" "foreign" "grain" "integers" "lists" "maybe" "numbers" "ordered-collections" "prelude" "profunctor" "strings" "tuples" "web-events" "web-html" 
          ];
      };
  };

grain-virtualized =
  { src.git =
      { repo = "https://github.com/purescript-grain/purescript-grain-virtualized.git";
        rev = "f8c6ca94f55809c2c39d2c4c7b48766b48d8029e";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arrays" "foldable-traversable" "grain" "maybe" "prelude" "web-dom" "web-events" 
          ];
      };
  };

graphql-client =
  { src.git =
      { repo = "https://github.com/OxfordAbstracts/purescript-graphql-client.git";
        rev = "ebef4aea5c8f5a27a5d33272207006139dcd57bb";
      };

    info =
      { version = "9.3.2";

        dependencies =
          [ "aff" "aff-promise" "affjax" "affjax-node" "affjax-web" "argonaut-codecs" "argonaut-core" "arrays" "bifunctors" "control" "datetime" "debug" "effect" "either" "enums" "exceptions" "foldable-traversable" "foreign" "foreign-object" "functions" "halogen-subscriptions" "heterogeneous" "http-methods" "integers" "lists" "maybe" "media-types" "newtype" "node-buffer" "node-fs" "nullable" "numbers" "ordered-collections" "parsing" "prelude" "profunctor" "profunctor-lenses" "psci-support" "quickcheck" "record" "spec" "spec-discovery" "string-parsers" "strings" "strings-extra" "transformers" "tuples" "unicode" "unsafe-coerce" "variant" 
          ];
      };
  };

graphs =
  { src.git =
      { repo = "https://github.com/purescript/purescript-graphs.git";
        rev = "92c7a2452fc7b15a0a0b69c9e3a983ca729cecab";
      };

    info =
      { version = "8.1.0";

        dependencies =
          [ "catenable-lists" "ordered-collections" 
          ];
      };
  };

group =
  { src.git =
      { repo = "https://github.com/morganthomas/purescript-group.git";
        rev = "3499b415eaeda8ea65898a93bf4d197126404fc3";
      };

    info =
      { version = "4.1.1";

        dependencies =
          [ "lists" 
          ];
      };
  };

halogen =
  { src.git =
      { repo = "https://github.com/purescript-halogen/purescript-halogen.git";
        rev = "222e1febc889c64a71013748b6bf04db969888f9";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "aff" "avar" "console" "const" "dom-indexed" "effect" "foreign" "fork" "free" "freeap" "halogen-subscriptions" "halogen-vdom" "media-types" "nullable" "ordered-collections" "parallel" "profunctor" "transformers" "unsafe-coerce" "unsafe-reference" "web-file" "web-uievents" 
          ];
      };
  };

halogen-bootstrap5 =
  { src.git =
      { repo = "https://github.com/tonicebrian/purescript-halogen-bootstrap5.git";
        rev = "76ab5667a65255dbf8fa59b962ae25c727dfdd49";
      };

    info =
      { version = "2.2.0";

        dependencies =
          [ "halogen" 
          ];
      };
  };

halogen-css =
  { src.git =
      { repo = "https://github.com/purescript-halogen/purescript-halogen-css.git";
        rev = "c42d695fb34b08f790dadb4a8821f16f6f258b52";
      };

    info =
      { version = "10.0.0";

        dependencies =
          [ "css" "halogen" 
          ];
      };
  };

halogen-echarts-simple =
  { src.git =
      { repo = "https://github.com/lucasdicioccio/purescript-halogen-echarts-simple.git";
        rev = "d294821b7a23944260ee48257cd2c4a503ef9a86";
      };

    info =
      { version = "0.0.4";

        dependencies =
          [ "aff" "console" "echarts-simple" "effect" "foldable-traversable" "halogen" "halogen-subscriptions" "maybe" "prelude" 
          ];
      };
  };

halogen-formless =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-halogen-formless.git";
        rev = "68e3bb969799bd1ed76b2cb72c96e7d23421c591";
      };

    info =
      { version = "4.0.3";

        dependencies =
          [ "convertable-options" "effect" "either" "foldable-traversable" "foreign-object" "halogen" "heterogeneous" "maybe" "prelude" "record" "safe-coerce" "type-equality" "unsafe-coerce" "unsafe-reference" "variant" "web-events" "web-uievents" 
          ];
      };
  };

halogen-helix =
  { src.git =
      { repo = "https://github.com/katsujukou/purescript-halogen-helix.git";
        rev = "3b8688ffa1f71ed8636e1ad74cf3e4514d0ccf99";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "effect" "halogen-hooks" "halogen-subscriptions" "lazy" "maybe" "prelude" "refs" "tuples" 
          ];
      };
  };

halogen-hooks =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-halogen-hooks.git";
        rev = "a29d3112a11e7491b323ba85470c7693068e986b";
      };

    info =
      { version = "0.6.3";

        dependencies =
          [ "aff" "arrays" "bifunctors" "effect" "exceptions" "foldable-traversable" "foreign-object" "free" "freeap" "halogen" "halogen-subscriptions" "maybe" "newtype" "ordered-collections" "parallel" "partial" "prelude" "refs" "tailrec" "transformers" "tuples" "unsafe-coerce" "unsafe-reference" "web-dom" "web-html" 
          ];
      };
  };

halogen-hooks-extra =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-halogen-hooks-extra.git";
        rev = "575b38a7d5839aa88b844ccfc491f4dbe861d794";
      };

    info =
      { version = "0.9.0";

        dependencies =
          [ "halogen-hooks" 
          ];
      };
  };

halogen-store =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-halogen-store.git";
        rev = "8122ecebcb1550ca5df5563fa08ee598c98a564d";
      };

    info =
      { version = "0.5.4";

        dependencies =
          [ "aff" "distributive" "effect" "fork" "halogen" "halogen-hooks" "halogen-subscriptions" "maybe" "prelude" "refs" "tailrec" "transformers" "tuples" "unsafe-reference" 
          ];
      };
  };

halogen-storybook =
  { src.git =
      { repo = "https://github.com/rnons/purescript-halogen-storybook.git";
        rev = "63ad2b8f62c1744145ed98019c99bc42baa94805";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "foreign-object" "halogen" "prelude" "routing" 
          ];
      };
  };

halogen-subscriptions =
  { src.git =
      { repo = "https://github.com/purescript-halogen/purescript-halogen-subscriptions.git";
        rev = "a41a63a18b2bc7c7c12eb2afc0c3e4276eecd233";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "arrays" "effect" "foldable-traversable" "functors" "refs" "safe-coerce" "unsafe-reference" 
          ];
      };
  };

halogen-svg-elems =
  { src.git =
      { repo = "https://github.com/JordanMartinez/purescript-halogen-svg-elems.git";
        rev = "437be6409e79cdf2d446bfb8f43d447b651bfbc9";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "halogen" 
          ];
      };
  };

halogen-typewriter =
  { src.git =
      { repo = "https://github.com/qwbarch/halogen-typewriter.git";
        rev = "3e4d0e56094b4e0baa279baf8306bf443e585320";
      };

    info =
      { version = "1.0.2";

        dependencies =
          [ "aff" "css" "datetime" "effect" "foldable-traversable" "halogen" "halogen-css" "halogen-subscriptions" "lists" "maybe" "newtype" "prelude" "profunctor-lenses" "random" "strings" "transformers" "typelevel-prelude" 
          ];
      };
  };

halogen-vdom =
  { src.git =
      { repo = "https://github.com/purescript-halogen/purescript-halogen-vdom.git";
        rev = "e6630023500841d910f6690fa1bc6ba649ac6f15";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "bifunctors" "effect" "foreign" "foreign-object" "maybe" "prelude" "refs" "tuples" "unsafe-coerce" "web-html" 
          ];
      };
  };

halogen-vdom-string-renderer =
  { src.git =
      { repo = "https://github.com/purescript-halogen/purescript-halogen-vdom-string-renderer.git";
        rev = "c735467a3616b04c9ac5a01acb0a6a4d920db221";
      };

    info =
      { version = "0.5.0";

        dependencies =
          [ "foreign" "halogen-vdom" "ordered-collections" "prelude" 
          ];
      };
  };

heckin =
  { src.git =
      { repo = "https://github.com/maxdeviant/purescript-heckin.git";
        rev = "555af5c56c4097dec84e16ea73faed164d7de408";
      };

    info =
      { version = "2.0.1";

        dependencies =
          [ "arrays" "foldable-traversable" "maybe" "prelude" "strings" "transformers" "tuples" "unicode" 
          ];
      };
  };

heterogeneous =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-heterogeneous.git";
        rev = "5b7542bdd9547c5aef95b8878f103f0ce4ee1383";
      };

    info =
      { version = "0.6.0";

        dependencies =
          [ "either" "functors" "prelude" "record" "tuples" "variant" 
          ];
      };
  };

homogeneous =
  { src.git =
      { repo = "https://github.com/paluh/purescript-homogeneous.git";
        rev = "96f01a8d83d5b070d291c3b82be77fc00b40eb22";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "assert" "console" "effect" "foreign-object" "psci-support" "variant" 
          ];
      };
  };

http-methods =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-http-methods.git";
        rev = "99b48d54b978e4e6438d850015d59e57ac64824e";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "either" "prelude" "strings" 
          ];
      };
  };

httpure =
  { src.git =
      { repo = "https://github.com/citizennet/purescript-httpure.git";
        rev = "e0a76aeb3fb2f192468f962751793a9b991d3d1e";
      };

    info =
      { version = "0.16.0";

        dependencies =
          [ "aff" "arrays" "bifunctors" "console" "effect" "either" "foldable-traversable" "foreign-object" "js-uri" "maybe" "newtype" "node-buffer" "node-fs" "node-http" "node-streams" "options" "ordered-collections" "prelude" "refs" "strings" "tuples" "type-equality" 
          ];
      };
  };

httpurple =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-httpurple.git";
        rev = "4f00e770275d12bc64db66abd4ca0ab8d56439f0";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ "aff" "arrays" "bifunctors" "console" "control" "debug" "effect" "either" "exceptions" "foldable-traversable" "foreign-object" "functions" "js-uri" "justifill" "lists" "literals" "maybe" "newtype" "node-buffer" "node-fs" "node-http" "node-process" "node-streams" "options" "ordered-collections" "posix-types" "prelude" "profunctor" "record" "record-studio" "refs" "routing-duplex" "safe-coerce" "strings" "transformers" "tuples" "type-equality" "typelevel-prelude" "unsafe-coerce" "untagged-union" 
          ];
      };
  };

httpurple-argonaut =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-httpurple-argonaut.git";
        rev = "c20fe0eae889a6e05877c7a0b114c37f27ef11ac";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "argonaut" "console" "effect" "either" "httpurple" "prelude" 
          ];
      };
  };

httpurple-yoga-json =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-httpurple-yoga-json.git";
        rev = "87b3c4afc559f1ecc00c66a11968ba7e7c711a46";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "console" "effect" "either" "foreign" "httpurple" "lists" "prelude" "yoga-json" 
          ];
      };
  };

humdrum =
  { src.git =
      { repo = "https://github.com/lucasdicioccio/purescript-humdrum.git";
        rev = "6fd229a78be11f91473cf931b51302dd16d757b7";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "console" "effect" "foldable-traversable" "maybe" "prelude" "web-dom" "web-html" 
          ];
      };
  };

hyrule =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-hyrule.git";
        rev = "354534fb1763f5694fd8e27513ff20bf25b2b6fa";
      };

    info =
      { version = "2.3.8";

        dependencies =
          [ "arrays" "control" "datetime" "debug" "effect" "either" "filterable" "foldable-traversable" "js-timers" "lists" "maybe" "newtype" "now" "ordered-collections" "partial" "prelude" "record" "refs" "st" "tuples" "unsafe-coerce" "unsafe-reference" "web-events" "web-html" "web-uievents" 
          ];
      };
  };

identity =
  { src.git =
      { repo = "https://github.com/purescript/purescript-identity.git";
        rev = "ef6768f8a52ab0bc943a85f5761ba07c257f639f";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "control" "invariant" "newtype" "prelude" 
          ];
      };
  };

identy =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-identy.git";
        rev = "9a9302f88e00824f99c968b2bcc18569b9e876cf";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "arrays" "either" "foldable-traversable" "foreign" "foreign-object" "functions" "lists" "maybe" "newtype" "prelude" "record" "simple-json" "st" "tuples" "typelevel-prelude" "unfoldable" "unsafe-coerce" 
          ];
      };
  };

indexed-db =
  { src.git =
      { repo = "https://github.com/ilyakooo0/purescript-indexed-DB.git";
        rev = "88cfff76f8fa27392a51b44a6bfd65a0b3a14f39";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "arrays" "avar" "console" "control" "datetime" "effect" "either" "enums" "exceptions" "foldable-traversable" "foreign" "functions" "identity" "lists" "maybe" "nonempty" "now" "nullable" "prelude" "read" "spec" "transformers" "tuples" 
          ];
      };
  };

indexed-monad =
  { src.git =
      { repo = "https://github.com/garyb/purescript-indexed-monad.git";
        rev = "cd4d506dc86c525bbb126b972fd3fc1b237bdec4";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "control" "newtype" 
          ];
      };
  };

int64 =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-int64.git";
        rev = "00b6d5fbfd12081c4cf58b702066269270b53743";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "effect" "foreign" "functions" "gen" "integers" "maybe" "nullable" "prelude" "unsafe-coerce" 
          ];
      };
  };

integers =
  { src.git =
      { repo = "https://github.com/purescript/purescript-integers.git";
        rev = "54d712b25c594833083d15dc9ff2418eb9c52822";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "maybe" "numbers" "prelude" 
          ];
      };
  };

interactive-data =
  { src.git =
      { repo = "https://github.com/thought2/purescript-interactive-data.all.git";
        rev = "1150664a9a3ac9ce21cd06d56a5fb2ef1e227925";
      };

    info =
      { version = "0.3.0";

        dependencies =
          [ "arrays" "bifunctors" "chameleon" "chameleon-styled" "chameleon-transformers" "convertable-options" "data-mvc" "dodo-printer" "either" "foldable-traversable" "identity" "maybe" "mvc" "newtype" "ordered-collections" "prelude" "strings" "these" "tuples" "typelevel-prelude" 
          ];
      };
  };

interpolate =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-interpolate.git";
        rev = "e5994500999b9f194c1d8ec17854d3f61f3cb3eb";
      };

    info =
      { version = "5.0.2";

        dependencies =
          [ "partial" "prelude" 
          ];
      };
  };

invariant =
  { src.git =
      { repo = "https://github.com/purescript/purescript-invariant.git";
        rev = "1d2a196d51e90623adb88496c2cfd759c6736894";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "control" "prelude" 
          ];
      };
  };

jarilo =
  { src.git =
      { repo = "https://github.com/bklaric/purescript-jarilo.git";
        rev = "5d75497889f728821eb4c982152da5a08f1e7e6d";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "arrays" "bifunctors" "console" "effect" "either" "foldable-traversable" "http-methods" "integers" "lists" "maybe" "prelude" "record" "strings" "tuples" "uri" "variant" 
          ];
      };
  };

jelly =
  { src.git =
      { repo = "https://github.com/yukikurage/purescript-jelly.git";
        rev = "c88b4189233791224f8e527b0db0a30653f25445";
      };

    info =
      { version = "0.10.0";

        dependencies =
          [ "aff" "arrays" "effect" "either" "free" "jelly-signal" "maybe" "prelude" "refs" "safely" "tailrec" "transformers" "tuples" "web-dom" "web-events" "web-html" 
          ];
      };
  };

jelly-router =
  { src.git =
      { repo = "https://github.com/yukikurage/purescript-jelly-router.git";
        rev = "f179a14aa16a1e12e39618a24b74f02d349c7926";
      };

    info =
      { version = "0.3.0";

        dependencies =
          [ "effect" "foreign" "jelly" "jelly-signal" "prelude" "tailrec" "transformers" "tuples" "web-events" "web-html" 
          ];
      };
  };

jelly-signal =
  { src.git =
      { repo = "https://github.com/yukikurage/purescript-jelly-signal.git";
        rev = "e97b339bf96f92cfb6e9e07b8dcf87aeca404c8d";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "aff" "effect" "js-timers" "maybe" "partial" "prelude" "refs" "tailrec" "transformers" "tuples" "unsafe-coerce" "web-events" 
          ];
      };
  };

jest =
  { src.git =
      { repo = "https://github.com/nonbili/purescript-jest.git";
        rev = "caf2032f2e5828337e897a99f5359c00e91cb0ee";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "aff-promise" "effect" "prelude" 
          ];
      };
  };

js-abort-controller =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-abort-controller.git";
        rev = "0a594f6a982642884af2a140dd836c0e5e3ee6f9";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "effect" "foreign" "maybe" "nullable" "prelude" 
          ];
      };
  };

js-bigints =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-bigints.git";
        rev = "9d4c978fa1dd97da5e21ab0c22d18e2d3861f755";
      };

    info =
      { version = "2.1.0";

        dependencies =
          [ "integers" "maybe" "prelude" 
          ];
      };
  };

js-date =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-date.git";
        rev = "1ea020316946cc4b87195bca9c54d0c16abaa490";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "datetime" "effect" "exceptions" "foreign" "integers" "now" 
          ];
      };
  };

js-fileio =
  { src.git =
      { repo = "https://github.com/newlandsvalley/purescript-js-fileio.git";
        rev = "26c2fea47cbc157759c766d964ba14e75318988a";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "aff" "effect" "prelude" 
          ];
      };
  };

js-iterators =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-js-iterators.git";
        rev = "d4d389c805170ba783a66be79a4aa1da1573d451";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "foldable-traversable" "functions" "lazy" "lists" "maybe" "prelude" "st" "tuples" "unsafe-coerce" 
          ];
      };
  };

js-maps =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-js-maps.git";
        rev = "017453833bee0095fd1e049d563dd0185ae1cf8c";
      };

    info =
      { version = "0.1.2";

        dependencies =
          [ "arrays" "either" "foldable-traversable" "functions" "js-bigints" "maybe" "prelude" "profunctor-lenses" "st" "strings" "tuples" "unfoldable" "unsafe-coerce" 
          ];
      };
  };

js-promise =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-promise.git";
        rev = "ff731bceb7f22827322d5cabdb50f4427dbe9940";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "effect" "exceptions" "foldable-traversable" "functions" "maybe" "prelude" 
          ];
      };
  };

js-promise-aff =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-promise-aff.git";
        rev = "2fc7136d731da1c9e878debba57b16f2dd16f674";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "foreign" "js-promise" 
          ];
      };
  };

js-timers =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-timers.git";
        rev = "7cb728b3e6dc29f355143617e6e9ac770ecd9273";
      };

    info =
      { version = "6.1.0";

        dependencies =
          [ "effect" 
          ];
      };
  };

js-uri =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-uri.git";
        rev = "06f7ae755ccb36bfa80bc3702533165af5c7ef06";
      };

    info =
      { version = "3.1.0";

        dependencies =
          [ "functions" "maybe" 
          ];
      };
  };

json-codecs =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-json-codecs.git";
        rev = "344e03b31caf21ef88a88757c9dc97663ade41c1";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "ansi" "argonaut-core" "arrays" "bifunctors" "console" "dodo-printer" "effect" "either" "foldable-traversable" "foreign-object" "functions" "identity" "integers" "invariant" "lists" "maybe" "newtype" "nonempty" "nullable" "ordered-collections" "prelude" "profunctor" "record" "safe-coerce" "st" "strings" "these" "tuples" "unsafe-coerce" "validation" "variant" 
          ];
      };
  };

justifill =
  { src.git =
      { repo = "https://github.com/i-am-the-slime/purescript-justifill.git";
        rev = "c72e57594dfd22ebaa37db4169525cc001bc51c4";
      };

    info =
      { version = "0.5.0";

        dependencies =
          [ "maybe" "prelude" "record" "typelevel-prelude" 
          ];
      };
  };

jwt =
  { src.git =
      { repo = "https://github.com/menelaos/purescript-jwt.git";
        rev = "d7b8965d1c259e60c046c2bfd4a63c4b4abc7946";
      };

    info =
      { version = "0.0.9";

        dependencies =
          [ "argonaut-core" "arrays" "b64" "either" "exceptions" "prelude" "profunctor-lenses" "strings" 
          ];
      };
  };

labeled-data =
  { src.git =
      { repo = "https://github.com/thought2/purescript-labeled-data.git";
        rev = "53ead29cbab71b1c8129d4c403024db36949f922";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "aff" "effect" "either" "maybe" "prelude" "record" "tuples" "type-equality" "unsafe-coerce" "variant" 
          ];
      };
  };

language-cst-parser =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-language-cst-parser.git";
        rev = "5621f2e9fa1a0df5930b95b26f922fa94c494e80";
      };

    info =
      { version = "0.13.0";

        dependencies =
          [ "arrays" "console" "const" "control" "effect" "either" "enums" "foldable-traversable" "free" "functions" "functors" "identity" "integers" "lazy" "lists" "maybe" "newtype" "node-process" "numbers" "ordered-collections" "partial" "prelude" "st" "strings" "transformers" "tuples" "typelevel-prelude" "unfoldable" "unsafe-coerce" 
          ];
      };
  };

lazy =
  { src.git =
      { repo = "https://github.com/purescript/purescript-lazy.git";
        rev = "48347841226b27af5205a1a8ec71e27a93ce86fd";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "control" "foldable-traversable" "invariant" "prelude" 
          ];
      };
  };

lazy-joe =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-lazy-joe.git";
        rev = "49a5f7ec3cd091a8093bb4333c1112f27a9779dc";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "aff-promise" "effect" "functions" "prelude" "unsafe-coerce" 
          ];
      };
  };

lcg =
  { src.git =
      { repo = "https://github.com/purescript/purescript-lcg.git";
        rev = "67c6c6483a563a59ae036d9dca0f1be2835326a5";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "effect" "integers" "maybe" "partial" "prelude" "random" 
          ];
      };
  };

leibniz =
  { src.git =
      { repo = "https://github.com/paf31/purescript-leibniz.git";
        rev = "0e723461d23bbe0e88cdc8f4a6bd0dfb992d95bf";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "prelude" "unsafe-coerce" 
          ];
      };
  };

liminal =
  { src.git =
      { repo = "https://github.com/jstoxrocky/purescript-liminal.git";
        rev = "6420b71af48b157dae3f8ba35c3f7b5900cb8dc1";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "arrays" "effect" "foldable-traversable" "maybe" "prelude" "spec" "transformation-matrix" 
          ];
      };
  };

linalg =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-linalg.git";
        rev = "5c9833986810851d1e1ac979b40dea5d9361cdcc";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "arrays" "foldable-traversable" "functions" "maybe" "prelude" "tuples" 
          ];
      };
  };

lists =
  { src.git =
      { repo = "https://github.com/purescript/purescript-lists.git";
        rev = "b113451e5b41cad87d669a3165f955c71cd863e2";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "bifunctors" "control" "foldable-traversable" "lazy" "maybe" "newtype" "nonempty" "partial" "prelude" "tailrec" "tuples" "unfoldable" 
          ];
      };
  };

literals =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-literals.git";
        rev = "5a9dc8be19875e5d1f3b91e85880f5e326acbf65";
      };

    info =
      { version = "1.0.2";

        dependencies =
          [ "integers" "maybe" "numbers" "partial" "prelude" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

logging =
  { src.git =
      { repo = "https://github.com/rightfold/purescript-logging.git";
        rev = "148c371aa97e30663532d548faaca3555fbd3fca";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "console" "contravariant" "effect" "either" "prelude" "transformers" "tuples" 
          ];
      };
  };

logging-journald =
  { src.git =
      { repo = "https://github.com/paluh/purescript-logging-journald.git";
        rev = "5461db66d423206f57d19d94cc6e44f44fa130bc";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "effect" "logging" "prelude" "systemd-journald" 
          ];
      };
  };

machines =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-machines.git";
        rev = "6656448387d4077961a1d8751693574b2fd72a16";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "arrays" "control" "effect" "lists" "maybe" "prelude" "profunctor" "tuples" "unfoldable" 
          ];
      };
  };

maps-eager =
  { src.git =
      { repo = "https://github.com/joellefkowitz/maps-eager.git";
        rev = "b3491a14cfba122958f087b331855273ac3491fa";
      };

    info =
      { version = "0.4.1";

        dependencies =
          [ "maybe" "ordered-collections" 
          ];
      };
  };

marionette =
  { src.git =
      { repo = "https://github.com/thought2/purescript-marionette.git";
        rev = "ce56a08e1fb9423d92cbab36e5b6ca7355f3ef5c";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "console" "datetime" "effect" "either" "enums" "foldable-traversable" "maybe" "newtype" "now" "ordered-collections" "prelude" "refs" "transformers" "tuples" 
          ];
      };
  };

marionette-commander =
  { src.git =
      { repo = "https://github.com/thought2/purescript-marionette-commander.git";
        rev = "165e3a3efd754ae225af3cbe971141528d3c9fbb";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "aff" "arrays" "console" "effect" "either" "marionette" "maybe" "node-readline" "prelude" "strings" "transformers" 
          ];
      };
  };

marionette-react-basic-hooks =
  { src.git =
      { repo = "https://github.com/thought2/purescript-marionette-react-basic-hooks.git";
        rev = "ae597e909ec22625d003097c158828ca3474d4c4";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "aff" "aff-promise" "console" "effect" "exceptions" "marionette" "maybe" "newtype" "prelude" "react-basic" "react-basic-dom" "react-basic-hooks" "transformers" "tuples" "unsafe-coerce" "web-dom" "web-html" 
          ];
      };
  };

matrices =
  { src.git =
      { repo = "https://github.com/kRITZCREEK/purescript-matrices.git";
        rev = "7e6e2a09cde41413d369acb8c3ffca8c33571691";
      };

    info =
      { version = "5.0.1";

        dependencies =
          [ "arrays" "strings" 
          ];
      };
  };

matryoshka =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-matryoshka.git";
        rev = "abad434e4d0093d69d04b5aa4ade23db69dd2ac2";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "fixed-points" "free" "prelude" "profunctor" "transformers" 
          ];
      };
  };

maybe =
  { src.git =
      { repo = "https://github.com/purescript/purescript-maybe.git";
        rev = "c6f98ac1088766287106c5d9c8e30e7648d36786";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "control" "invariant" "newtype" "prelude" 
          ];
      };
  };

mdast-util-from-markdown =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-mdast-util-from-markdown.git";
        rev = "14f402ad46c3d9c96a95fa42bcf1b1c64c96fc5d";
      };

    info =
      { version = "0.2.1";

        dependencies =
          [ "aff" "aff-promise" "argonaut" "console" "debug" "effect" "either" "foldable-traversable" "maybe" "prelude" "psci-support" "spec" "spec-discovery" 
          ];
      };
  };

media-types =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-media-types.git";
        rev = "af853de226592f319a953637069a943dd261cba3";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "newtype" "prelude" 
          ];
      };
  };

metadata =
  { src.git =
      { repo = "https://github.com/purescript/purescript-metadata.git";
        rev = "70dc6a37f776136ff1d0fb0839eee59383e6f31c";
      };

    info =
      { version = "0.15.10";

        dependencies =
          [ 
          ];
      };
  };

midi =
  { src.git =
      { repo = "https://github.com/newlandsvalley/purescript-midi.git";
        rev = "f7a6e82054eec0fcf13886f37107b8da2025a090";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "arrays" "control" "effect" "either" "foldable-traversable" "integers" "lists" "maybe" "ordered-collections" "prelude" "signal" "string-parsers" "strings" "tuples" "unfoldable" 
          ];
      };
  };

milkis =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-milkis.git";
        rev = "fdee6366bdf7705ca4171e5b8c4e7ff7ef966639";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "aff-promise" "arraybuffer-types" "foreign-object" "prelude" "typelevel-prelude" 
          ];
      };
  };

minibench =
  { src.git =
      { repo = "https://github.com/purescript/purescript-minibench.git";
        rev = "77329a816a4be933cd3c51cc8517608d5affb450";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "console" "effect" "integers" "numbers" "partial" "prelude" "refs" 
          ];
      };
  };

mmorph =
  { src.git =
      { repo = "https://github.com/Thimoteus/purescript-mmorph.git";
        rev = "94bc558ac34184d5236a7a9b2463dcc7551ced8e";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "free" "functors" "transformers" 
          ];
      };
  };

monad-control =
  { src.git =
      { repo = "https://github.com/athanclark/purescript-monad-control.git";
        rev = "9684a6955af3bc32550bed2aee7f63869b04bd46";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "aff" "freet" "identity" "lists" 
          ];
      };
  };

monad-logger =
  { src.git =
      { repo = "https://github.com/cprussin/purescript-monad-logger.git";
        rev = "b5ae53361343e91481e8dd0f6303d5755c07afad";
      };

    info =
      { version = "1.3.1";

        dependencies =
          [ "aff" "ansi" "argonaut" "arrays" "console" "control" "effect" "foldable-traversable" "foreign-object" "integers" "js-date" "maybe" "newtype" "ordered-collections" "prelude" "strings" "transformers" "tuples" 
          ];
      };
  };

monad-loops =
  { src.git =
      { repo = "https://github.com/mlang/purescript-monad-loops.git";
        rev = "9324b29cda6a4be8f896d42f2018fc6143607fe8";
      };

    info =
      { version = "0.5.0";

        dependencies =
          [ "lists" "maybe" "prelude" "tailrec" "tuples" 
          ];
      };
  };

monad-unlift =
  { src.git =
      { repo = "https://github.com/athanclark/purescript-monad-unlift.git";
        rev = "4b00491a741b841885e1cc8273ef6c8c27069a18";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "monad-control" 
          ];
      };
  };

monoid-extras =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-monoid-extras.git";
        rev = "3b8e452bbb0930398bb11fdcfc5c5f22775e1bd0";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "console" "effect" "foldable-traversable" "maybe" "prelude" "profunctor" "profunctor-lenses" "tuples" 
          ];
      };
  };

monoidal =
  { src.git =
      { repo = "https://github.com/mcneissue/purescript-monoidal.git";
        rev = "c5b251227bfc96486b5d89624a49de43baf45b40";
      };

    info =
      { version = "0.16.0";

        dependencies =
          [ "either" "profunctor" "these" "tuples" 
          ];
      };
  };

morello =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-morello.git";
        rev = "9a0d39229fab9ee5ab869513e6c6674c04ce10f6";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "arrays" "barlow-lens" "foldable-traversable" "heterogeneous" "newtype" "prelude" "profunctor" "profunctor-lenses" "record" "record-studio" "tuples" "typelevel-prelude" "validation" 
          ];
      };
  };

mote =
  { src.git =
      { repo = "https://github.com/garyb/purescript-mote.git";
        rev = "3306aa32753cd345ca41b058b26584fe890ac895";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arrays" "these" "transformers" 
          ];
      };
  };

motsunabe =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-motsunabe.git";
        rev = "9f1781d1bca2c2c4952933dc5cbdbee3ef13b90c";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "lists" "strings" 
          ];
      };
  };

mvc =
  { src.git =
      { repo = "https://github.com/thought2/purescript-mvc.git";
        rev = "47d8b3fc60226ec423311b767a872cbd744e508e";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "heterogeneous" "maybe" "newtype" "prelude" "record" "variant" 
          ];
      };
  };

mysql =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-mysql.git";
        rev = "fe18fe4df61c7519d71d0deb7f67bfccc633152c";
      };

    info =
      { version = "6.0.1";

        dependencies =
          [ "aff" "datetime" "effect" "either" "exceptions" "foreign" "functions" "js-date" "lists" "maybe" "newtype" "nonempty" "prelude" "simple-json" "transformers" "unsafe-coerce" 
          ];
      };
  };

n3 =
  { src.git =
      { repo = "https://github.com/wintechis/purescript-n3.git";
        rev = "0c3e2aad49a32e7c033f46c16a2ad55e0c069e79";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "aff" "aff-promise" "console" "effect" "either" "prelude" "rdf" 
          ];
      };
  };

nano-id =
  { src.git =
      { repo = "https://github.com/eikooc/nano-id.git";
        rev = "5b8c932b1fa48983a2000123f25894b2425c9b40";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ "aff" "effect" "lists" "maybe" "prelude" "random" "spec" "strings" "stringutils" 
          ];
      };
  };

nanoid =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-nanoid.git";
        rev = "86affa36d15589b625e4362477ad5b4229420cd6";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "effect" "prelude" "yoga-json" 
          ];
      };
  };

naturals =
  { src.git =
      { repo = "https://github.com/LiamGoodacre/purescript-naturals.git";
        rev = "53aaa11516cd1bb8429f33032802bf43a5b04644";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "enums" "maybe" "prelude" 
          ];
      };
  };

nested-functor =
  { src.git =
      { repo = "https://github.com/acple/purescript-nested-functor.git";
        rev = "f066b7933ff9b16ed3c281228e54bbe8519eed1e";
      };

    info =
      { version = "0.2.1";

        dependencies =
          [ "prelude" "type-equality" 
          ];
      };
  };

newtype =
  { src.git =
      { repo = "https://github.com/purescript/purescript-newtype.git";
        rev = "29d8e6dd77aec2c975c948364ec3faf26e14ee7b";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "prelude" "safe-coerce" 
          ];
      };
  };

nextjs =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-nextjs.git";
        rev = "904856e40a9e292dc594394572da0cb7b867134e";
      };

    info =
      { version = "0.1.1";

        dependencies =
          [ "aff" "aff-promise" "console" "datetime" "effect" "either" "foldable-traversable" "foreign" "foreign-object" "functions" "identity" "maybe" "nullable" "options" "partial" "prelude" "react-basic" "react-basic-hooks" "transformers" "typelevel-prelude" "unsafe-coerce" "yoga-json" 
          ];
      };
  };

nextui =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-nextui.git";
        rev = "6943f4925be6d37510d92dc8461a04239f7b1152";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "effect" "prelude" "react-basic-hooks" 
          ];
      };
  };

node-buffer =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-buffer.git";
        rev = "7be7bd082b7d3e15de2ed5a626d43af746bdb35e";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "arraybuffer-types" "effect" "maybe" "st" "unsafe-coerce" 
          ];
      };
  };

node-buffer-blob =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-buffer-blob.git";
        rev = "a2c6109fd5d7f73bd84b7827d4e31e959c61f009";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff-promise" "arraybuffer-types" "arrays" "console" "effect" "maybe" "media-types" "newtype" "node-buffer" "nullable" "prelude" "web-streams" 
          ];
      };
  };

node-child-process =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-child-process.git";
        rev = "ceaa5dcd21697da24a916b81c73ba013592cf378";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "exceptions" "foreign" "foreign-object" "functions" "node-fs" "node-streams" "nullable" "posix-types" "unsafe-coerce" 
          ];
      };
  };

node-env-paths =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-node-env-paths.git";
        rev = "613850ed752fe1433f9b348c87ec4c1c64efbd88";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "control" "effect" "foldable-traversable" "foreign-object" "maybe" "node-os" "node-path" "node-process" "prelude" "strings" 
          ];
      };
  };

node-event-emitter =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-event-emitter.git";
        rev = "b283c3eb6abc32a88fd8876af746b9548e78d93f";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "effect" "either" "functions" "maybe" "nullable" "prelude" "unsafe-coerce" 
          ];
      };
  };

node-execa =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-node-execa.git";
        rev = "a4c7520a0898f009d9b1dc071ca6eddd1df3c2af";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "aff" "arrays" "control" "effect" "either" "exceptions" "foldable-traversable" "foreign" "foreign-object" "functions" "integers" "js-timers" "maybe" "node-buffer" "node-event-emitter" "node-fs" "node-human-signals" "node-path" "node-process" "node-streams" "nullable" "numbers" "ordered-collections" "parallel" "parsing" "partial" "posix-types" "prelude" "profunctor-lenses" "record" "refs" "safe-coerce" "strings" "tailrec" "transformers" "tuples" "unsafe-coerce" "unsafe-reference" 
          ];
      };
  };

node-fs =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-fs.git";
        rev = "24fc929abaf59835cb185cdb5ba6f323c1e43c18";
      };

    info =
      { version = "8.2.0";

        dependencies =
          [ "datetime" "effect" "either" "enums" "exceptions" "functions" "integers" "js-date" "maybe" "node-buffer" "node-path" "node-streams" "nullable" "partial" "prelude" "strings" "unsafe-coerce" 
          ];
      };
  };

node-fs-aff =
  { src.git =
      { repo = "https://github.com/purescript-deprecated/purescript-node-fs-aff.git";
        rev = "56414801882dd23de272bf0bd927160b13b6e86f";
      };

    info =
      { version = "9.2.2";

        dependencies =
          [ "aff" "either" "node-fs" "node-path" 
          ];
      };
  };

node-http =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-http.git";
        rev = "9baab9d9b45064e8cc1d53913bb1668bfa799b16";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "arraybuffer-types" "contravariant" "effect" "foreign" "foreign-object" "maybe" "node-buffer" "node-net" "node-streams" "node-url" "nullable" "options" "prelude" "unsafe-coerce" 
          ];
      };
  };

node-human-signals =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-node-human-signals.git";
        rev = "dd5f9d9143b7c6b311ed52db1c678acae2ee8099";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "arrays" "control" "foreign-object" "maybe" "ordered-collections" "prelude" 
          ];
      };
  };

node-net =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-net.git";
        rev = "812ce3142b67c33db225a0f94fabd6a6776bf0be";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "effect" "either" "exceptions" "foreign" "maybe" "node-buffer" "node-fs" "nullable" "options" "prelude" "transformers" 
          ];
      };
  };

node-os =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-os.git";
        rev = "c1b8e378c395b84f6973e688d9f38bc60a1f6f2b";
      };

    info =
      { version = "5.1.0";

        dependencies =
          [ "arrays" "bifunctors" "console" "control" "datetime" "effect" "either" "exceptions" "foldable-traversable" "foreign" "foreign-object" "functions" "maybe" "node-buffer" "nullable" "partial" "posix-types" "prelude" "unsafe-coerce" 
          ];
      };
  };

node-path =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-path.git";
        rev = "d5f08cfde829b831408c4c6587cec83f2cd6a58e";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "effect" 
          ];
      };
  };

node-process =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-process.git";
        rev = "9d126d9d4f898723e7cab69895770bbac0c3a0b8";
      };

    info =
      { version = "10.0.0";

        dependencies =
          [ "effect" "foreign-object" "maybe" "node-streams" "posix-types" "prelude" "unsafe-coerce" 
          ];
      };
  };

node-readline =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-readline.git";
        rev = "fbe80a949275f15643b80f9db7c01d5a6b4031ed";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "effect" "foreign" "node-process" "node-streams" "options" "prelude" 
          ];
      };
  };

node-sqlite3 =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-node-sqlite3.git";
        rev = "dedffd06571511314f0a3890c7377abebd5bacae";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "aff" "foreign" 
          ];
      };
  };

node-streams =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-streams.git";
        rev = "8395652f9f347101fe042f58726edc592ae5086c";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "effect" "either" "exceptions" "node-buffer" "nullable" "prelude" 
          ];
      };
  };

node-streams-aff =
  { src.git =
      { repo = "https://github.com/purescript-deprecated/purescript-node-streams-aff.git";
        rev = "724f1783a203dfbc58fc13c4377339df9dbde2c7";
      };

    info =
      { version = "5.0.2";

        dependencies =
          [ "aff" "arrays" "effect" "either" "exceptions" "maybe" "node-buffer" "node-streams" "nullable" "prelude" "refs" "st" "tailrec" 
          ];
      };
  };

node-url =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-url.git";
        rev = "de7b279df13a9eeef2455af561525f37568c190e";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "nullable" 
          ];
      };
  };

node-zlib =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-zlib.git";
        rev = "69ad15a2de574f2aa13e8c7429fc5e8ff3c0c56b";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "aff" "effect" "either" "functions" "node-buffer" "node-streams" "prelude" "unsafe-coerce" 
          ];
      };
  };

nodemailer =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-nodemailer.git";
        rev = "a3e655e178bb820c773175d3c5fe31f7cb7fe2a2";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "aff" "effect" "foreign" "functions" "maybe" "node-streams" "prelude" "simple-json" "unsafe-coerce" 
          ];
      };
  };

nonempty =
  { src.git =
      { repo = "https://github.com/purescript/purescript-nonempty.git";
        rev = "28150ecc7419238b187abd609a92a645273348bb";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "control" "foldable-traversable" "maybe" "prelude" "tuples" "unfoldable" 
          ];
      };
  };

now =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-now.git";
        rev = "b5ffed2381e5fefc063f484e607e8499e79eaf32";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "datetime" "effect" 
          ];
      };
  };

npm-package-json =
  { src.git =
      { repo = "https://github.com/maxdeviant/purescript-npm-package-json.git";
        rev = "e35325d9cc2ee491fbb891388b8be820c79c0b9c";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "argonaut" "control" "either" "foreign-object" "maybe" "ordered-collections" "prelude" 
          ];
      };
  };

nullable =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-nullable.git";
        rev = "3202744c6c65e8d1fbba7f4256a1c482078e7fb5";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "effect" "functions" "maybe" 
          ];
      };
  };

numberfield =
  { src.git =
      { repo = "https://github.com/Ebmtranceboy/purescript-numberfield.git";
        rev = "2ca838c550ebd83ee2cdcec15a256be219a2a3c6";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "arrays" "assert" "effect" "foldable-traversable" "js-bigints" "maybe" "ordered-collections" "prelude" "rationals" "sparse-matrices" "sparse-polynomials" "tuples" 
          ];
      };
  };

numbers =
  { src.git =
      { repo = "https://github.com/purescript/purescript-numbers.git";
        rev = "27d54effdd2c0e7a86fe356b1cd813dca5981c2d";
      };

    info =
      { version = "9.0.1";

        dependencies =
          [ "functions" "maybe" 
          ];
      };
  };

oak =
  { src.git =
      { repo = "https://github.com/ehrenmurdick/purescript-oak.git";
        rev = "823cee2368c8defefdac75b8f5d3eeae6369cb7a";
      };

    info =
      { version = "3.1.1";

        dependencies =
          [ "console" "effect" "either" "foldable-traversable" "functions" "maybe" "partial" "prelude" "refs" 
          ];
      };
  };

oak-debug =
  { src.git =
      { repo = "https://github.com/ehrenmurdick/purescript-oak-debug.git";
        rev = "db5adadcef9b487120ee9391440125b7a7b38ea4";
      };

    info =
      { version = "1.2.2";

        dependencies =
          [ "arrays" "console" "effect" "foldable-traversable" "oak" "prelude" 
          ];
      };
  };

object-maps =
  { src.git =
      { repo = "https://github.com/thought2/purescript-object-maps.git";
        rev = "ebe897cd0c39fe235fbedc8b6a22df13b2eb755e";
      };

    info =
      { version = "0.3.0";

        dependencies =
          [ "argonaut-codecs" "argonaut-core" "either" "foldable-traversable" "foreign-object" "maybe" "prelude" "profunctor-lenses" "st" "tuples" "unsafe-coerce" 
          ];
      };
  };

ocarina =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-ocarina.git";
        rev = "842ccbd3f7bea683da30d0b16fe4a5b5269efebd";
      };

    info =
      { version = "1.5.4";

        dependencies =
          [ "aff" "aff-promise" "arraybuffer-types" "bolson" "control" "convertable-options" "effect" "fast-vect" "foldable-traversable" "foreign" "foreign-object" "homogeneous" "hyrule" "integers" "js-timers" "lcg" "lists" "maybe" "newtype" "numbers" "ordered-collections" "prelude" "profunctor" "profunctor-lenses" "quickcheck" "refs" "safe-coerce" "simple-json" "sized-vectors" "st" "tuples" "type-equality" "typelevel" "typelevel-prelude" "unsafe-coerce" "unsafe-reference" "variant" "web-events" "web-file" "web-html" 
          ];
      };
  };

open-folds =
  { src.git =
      { repo = "https://github.com/purescript-open-community/purescript-open-folds.git";
        rev = "b72b4dc1ce7c44328b6561c5608b0fcafdf6c5d8";
      };

    info =
      { version = "6.3.0";

        dependencies =
          [ "bifunctors" "console" "control" "distributive" "effect" "either" "foldable-traversable" "identity" "invariant" "maybe" "newtype" "ordered-collections" "prelude" "profunctor" "psci-support" "tuples" 
          ];
      };
  };

open-memoize =
  { src.git =
      { repo = "https://github.com/purescript-open-community/purescript-open-memoize.git";
        rev = "0b106d8ee915047402a8b46172f65d1b063cba00";
      };

    info =
      { version = "6.1.0";

        dependencies =
          [ "console" "effect" "either" "integers" "lazy" "lists" "maybe" "partial" "prelude" "psci-support" "strings" "tuples" 
          ];
      };
  };

open-pairing =
  { src.git =
      { repo = "https://github.com/purescript-open-community/purescript-open-pairing.git";
        rev = "b4fa36be62565eb5a12e790ea32f6a618169cfb2";
      };

    info =
      { version = "6.1.0";

        dependencies =
          [ "console" "control" "effect" "either" "free" "functors" "identity" "newtype" "prelude" "psci-support" "transformers" "tuples" 
          ];
      };
  };

options =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-options.git";
        rev = "93e4eb4610975cb7b3bb290273396707e7384c38";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "contravariant" "foreign" "foreign-object" "maybe" "tuples" 
          ];
      };
  };

optparse =
  { src.git =
      { repo = "https://github.com/f-o-a-m/purescript-optparse.git";
        rev = "dbc4c385e6c436eed4299ae2c0bb2cc278cf2410";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "aff" "arrays" "bifunctors" "console" "control" "effect" "either" "enums" "exists" "exitcodes" "foldable-traversable" "free" "gen" "integers" "lazy" "lists" "maybe" "newtype" "node-buffer" "node-process" "node-streams" "nonempty" "numbers" "open-memoize" "partial" "prelude" "quickcheck" "strings" "tailrec" "transformers" "tuples" 
          ];
      };
  };

ordered-collections =
  { src.git =
      { repo = "https://github.com/purescript/purescript-ordered-collections.git";
        rev = "9826b7632d0d0a691173bde308a634195f42a419";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arrays" "foldable-traversable" "gen" "lists" "maybe" "partial" "prelude" "st" "tailrec" "tuples" "unfoldable" 
          ];
      };
  };

ordered-set =
  { src.git =
      { repo = "https://github.com/flip111/purescript-ordered-set.git";
        rev = "da397fb3149d633f66f3687974087497fc812f4a";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "argonaut-codecs" "arrays" "partial" "prelude" "unfoldable" 
          ];
      };
  };

orders =
  { src.git =
      { repo = "https://github.com/purescript/purescript-orders.git";
        rev = "f86db621ec5eef1274145f8b1fd8ebbfe0ed4a2c";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "newtype" "prelude" 
          ];
      };
  };

pairs =
  { src.git =
      { repo = "https://github.com/sharkdp/purescript-pairs.git";
        rev = "c8a632a427dc93a577a8bbc9ef7acce141103c43";
      };

    info =
      { version = "9.0.1";

        dependencies =
          [ "console" "distributive" "foldable-traversable" "quickcheck" 
          ];
      };
  };

parallel =
  { src.git =
      { repo = "https://github.com/purescript/purescript-parallel.git";
        rev = "85290dca837771ac4870071008c933d315ef678f";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "control" "effect" "either" "foldable-traversable" "functors" "maybe" "newtype" "prelude" "profunctor" "refs" "transformers" 
          ];
      };
  };

parsing =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-parsing.git";
        rev = "d4d53c89bc02f1bd71ad7e359560b0ecf2e2fd9f";
      };

    info =
      { version = "10.2.0";

        dependencies =
          [ "arrays" "control" "effect" "either" "enums" "foldable-traversable" "functions" "identity" "integers" "lazy" "lists" "maybe" "newtype" "nullable" "numbers" "partial" "prelude" "st" "strings" "tailrec" "transformers" "tuples" "unfoldable" "unicode" "unsafe-coerce" 
          ];
      };
  };

parsing-dataview =
  { src.git =
      { repo = "https://github.com/jamesdbrock/purescript-parsing-dataview.git";
        rev = "8c5e22daba3c58eda33e86d69d8b4fe9cf12978f";
      };

    info =
      { version = "3.2.4";

        dependencies =
          [ "arraybuffer" "arraybuffer-types" "effect" "enums" "float32" "maybe" "parsing" "prelude" "strings" "tailrec" "transformers" "tuples" "uint" 
          ];
      };
  };

partial =
  { src.git =
      { repo = "https://github.com/purescript/purescript-partial.git";
        rev = "0fa0646f5ea1ec5f0c46dcbd770c705a6c9ad3ec";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ 
          ];
      };
  };

pathy =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-pathy.git";
        rev = "db31994d6a5acfdc7ba027ffc89531a447d8d41c";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "console" "exceptions" "lists" "partial" "profunctor" "strings" "transformers" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

pha =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-pha.git";
        rev = "09da60053177820783033368ff8d596008088ced";
      };

    info =
      { version = "0.11.0";

        dependencies =
          [ "aff" "bifunctors" "effect" "foldable-traversable" "free" "functions" "maybe" "ordered-collections" "prelude" "profunctor-lenses" "refs" "tailrec" "transformers" "tuples" "unsafe-coerce" "unsafe-reference" "web-dom" "web-events" "web-html" "web-pointerevents" "web-uievents" 
          ];
      };
  };

phaser =
  { src.git =
      { repo = "https://github.com/lfarroco/purescript-phaser.git";
        rev = "7cfaf7531fe2bc3eb97a744f26270fc22b8d6cae";
      };

    info =
      { version = "0.7.0";

        dependencies =
          [ "canvas" "console" "effect" "maybe" "nullable" "options" "prelude" "small-ffi" "unsafe-coerce" "web-html" 
          ];
      };
  };

phylio =
  { src.git =
      { repo = "https://github.com/vibbits/phylio.git";
        rev = "20db946a39d072b41add02aa2e642791c814e5a1";
      };

    info =
      { version = "1.1.2";

        dependencies =
          [ "arrays" "control" "either" "enums" "filterable" "foldable-traversable" "graphs" "identity" "lists" "maybe" "numbers" "ordered-collections" "parsing" "prelude" "strings" "stringutils" "transformers" "tuples" 
          ];
      };
  };

pipes =
  { src.git =
      { repo = "https://github.com/felixschl/purescript-pipes.git";
        rev = "9723192f38d7abc5857bcd185581d1a7a1da849c";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "aff" "lists" "mmorph" "prelude" "tailrec" "transformers" "tuples" 
          ];
      };
  };

pirates-charm =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-pirates-charm.git";
        rev = "9d86b2d5283489c83f009df8fda1a5fcc7a92a1b";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "aff" "arrays" "effect" "hyrule" "parallel" "prelude" "refs" "st" 
          ];
      };
  };

pmock =
  { src.git =
      { repo = "https://github.com/pujoheadsoft/purescript-pmock.git";
        rev = "616adbd3a9ff060c6737d189090bdf07c445980d";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "aff" "arrays" "effect" "exceptions" "maybe" "prelude" "spec" "strings" "transformers" "unsafe-coerce" 
          ];
      };
  };

point-free =
  { src.git =
      { repo = "https://github.com/ursi/purescript-point-free.git";
        rev = "e4291b1c982312c9dd13e33fdd428817d08548cd";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "prelude" 
          ];
      };
  };

pointed-list =
  { src.git =
      { repo = "https://github.com/paluh/purescript-pointed-list.git";
        rev = "5f971df032c60aa7d476c95b3a4a15f1da529fd7";
      };

    info =
      { version = "0.5.1";

        dependencies =
          [ "lists" "prelude" 
          ];
      };
  };

polymorphic-vectors =
  { src.git =
      { repo = "https://github.com/artemisSystem/purescript-polymorphic-vectors.git";
        rev = "a1abc4a911f242b0236c988f8a120cdfe6585522";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "distributive" "foldable-traversable" "numbers" "prelude" "record" "safe-coerce" "type-equality" "typelevel-prelude" 
          ];
      };
  };

posix-types =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-posix-types.git";
        rev = "b79ff37f87846ca5caab2123cf84148e700d40d1";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "maybe" "prelude" 
          ];
      };
  };

precise =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-precise.git";
        rev = "37a6a4ffd0ab6f029cc6432f69bd3deb3b92eafd";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "arrays" "console" "effect" "exceptions" "gen" "integers" "lists" "numbers" "prelude" "strings" 
          ];
      };
  };

precise-datetime =
  { src.git =
      { repo = "https://github.com/awakesecurity/purescript-precise-datetime.git";
        rev = "eebed2b6eac8324f028875aa3ca10252ab332546";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "arrays" "datetime" "decimals" "either" "enums" "foldable-traversable" "formatters" "integers" "js-date" "lists" "maybe" "newtype" "numbers" "prelude" "strings" "tuples" "unicode" 
          ];
      };
  };

prelude =
  { src.git =
      { repo = "https://github.com/purescript/purescript-prelude.git";
        rev = "d71bc5e81f59a401005970ceaf233a1d62f21d8f";
      };

    info =
      { version = "6.0.1";

        dependencies =
          [ 
          ];
      };
  };

prettier-printer =
  { src.git =
      { repo = "https://github.com/paulyoung/purescript-prettier-printer.git";
        rev = "eb0e183849a1044b3a13f40fc680704a8a91df8f";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "console" "lists" "prelude" "strings" "tuples" 
          ];
      };
  };

profunctor =
  { src.git =
      { repo = "https://github.com/purescript/purescript-profunctor.git";
        rev = "0a966a14e7b0c827d44657dc1710cdc712d2e034";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "control" "distributive" "either" "exists" "invariant" "newtype" "prelude" "tuples" 
          ];
      };
  };

profunctor-lenses =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-profunctor-lenses.git";
        rev = "973d567afe458fd802cf4f0d9725b6dc35ad9297";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "arrays" "bifunctors" "const" "control" "distributive" "either" "foldable-traversable" "foreign-object" "functors" "identity" "lists" "maybe" "newtype" "ordered-collections" "partial" "prelude" "profunctor" "record" "transformers" "tuples" 
          ];
      };
  };

protobuf =
  { src.git =
      { repo = "https://github.com/xc-jp/purescript-protobuf.git";
        rev = "8af1c16f402e81bc3789f39b89ace207c9304312";
      };

    info =
      { version = "4.3.0";

        dependencies =
          [ "arraybuffer" "arraybuffer-builder" "arraybuffer-types" "arrays" "control" "effect" "either" "enums" "exceptions" "float32" "foldable-traversable" "functions" "int64" "lists" "maybe" "newtype" "parsing" "parsing-dataview" "prelude" "record" "strings" "tailrec" "transformers" "tuples" "uint" "web-encoding" 
          ];
      };
  };

ps-cst =
  { src.git =
      { repo = "https://github.com/purescript-codegen/purescript-ps-cst.git";
        rev = "729f4c278598effb2a41ef7f2d6144ddbab1e30a";
      };

    info =
      { version = "1.2.0";

        dependencies =
          [ "ansi" "console" "dodo-printer" "effect" "node-fs-aff" "node-path" "psci-support" "record" "spec" "strings" 
          ];
      };
  };

psa-utils =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-psa-utils.git";
        rev = "5e9c60602ca3065e8e95e79e49c09de3fc4a0cf6";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "ansi" "argonaut-codecs" "argonaut-core" "arrays" "console" "control" "effect" "either" "foldable-traversable" "maybe" "node-path" "ordered-collections" "prelude" "strings" "tuples" "unsafe-coerce" 
          ];
      };
  };

psc-ide =
  { src.git =
      { repo = "https://github.com/kRITZCREEK/purescript-psc-ide.git";
        rev = "ccd4260b9b5ef8903220507719374a70ef2dd8f1";
      };

    info =
      { version = "19.0.0";

        dependencies =
          [ "aff" "argonaut" "arrays" "console" "maybe" "node-child-process" "node-fs" "parallel" "random" 
          ];
      };
  };

psci-support =
  { src.git =
      { repo = "https://github.com/purescript/purescript-psci-support.git";
        rev = "897cdb543548cb6078d69b6413b54841404eda72";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "console" "effect" "prelude" 
          ];
      };
  };

qualified-do =
  { src.git =
      { repo = "https://github.com/artemisSystem/purescript-qualified-do.git";
        rev = "035207d2181c452593e5e626a5c94494dce8f3f2";
      };

    info =
      { version = "2.2.0";

        dependencies =
          [ "arrays" "control" "foldable-traversable" "parallel" "prelude" "unfoldable" 
          ];
      };
  };

quantities =
  { src.git =
      { repo = "https://github.com/sharkdp/purescript-quantities.git";
        rev = "1a51d68236d28886804a2ba730ca1f18e36ad27f";
      };

    info =
      { version = "12.2.0";

        dependencies =
          [ "decimals" "either" "foldable-traversable" "lists" "maybe" "newtype" "nonempty" "numbers" "pairs" "prelude" "tuples" 
          ];
      };
  };

quickcheck =
  { src.git =
      { repo = "https://github.com/purescript/purescript-quickcheck.git";
        rev = "bf5029f97e6c0d7552d3a08d2ab793a19e2c5e3d";
      };

    info =
      { version = "8.0.1";

        dependencies =
          [ "arrays" "console" "control" "effect" "either" "enums" "exceptions" "foldable-traversable" "gen" "identity" "integers" "lazy" "lcg" "lists" "maybe" "newtype" "nonempty" "numbers" "partial" "prelude" "record" "st" "strings" "tailrec" "transformers" "tuples" "unfoldable" 
          ];
      };
  };

quickcheck-combinators =
  { src.git =
      { repo = "https://github.com/athanclark/purescript-quickcheck-combinators.git";
        rev = "293e5af07ae47b61d4eae5defef4c0f472bfa9ca";
      };

    info =
      { version = "0.1.3";

        dependencies =
          [ "quickcheck" "typelevel" 
          ];
      };
  };

quickcheck-laws =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-quickcheck-laws.git";
        rev = "04f00fb78d88f38a2f2bb73b75f97ce5bf5624fc";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "enums" "quickcheck" 
          ];
      };
  };

quickcheck-utf8 =
  { src.git =
      { repo = "https://github.com/openchronology/purescript-quickcheck-utf8.git";
        rev = "448e4cf5789ca17fa9b44accf5929137f770f077";
      };

    info =
      { version = "0.0.0";

        dependencies =
          [ "quickcheck" 
          ];
      };
  };

random =
  { src.git =
      { repo = "https://github.com/purescript/purescript-random.git";
        rev = "9540bc965a9596da02fefd9949418bb19c92533a";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "effect" "integers" 
          ];
      };
  };

rationals =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-rationals.git";
        rev = "53f955b045ef8a06572e4ee55e3cdaf120cb41ab";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "integers" "js-bigints" "prelude" 
          ];
      };
  };

rdf =
  { src.git =
      { repo = "https://github.com/wintechis/purescript-rdf.git";
        rev = "22be0bdd2c150e270c54268ea580d7cb77f8ee88";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "arrays" "console" "datetime" "effect" "either" "foldable-traversable" "formatters" "integers" "lists" "maybe" "ordered-collections" "parsing" "prelude" "strings" 
          ];
      };
  };

react =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-react.git";
        rev = "eab370bb5360ecee1c2dfda024175629dcb7d1da";
      };

    info =
      { version = "11.0.0";

        dependencies =
          [ "effect" "exceptions" "maybe" "nullable" "prelude" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

react-aria =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-react-aria.git";
        rev = "54fa5e96a164e6c925d96af73dcb57949363dcbc";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "aff" "effect" "foreign" "foreign-object" "nullable" "ordered-collections" "prelude" "react-basic" "react-basic-dom" "react-basic-hooks" "unsafe-coerce" "untagged-union" "web-dom" "web-html" 
          ];
      };
  };

react-basic =
  { src.git =
      { repo = "https://github.com/lumihq/purescript-react-basic.git";
        rev = "afc73460ddc37c71b58ae51ea56ccdddbaca6fb8";
      };

    info =
      { version = "17.0.0";

        dependencies =
          [ "effect" "prelude" "record" 
          ];
      };
  };

react-basic-classic =
  { src.git =
      { repo = "https://github.com/lumihq/purescript-react-basic-classic.git";
        rev = "61adce98f88bd0e8f657dc56fb40666eb8ab2060";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "aff" "effect" "functions" "maybe" "nullable" "prelude" "react-basic" 
          ];
      };
  };

react-basic-dnd =
  { src.git =
      { repo = "https://github.com/lumihq/purescript-react-dnd-basic.git";
        rev = "713f17da0b1c1821d24f46edfdd8293de6db60c3";
      };

    info =
      { version = "10.1.0";

        dependencies =
          [ "console" "effect" "maybe" "nullable" "prelude" "react-basic-hooks" "web-dom" 
          ];
      };
  };

react-basic-dom =
  { src.git =
      { repo = "https://github.com/lumihq/purescript-react-basic-dom.git";
        rev = "58784a7f6fca2c962d8951479957a21f54b75bf1";
      };

    info =
      { version = "6.1.0";

        dependencies =
          [ "arrays" "effect" "foldable-traversable" "foreign-object" "maybe" "nullable" "prelude" "react-basic" "record" "unsafe-coerce" "web-dom" "web-events" "web-file" "web-html" 
          ];
      };
  };

react-basic-emotion =
  { src.git =
      { repo = "https://github.com/lumihq/purescript-react-basic-emotion.git";
        rev = "90495adbf293d1385793c18c5a93fea21e17079f";
      };

    info =
      { version = "7.1.0";

        dependencies =
          [ "arrays" "colors" "either" "foreign" "foreign-object" "functions" "integers" "numbers" "prelude" "react-basic" "strings" "transformers" "typelevel-prelude" "unsafe-coerce" "web-html" 
          ];
      };
  };

react-basic-hooks =
  { src.git =
      { repo = "https://github.com/megamaddu/purescript-react-basic-hooks.git";
        rev = "2a0b5981bbb12c88d7ae1689d8a2ecdce97235ac";
      };

    info =
      { version = "8.2.0";

        dependencies =
          [ "aff" "aff-promise" "bifunctors" "console" "control" "datetime" "effect" "either" "exceptions" "foldable-traversable" "functions" "indexed-monad" "integers" "maybe" "newtype" "now" "nullable" "ordered-collections" "prelude" "react-basic" "refs" "tuples" "type-equality" "unsafe-coerce" "unsafe-reference" "web-html" 
          ];
      };
  };

react-basic-storybook =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-react-basic-storybook.git";
        rev = "be789a1d1bc5d7caee88378dbee4344ddf801550";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "aff" "aff-promise" "debug" "effect" "foreign" "foreign-object" "functions" "maybe" "prelude" "react-basic" "record-studio" "strings" "typelevel-prelude" "unsafe-coerce" "web-html" 
          ];
      };
  };

react-dom =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-react-dom.git";
        rev = "733e4ec521d0b9569290b69811aacb16a2c4dc16";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "effect" "react" "web-dom" 
          ];
      };
  };

react-halo =
  { src.git =
      { repo = "https://github.com/robertdp/purescript-react-halo.git";
        rev = "c469dc418e037706e43636b984be5283c2e113c4";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "aff" "bifunctors" "effect" "either" "foldable-traversable" "free" "freeap" "halogen-subscriptions" "maybe" "newtype" "ordered-collections" "parallel" "prelude" "react-basic-hooks" "refs" "tailrec" "transformers" "tuples" "unsafe-reference" 
          ];
      };
  };

react-icons =
  { src.git =
      { repo = "https://github.com/purescript-react/purescript-react-icons.git";
        rev = "a1dcf16101799479ef338ec8fc23e36ac4521840";
      };

    info =
      { version = "1.1.1";

        dependencies =
          [ "react-basic" "react-basic-dom" "unsafe-coerce" 
          ];
      };
  };

react-markdown =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-react-markdown.git";
        rev = "037565bf1c103f5cda1fe240e15385313589310f";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "prelude" "react-basic-hooks" 
          ];
      };
  };

react-testing-library =
  { src.git =
      { repo = "https://github.com/i-am-the-slime/purescript-react-testing-library.git";
        rev = "9a54fc4d0e9aaf7a8c2a51b59fe4de4fc0d97307";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "aff" "aff-promise" "control" "effect" "exceptions" "foldable-traversable" "foreign" "functions" "identity" "maybe" "prelude" "react-basic" "spec" "strings" "transformers" "unsafe-coerce" "web-dom" "web-events" "web-html" 
          ];
      };
  };

react-virtuoso =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-react-virtuoso.git";
        rev = "2c5eee2025b4de56cdc7fc4bd0259a5683657530";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "effect" "functions" "maybe" "prelude" "react-basic" "react-basic-dom" "react-basic-hooks" "unsafe-coerce" "web-html" 
          ];
      };
  };

read =
  { src.git =
      { repo = "https://github.com/truqu/purescript-read.git";
        rev = "fbf014b21bedeb844b5c3d64221d550aa72226e0";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "maybe" "prelude" "strings" 
          ];
      };
  };

recharts =
  { src.git =
      { repo = "https://github.com/tfc/purescript-recharts.git";
        rev = "fd07ce3c58d9629b621849110f3001cd1c8a5a44";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ "console" "effect" "maybe" "nullable" "prelude" "react-basic" "react-basic-hooks" "unsafe-coerce" 
          ];
      };
  };

record =
  { src.git =
      { repo = "https://github.com/purescript/purescript-record.git";
        rev = "c89cd1ada6b636692571fc374196b1c39c4c9f70";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "functions" "prelude" "unsafe-coerce" 
          ];
      };
  };

record-extra =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-record-extra.git";
        rev = "5961b07bc91e64fe6be5dfb5d52eac7f175896ec";
      };

    info =
      { version = "5.0.1";

        dependencies =
          [ "arrays" "functions" "lists" "prelude" "record" "tuples" "typelevel-prelude" 
          ];
      };
  };

record-studio =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-record-studio.git";
        rev = "a84c1a9386cefe49a112981ef0fcf03b5ab241d9";
      };

    info =
      { version = "1.0.4";

        dependencies =
          [ "heterogeneous" "lists" "prelude" "record" "typelevel-prelude" 
          ];
      };
  };

refs =
  { src.git =
      { repo = "https://github.com/purescript/purescript-refs.git";
        rev = "f8e6216da4cb9309fde1f20cd6f69ac3a3b7f9e8";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "effect" "prelude" 
          ];
      };
  };

remotedata =
  { src.git =
      { repo = "https://github.com/krisajenkins/purescript-remotedata.git";
        rev = "cc9932a6c19262d8e4217c534c658a127562c14c";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "bifunctors" "either" "profunctor-lenses" 
          ];
      };
  };

resource =
  { src.git =
      { repo = "https://github.com/joneshf/purescript-resource.git";
        rev = "af0abd0d18013e3d4510a7c14d69411817e22dc9";
      };

    info =
      { version = "2.0.1";

        dependencies =
          [ "aff" "console" "control" "effect" "newtype" "prelude" "psci-support" "refs" 
          ];
      };
  };

resourcet =
  { src.git =
      { repo = "https://github.com/robertdp/purescript-resourcet.git";
        rev = "89df9dbc1e07defc159343cedd0eeee62d9e76d7";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "effect" "foldable-traversable" "maybe" "ordered-collections" "parallel" "refs" "tailrec" "transformers" "tuples" 
          ];
      };
  };

result =
  { src.git =
      { repo = "https://github.com/ad-si/purescript-result.git";
        rev = "11bf97ec2872a7a4b4eae0a27b5c8c9cb8263a85";
      };

    info =
      { version = "1.0.3";

        dependencies =
          [ "either" "foldable-traversable" "prelude" 
          ];
      };
  };

return =
  { src.git =
      { repo = "https://github.com/ursi/purescript-return.git";
        rev = "de6a6931507b82efd0180f9b945945ef202bc78a";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "foldable-traversable" "point-free" "prelude" 
          ];
      };
  };

ring-modules =
  { src.git =
      { repo = "https://github.com/f-o-a-m/purescript-ring-modules.git";
        rev = "48f72122e7f80dfd1efcc2bd5bb2f8fb92942f68";
      };

    info =
      { version = "5.0.1";

        dependencies =
          [ "prelude" 
          ];
      };
  };

rito =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-rito.git";
        rev = "16a0b9eb9241d192daabc331afc46bab49ff5ea3";
      };

    info =
      { version = "0.3.4";

        dependencies =
          [ "aff" "aff-promise" "arrays" "bolson" "control" "convertable-options" "deku" "effect" "either" "exceptions" "exists" "fast-vect" "foldable-traversable" "foreign" "foreign-object" "heterogeneous" "hyrule" "integers" "maybe" "newtype" "numbers" "prelude" "profunctor" "quickcheck" "random" "record" "refs" "safe-coerce" "st" "tuples" "unsafe-coerce" "variant" "web-dom" "web-html" "web-touchevents" "web-uievents" 
          ];
      };
  };

routing =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-routing.git";
        rev = "255ec9ada5ceb6e6e0e02f71a767cf86064165c0";
      };

    info =
      { version = "11.0.0";

        dependencies =
          [ "aff" "console" "control" "effect" "either" "foldable-traversable" "integers" "js-uri" "lists" "maybe" "numbers" "partial" "prelude" "semirings" "tuples" "validation" "web-html" 
          ];
      };
  };

routing-duplex =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-routing-duplex.git";
        rev = "13702d4a73ac3eac1d8c09701fb06faca7073728";
      };

    info =
      { version = "0.7.0";

        dependencies =
          [ "arrays" "assert" "control" "effect" "either" "foldable-traversable" "integers" "js-uri" "lazy" "maybe" "newtype" "prelude" "profunctor" "quickcheck" "record" "strings" "tuples" 
          ];
      };
  };

run =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-run.git";
        rev = "abec7c343e92154d44b9dafd52b91ee82d32a870";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "aff" "effect" "either" "free" "maybe" "newtype" "prelude" "profunctor" "tailrec" "tuples" "type-equality" "typelevel-prelude" "unsafe-coerce" "variant" 
          ];
      };
  };

safe-coerce =
  { src.git =
      { repo = "https://github.com/purescript/purescript-safe-coerce.git";
        rev = "7fa799ae80a38b8d948efcb52608e58e198b3da7";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "unsafe-coerce" 
          ];
      };
  };

safely =
  { src.git =
      { repo = "https://github.com/paf31/purescript-safely.git";
        rev = "b56e240c460f07d4a340842a5f06fc1105526d91";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "freet" "lists" 
          ];
      };
  };

school-of-music =
  { src.git =
      { repo = "https://github.com/newlandsvalley/purescript-school-of-music.git";
        rev = "918189204e6540248a432b6fbf32cfebeb56fdc1";
      };

    info =
      { version = "1.3.0";

        dependencies =
          [ "arrays" "control" "either" "foldable-traversable" "integers" "lists" "maybe" "midi" "ordered-collections" "prelude" "rationals" "string-parsers" "strings" "tuples" 
          ];
      };
  };

selection-foldable =
  { src.git =
      { repo = "https://github.com/jamieyung/purescript-selection-foldable.git";
        rev = "998952c7321361f3e885514a89d472f323fcf7b0";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "filterable" "foldable-traversable" "maybe" "prelude" 
          ];
      };
  };

semirings =
  { src.git =
      { repo = "https://github.com/purescript/purescript-semirings.git";
        rev = "e862c970483feff7dacdf6db5be5a84ea754fd63";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "foldable-traversable" "lists" "newtype" "prelude" 
          ];
      };
  };

signal =
  { src.git =
      { repo = "https://github.com/bodil/purescript-signal.git";
        rev = "992905b7b0cadd2db3901a79e540ec859eaf5651";
      };

    info =
      { version = "13.0.0";

        dependencies =
          [ "aff" "effect" "either" "foldable-traversable" "maybe" "prelude" 
          ];
      };
  };

simple-emitter =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-simple-emitter.git";
        rev = "efad4ced5d9d56a660a1303fe60179ae83016879";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ "effect" "foldable-traversable" "maybe" "ordered-collections" "prelude" "refs" 
          ];
      };
  };

simple-i18n =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-simple-i18n.git";
        rev = "c42eb7f2383d387908df2b591702980daf26e17b";
      };

    info =
      { version = "2.0.1";

        dependencies =
          [ "foreign-object" "maybe" "prelude" "record" "record-extra" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

simple-json =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-simple-json.git";
        rev = "b85e112131240ff95b5c26e9abb8e2fa6db3c656";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "arrays" "exceptions" "foreign" "foreign-object" "nullable" "prelude" "record" "typelevel-prelude" "variant" 
          ];
      };
  };

simple-jwt =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-simple-jwt.git";
        rev = "15970d2901bf2748c62f8a78ed2fd39875298ebb";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "arrays" "crypto" "effect" "either" "maybe" "node-buffer" "prelude" "simple-json" "strings" 
          ];
      };
  };

simple-ulid =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-simple-ulid.git";
        rev = "3846caa131ffbc65f174d725a5c5aa4fe192bb4e";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arrays" "datetime" "effect" "exceptions" "integers" "now" "numbers" "prelude" "strings" "tailrec" "unsafe-coerce" 
          ];
      };
  };

sized-matrices =
  { src.git =
      { repo = "https://github.com/csicar/purescript-sized-matrices.git";
        rev = "4c322071b569a0dfba913f943dd3c2e9ae5c0f25";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "arrays" "distributive" "foldable-traversable" "maybe" "prelude" "sized-vectors" "strings" "typelevel" "unfoldable" "vectorfield" 
          ];
      };
  };

sized-vectors =
  { src.git =
      { repo = "https://github.com/bodil/purescript-sized-vectors.git";
        rev = "0f5ebf3d9520f0e83d4e8a955f31182e34840251";
      };

    info =
      { version = "5.0.2";

        dependencies =
          [ "argonaut" "arrays" "distributive" "foldable-traversable" "maybe" "prelude" "quickcheck" "typelevel" "unfoldable" 
          ];
      };
  };

slug =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-slug.git";
        rev = "0142716b49758829d5b48244fe1e9f87ea935b77";
      };

    info =
      { version = "3.0.8";

        dependencies =
          [ "argonaut-codecs" "arrays" "either" "maybe" "prelude" "strings" "unicode" 
          ];
      };
  };

small-ffi =
  { src.git =
      { repo = "https://github.com/lfarroco/purescript-small-ffi.git";
        rev = "ca1039b30e32458e5dc39ac892091201ffdd34e5";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "arrays" "console" "effect" "prelude" "quickcheck" 
          ];
      };
  };

soundfonts =
  { src.git =
      { repo = "https://github.com/newlandsvalley/purescript-soundfonts.git";
        rev = "7d8c3526ac956547bf79525bbbf733694004e192";
      };

    info =
      { version = "4.1.0";

        dependencies =
          [ "aff" "affjax" "affjax-web" "argonaut-core" "arraybuffer-types" "arrays" "b64" "bifunctors" "console" "effect" "either" "exceptions" "foldable-traversable" "foreign-object" "http-methods" "integers" "lists" "maybe" "midi" "ordered-collections" "parallel" "partial" "prelude" "strings" "transformers" "tuples" 
          ];
      };
  };

sparse-matrices =
  { src.git =
      { repo = "https://github.com/Ebmtranceboy/purescript-sparse-matrices.git";
        rev = "4181d1dd17b616b009920e85631a48a5d7df0014";
      };

    info =
      { version = "1.3.0";

        dependencies =
          [ "arrays" "assert" "cartesian" "effect" "foldable-traversable" "integers" "maybe" "numbers" "ordered-collections" "prelude" "rationals" "sparse-polynomials" "tuples" 
          ];
      };
  };

sparse-polynomials =
  { src.git =
      { repo = "https://github.com/Ebmtranceboy/purescript-sparse-polynomials.git";
        rev = "7b7c52d0d383a6cc53e3d276e73f2d0234355ebb";
      };

    info =
      { version = "2.0.5";

        dependencies =
          [ "arrays" "assert" "cartesian" "effect" "foldable-traversable" "integers" "js-bigints" "maybe" "numbers" "ordered-collections" "partial" "prelude" "rationals" "strings" "tuples" 
          ];
      };
  };

spec =
  { src.git =
      { repo = "https://github.com/purescript-spec/purescript-spec.git";
        rev = "7374a4cc62223858cb3c392f83e5158108c63edc";
      };

    info =
      { version = "7.5.4";

        dependencies =
          [ "aff" "ansi" "arrays" "avar" "bifunctors" "control" "datetime" "debug" "effect" "either" "exceptions" "foldable-traversable" "fork" "identity" "integers" "lists" "maybe" "newtype" "now" "ordered-collections" "parallel" "pipes" "prelude" "refs" "strings" "tailrec" "transformers" "tuples" 
          ];
      };
  };

spec-discovery =
  { src.git =
      { repo = "https://github.com/purescript-spec/purescript-spec-discovery.git";
        rev = "a2614418632aa7e94aa557d56c3e133fd69d2b63";
      };

    info =
      { version = "8.0.1";

        dependencies =
          [ "aff" "aff-promise" "arrays" "console" "effect" "foldable-traversable" "node-fs" "prelude" "spec" 
          ];
      };
  };

spec-golden =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-spec-golden.git";
        rev = "f376b8b77af3661ca5e9802f4f206c020b115243";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "either" "foldable-traversable" "maybe" "node-execa" "node-path" "prelude" "spec" 
          ];
      };
  };

spec-mocha =
  { src.git =
      { repo = "https://github.com/purescript-spec/purescript-spec-mocha.git";
        rev = "5f5e394a6899eff41e349c7db4d18e41447b55e4";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "aff" "datetime" "effect" "either" "foldable-traversable" "maybe" "prelude" "spec" 
          ];
      };
  };

spec-quickcheck =
  { src.git =
      { repo = "https://github.com/purescript-spec/purescript-spec-quickcheck.git";
        rev = "c83de337db1f74ff75e0d7c574a2f7407bc5f2b2";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "aff" "prelude" "quickcheck" "random" "spec" 
          ];
      };
  };

spec-reporter-xunit =
  { src.git =
      { repo = "https://github.com/purescript-spec/purescript-spec-reporter-xunit.git";
        rev = "692be2afb433280ebae130528893773b32ee497a";
      };

    info =
      { version = "0.6.1";

        dependencies =
          [ "node-fs-aff" "spec" "transformers" 
          ];
      };
  };

splitmix =
  { src.git =
      { repo = "https://github.com/the-dr-lazy/purescript-splitmix.git";
        rev = "fbfeadf9a144a2fb66fdbc7e3d76e07d35bd6711";
      };

    info =
      { version = "2.1.0";

        dependencies =
          [ "console" "effect" "int64" "integers" "maybe" "partial" "prelude" "tuples" 
          ];
      };
  };

ssrs =
  { src.git =
      { repo = "https://github.com/PureFunctor/purescript-ssrs.git";
        rev = "1c8a09e5f6a247f84e9a0070944acbdc4f02ba6a";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "dissect" "either" "fixed-points" "free" "lists" "prelude" "safe-coerce" "tailrec" "tuples" "variant" 
          ];
      };
  };

st =
  { src.git =
      { repo = "https://github.com/purescript/purescript-st.git";
        rev = "fc2fe2972bb12e6a2bd3b295baf01577240c23ac";
      };

    info =
      { version = "6.2.0";

        dependencies =
          [ "partial" "prelude" "tailrec" "unsafe-coerce" 
          ];
      };
  };

statistics =
  { src.git =
      { repo = "https://github.com/jacereda/purescript-statistics.git";
        rev = "c64facf498432c7217278b097ee1279ecdbb789e";
      };

    info =
      { version = "0.3.2";

        dependencies =
          [ "arrays" "console" "control" "effect" "either" "foldable-traversable" "integers" "maybe" "numbers" "partial" "prelude" "quickcheck" "tuples" 
          ];
      };
  };

strictlypositiveint =
  { src.git =
      { repo = "https://github.com/jamieyung/purescript-strictlypositiveint.git";
        rev = "feb38c7d0d8c50eeda4c263daf40817b9f9e374d";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "prelude" 
          ];
      };
  };

string-parsers =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-string-parsers.git";
        rev = "518038cec5e76a1509bab87685e0dae77462d9e1";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "arrays" "bifunctors" "control" "either" "foldable-traversable" "lists" "maybe" "prelude" "strings" "tailrec" 
          ];
      };
  };

strings =
  { src.git =
      { repo = "https://github.com/purescript/purescript-strings.git";
        rev = "04f0730b2e4892f9a2b92a5cc2ba74f81c2039a2";
      };

    info =
      { version = "6.0.1";

        dependencies =
          [ "arrays" "control" "either" "enums" "foldable-traversable" "gen" "integers" "maybe" "newtype" "nonempty" "partial" "prelude" "tailrec" "tuples" "unfoldable" "unsafe-coerce" 
          ];
      };
  };

strings-extra =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-strings-extra.git";
        rev = "9c90baf5feb8549471c098129db03fb410ad214b";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "arrays" "foldable-traversable" "maybe" "prelude" "strings" "unicode" 
          ];
      };
  };

stringutils =
  { src.git =
      { repo = "https://github.com/menelaos/purescript-stringutils.git";
        rev = "51d92cacd8c8102fc4e6137b4f709a2b11ca5186";
      };

    info =
      { version = "0.0.12";

        dependencies =
          [ "arrays" "integers" "maybe" "partial" "prelude" "strings" 
          ];
      };
  };

substitute =
  { src.git =
      { repo = "https://github.com/ursi/purescript-substitute.git";
        rev = "adddf76f8f44a82b264df47e0dea5b3ce892c102";
      };

    info =
      { version = "0.2.3";

        dependencies =
          [ "foldable-traversable" "foreign-object" "maybe" "prelude" "return" "strings" 
          ];
      };
  };

sunde =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-sunde.git";
        rev = "32ecafa291e1ca67c43b7c8fad7fae123d3bd4d7";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "aff" "effect" "node-child-process" "prelude" 
          ];
      };
  };

supply =
  { src.git =
      { repo = "https://github.com/ajnsit/purescript-supply.git";
        rev = "be1bd323ea7fcda72ec8daf4ca45172c7b1e916a";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "console" "control" "effect" "lazy" "prelude" "refs" "tuples" 
          ];
      };
  };

svg-parser =
  { src.git =
      { repo = "https://github.com/rnons/purescript-svg-parser.git";
        rev = "b920559f0f3d7f8134dea17aa7652f07a8ec957e";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arrays" "control" "either" "lists" "prelude" "string-parsers" "strings" 
          ];
      };
  };

systemd-journald =
  { src.git =
      { repo = "https://github.com/paluh/purescript-systemd-journald.git";
        rev = "c54c37c6c6e1138d1a191858c04925329a6983db";
      };

    info =
      { version = "0.3.0";

        dependencies =
          [ "console" "functions" "prelude" 
          ];
      };
  };

tagged =
  { src.git =
      { repo = "https://github.com/LiamGoodacre/purescript-tagged.git";
        rev = "55bdea636580c981634f5c4c559b9cfe68c55dea";
      };

    info =
      { version = "4.0.2";

        dependencies =
          [ "control" "foldable-traversable" "identity" "invariant" "newtype" "prelude" "profunctor" 
          ];
      };
  };

tailrec =
  { src.git =
      { repo = "https://github.com/purescript/purescript-tailrec.git";
        rev = "8bbe8402768925a5219396d0436de5c29e8fd00d";
      };

    info =
      { version = "6.1.0";

        dependencies =
          [ "bifunctors" "effect" "either" "identity" "maybe" "partial" "prelude" "refs" 
          ];
      };
  };

tecton =
  { src.git =
      { repo = "https://github.com/nsaunders/purescript-tecton.git";
        rev = "87af0a10d9f8872cb9ebe5fb8a3bd5cf42b8402c";
      };

    info =
      { version = "0.2.1";

        dependencies =
          [ "arrays" "colors" "either" "foldable-traversable" "integers" "lists" "numbers" "prelude" "record" "strings" "transformers" "tuples" "web-html" 
          ];
      };
  };

tecton-halogen =
  { src.git =
      { repo = "https://github.com/nsaunders/purescript-tecton-halogen.git";
        rev = "01ca40cc759ae9296719c3890a8491c1190c426d";
      };

    info =
      { version = "0.2.0";

        dependencies =
          [ "halogen" "lists" "prelude" "tecton" "transformers" 
          ];
      };
  };

test-unit =
  { src.git =
      { repo = "https://github.com/bodil/purescript-test-unit.git";
        rev = "3112d7ebe06d467238058a6384dc75ffd960d335";
      };

    info =
      { version = "17.0.0";

        dependencies =
          [ "aff" "avar" "effect" "either" "free" "js-timers" "lists" "prelude" "quickcheck" "strings" 
          ];
      };
  };

thermite =
  { src.git =
      { repo = "https://github.com/paf31/purescript-thermite.git";
        rev = "0611b86f121206f77ee82323bf8caf0e1e7be64a";
      };

    info =
      { version = "6.3.1";

        dependencies =
          [ "aff" "coroutines" "freet" "profunctor-lenses" "react" 
          ];
      };
  };

thermite-dom =
  { src.git =
      { repo = "https://github.com/athanclark/purescript-thermite-dom.git";
        rev = "98b29439f05d0e8a345f1a0b0317bbc186d948ec";
      };

    info =
      { version = "0.3.1";

        dependencies =
          [ "react" "react-dom" "thermite" "web-html" 
          ];
      };
  };

these =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-these.git";
        rev = "ad4de7d2bb9ce684a9dff5def6489630736985b8";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "arrays" "gen" "lists" "quickcheck" "quickcheck-laws" "tuples" 
          ];
      };
  };

toppokki =
  { src.git =
      { repo = "https://github.com/justinwoo/purescript-toppokki.git";
        rev = "cc8e304cbc9a69d409eb26cfdaa3318c09b4b7fc";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "aff-promise" "functions" "node-buffer" "node-fs-aff" "node-http" "prelude" "record" 
          ];
      };
  };

transformation-matrix =
  { src.git =
      { repo = "https://github.com/jstoxrocky/purescript-transformation-matrix.git";
        rev = "ee4bce9259393f32eb88665d813e417e974cee92";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "arrays" "effect" "either" "foldable-traversable" "numbers" "prelude" "spec" "tuples" 
          ];
      };
  };

transformers =
  { src.git =
      { repo = "https://github.com/purescript/purescript-transformers.git";
        rev = "be72ab52357d9a665cbf93d73ba1c07c4b0957ee";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "control" "distributive" "effect" "either" "exceptions" "foldable-traversable" "identity" "lazy" "maybe" "newtype" "prelude" "tailrec" "tuples" "unfoldable" 
          ];
      };
  };

tree-rose =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-tree-rose.git";
        rev = "92cfa2f617dc4b3549375b8289b36e4c0aca7288";
      };

    info =
      { version = "4.0.2";

        dependencies =
          [ "control" "foldable-traversable" "free" "lists" "maybe" "prelude" "tailrec" 
          ];
      };
  };

ts-bridge =
  { src.git =
      { repo = "https://github.com/thought2/purescript-ts-bridge.git";
        rev = "9dbf7787c5dc4d704064cc5809c0dcaf64b79bf8";
      };

    info =
      { version = "2.1.2";

        dependencies =
          [ "aff" "aff-promise" "arrays" "console" "dts" "effect" "either" "foldable-traversable" "foreign-object" "literals" "maybe" "newtype" "node-buffer" "node-fs" "node-fs-aff" "node-path" "node-process" "nullable" "optparse" "ordered-collections" "ordered-set" "partial" "prelude" "record" "safe-coerce" "strings" "transformers" "tuples" "typelevel-prelude" "unsafe-coerce" "untagged-union" "variant" "variant-encodings" 
          ];
      };
  };

tuples =
  { src.git =
      { repo = "https://github.com/purescript/purescript-tuples.git";
        rev = "4f52da2729b448c8564369378f1232d8d2dc1d8b";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "control" "invariant" "prelude" 
          ];
      };
  };

two-or-more =
  { src.git =
      { repo = "https://github.com/i-am-the-slime/purescript-two-or-more.git";
        rev = "2068aa61d8c38a0b96a5cff1ad82a1e2209c64e0";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "arrays" "console" "effect" "foldable-traversable" "maybe" "partial" "prelude" "psci-support" "tuples" 
          ];
      };
  };

type-equality =
  { src.git =
      { repo = "https://github.com/purescript/purescript-type-equality.git";
        rev = "0525b7d39e0fbd81b4209518139fb8ab02695774";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ 
          ];
      };
  };

typedenv =
  { src.git =
      { repo = "https://github.com/nsaunders/purescript-typedenv.git";
        rev = "763377a575b50a5ba152816fd316ff7a0aac78b8";
      };

    info =
      { version = "2.0.1";

        dependencies =
          [ "either" "foreign-object" "integers" "lists" "maybe" "numbers" "prelude" "record" "strings" "typelevel-prelude" 
          ];
      };
  };

typelevel =
  { src.git =
      { repo = "https://github.com/bodil/purescript-typelevel.git";
        rev = "52975848003e42eb4cfb87895ff947e30b565ca9";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "partial" "prelude" "tuples" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

typelevel-lists =
  { src.git =
      { repo = "https://github.com/PureFunctor/purescript-typelevel-lists.git";
        rev = "435206ebb9979db27e36e49329eae7ee5e3d7530";
      };

    info =
      { version = "2.1.0";

        dependencies =
          [ "prelude" "tuples" "typelevel-peano" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

typelevel-peano =
  { src.git =
      { repo = "https://github.com/csicar/purescript-typelevel-peano.git";
        rev = "f28f5045d0cf4fc3ced56f10433353dc3d5a976e";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "arrays" "console" "effect" "prelude" "psci-support" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

typelevel-prelude =
  { src.git =
      { repo = "https://github.com/purescript/purescript-typelevel-prelude.git";
        rev = "dca2fe3c8cfd5527d4fe70c4bedfda30148405bf";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "prelude" "type-equality" 
          ];
      };
  };

typelevel-rows =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-typelevel-rows.git";
        rev = "2277c6ba93ed11a12af492ec0bdd90f75f042eec";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "prelude" 
          ];
      };
  };

uint =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-uint.git";
        rev = "9e4f76ffd5192472f75583844172fe8ab3c0cb9f";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "effect" "enums" "gen" "maybe" "numbers" "prelude" 
          ];
      };
  };

ulid =
  { src.git =
      { repo = "https://github.com/maxdeviant/purescript-ulid.git";
        rev = "2081231c2f7e7b1b5a01cff7b707209ae66351a4";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ "effect" "functions" "maybe" "nullable" "prelude" 
          ];
      };
  };

uncurried-transformers =
  { src.git =
      { repo = "https://github.com/PureFunctor/purescript-uncurried-transformers.git";
        rev = "0ecd8458ea68c8d615aa3bc0a603592e49137fca";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ "control" "effect" "either" "functions" "identity" "prelude" "safe-coerce" "tailrec" "transformers" "tuples" 
          ];
      };
  };

undefined =
  { src.git =
      { repo = "https://github.com/bklaric/purescript-undefined.git";
        rev = "1cbf5599b8e71defead7fe7dcc90cd91dde8b3a3";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ 
          ];
      };
  };

undefined-is-not-a-problem =
  { src.git =
      { repo = "https://github.com/paluh/purescript-undefined-is-not-a-problem.git";
        rev = "43a345955b88068583eafb39d26c47ab61cf27b5";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ "arrays" "assert" "effect" "either" "foreign" "maybe" "newtype" "prelude" "random" "tuples" "type-equality" "unsafe-coerce" 
          ];
      };
  };

unfoldable =
  { src.git =
      { repo = "https://github.com/purescript/purescript-unfoldable.git";
        rev = "493dfe04ed590e20d8f69079df2f58486882748d";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "foldable-traversable" "maybe" "partial" "prelude" "tuples" 
          ];
      };
  };

unicode =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-unicode.git";
        rev = "6454d59d9e1fd1bc5a72e80e985d8282022a567a";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "foldable-traversable" "maybe" "strings" 
          ];
      };
  };

unique =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-unique.git";
        rev = "f4c606d09424074f0a38733227fdb380a7a02efb";
      };

    info =
      { version = "0.6.1";

        dependencies =
          [ "effect" "prelude" "refs" 
          ];
      };
  };

unlift =
  { src.git =
      { repo = "https://github.com/tweag/purescript-unlift.git";
        rev = "36446df6df933bac1dd4ce3c0aad572a5516e2d2";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "effect" "either" "freet" "identity" "lists" "maybe" "monad-control" "prelude" "st" "transformers" "tuples" 
          ];
      };
  };

unordered-collections =
  { src.git =
      { repo = "https://github.com/fehrenbach/purescript-unordered-collections.git";
        rev = "0192d2c9d0759895b7492cc00651631eb9abc5b5";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ "arrays" "enums" "functions" "integers" "lists" "prelude" "record" "tuples" "typelevel-prelude" "unfoldable" 
          ];
      };
  };

unsafe-coerce =
  { src.git =
      { repo = "https://github.com/purescript/purescript-unsafe-coerce.git";
        rev = "ab956f82e66e633f647fb3098e8ddd3ec58d689f";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ 
          ];
      };
  };

unsafe-reference =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-unsafe-reference.git";
        rev = "058e23b8b9adcf776a910f9934ff515ddee73af5";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "prelude" 
          ];
      };
  };

untagged-to-tagged =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-untagged-to-tagged.git";
        rev = "6d39bd2aa7bf0329605ad7756c1e51729e473ce7";
      };

    info =
      { version = "0.1.4";

        dependencies =
          [ "either" "newtype" "prelude" "untagged-union" 
          ];
      };
  };

untagged-union =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-untagged-union.git";
        rev = "a9d78a1eb6e1a1907e2b930e1117cace4e8f52df";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "assert" "console" "effect" "foreign" "foreign-object" "literals" "maybe" "newtype" "psci-support" "tuples" "unsafe-coerce" 
          ];
      };
  };

uri =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-uri.git";
        rev = "6cb335da26c61dad7021281bdc7e4ac5136200fe";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "arrays" "integers" "js-uri" "numbers" "parsing" "prelude" "profunctor-lenses" "these" "transformers" "unfoldable" 
          ];
      };
  };

uuid =
  { src.git =
      { repo = "https://github.com/megamaddu/purescript-uuid.git";
        rev = "bfc1f0b21dbbcfa5443914dbf8b452fdffaadf88";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ "aff" "effect" "maybe" "partial" "prelude" "spec" "strings" 
          ];
      };
  };

uuidv4 =
  { src.git =
      { repo = "https://github.com/garyb/purescript-uuidv4.git";
        rev = "f012a45e01a981ec7d0130b729a82b7f4cb45e39";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "prelude" "random" "strings" 
          ];
      };
  };

validation =
  { src.git =
      { repo = "https://github.com/purescript/purescript-validation.git";
        rev = "a3d9ec2176a7a808d70a01fa7e6f16d10e05429a";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "bifunctors" "control" "either" "foldable-traversable" "newtype" "prelude" 
          ];
      };
  };

variant =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-variant.git";
        rev = "8b2bd73a4202257d80a955c4dd36f6055f149823";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "enums" "lists" "maybe" "partial" "prelude" "record" "tuples" "unsafe-coerce" 
          ];
      };
  };

variant-encodings =
  { src.git =
      { repo = "https://github.com/thought2/purescript-variant-encodings.git";
        rev = "86160beaf1112357e75f745be3be9d451a7f76c7";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "prelude" "unsafe-coerce" "variant" 
          ];
      };
  };

vectorfield =
  { src.git =
      { repo = "https://github.com/csicar/purescript-vectorfield.git";
        rev = "df5710b5f7c8f6986b882ec2e0aec012c070af05";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "console" "effect" "group" "prelude" "psci-support" 
          ];
      };
  };

vectors =
  { src.git =
      { repo = "https://github.com/thought2/purescript-vectors.git";
        rev = "2a61dca5b39de1361cc01cdc0c32b9ffc6741d71";
      };

    info =
      { version = "2.1.0";

        dependencies =
          [ "console" "effect" "foldable-traversable" "prelude" "profunctor-lenses" 
          ];
      };
  };

versions =
  { src.git =
      { repo = "https://github.com/hdgarrood/purescript-versions.git";
        rev = "17fc47a107b1a26a0f261489f979ecede58c3f0a";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ "control" "either" "foldable-traversable" "functions" "integers" "lists" "maybe" "orders" "parsing" "partial" "strings" 
          ];
      };
  };

visx =
  { src.git =
      { repo = "https://github.com/i-am-the-slime/purescript-visx.git";
        rev = "c0536325e044641a2e66638381fd6fb7d2567791";
      };

    info =
      { version = "0.0.2";

        dependencies =
          [ "arrays" "console" "datetime" "effect" "either" "foldable-traversable" "foreign" "foreign-object" "functions" "integers" "js-date" "justifill" "lists" "maybe" "nullable" "prelude" "react-basic" "react-basic-dom" "react-basic-hooks" "record" "transformers" "tuples" "typelevel-prelude" "unsafe-coerce" "untagged-union" "web-dom" 
          ];
      };
  };

web-clipboard =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-clipboard.git";
        rev = "9f901476e5ac2813fa3bf916798eef673963db4c";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "js-promise" "web-html" 
          ];
      };
  };

web-cssom =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-cssom.git";
        rev = "4cc9dea70028a4f6336e4623602363726fc13cba";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "web-dom" "web-html" "web-uievents" 
          ];
      };
  };

web-cssom-view =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-cssom-view.git";
        rev = "8a4581e4a5eff76959e6e93838beb520083d7948";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "aff" "web-events" "web-geometry" "web-html" 
          ];
      };
  };

web-dom =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-dom.git";
        rev = "568a1ee158b29e6e739e7a9aaed3e35ca4c4305a";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "web-events" 
          ];
      };
  };

web-dom-parser =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-dom-parser.git";
        rev = "eb13b10aaea2257125ccf693cdb2b4e62057f93f";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ "effect" "partial" "prelude" "web-dom" 
          ];
      };
  };

web-dom-xpath =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-dom-xpath.git";
        rev = "8a531d5621c452f7c5f9c3de4e7cfcce2077b866";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "web-dom" 
          ];
      };
  };

web-encoding =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-encoding.git";
        rev = "a4e12ae4e36fd823f94135f4de3743766928aaab";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ "arraybuffer-types" "effect" "newtype" "prelude" 
          ];
      };
  };

web-events =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-events.git";
        rev = "2124356117be7b764a2f3948032255ac4dab7051";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "datetime" "enums" "foreign" "nullable" 
          ];
      };
  };

web-fetch =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-fetch.git";
        rev = "d5e667aaf3ee3d4389d13596e394c90eaa2793de";
      };

    info =
      { version = "4.0.1";

        dependencies =
          [ "effect" "foreign-object" "http-methods" "js-promise" "prelude" "record" "typelevel-prelude" "web-file" "web-streams" 
          ];
      };
  };

web-file =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-file.git";
        rev = "023786ae62bbb8bf58156dd7f02011fa38221ef1";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "foreign" "media-types" "web-dom" 
          ];
      };
  };

web-geometry =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-geometry.git";
        rev = "54991647c5a8108c65f52e749c5ecc31ef69f6db";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ 
          ];
      };
  };

web-html =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-html.git";
        rev = "40e9a0c5c927e4d9f7ba7c1204e4792f4d24cc27";
      };

    info =
      { version = "4.1.0";

        dependencies =
          [ "js-date" "web-dom" "web-file" "web-storage" 
          ];
      };
  };

web-intl =
  { src.git =
      { repo = "https://github.com/ptrfrncsmrph/purescript-web-intl.git";
        rev = "0f6dacdc65d0c0494c627ed599088258221c35e8";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ "arrays" "datetime" "effect" "enums" "functions" "js-date" "maybe" "nullable" "partial" "prelude" "tuples" "unfoldable" "unsafe-coerce" 
          ];
      };
  };

web-pointerevents =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-pointerevents.git";
        rev = "cf1f48dda73ea34f81a769809489806fce0cac40";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "effect" "maybe" "prelude" "web-dom" "web-uievents" 
          ];
      };
  };

web-proletarian =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-web-proletarian.git";
        rev = "7ee734d8d907160691ba8e9c2adc3c1cb9b3c5be";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "effect" "prelude" 
          ];
      };
  };

web-resize-observer =
  { src.git =
      { repo = "https://github.com/nsaunders/purescript-web-resize-observer.git";
        rev = "eef63c00f3359cc058c5ee398fabbaaa50c944ac";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "arrays" "console" "control" "effect" "either" "foldable-traversable" "foreign" "prelude" "record" "transformers" "web-dom" 
          ];
      };
  };

web-router =
  { src.git =
      { repo = "https://github.com/robertdp/purescript-web-router.git";
        rev = "36ff21224b806706ea863d337c5c9d5a450590b4";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "aff" "effect" "foldable-traversable" "foreign" "freet" "indexed-monad" "maybe" "prelude" "profunctor-lenses" "refs" "routing" "type-equality" 
          ];
      };
  };

web-socket =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-socket.git";
        rev = "9d37be740d9c99449ddb4ca5de8a0339e4ae1f55";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "arraybuffer-types" "web-file" 
          ];
      };
  };

web-storage =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-storage.git";
        rev = "6b74461e136755db70c271dc898d51776363d7e2";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ "nullable" "web-events" 
          ];
      };
  };

web-streams =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-streams.git";
        rev = "b89cd269b71e818cc32a9452c590f14cfaf50c59";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "arraybuffer-types" "effect" "exceptions" "js-promise" "nullable" "prelude" "tuples" 
          ];
      };
  };

web-touchevents =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-touchevents.git";
        rev = "53feadd58661b6a8bce673f4a1da4a6436cbbb24";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "web-uievents" 
          ];
      };
  };

web-uievents =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-uievents.git";
        rev = "091ad1b092dee27ec9bcbaad84bb34c4218026df";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ "web-html" 
          ];
      };
  };

web-url =
  { src.git =
      { repo = "https://github.com/mjepronk/purescript-web-url.git";
        rev = "c8b0a0061e06d5d2f7d3a04597c5fa49679a0e32";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "aff" "effect" "maybe" "partial" "prelude" "spec" "tuples" 
          ];
      };
  };

web-workers =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-workers.git";
        rev = "1b23a4b14b1da365d25a0a9416a955b7faf22cc8";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ "effect" "foreign" "maybe" "prelude" "unsafe-coerce" "web-events" 
          ];
      };
  };

web-xhr =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-xhr.git";
        rev = "fbdd0d06cbc6b957aa1ab797e69cb7678a6c508a";
      };

    info =
      { version = "5.0.1";

        dependencies =
          [ "arraybuffer-types" "datetime" "http-methods" "web-dom" "web-file" "web-html" 
          ];
      };
  };

webextension-polyfill =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-webextension-polyfill.git";
        rev = "43e32d6b89a59f09a7e9fdfd573d34c273c628b0";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "aff" "aff-promise" "console" "effect" "either" "foldable-traversable" "foreign" "foreign-object" "maybe" "newtype" "prelude" "yoga-json" 
          ];
      };
  };

webgpu =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-webgpu.git";
        rev = "c7922405c79015a4f20d3e0cce9c246f8c1cc6b1";
      };

    info =
      { version = "0.0.1";

        dependencies =
          [ "arraybuffer-types" "effect" "foreign" "foreign-object" "functions" "integers" "js-promise" "maybe" "newtype" "ordered-collections" "prelude" "uint" "unsafe-coerce" "web-events" "web-html" 
          ];
      };
  };

which =
  { src.git =
      { repo = "https://github.com/maxdeviant/purescript-which.git";
        rev = "ddd46a36005754127504bcc66ff3d21ecf983407";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ "arrays" "effect" "foreign" "maybe" "nullable" "options" "prelude" 
          ];
      };
  };

yoga-fetch =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-yoga-fetch.git";
        rev = "5e912ebed3397d5d01b1b412b4978242c21c671f";
      };

    info =
      { version = "1.0.1";

        dependencies =
          [ "aff" "aff-promise" "arraybuffer-types" "effect" "foreign" "foreign-object" "newtype" "prelude" "typelevel-prelude" "unsafe-coerce" 
          ];
      };
  };

yoga-json =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-yoga-json.git";
        rev = "eed8ae9817a2c88b730c9fd4db99291390308dea";
      };

    info =
      { version = "5.1.0";

        dependencies =
          [ "arrays" "bifunctors" "control" "datetime" "effect" "either" "exceptions" "foldable-traversable" "foreign" "foreign-object" "free" "identity" "integers" "js-bigints" "js-date" "lists" "maybe" "newtype" "nullable" "numbers" "ordered-collections" "partial" "prelude" "record" "strings" "transformers" "tuples" "typelevel-prelude" "unsafe-coerce" "variant" "yoga-tree" 
          ];
      };
  };

yoga-om =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-yoga-om.git";
        rev = "633eaf4ccd2a2c251b34253a32a62c2762f978fb";
      };

    info =
      { version = "0.1.0";

        dependencies =
          [ "aff" "avar" "console" "control" "datetime" "effect" "either" "exceptions" "functions" "maybe" "newtype" "parallel" "prelude" "record" "record-studio" "tailrec" "transformers" "tuples" "typelevel-prelude" "uncurried-transformers" "unsafe-coerce" "variant" 
          ];
      };
  };

yoga-postgres =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-yoga-postgres.git";
        rev = "d4dadf10b13abb85ff50a6b444aca901f4abb2f1";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ "aff" "arrays" "datetime" "effect" "either" "enums" "foldable-traversable" "foreign" "integers" "maybe" "nullable" "prelude" "transformers" "unsafe-coerce" 
          ];
      };
  };

yoga-tree =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-yoga-tree.git";
        rev = "4fc4724dfee8607fca6cda27dfe74381411c81d0";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ "arrays" "control" "foldable-traversable" "free" "maybe" "prelude" "tailrec" 
          ];
      };
  };

z3 =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-z3.git";
        rev = "767c1a9ff3e070897ca78be1cc47af64e1d2f22a";
      };

    info =
      { version = "0.0.2";

        dependencies =
          [ "aff" "arrays" "effect" "foldable-traversable" "functions" "js-bigints" "js-promise" "js-promise-aff" "maybe" "prelude" "record" "refs" "transformers" 
          ];
      };
  };

 }
