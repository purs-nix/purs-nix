ps-pkgs:
  with ps-pkgs;
  { ace =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-ace.git";
        rev = "f5ef6a8f9cbd61f4e42997ab7210fe72d03afc48";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ arrays effect foreign nullable prelude web-html web-uievents 
          ];
      };
  };

aff =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-aff.git";
        rev = "2d44d9f9d0d6a416a4103fba2fb39e5160f80e36";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ datetime effect exceptions functions parallel transformers unsafe-coerce 
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
          [ aff avar console effect either exceptions foldable-traversable lists prelude refs tailrec transformers tuples 
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
          [ aff avar coroutines effect 
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
          [ aff foreign 
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
          [ aff arrays datetime effect either exceptions integers maybe newtype numbers prelude random transformers 
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
          [ aff argonaut-core arraybuffer-types foreign form-urlencoded http-methods integers media-types nullable refs unsafe-coerce web-xhr 
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
          [ aff affjax either maybe prelude 
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
          [ aff affjax either maybe prelude 
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
          [ foldable-traversable lists strings 
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
          [ argonaut-codecs argonaut-core argonaut-traversals 
          ];
      };
  };

argonaut-codecs =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-argonaut-codecs.git";
        rev = "176a5dddae28fda9a2ff31ed4bf1efcc148513a4";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ argonaut-core arrays effect foreign-object identity integers maybe nonempty ordered-collections prelude record 
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
          [ arrays control either foreign-object functions gen maybe nonempty prelude strings tailrec 
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
          [ argonaut-codecs argonaut-core prelude record 
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
          [ argonaut-codecs argonaut-core profunctor-lenses 
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
          [ arrays bifunctors control either foldable-traversable integers lists maybe newtype numbers prelude record strings tuples unfoldable 
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
          [ arrays ps-pkgs."assert" console effect foldable-traversable maybe nullable prelude 
          ];
      };
  };

arraybuffer =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-arraybuffer.git";
        rev = "3b5ba3040f060057e864805546a50f319853517d";
      };

    info =
      { version = "13.0.0";

        dependencies =
          [ arraybuffer-types arrays effect float32 functions gen maybe nullable prelude tailrec uint unfoldable 
          ];
      };
  };

arraybuffer-builder =
  { src.git =
      { repo = "https://github.com/jamesdbrock/purescript-arraybuffer-builder.git";
        rev = "4332c124638da9de048cb7cd4dd4c90a562fa63d";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ arraybuffer arraybuffer-types effect float32 identity lists maybe newtype prelude tailrec transformers uint 
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
        rev = "d20bae2f76db6cf29b7b75e26e82b8a54c32295e";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ bifunctors control foldable-traversable maybe nonempty partial prelude st tailrec tuples unfoldable unsafe-coerce 
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
          [ arrays control quickcheck 
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
          [ unsafe-coerce 
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
          [ console effect prelude 
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
          [ aff effect either exceptions functions maybe 
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
          [ arraybuffer-types either encoding enums exceptions functions partial prelude strings 
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
          [ either foldable-traversable lists maybe newtype prelude profunctor profunctor-lenses tuples typelevel-prelude 
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
          [ const either newtype prelude tuples 
          ];
      };
  };

bigints =
  { src.git =
      { repo = "https://github.com/sharkdp/purescript-bigints.git";
        rev = "e73f55b866e437c7bf04c7d262de7c205c47bbca";
      };

    info =
      { version = "7.0.1";

        dependencies =
          [ integers maybe strings 
          ];
      };
  };

bolson =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-bolson.git";
        rev = "dd6ed27560b2da4dcedc993334ed38967a0af743";
      };

    info =
      { version = "0.0.6";

        dependencies =
          [ control effect fast-vect filterable foldable-traversable foreign-object heterogeneous hyrule maybe monoid-extras prelude st tuples unsafe-coerce 
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
          [ argonaut-codecs arrays either foldable-traversable foreign-object maybe newtype prelude tuples 
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
          [ control either lazy maybe unsafe-coerce 
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
          [ arraybuffer-types effect exceptions functions maybe 
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
          [ aff arrays canvas colors effect either exceptions foldable-traversable maybe numbers polymorphic-vectors prelude refs run transformers tuples type-equality typelevel-prelude unsafe-coerce web-dom web-events web-html 
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
          [ console effect integers psci-support 
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
          [ control foldable-traversable lists maybe prelude tuples unfoldable 
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
          [ aff ps-pkgs."assert" avar console contravariant control effect either exceptions foldable-traversable lazy maybe newtype prelude tailrec transformers tuples 
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
          [ prelude transformers variant 
          ];
      };
  };

codec =
  { src.git =
      { repo = "https://github.com/garyb/purescript-codec.git";
        rev = "3a81bb56b2326b3d37f9c6e6a8fe26468a5d33f2";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ profunctor transformers 
          ];
      };
  };

codec-argonaut =
  { src.git =
      { repo = "https://github.com/garyb/purescript-codec-argonaut.git";
        rev = "3297cceb78f9e3313266ad57da6e32c1f4ce5e07";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ argonaut-core codec ordered-collections type-equality variant 
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
          [ arrays integers lists numbers partial strings 
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
          [ aff avar effect 
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
          [ effect prelude 
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
          [ invariant newtype prelude 
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
          [ const either newtype prelude tuples 
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
          [ newtype prelude 
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
          [ console effect maybe record 
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
          [ freet parallel profunctor 
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
          [ colors console effect nonempty profunctor strings these transformers 
          ];
      };
  };

datetime =
  { src.git =
      { repo = "https://github.com/purescript/purescript-datetime.git";
        rev = "a6a0cf1b0324964ad1854bc3377ed8766ba90e6f";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ bifunctors control either enums foldable-traversable functions gen integers lists maybe newtype numbers ordered-collections partial prelude tuples 
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
          [ arrays datetime either enums foldable-traversable integers lists maybe numbers parsing prelude strings unicode 
          ];
      };
  };

debug =
  { src.git =
      { repo = "https://github.com/garyb/purescript-debug.git";
        rev = "bc1710ff82f6a03873cca6d453b358f51fd7d639";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ functions prelude 
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
          [ maybe 
          ];
      };
  };

deku =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-deku.git";
        rev = "8779d94a93398cb5274f65f52201213bedfd89ee";
      };

    info =
      { version = "0.4.13";

        dependencies =
          [ arrays bolson control effect fast-vect filterable foldable-traversable foreign-object heterogeneous hyrule maybe monoid-extras newtype ordered-collections prelude profunctor quickcheck record refs safe-coerce st strings transformers unsafe-coerce web-dom web-events web-html 
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
          [ aff aff-promise argonaut arraybuffer-types console effect either functions maybe ordered-collections prelude strings tuples unsafe-coerce web-streams 
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
          [ arrays bifunctors foreign-object functors newtype partial prelude tailrec type-equality typelevel-prelude unsafe-coerce variant 
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
          [ identity newtype prelude tuples type-equality 
          ];
      };
  };

dodo-printer =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-dodo-printer.git";
        rev = "3295054fa213e586ebbe46adfb0dd607f8b394d7";
      };

    info =
      { version = "2.2.0";

        dependencies =
          [ aff ansi avar console effect foldable-traversable lists maybe minibench node-child-process node-fs-aff node-process psci-support strings 
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
          [ media-types prelude web-clipboard web-pointerevents web-touchevents 
          ];
      };
  };

droplet =
  { src.git =
      { repo = "https://github.com/easafe/purescript-droplet.git";
        rev = "3b4bc7071a502c33b2963bdd30af67ce5439c5d4";
      };

    info =
      { version = "0.4.0";

        dependencies =
          [ aff arrays bifunctors bigints datetime debug effect either enums exceptions foldable-traversable foreign foreign-object integers maybe newtype nullable ordered-collections partial prelude profunctor record spec strings transformers tuples type-equality typelevel-prelude unsafe-coerce 
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
          [ arraybuffer-types effect refs 
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
          [ prelude 
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
          [ control invariant maybe prelude 
          ];
      };
  };

elmish =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish.git";
        rev = "d1e854bd08c7d03e5d9d17cb8279769808cfb446";
      };

    info =
      { version = "0.8.2";

        dependencies =
          [ aff argonaut-core arrays bifunctors console debug effect either foldable-traversable foreign foreign-object functions integers js-date maybe nullable partial prelude refs typelevel-prelude undefined-is-not-a-problem unsafe-coerce web-dom web-html 
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
          [ aff aff-promise arrays console debug effect elmish foldable-traversable foreign functions prelude transformers unsafe-coerce 
          ];
      };
  };

elmish-hooks =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish-hooks.git";
        rev = "37aa32b3e736c592f610751bba073c1a900439b0";
      };

    info =
      { version = "0.8.2";

        dependencies =
          [ aff debug elmish maybe prelude tuples undefined-is-not-a-problem 
          ];
      };
  };

elmish-html =
  { src.git =
      { repo = "https://github.com/collegevine/purescript-elmish-html.git";
        rev = "519e0b930d3bb75e957e6d67285d2d150ada1be0";
      };

    info =
      { version = "0.7.1";

        dependencies =
          [ effect elmish foreign foreign-object prelude record typelevel-prelude unsafe-coerce web-html 
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
          [ aff string-parsers transformers 
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
          [ arraybuffer-types either exceptions functions prelude 
          ];
      };
  };

enums =
  { src.git =
      { repo = "https://github.com/purescript/purescript-enums.git";
        rev = "bae47961d401f9acf88da38f32e87403e5f0cf2f";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ control either gen maybe newtype nonempty partial prelude tuples unfoldable 
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
          [ effect either maybe prelude 
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
          [ unsafe-coerce 
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
          [ enums 
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
          [ prelude typelevel-prelude 
          ];
      };
  };

fast-vect =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-fast-vect.git";
        rev = "f48937f8615c1a648789a4e36b6389d05cad922e";
      };

    info =
      { version = "0.7.0";

        dependencies =
          [ arrays filterable foldable-traversable lists maybe ordered-collections prelude profunctor tuples unfoldable 
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
          [ arrays either foldable-traversable identity lists ordered-collections 
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
          [ exists newtype prelude transformers 
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
          [ arrays bigints control integers maybe numbers partial prelude strings 
          ];
      };
  };

flame =
  { src.git =
      { repo = "https://github.com/easafe/purescript-flame.git";
        rev = "7237503800bfa7eff13c71e694c030092cd59b1d";
      };

    info =
      { version = "1.2.0";

        dependencies =
          [ aff argonaut-codecs argonaut-core argonaut-generic arrays bifunctors console effect either exceptions foldable-traversable foreign foreign-object maybe newtype nullable partial prelude random refs spec strings tuples typelevel-prelude unsafe-coerce web-dom web-events web-html web-uievents 
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
          [ gen maybe prelude 
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
          [ bifunctors const control either functors identity maybe newtype orders prelude tuples 
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
          [ either functions identity integers lists maybe prelude strings transformers 
          ];
      };
  };

foreign-object =
  { src.git =
      { repo = "https://github.com/purescript/purescript-foreign-object.git";
        rev = "28a635827a9a6c251df73f68874070d51fe9f756";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ arrays foldable-traversable functions gen lists maybe prelude st tailrec tuples typelevel-prelude unfoldable 
          ];
      };
  };

foreign-readwrite =
  { src.git =
      { repo = "https://github.com/artemisSystem/purescript-foreign-readwrite.git";
        rev = "9f17101f26730d31adefb003a38dd42a03b5ff56";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ foldable-traversable foreign foreign-object identity lists maybe newtype prelude record safe-coerce transformers unsafe-coerce 
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
          [ aff 
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
          [ foldable-traversable js-uri maybe newtype prelude strings tuples 
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
          [ datetime fixed-points lists numbers parsing prelude transformers 
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
          [ catenable-lists control distributive either exists foldable-traversable invariant lazy maybe prelude tailrec transformers tuples unsafe-coerce 
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
          [ const exists gen lists 
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
          [ prelude record 
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
          [ aff bifunctors effect either exists free prelude tailrec transformers tuples 
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
          [ prelude 
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
          [ bifunctors const contravariant control distributive either invariant maybe newtype prelude profunctor tuples unsafe-coerce 
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
          [ foldable-traversable foreign-object newtype ordered-collections prelude rationals strings tuples 
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
          [ either foldable-traversable identity maybe newtype nonempty prelude tailrec tuples unfoldable 
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
          [ arrays control effect enums foldable-traversable gen identity integers lcg lists maybe newtype numbers partial prelude tailrec transformers tuples 
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
          [ arrays ps-pkgs."assert" effect foldable-traversable lists maybe ordered-collections prelude record strings tuples 
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
          [ console effect psci-support sparse-polynomials 
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
          [ aff aff-promise effect foreign-object node-buffer node-path node-streams nullable transformers 
          ];
      };
  };

graphs =
  { src.git =
      { repo = "https://github.com/purescript/purescript-graphs.git";
        rev = "d100d7df53ea23232da46ea0fbfbaa68240b2737";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ catenable-lists ordered-collections 
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
          [ lists 
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
          [ aff avar console const dom-indexed effect foreign fork free freeap halogen-subscriptions halogen-vdom media-types nullable ordered-collections parallel profunctor transformers unsafe-coerce unsafe-reference web-file web-uievents 
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
          [ css halogen 
          ];
      };
  };

halogen-formless =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-halogen-formless.git";
        rev = "0c1ce1bee82ce56049df84c90540c6eb4ac59faf";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ convertable-options effect either foldable-traversable foreign-object halogen heterogeneous maybe prelude record safe-coerce type-equality unsafe-coerce unsafe-reference variant web-events web-uievents 
          ];
      };
  };

halogen-hooks =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-halogen-hooks.git";
        rev = "cbbf5658f3855d84f81227c88f80d484454421f2";
      };

    info =
      { version = "0.6.0";

        dependencies =
          [ aff arrays bifunctors effect exceptions foldable-traversable foreign-object free freeap halogen halogen-subscriptions maybe newtype ordered-collections parallel partial prelude refs tailrec transformers tuples unsafe-coerce unsafe-reference web-dom web-html 
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
          [ halogen-hooks 
          ];
      };
  };

halogen-store =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-halogen-store.git";
        rev = "7dbf39dd1c31d083fd3822fb1339b2052b1e8260";
      };

    info =
      { version = "0.5.0";

        dependencies =
          [ aff distributive effect fork halogen halogen-hooks halogen-subscriptions maybe prelude refs tailrec transformers tuples unsafe-reference 
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
          [ foreign-object halogen prelude routing 
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
          [ arrays effect foldable-traversable functors refs safe-coerce unsafe-reference 
          ];
      };
  };

halogen-svg-elems =
  { src.git =
      { repo = "https://github.com/JordanMartinez/purescript-halogen-svg-elems.git";
        rev = "372b4f909d00f6695c1bcc23bcf4479ba486a8a1";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ halogen 
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
          [ bifunctors effect foreign foreign-object maybe prelude refs tuples unsafe-coerce web-html 
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
          [ foreign halogen-vdom ordered-collections prelude 
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
          [ arrays foldable-traversable maybe prelude strings transformers tuples unicode 
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
          [ either functors prelude record tuples variant 
          ];
      };
  };

heterogeneous-extrablatt =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-heterogeneous-extrablatt.git";
        rev = "b2b2399683f884653daabf0380c3127f8743c29f";
      };

    info =
      { version = "0.2.1";

        dependencies =
          [ heterogeneous prelude record 
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
          [ ps-pkgs."assert" console effect foreign-object psci-support variant 
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
          [ either prelude strings 
          ];
      };
  };

httpure =
  { src.git =
      { repo = "https://github.com/citizennet/purescript-httpure.git";
        rev = "cfb758fabbe10fe43ce9205022ae2297b618b765";
      };

    info =
      { version = "0.15.0";

        dependencies =
          [ aff arrays bifunctors console effect either foldable-traversable foreign-object js-uri maybe newtype node-buffer node-fs node-http node-streams options ordered-collections prelude refs strings tuples type-equality 
          ];
      };
  };

httpurple =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-httpurple.git";
        rev = "8124dd27af86b00538d0acbe651ff9dc645851a1";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ aff arrays bifunctors console control effect either foldable-traversable foreign-object js-uri justifill maybe newtype node-buffer node-fs node-http node-process node-streams options ordered-collections posix-types prelude profunctor record refs routing-duplex strings transformers tuples type-equality 
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
          [ argonaut console effect either httpurple prelude 
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
          [ console effect either foreign httpurple lists prelude yoga-json 
          ];
      };
  };

hyrule =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-hyrule.git";
        rev = "5e546a8d00c55fa5f4a2a3b79b37a0071e2bcb27";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ arrays control datetime effect either filterable foldable-traversable js-timers lists maybe monoid-extras newtype now ordered-collections partial prelude profunctor record refs st tuples unsafe-coerce unsafe-reference web-events web-html web-uievents 
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
          [ control invariant newtype prelude 
          ];
      };
  };

indexed-monad =
  { src.git =
      { repo = "https://github.com/garyb/purescript-indexed-monad.git";
        rev = "b95d33cea26bfbbdc17d8d80fb664df2ad79d28b";
      };

    info =
      { version = "2.1.0";

        dependencies =
          [ control newtype 
          ];
      };
  };

int64 =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-int64.git";
        rev = "a038f961b2068d9f317d572354c0a2becde5cf22";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ effect foreign functions integers maybe nullable prelude quickcheck 
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
          [ maybe numbers prelude 
          ];
      };
  };

interpolate =
  { src.git =
      { repo = "https://github.com/jordanmartinez/purescript-interpolate.git";
        rev = "16df04bbdf709fd93aae885ecd6330f4975837a7";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ prelude 
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
          [ control prelude 
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
          [ datetime effect exceptions foreign integers now 
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
          [ aff effect prelude 
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
          [ effect 
          ];
      };
  };

js-uri =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-js-uri.git";
        rev = "ac659740288de7c5e64166dbfda9d4985c5044b7";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ functions maybe 
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
          [ maybe prelude record typelevel-prelude 
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
          [ argonaut-core arrays b64 either exceptions prelude profunctor-lenses strings 
          ];
      };
  };

language-cst-parser =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-language-cst-parser.git";
        rev = "6d3e406369988125107fdf1a41454c46b07412c6";
      };

    info =
      { version = "0.12.0";

        dependencies =
          [ arrays const control either foldable-traversable free functions functors identity integers lazy lists maybe newtype numbers ordered-collections partial prelude st strings transformers tuples typelevel-prelude unfoldable unsafe-coerce 
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
          [ control foldable-traversable invariant prelude 
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
          [ aff aff-promise effect functions prelude unsafe-coerce 
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
          [ effect integers maybe partial prelude random 
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
          [ prelude unsafe-coerce 
          ];
      };
  };

linalg =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-linalg.git";
        rev = "8dc62a79b62fd05a07f5f3ee77ce6f1211615487";
      };

    info =
      { version = "5.1.0";

        dependencies =
          [ arrays foldable-traversable functions maybe prelude tuples 
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
          [ bifunctors control foldable-traversable lazy maybe newtype nonempty partial prelude tailrec tuples unfoldable 
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
          [ integers maybe numbers partial prelude typelevel-prelude unsafe-coerce 
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
          [ console contravariant effect either prelude transformers tuples 
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
          [ effect logging prelude systemd-journald 
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
          [ arrays control effect lists maybe prelude profunctor tuples unfoldable 
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
          [ arrays strings 
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
          [ fixed-points free prelude profunctor transformers 
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
          [ control invariant newtype prelude 
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
          [ newtype prelude 
          ];
      };
  };

metadata =
  { src.git =
      { repo = "https://github.com/purescript/purescript-metadata.git";
        rev = "6529ece5167934712454d9b5d9814b3e663a2c85";
      };

    info =
      { version = "0.15.0";

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
          [ arrays control effect either foldable-traversable integers lists maybe ordered-collections prelude signal string-parsers strings tuples unfoldable 
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
          [ aff-promise arraybuffer-types foreign-object prelude typelevel-prelude 
          ];
      };
  };

minibench =
  { src.git =
      { repo = "https://github.com/purescript/purescript-minibench.git";
        rev = "102810bd97aef87bd2b6affceb5e29a23dfc9035";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ console effect integers numbers partial prelude refs 
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
          [ free functors transformers 
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
          [ aff freet identity lists 
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
          [ aff ansi argonaut arrays console control effect foldable-traversable foreign-object integers js-date maybe newtype ordered-collections prelude strings transformers tuples 
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
          [ lists maybe prelude tailrec tuples 
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
          [ monad-control 
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
          [ console effect foldable-traversable maybe prelude profunctor profunctor-lenses tuples 
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
          [ either profunctor these tuples 
          ];
      };
  };

morello =
  { src.git =
      { repo = "https://github.com/sigma-andex/purescript-morello.git";
        rev = "70d9450cfc9590b8a49a86b8e04a9adaa215d961";
      };

    info =
      { version = "0.3.2";

        dependencies =
          [ arrays barlow-lens foldable-traversable heterogeneous heterogeneous-extrablatt newtype prelude profunctor profunctor-lenses record tuples typelevel-prelude validation 
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
          [ lists strings 
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
          [ aff effect lists maybe prelude random spec strings stringutils 
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
          [ enums maybe prelude 
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
          [ prelude type-equality 
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
          [ prelude safe-coerce 
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
          [ arraybuffer-types effect maybe st unsafe-coerce 
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
          [ aff-promise arraybuffer-types arrays console effect maybe media-types newtype node-buffer nullable prelude web-streams 
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
          [ exceptions foreign foreign-object functions node-fs node-streams nullable posix-types unsafe-coerce 
          ];
      };
  };

node-fs =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-fs.git";
        rev = "7dfc7cad919cec097d40c8fce611338715969f75";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ datetime effect either enums exceptions functions integers js-date maybe node-buffer node-path node-streams nullable partial prelude strings unsafe-coerce 
          ];
      };
  };

node-fs-aff =
  { src.git =
      { repo = "https://github.com/purescript-node/purescript-node-fs-aff.git";
        rev = "a6acd335f5b3e4b8c6df9bb0784f0e06eef0075e";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ aff either node-fs node-path 
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
          [ arraybuffer-types contravariant effect foreign foreign-object maybe node-buffer node-net node-streams node-url nullable options prelude unsafe-coerce 
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
          [ effect either exceptions foreign maybe node-buffer node-fs nullable options prelude transformers 
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
          [ effect 
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
          [ effect foreign-object maybe node-streams posix-types prelude unsafe-coerce 
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
          [ effect foreign node-process node-streams options prelude 
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
          [ effect either exceptions node-buffer nullable prelude 
          ];
      };
  };

node-streams-aff =
  { src.git =
      { repo = "https://github.com/jamesdbrock/purescript-node-streams-aff.git";
        rev = "68bf0516cefbcc002f50d5b958666fe0aa3eb88c";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ aff arrays effect either exceptions maybe node-buffer node-streams prelude st tuples 
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
          [ nullable 
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
          [ control foldable-traversable maybe prelude tuples unfoldable 
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
          [ datetime effect 
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
          [ argonaut control either foreign-object maybe ordered-collections prelude 
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
          [ effect functions maybe 
          ];
      };
  };

numbers =
  { src.git =
      { repo = "https://github.com/purescript/purescript-numbers.git";
        rev = "2a53528f18f9415334bae28e7bb3cf3be86342c2";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ functions maybe 
          ];
      };
  };

ocarina =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-ocarina.git";
        rev = "014692a67b364199a7c4a953a3ce0ef20fb8867c";
      };

    info =
      { version = "1.2.0";

        dependencies =
          [ aff aff-promise arraybuffer-types avar bolson control convertable-options effect either exceptions fast-vect foldable-traversable foreign foreign-object homogeneous hyrule indexed-monad integers js-timers lists maybe newtype numbers ordered-collections prelude profunctor profunctor-lenses random refs safe-coerce simple-json sized-vectors tuples type-equality typelevel typelevel-prelude unsafe-coerce unsafe-reference variant web-events web-file web-html 
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
          [ bifunctors console control distributive effect either foldable-traversable identity invariant maybe newtype ordered-collections prelude profunctor psci-support tuples 
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
          [ console effect either integers lazy lists maybe partial prelude psci-support strings tuples 
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
          [ console control effect either free functors identity newtype prelude psci-support transformers tuples 
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
          [ contravariant foreign foreign-object maybe tuples 
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
          [ aff arrays bifunctors console control effect either enums exists exitcodes foldable-traversable free gen integers lazy lists maybe newtype node-buffer node-process node-streams nonempty numbers open-memoize partial prelude quickcheck strings tailrec transformers tuples 
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
          [ arrays foldable-traversable gen lists maybe partial prelude st tailrec tuples unfoldable 
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
          [ argonaut-codecs arrays partial prelude unfoldable 
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
          [ newtype prelude 
          ];
      };
  };

pairs =
  { src.git =
      { repo = "https://github.com/sharkdp/purescript-pairs.git";
        rev = "f16ba3acc6399dbca0c8632c811f53809d39002c";
      };

    info =
      { version = "9.0.0";

        dependencies =
          [ console distributive foldable-traversable quickcheck 
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
          [ control effect either foldable-traversable functors maybe newtype prelude profunctor refs transformers 
          ];
      };
  };

parsing =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-parsing.git";
        rev = "44ef16b7cfb7cedc3d518c00ef10c6cb73ff4fc8";
      };

    info =
      { version = "9.1.0";

        dependencies =
          [ arrays either foldable-traversable identity integers lists maybe nullable prelude strings transformers unicode 
          ];
      };
  };

parsing-dataview =
  { src.git =
      { repo = "https://github.com/jamesdbrock/purescript-parsing-dataview.git";
        rev = "b4914b03122ec5a15cd685af6733c29b6e23449a";
      };

    info =
      { version = "3.1.0";

        dependencies =
          [ arraybuffer arraybuffer-types effect float32 maybe parsing prelude transformers tuples uint 
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
          [ console exceptions lists partial profunctor strings transformers typelevel-prelude unsafe-coerce 
          ];
      };
  };

pha =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-pha.git";
        rev = "75d13aa0126a00791c42131dcdf722c3f64b01c0";
      };

    info =
      { version = "0.9.0";

        dependencies =
          [ aff arrays bifunctors datetime effect foldable-traversable free integers maybe prelude profunctor-lenses refs tailrec transformers tuples unsafe-coerce unsafe-reference web-dom web-events web-html web-pointerevents web-uievents 
          ];
      };
  };

phaser =
  { src.git =
      { repo = "https://github.com/lfarroco/purescript-phaser.git";
        rev = "e07ea8ed50decc5e6c021ad673523a732698e208";
      };

    info =
      { version = "0.6.0";

        dependencies =
          [ canvas console effect maybe nullable options prelude web-html 
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
          [ aff lists mmorph prelude tailrec transformers tuples 
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
          [ prelude 
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
          [ lists prelude 
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
          [ distributive foldable-traversable numbers prelude record safe-coerce type-equality typelevel-prelude 
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
          [ maybe prelude 
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
          [ arrays console effect exceptions gen integers lists numbers prelude strings 
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
          [ arrays datetime decimals either enums foldable-traversable formatters integers js-date lists maybe newtype numbers prelude strings tuples unicode 
          ];
      };
  };

prelude =
  { src.git =
      { repo = "https://github.com/purescript/purescript-prelude.git";
        rev = "32787f4399c92459c41602131a5858559eb868c5";
      };

    info =
      { version = "6.0.0";

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
          [ console lists prelude strings tuples 
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
          [ control distributive either exists invariant newtype prelude tuples 
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
          [ arrays bifunctors const control distributive either foldable-traversable foreign-object functors identity lists maybe newtype ordered-collections partial prelude profunctor record transformers tuples 
          ];
      };
  };

protobuf =
  { src.git =
      { repo = "https://github.com/xc-jp/purescript-protobuf.git";
        rev = "4d401e33e02980f2086d1e17ae9ba20262cbbc5e";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ arraybuffer arraybuffer-builder arraybuffer-types arrays control effect either enums exceptions float32 foldable-traversable functions int64 maybe newtype parsing parsing-dataview prelude record strings tailrec transformers tuples uint web-encoding 
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
          [ ansi console dodo-printer effect node-fs-aff node-path psci-support record strings 
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
          [ ansi argonaut-codecs argonaut-core arrays console control effect either foldable-traversable maybe node-path ordered-collections prelude strings tuples unsafe-coerce 
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
          [ aff argonaut arrays console maybe node-child-process node-fs parallel random 
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
          [ console effect prelude 
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
          [ arrays control foldable-traversable parallel prelude unfoldable 
          ];
      };
  };

quantities =
  { src.git =
      { repo = "https://github.com/sharkdp/purescript-quantities.git";
        rev = "bd11b659bec957c643617ff3d46adffb7ef89fd7";
      };

    info =
      { version = "12.0.1";

        dependencies =
          [ decimals either foldable-traversable lists maybe newtype nonempty numbers pairs prelude tuples 
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
          [ arrays console control effect either enums exceptions foldable-traversable gen identity integers lazy lcg lists maybe newtype nonempty numbers partial prelude record st strings tailrec transformers tuples unfoldable 
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
          [ quickcheck typelevel 
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
          [ enums quickcheck 
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
          [ quickcheck 
          ];
      };
  };

quotient =
  { src.git =
      { repo = "https://github.com/rightfold/purescript-quotient.git";
        rev = "cd7ab1fd0ece7f14ba85a0e6a5b87d863426c054";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ prelude quickcheck 
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
          [ effect integers 
          ];
      };
  };

rationals =
  { src.git =
      { repo = "https://github.com/anttih/purescript-rationals.git";
        rev = "172a4be9af576aaeea7c92c5125d0a01a44977da";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ integers prelude 
          ];
      };
  };

react =
  { src.git =
      { repo = "https://github.com/purescript-contrib/purescript-react.git";
        rev = "6b91856186c0df983c1ff45d96009f58796ac63d";
      };

    info =
      { version = "10.0.1";

        dependencies =
          [ effect exceptions maybe nullable prelude typelevel-prelude unsafe-coerce 
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
          [ effect prelude record 
          ];
      };
  };

react-basic-dom =
  { src.git =
      { repo = "https://github.com/lumihq/purescript-react-basic-dom.git";
        rev = "7a6d554655db7206b5ed8cb21bbf8b79974764c1";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ effect foldable-traversable foreign-object maybe nullable prelude react-basic unsafe-coerce web-dom web-events web-file web-html 
          ];
      };
  };

react-basic-hooks =
  { src.git =
      { repo = "https://github.com/megamaddu/purescript-react-basic-hooks.git";
        rev = "50575f50a68dc8b756b378674dea5c568b8c109d";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ aff aff-promise bifunctors console control datetime effect either exceptions foldable-traversable functions indexed-monad integers maybe newtype now nullable ordered-collections prelude react-basic refs tuples type-equality unsafe-coerce unsafe-reference web-html 
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
          [ effect react web-dom 
          ];
      };
  };

react-icons =
  { src.git =
      { repo = "https://github.com/andys8/purescript-react-icons.git";
        rev = "256388c39000d6f1b5e75f09f15b1cfc569c0b48";
      };

    info =
      { version = "1.0.5";

        dependencies =
          [ react-basic react-basic-dom unsafe-coerce 
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
          [ maybe prelude strings 
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
          [ functions prelude unsafe-coerce 
          ];
      };
  };

refined =
  { src.git =
      { repo = "https://github.com/danieljharvey/purescript-refined.git";
        rev = "60ef6bd5fea4a39cb39ee66cb54a55c60e038608";
      };

    info =
      { version = "1.0.0";

        dependencies =
          [ argonaut effect prelude quickcheck typelevel 
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
          [ effect prelude 
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
          [ bifunctors either profunctor-lenses 
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
          [ aff console control effect newtype prelude psci-support refs 
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
          [ aff effect foldable-traversable maybe ordered-collections parallel refs tailrec transformers tuples 
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
          [ either foldable-traversable prelude 
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
          [ foldable-traversable point-free prelude 
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
          [ prelude 
          ];
      };
  };

rito =
  { src.git =
      { repo = "https://github.com/mikesol/purescript-rito.git";
        rev = "998111bb2aed41317d9a06a52816b3a4f914b0f0";
      };

    info =
      { version = "0.0.2";

        dependencies =
          [ aff aff-promise arrays bolson control convertable-options deku effect either exceptions exists fast-vect foldable-traversable foreign foreign-object heterogeneous hyrule integers maybe newtype numbers prelude profunctor random record refs safe-coerce tuples unsafe-coerce variant web-dom web-html web-touchevents web-uievents 
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
          [ aff console control effect either foldable-traversable integers js-uri lists maybe numbers partial prelude semirings tuples validation web-html 
          ];
      };
  };

routing-duplex =
  { src.git =
      { repo = "https://github.com/natefaubion/purescript-routing-duplex.git";
        rev = "f4430e60d6519b5c43a888cf153dddee0cbc2946";
      };

    info =
      { version = "0.6.0";

        dependencies =
          [ arrays control either js-uri lazy numbers prelude profunctor record strings typelevel-prelude 
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
          [ aff effect either free maybe newtype prelude profunctor tailrec tuples type-equality typelevel-prelude unsafe-coerce variant 
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
          [ unsafe-coerce 
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
          [ freet lists 
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
          [ filterable foldable-traversable maybe prelude 
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
          [ foldable-traversable lists newtype prelude 
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
          [ aff effect either foldable-traversable maybe prelude 
          ];
      };
  };

simple-emitter =
  { src.git =
      { repo = "https://github.com/oreshinya/purescript-simple-emitter.git";
        rev = "7a9b24fe0b156f213df000d44d21d756bbb67d29";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ ordered-collections refs 
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
          [ arrays exceptions foreign foreign-object nullable prelude record typelevel-prelude variant 
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
          [ arrays distributive foldable-traversable maybe prelude sized-vectors strings typelevel unfoldable vectorfield 
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
          [ argonaut arrays distributive foldable-traversable maybe prelude quickcheck typelevel unfoldable 
          ];
      };
  };

slug =
  { src.git =
      { repo = "https://github.com/thomashoneyman/purescript-slug.git";
        rev = "6f54a984e882c64d02bdaca4eb83fe5f61afdcb5";
      };

    info =
      { version = "3.0.1";

        dependencies =
          [ argonaut-codecs maybe prelude strings unicode 
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
          [ aff affjax affjax-web argonaut-core arraybuffer-types arrays b64 bifunctors console effect either exceptions foldable-traversable foreign-object http-methods integers lists maybe midi ordered-collections parallel partial prelude strings transformers tuples 
          ];
      };
  };

sparse-matrices =
  { src.git =
      { repo = "https://github.com/Ebmtranceboy/purescript-sparse-matrices.git";
        rev = "44773f845cf05940dbfc43e635e739a5d5288cae";
      };

    info =
      { version = "1.2.1";

        dependencies =
          [ console effect prelude sparse-polynomials 
          ];
      };
  };

sparse-polynomials =
  { src.git =
      { repo = "https://github.com/Ebmtranceboy/purescript-sparse-polynomials.git";
        rev = "55a73d6f9896769aa71b68845b8733221b257d5b";
      };

    info =
      { version = "1.0.5";

        dependencies =
          [ cartesian console effect ordered-collections prelude rationals tuples 
          ];
      };
  };

spec =
  { src.git =
      { repo = "https://github.com/purescript-spec/purescript-spec.git";
        rev = "07e5e0efb0286853d56dbcddbbf27a9f6a2788ec";
      };

    info =
      { version = "7.0.0";

        dependencies =
          [ aff ansi avar console exceptions foldable-traversable fork now pipes prelude strings transformers 
          ];
      };
  };

spec-discovery =
  { src.git =
      { repo = "https://github.com/purescript-spec/purescript-spec-discovery.git";
        rev = "ccead24124df91681507fca7950cc932a3858973";
      };

    info =
      { version = "8.0.0";

        dependencies =
          [ aff aff-promise arrays console effect foldable-traversable node-fs prelude spec 
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
          [ aff prelude quickcheck random spec 
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
          [ dissect either fixed-points free lists prelude safe-coerce tailrec tuples variant 
          ];
      };
  };

st =
  { src.git =
      { repo = "https://github.com/purescript/purescript-st.git";
        rev = "2cc7ae1c3318a303378c4a9f3fa0f10ee7cc3589";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ partial prelude tailrec unsafe-coerce 
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
          [ prelude 
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
          [ arrays bifunctors control either foldable-traversable lists maybe prelude strings tailrec 
          ];
      };
  };

strings =
  { src.git =
      { repo = "https://github.com/purescript/purescript-strings.git";
        rev = "4bc6954448d056f8aa7a659695a6ad60ad4fdf19";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ arrays control either enums foldable-traversable gen integers maybe newtype nonempty partial prelude tailrec tuples unfoldable unsafe-coerce 
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
          [ arrays foldable-traversable maybe prelude strings unicode 
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
          [ arrays integers maybe partial prelude strings 
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
          [ foldable-traversable foreign-object maybe prelude return strings 
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
          [ console control effect lazy prelude refs tuples 
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
          [ console functions prelude 
          ];
      };
  };

tailrec =
  { src.git =
      { repo = "https://github.com/purescript/purescript-tailrec.git";
        rev = "5e2104aa734b31a17074cc805bf087d72b65afd1";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ bifunctors effect either identity maybe partial prelude refs 
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
          [ aff avar effect either free js-timers lists prelude quickcheck strings 
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
          [ aff coroutines freet profunctor-lenses react 
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
          [ react react-dom thermite web-html 
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
          [ arrays gen lists quickcheck quickcheck-laws tuples 
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
          [ control distributive effect either exceptions foldable-traversable identity lazy maybe newtype prelude tailrec tuples unfoldable 
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
          [ control foldable-traversable free lists maybe prelude tailrec 
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
          [ control invariant prelude 
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
          [ arrays console effect foldable-traversable maybe partial prelude psci-support tuples 
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

typelevel =
  { src.git =
      { repo = "https://github.com/bodil/purescript-typelevel.git";
        rev = "52975848003e42eb4cfb87895ff947e30b565ca9";
      };

    info =
      { version = "6.0.0";

        dependencies =
          [ partial prelude tuples typelevel-prelude unsafe-coerce 
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
          [ prelude tuples typelevel-peano typelevel-prelude unsafe-coerce 
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
          [ arrays console effect prelude psci-support typelevel-prelude unsafe-coerce 
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
          [ prelude type-equality 
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
          [ prelude 
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
          [ effect enums gen maybe numbers prelude 
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
          [ control effect either functions identity prelude safe-coerce tailrec transformers tuples 
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
          [ arrays ps-pkgs."assert" effect either foreign maybe newtype prelude random tuples type-equality unsafe-coerce 
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
          [ foldable-traversable maybe partial prelude tuples 
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
          [ foldable-traversable maybe strings 
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
          [ aff effect either freet identity lists maybe monad-control prelude st transformers tuples 
          ];
      };
  };

unordered-collections =
  { src.git =
      { repo = "https://github.com/fehrenbach/purescript-unordered-collections.git";
        rev = "6fb203af23c9910ca6776d0673a0256690e0fbcd";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ arrays enums functions integers lists prelude record tuples typelevel-prelude 
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
          [ prelude 
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
          [ arrays integers js-uri numbers parsing prelude profunctor-lenses these transformers unfoldable 
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
          [ bifunctors control either foldable-traversable newtype prelude 
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
          [ enums lists maybe partial prelude record tuples unsafe-coerce 
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
          [ console effect group prelude psci-support 
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
          [ control either foldable-traversable functions integers lists maybe orders parsing partial strings 
          ];
      };
  };

web-clipboard =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-clipboard.git";
        rev = "eded8dd18090c4d0938c2e51ad7407897811d32f";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ web-html 
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
          [ web-dom web-html web-uievents 
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
          [ web-events 
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
          [ effect partial prelude web-dom 
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
          [ web-dom 
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
          [ arraybuffer-types effect newtype prelude 
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
          [ datetime enums foreign nullable 
          ];
      };
  };

web-fetch =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-fetch.git";
        rev = "b3d65452f38e7a3ff3a54874a06de65a477cce22";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ effect foreign-object http-methods prelude record typelevel-prelude web-file web-promise web-streams 
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
          [ foreign media-types web-dom 
          ];
      };
  };

web-html =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-html.git";
        rev = "be189cf91b9a19cf493637423522e2fe4a0088cc";
      };

    info =
      { version = "4.0.0";

        dependencies =
          [ js-date web-dom web-file web-storage 
          ];
      };
  };

web-page-visibility =
  { src.git =
      { repo = "https://git.sr.ht/~toastal/purescript-web-page-visibility";
        rev = "5951f5de26df697f4ed2276d95b4a5d09ecac4fe";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ effect enums exceptions maybe prelude strings web-events web-html 
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
          [ effect maybe prelude web-dom web-uievents 
          ];
      };
  };

web-promise =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-promise.git";
        rev = "509afddee42f993ae67e79137bfa39c8ef800800";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ effect exceptions foldable-traversable functions maybe prelude 
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
          [ arraybuffer-types web-file 
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
          [ nullable web-events 
          ];
      };
  };

web-streams =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-streams.git";
        rev = "d73ca8fce6d2c8ec694560d15d2c72eae4c03f28";
      };

    info =
      { version = "3.0.0";

        dependencies =
          [ arraybuffer-types effect exceptions nullable prelude tuples web-promise 
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
          [ web-uievents 
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
          [ web-html 
          ];
      };
  };

web-workers =
  { src.git =
      { repo = "https://github.com/gbagan/purescript-web-workers.git";
        rev = "1b23a4b14b1da365d25a0a9416a955b7faf22cc8";
      };

    info =
      { version = "1.1.0";

        dependencies =
          [ effect foreign maybe prelude unsafe-coerce web-events 
          ];
      };
  };

web-xhr =
  { src.git =
      { repo = "https://github.com/purescript-web/purescript-web-xhr.git";
        rev = "476122fe3ad19031aeb69186209b480e2fc9ef25";
      };

    info =
      { version = "5.0.0";

        dependencies =
          [ arraybuffer-types datetime http-methods web-dom web-file web-html 
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
          [ aff aff-promise arraybuffer-types effect foreign foreign-object newtype prelude typelevel-prelude unsafe-coerce 
          ];
      };
  };

yoga-json =
  { src.git =
      { repo = "https://github.com/rowtype-yoga/purescript-yoga-json.git";
        rev = "f5dec0e6dbf933667f5dfb71f99047a44a0e7657";
      };

    info =
      { version = "2.0.0";

        dependencies =
          [ arrays bifunctors control effect either exceptions foldable-traversable foreign foreign-object identity lists maybe nullable partial prelude record transformers typelevel-prelude variant 
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
          [ aff arrays datetime effect either enums foldable-traversable foreign integers maybe nullable prelude transformers unsafe-coerce 
          ];
      };
  };

 }
