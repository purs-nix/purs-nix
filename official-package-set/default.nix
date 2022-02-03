ps-pkgs:
  with ps-pkgs;
  { abides =
  { version = "0.0.1";
    repo = "https://github.com/athanclark/purescript-abides.git";
    rev = "9d34557edc0e574665ac60978d42d93f2445d3be";

    dependencies =
      [ enums foldable-traversable 
      ];
  };

ace =
  { version = "8.0.0";
    repo = "https://github.com/purescript-contrib/purescript-ace.git";
    rev = "38cd31854d779ce565dd43f138aeda588ec71d4c";

    dependencies =
      [ arrays effect foreign nullable prelude web-html web-uievents 
      ];
  };

aff =
  { version = "6.0.0";
    repo = "https://github.com/purescript-contrib/purescript-aff.git";
    rev = "d0eb009f2f47cb1f5ba1d8592d90c95e8e7ff75d";

    dependencies =
      [ datetime effect exceptions functions parallel transformers unsafe-coerce 
      ];
  };

aff-bus =
  { version = "5.0.1";
    repo = "https://github.com/purescript-contrib/purescript-aff-bus.git";
    rev = "b4641844fafd25ab9d1ae1eceb4e9a4fcdec3a27";

    dependencies =
      [ aff avar console effect either exceptions foldable-traversable lists prelude refs tailrec transformers tuples 
      ];
  };

aff-coroutines =
  { version = "8.0.0";
    repo = "https://github.com/purescript-contrib/purescript-aff-coroutines.git";
    rev = "72c73d9d5ab88aa517611502ab69b3f6516f56b1";

    dependencies =
      [ aff avar coroutines effect 
      ];
  };

aff-promise =
  { version = "3.0.0";
    repo = "https://github.com/nwolverson/purescript-aff-promise.git";
    rev = "45cfba7f663fce12fe69285fe5acaa4ff025144c";

    dependencies =
      [ aff foreign 
      ];
  };

aff-retry =
  { version = "1.2.1";
    repo = "https://github.com/Unisay/purescript-aff-retry.git";
    rev = "f955938a1dd6251b78c5646377804b3aadc44a65";

    dependencies =
      [ aff console datetime exceptions prelude psci-support random test-unit transformers 
      ];
  };

affjax =
  { version = "12.0.0";
    repo = "https://github.com/purescript-contrib/purescript-affjax.git";
    rev = "5be197edc213fbededb8da908f77b69908eaa6f8";

    dependencies =
      [ aff argonaut-core arraybuffer-types foreign form-urlencoded http-methods integers math media-types nullable refs unsafe-coerce web-xhr 
      ];
  };

amazons =
  { version = "1.0.1";
    repo = "https://github.com/Forensor/purescript-amazons.git";
    rev = "5abacdd8398baac866ad50fedc3f948e7b3567a2";

    dependencies =
      [ aff arrays effect foldable-traversable integers maybe numbers prelude psci-support quickcheck spec strings tuples versions 
      ];
  };

ansi =
  { version = "6.1.0";
    repo = "https://github.com/hdgarrood/purescript-ansi.git";
    rev = "f1de026e0401c26240bea93d8aa7ac95c95b531d";

    dependencies =
      [ foldable-traversable lists strings 
      ];
  };

argonaut =
  { version = "8.0.0";
    repo = "https://github.com/purescript-contrib/purescript-argonaut.git";
    rev = "e5137df76065c14e5de70c4e2820222bd7c78fc2";

    dependencies =
      [ argonaut-codecs argonaut-core argonaut-traversals 
      ];
  };

argonaut-codecs =
  { version = "8.1.0";
    repo = "https://github.com/purescript-contrib/purescript-argonaut-codecs.git";
    rev = "b0a041d92bfd548e2cd793cc7c02363464325a13";

    dependencies =
      [ argonaut-core arrays effect foreign-object identity integers maybe nonempty ordered-collections prelude record 
      ];
  };

argonaut-core =
  { version = "6.0.0";
    repo = "https://github.com/purescript-contrib/purescript-argonaut-core.git";
    rev = "673971dee79667882a83f9fda7097e50530726f1";

    dependencies =
      [ arrays control either foreign-object functions gen maybe nonempty prelude strings tailrec 
      ];
  };

argonaut-generic =
  { version = "7.0.1";
    repo = "https://github.com/purescript-contrib/purescript-argonaut-generic.git";
    rev = "be59a41bdce62bec453521ba4e7be27dddc82b36";

    dependencies =
      [ argonaut-codecs argonaut-core prelude record 
      ];
  };

argonaut-traversals =
  { version = "9.0.0";
    repo = "https://github.com/purescript-contrib/purescript-argonaut-traversals.git";
    rev = "36f2e368ceea1ed681bd8e2884eaca451945fc44";

    dependencies =
      [ argonaut-codecs argonaut-core profunctor-lenses 
      ];
  };

arraybuffer =
  { version = "12.0.0";
    repo = "https://github.com/purescript-contrib/purescript-arraybuffer.git";
    rev = "3fb33d1568959fb44c822024e0d958b1a49ac189";

    dependencies =
      [ arraybuffer-types arrays effect float32 functions gen maybe nullable prelude tailrec uint unfoldable 
      ];
  };

arraybuffer-builder =
  { version = "2.1.0";
    repo = "https://github.com/jamesdbrock/purescript-arraybuffer-builder.git";
    rev = "24a01a6d3e30cc22a540aa970145b0409e8e0fb2";

    dependencies =
      [ arraybuffer arraybuffer-types effect float32 maybe prelude transformers uint 
      ];
  };

arraybuffer-types =
  { version = "3.0.1";
    repo = "https://github.com/purescript-contrib/purescript-arraybuffer-types.git";
    rev = "b6c85c071bb600377e028f3d89042e2c7948dc9a";

    dependencies =
      [ 
      ];
  };

arrays =
  { version = "6.0.1";
    repo = "https://github.com/purescript/purescript-arrays.git";
    rev = "956814a9b13f294c2f6068e374394633805902ef";

    dependencies =
      [ bifunctors control foldable-traversable maybe nonempty partial prelude st tailrec tuples unfoldable unsafe-coerce 
      ];
  };

arrays-zipper =
  { version = "1.1.1";
    repo = "https://github.com/JordanMartinez/purescript-arrays-zipper.git";
    rev = "8804c8d72c181819044f7348070a78d483a22949";

    dependencies =
      [ arrays control quickcheck 
      ];
  };

ask =
  { version = "1.0.0";
    repo = "https://github.com/Mateiadrielrafael/purescript-ask.git";
    rev = "536e8f5855222c580d198f9742e6de012bd1a4c7";

    dependencies =
      [ unsafe-coerce 
      ];
  };

"assert" =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-assert.git";
    rev = "71a3b1f3b9917c23691fdbb1858de171be871a10";

    dependencies =
      [ console effect prelude 
      ];
  };

avar =
  { version = "4.0.0";
    repo = "https://github.com/purescript-contrib/purescript-avar.git";
    rev = "ac3cbbb8d4b71ff19a78a3178355c089e44d3b4d";

    dependencies =
      [ aff effect either exceptions functions maybe 
      ];
  };

aws-encryption-sdk =
  { version = "0.2.0";
    repo = "https://github.com/HivemindTechnologies/purescript-aws-encryption-sdk.git";
    rev = "234f62ab779d48b04dd7983f6652f1e44fe59655";

    dependencies =
      [ aff-promise console debug effect node-buffer psci-support spec spec-discovery 
      ];
  };

aws-sdk-basic =
  { version = "0.16.2";
    repo = "https://github.com/HivemindTechnologies/purescript-aws-sdk.git";
    rev = "03adf9f45de5b665d65fe76ac040b1aef1b88b8b";

    dependencies =
      [ aff-promise argonaut console datetime effect foreign formatters js-date justifill monad-control node-buffer nullable numbers 
      ];
  };

b64 =
  { version = "0.0.7";
    repo = "https://github.com/menelaos/purescript-b64.git";
    rev = "3aa40575e916de51d6655c35c26a92f33b10a1ef";

    dependencies =
      [ arraybuffer-types either encoding enums exceptions functions partial prelude strings 
      ];
  };

barlow-lens =
  { version = "0.8.0";
    repo = "https://github.com/sigma-andex/purescript-barlow-lens.git";
    rev = "fed6344419218c164ea5c88d03671939de6c4d82";

    dependencies =
      [ either foldable-traversable lists maybe newtype prelude profunctor profunctor-lenses tuples typelevel-prelude 
      ];
  };

basic-auth =
  { version = "2.1.0";
    repo = "https://github.com/oreshinya/purescript-basic-auth.git";
    rev = "a0e04b18bcc3bc814aedb586cc4256b828f219fa";

    dependencies =
      [ crypto node-http 
      ];
  };

bifunctors =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-bifunctors.git";
    rev = "a31d0fc4bbebf19d5e9b21b65493c28b8d3fba62";

    dependencies =
      [ const either newtype prelude tuples 
      ];
  };

bigints =
  { version = "6.0.0";
    repo = "https://github.com/sharkdp/purescript-bigints.git";
    rev = "d5151e04db7e18641fbb2b5892f4198b1cab5907";

    dependencies =
      [ integers maybe strings 
      ];
  };

bip39 =
  { version = "1.0.1";
    repo = "https://github.com/athanclark/purescript-bip39.git";
    rev = "aca4085739cc47be776e8ba6dcf8cc19f3379e5a";

    dependencies =
      [ arraybuffer-types nullable 
      ];
  };

biscotti-cookie =
  { version = "0.3.0";
    repo = "https://github.com/drewolson/purescript-biscotti-cookie.git";
    rev = "26f394655c43aa1e1bb40b83ff7307cde9e133db";

    dependencies =
      [ datetime effect either foldable-traversable formatters gen newtype now prelude profunctor-lenses psci-support quickcheck record string-parsers strings test-unit 
      ];
  };

biscotti-session =
  { version = "0.2.0";
    repo = "https://github.com/drewolson/purescript-biscotti-session.git";
    rev = "c61112ba13968ff3334618fadb46850766185dd9";

    dependencies =
      [ aff argonaut biscotti-cookie effect newtype ordered-collections prelude profunctor-lenses psci-support refs test-unit uuid 
      ];
  };

bower-json =
  { version = "3.0.0";
    repo = "https://github.com/klntsky/purescript-bower-json.git";
    rev = "3df8217cccb81c634ebc5b4bb83574001e352686";

    dependencies =
      [ argonaut-codecs arrays either foldable-traversable foreign-object maybe newtype prelude tuples 
      ];
  };

boxes =
  { version = "2.1.0";
    repo = "https://github.com/cdepillabout/purescript-boxes.git";
    rev = "bdb9b9b1aa9924d2f725adb2c1eb3c0c9ab41d45";

    dependencies =
      [ arrays foldable-traversable maybe newtype prelude profunctor psci-support strings stringutils tuples 
      ];
  };

bucketchain =
  { version = "0.4.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain.git";
    rev = "9e36435e6e067651a386c1ca2220dd7f0bd5fdba";

    dependencies =
      [ aff console node-http node-streams transformers 
      ];
  };

bucketchain-basic-auth =
  { version = "0.3.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-basic-auth.git";
    rev = "45ae9832b31f3e7d21be44608988ab5cce2583cd";

    dependencies =
      [ basic-auth bucketchain 
      ];
  };

bucketchain-conditional =
  { version = "0.3.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-conditional.git";
    rev = "84bf0d4fb11f7813916c175676332604bcf709b8";

    dependencies =
      [ bucketchain js-date 
      ];
  };

bucketchain-cors =
  { version = "0.4.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-cors.git";
    rev = "e56ab0dcbaca0c8a51ddeed097a07fc76154205d";

    dependencies =
      [ bucketchain bucketchain-header-utils http-methods 
      ];
  };

bucketchain-csrf =
  { version = "0.3.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-csrf.git";
    rev = "da908116761eadcd4a1eb5ada53cbdc8c00a1a72";

    dependencies =
      [ bucketchain 
      ];
  };

bucketchain-header-utils =
  { version = "0.4.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-header-utils.git";
    rev = "b00a05cbda70a289fb9e11a88ba74f6a37c334b3";

    dependencies =
      [ bucketchain 
      ];
  };

bucketchain-health =
  { version = "0.3.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-health.git";
    rev = "1f1ebc8d1324a341fde50c66844d798c987b0b2a";

    dependencies =
      [ bucketchain 
      ];
  };

bucketchain-history-api-fallback =
  { version = "0.4.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-history-api-fallback.git";
    rev = "57bc2a841ab71e8521a57c233fae39e0bba44c65";

    dependencies =
      [ bucketchain 
      ];
  };

bucketchain-logger =
  { version = "0.4.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-logger.git";
    rev = "31bec2ed60fc39209f6de718ba033066937cdf92";

    dependencies =
      [ bucketchain js-date node-process 
      ];
  };

bucketchain-secure =
  { version = "0.2.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-secure.git";
    rev = "c63724710be34db0f83b90829c33896e2ab983eb";

    dependencies =
      [ bucketchain 
      ];
  };

bucketchain-simple-api =
  { version = "4.0.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-simple-api.git";
    rev = "748cd90440936e3065049f288bd924ffd695a39a";

    dependencies =
      [ bucketchain freet media-types simple-json 
      ];
  };

bucketchain-sslify =
  { version = "0.3.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-sslify.git";
    rev = "4dd1e41973db7b0b88eb076d99b44bc5aae914f2";

    dependencies =
      [ bucketchain 
      ];
  };

bucketchain-static =
  { version = "0.4.0";
    repo = "https://github.com/Bucketchain/purescript-bucketchain-static.git";
    rev = "d0affa8f85730b0658a9409c633974b7828635fb";

    dependencies =
      [ bucketchain node-fs-aff 
      ];
  };

bytestrings =
  { version = "8.0.0";
    repo = "https://github.com/rightfold/purescript-bytestrings.git";
    rev = "60a75042e0c1dd5663cf1f46bd2a737399843f38";

    dependencies =
      [ arrays effect exceptions foldable-traversable integers leibniz maybe newtype node-buffer prelude quickcheck quotient unsafe-coerce 
      ];
  };

call-by-name =
  { version = "3.0.0";
    repo = "https://github.com/natefaubion/purescript-call-by-name.git";
    rev = "f9dbd399d7837400b169dfbce635376dfaa77a5b";

    dependencies =
      [ control either lazy maybe unsafe-coerce 
      ];
  };

canvas =
  { version = "5.0.0";
    repo = "https://github.com/purescript-web/purescript-canvas.git";
    rev = "6f1518e1295f218eb64294db09f2711dd1a99c32";

    dependencies =
      [ arraybuffer-types effect exceptions functions maybe 
      ];
  };

canvas-action =
  { version = "7.0.0";
    repo = "https://github.com/artemisSystem/purescript-canvas-action.git";
    rev = "ef06b4fcb453d276abe57bd63c37e394edfc9ada";

    dependencies =
      [ aff arrays canvas colors effect either exceptions foldable-traversable math maybe numbers polymorphic-vectors prelude refs run transformers tuples type-equality typelevel-prelude unsafe-coerce web-dom web-events web-html 
      ];
  };

cartesian =
  { version = "1.0.4";
    repo = "https://github.com/Ebmtranceboy/purescript-cartesian.git";
    rev = "1173ed3d1cead681be1700ded71aaac9a737c9b0";

    dependencies =
      [ console effect integers psci-support 
      ];
  };

catenable-lists =
  { version = "6.0.1";
    repo = "https://github.com/purescript/purescript-catenable-lists.git";
    rev = "b18278a7cd034b983187580c58a183456b5a25ee";

    dependencies =
      [ control foldable-traversable lists maybe prelude tuples unfoldable 
      ];
  };

channel =
  { version = "1.0.0";
    repo = "https://github.com/ConnorDillon/purescript-channel.git";
    rev = "8f446034a829a652c18ed2a4e8168f9672ba21f6";

    dependencies =
      [ aff ps-pkgs."assert" avar console contravariant control effect either exceptions foldable-traversable lazy maybe newtype prelude tailrec transformers tuples 
      ];
  };

channel-stream =
  { version = "1.0.0";
    repo = "https://github.com/ConnorDillon/purescript-channel-stream.git";
    rev = "232724d5bacdb33e3a70474f079f174be2484d18";

    dependencies =
      [ aff ps-pkgs."assert" avar channel console effect maybe node-buffer node-streams prelude psci-support transformers 
      ];
  };

checked-exceptions =
  { version = "3.1.1";
    repo = "https://github.com/natefaubion/purescript-checked-exceptions.git";
    rev = "6ece020df25d01ee95474f7545f28e75dcfb0f0c";

    dependencies =
      [ prelude transformers variant 
      ];
  };

cheerio =
  { version = "0.2.4";
    repo = "https://github.com/icyrockcom/purescript-cheerio.git";
    rev = "c1f4f1068dbd83516bf3eb7c3bbe6e5159b15c45";

    dependencies =
      [ console effect functions prelude test-unit 
      ];
  };

cirru-parser =
  { version = "0.0.5";
    repo = "https://github.com/Cirru/parser.purs.git";
    rev = "8d6064f0ffedfc4a07e804bcff638ead3a093562";

    dependencies =
      [ arrays maybe prelude 
      ];
  };

classnames =
  { version = "1.0.0";
    repo = "https://github.com/dewey92/purescript-classnames.git";
    rev = "28b397e1189397947e98d81e685852a94d8c0611";

    dependencies =
      [ maybe prelude record strings tuples 
      ];
  };

clipboardy =
  { version = "1.0.3";
    repo = "https://github.com/hrajchert/purescript-clipboardy.git";
    rev = "8c1f866c2cf3c6612636ea1e9b1cd41eb90fd74b";

    dependencies =
      [ aff aff-promise effect 
      ];
  };

codec =
  { version = "4.0.1";
    repo = "https://github.com/garyb/purescript-codec.git";
    rev = "178d0e73c0a3ac972f9364eb43d1d001bd779cac";

    dependencies =
      [ profunctor transformers 
      ];
  };

codec-argonaut =
  { version = "8.0.0";
    repo = "https://github.com/garyb/purescript-codec-argonaut.git";
    rev = "f84e6737baf895a658e5bb34b5e0e6144d5d62d0";

    dependencies =
      [ argonaut-core codec ordered-collections type-equality variant 
      ];
  };

colors =
  { version = "6.0.0";
    repo = "https://github.com/sharkdp/purescript-colors.git";
    rev = "328e61f371aadfafb496834ac048fe36e33240cd";

    dependencies =
      [ arrays integers lists partial strings 
      ];
  };

concur-core =
  { version = "0.4.2";
    repo = "https://github.com/purescript-concur/purescript-concur-core.git";
    rev = "dcae5eccaf26a0e6414b5f91b255a69b4d252695";

    dependencies =
      [ aff arrays avar console foldable-traversable free nonempty profunctor-lenses tailrec 
      ];
  };

concur-react =
  { version = "0.4.2";
    repo = "https://github.com/purescript-concur/purescript-concur-react.git";
    rev = "068df0abca8b3a1d9c24cdafed0aef1537c3c351";

    dependencies =
      [ aff arrays avar concur-core console foldable-traversable free nonempty react react-dom tailrec web-dom web-html 
      ];
  };

concurrent-queues =
  { version = "2.0.0";
    repo = "https://github.com/purescript-contrib/purescript-concurrent-queues.git";
    rev = "300965817e2ef8a87cc3214f0f674193596cc600";

    dependencies =
      [ aff avar effect 
      ];
  };

console =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-console.git";
    rev = "d7cb69ef8fed8a51466afe1b623868bb29e8586e";

    dependencies =
      [ effect prelude 
      ];
  };

const =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-const.git";
    rev = "3a3a4bdc44f71311cf27de9bd22039b110277540";

    dependencies =
      [ invariant newtype prelude 
      ];
  };

contravariant =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-contravariant.git";
    rev = "ae1a765f7ddbfd96ae1f12e399e46d554d8e3b38";

    dependencies =
      [ const either newtype prelude tuples 
      ];
  };

control =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-control.git";
    rev = "18d582e311f1f8523f9eb55fb93c91bd21e22837";

    dependencies =
      [ newtype prelude 
      ];
  };

convertable-options =
  { version = "1.0.0";
    repo = "https://github.com/natefaubion/purescript-convertable-options.git";
    rev = "58728f24d9a5f28e359b4e7940b347c80cb56c6a";

    dependencies =
      [ console effect maybe record 
      ];
  };

coroutines =
  { version = "6.0.0";
    repo = "https://github.com/purescript-contrib/purescript-coroutines.git";
    rev = "c9788b76cee058f7d3df49f4a662ed1fa1cd8f8f";

    dependencies =
      [ freet parallel profunctor 
      ];
  };

crypto =
  { version = "4.0.0";
    repo = "https://github.com/oreshinya/purescript-crypto.git";
    rev = "e6d0f50765181b5fe824eda62b1819e551878d91";

    dependencies =
      [ aff node-buffer nullable 
      ];
  };

css =
  { version = "5.0.1";
    repo = "https://github.com/purescript-contrib/purescript-css.git";
    rev = "2c13d8870752ca6cce176d20ac3ca761261d52e0";

    dependencies =
      [ colors console effect nonempty profunctor strings these transformers 
      ];
  };

cssom =
  { version = "0.0.2";
    repo = "https://github.com/danieljharvey/purescript-cssom.git";
    rev = "bd1fffc883f18cc6a79ce41e1e688b5a0f0351f7";

    dependencies =
      [ effect 
      ];
  };

datetime =
  { version = "5.0.2";
    repo = "https://github.com/purescript/purescript-datetime.git";
    rev = "fcd801af2e86d7ffbbc3a3fde7db1b464cbdd51b";

    dependencies =
      [ bifunctors control either enums foldable-traversable functions gen integers lists math maybe newtype ordered-collections partial prelude tuples 
      ];
  };

debug =
  { version = "5.0.0";
    repo = "https://github.com/garyb/purescript-debug.git";
    rev = "144305842dba81169a93b3a3cc75429d5c8389e9";

    dependencies =
      [ functions prelude 
      ];
  };

decimals =
  { version = "6.0.0";
    repo = "https://github.com/sharkdp/purescript-decimals.git";
    rev = "771adb1039d0d23124021fe79a45efe24707ca71";

    dependencies =
      [ maybe 
      ];
  };

dexie =
  { version = "0.3.0";
    repo = "https://github.com/mushishi78/purescript-dexie.git";
    rev = "104bbecda91e8986d9f6d1ea346fee7b48cf8fca";

    dependencies =
      [ aff control effect either exceptions foreign foreign-object maybe nullable prelude psci-support transformers tuples 
      ];
  };

dissect =
  { version = "0.1.0";
    repo = "https://github.com/PureFunctor/purescript-dissect.git";
    rev = "d53407774afc993bac1a5ac6a13d41d1565cc8c4";

    dependencies =
      [ bifunctors either functors partial prelude tailrec tuples typelevel-prelude unsafe-coerce 
      ];
  };

distributive =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-distributive.git";
    rev = "11f3f87ca5720899e1739cedb58dd6227cae6ad5";

    dependencies =
      [ identity newtype prelude tuples type-equality 
      ];
  };

dodo-printer =
  { version = "2.1.0";
    repo = "https://github.com/natefaubion/purescript-dodo-printer.git";
    rev = "540dba0442abe686c0b211868d6f423e5df81b69";

    dependencies =
      [ aff ansi avar console effect foldable-traversable lists maybe minibench node-child-process node-fs-aff node-process psci-support strings 
      ];
  };

dom-filereader =
  { version = "6.0.0";
    repo = "https://github.com/nwolverson/purescript-dom-filereader.git";
    rev = "2bb8a6e6480a8e561b620b96a8941dcd5b606337";

    dependencies =
      [ aff arraybuffer-types web-file web-html 
      ];
  };

dom-indexed =
  { version = "8.0.0";
    repo = "https://github.com/purescript-halogen/purescript-dom-indexed.git";
    rev = "3d2174be7cd1320cd9f8fcc0045294a71afc5980";

    dependencies =
      [ media-types prelude web-clipboard web-touchevents 
      ];
  };

dotenv =
  { version = "2.0.0";
    repo = "https://github.com/nsaunders/purescript-dotenv.git";
    rev = "a15d80a1ba9cd087877cfd9b0727a724ebffa7fd";

    dependencies =
      [ node-fs-aff node-process parsing prelude run sunde 
      ];
  };

downloadjs =
  { version = "1.0.0";
    repo = "https://github.com/chekoopa/purescript-downloadjs.git";
    rev = "91c7d2a4d2830e97b0855206e7987e2b4e952cd7";

    dependencies =
      [ arraybuffer-types console effect foreign psci-support web-file 
      ];
  };

drawing =
  { version = "4.0.0";
    repo = "https://github.com/paf31/purescript-drawing.git";
    rev = "c33e13a99e8266c9985c40016ec4f97b46ddfc84";

    dependencies =
      [ canvas colors integers lists math prelude 
      ];
  };

droplet =
  { version = "0.2.0";
    repo = "https://github.com/easafe/purescript-droplet.git";
    rev = "ac3879b59e103627a95a5082219f75cc4e2dcca1";

    dependencies =
      [ aff arrays bifunctors bigints datetime debug effect either enums exceptions foldable-traversable foreign foreign-object integers maybe newtype nullable partial prelude profunctor psci-support record strings test-unit transformers tuples type-equality typelevel-prelude unsafe-coerce 
      ];
  };

dynamic-buffer =
  { version = "2.0.0";
    repo = "https://github.com/kritzcreek/purescript-dynamic-buffer.git";
    rev = "7ff0ec955dc62567d87271c4ba652c0b7a6a5881";

    dependencies =
      [ arraybuffer-types effect refs 
      ];
  };

easy-ffi =
  { version = "2.1.2";
    repo = "https://github.com/pelotom/purescript-easy-ffi.git";
    rev = "b5a51386755ea6761e03619f6e84ec5b524af613";

    dependencies =
      [ prelude 
      ];
  };

effect =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-effect.git";
    rev = "985d97bd5721ddcc41304c55a7ca2bb0c0bfdc2a";

    dependencies =
      [ prelude 
      ];
  };

either =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-either.git";
    rev = "c1a1af35684f10eecaf6ac7d38dbf6bd48af2ced";

    dependencies =
      [ control invariant maybe prelude 
      ];
  };

elasticsearch =
  { version = "0.1.1";
    repo = "https://github.com/ConnorDillon/purescript-elasticsearch.git";
    rev = "e2822b8e230615518608f3c4f37c2a61918fce4f";

    dependencies =
      [ aff aff-promise argonaut ps-pkgs."assert" console effect foreign-object literals maybe prelude psci-support typelevel-prelude unsafe-coerce untagged-union 
      ];
  };

elmish =
  { version = "0.5.6";
    repo = "https://github.com/collegevine/purescript-elmish.git";
    rev = "f5931a70c154ea11964cb238f76015560281dd28";

    dependencies =
      [ aff argonaut-core arrays bifunctors console debug effect either foldable-traversable foreign foreign-object functions integers js-date maybe nullable partial prelude refs strings typelevel-prelude unsafe-coerce web-dom web-html 
      ];
  };

elmish-enzyme =
  { version = "0.0.1";
    repo = "https://github.com/collegevine/purescript-elmish-enzyme.git";
    rev = "5e3215b742c71cab4b0621653e0a208e55997478";

    dependencies =
      [ aff arrays console debug effect elmish exceptions foldable-traversable foreign functions prelude psci-support transformers 
      ];
  };

elmish-hooks =
  { version = "0.2.0";
    repo = "https://github.com/collegevine/purescript-elmish-hooks.git";
    rev = "a73885535bea6ac5e90394765d61a28bb84200b0";

    dependencies =
      [ aff console debug effect elmish prelude psci-support tuples 
      ];
  };

elmish-html =
  { version = "0.3.1";
    repo = "https://github.com/collegevine/purescript-elmish-html.git";
    rev = "7b4eac9c217efaef2fcab9711e22732e7151acfc";

    dependencies =
      [ elmish foreign-object record 
      ];
  };

email-validate =
  { version = "6.0.0";
    repo = "https://github.com/cdepillabout/purescript-email-validate.git";
    rev = "d6686d982222885ff954a4d7165931eace0c6d03";

    dependencies =
      [ aff string-parsers transformers 
      ];
  };

encoding =
  { version = "0.0.7";
    repo = "https://github.com/menelaos/purescript-encoding.git";
    rev = "0a4187136f9ea4ea51ddf635e3b3c2cd2461faac";

    dependencies =
      [ arraybuffer-types either exceptions functions prelude 
      ];
  };

enums =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-enums.git";
    rev = "170d959644eb99e0025f4ab2e38f5f132fd85fa4";

    dependencies =
      [ control either gen maybe newtype nonempty partial prelude tuples unfoldable 
      ];
  };

envparse =
  { version = "1.0.1";
    repo = "https://github.com/srghma/purescript-envparse.git";
    rev = "f1ebc3fd73b19b05243537aa2bb8f7c8b930f2d0";

    dependencies =
      [ ansi arrays bifunctors boxes console control effect either exceptions exists foldable-traversable foreign-object integers lists maybe newtype node-process ordered-collections prelude psci-support strings transformers tuples 
      ];
  };

errors =
  { version = "4.1.0";
    repo = "https://github.com/passy/purescript-errors.git";
    rev = "01d7889468b4cfb563608ec8715fc487e44df634";

    dependencies =
      [ control effect either maybe transformers 
      ];
  };

exceptions =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-exceptions.git";
    rev = "410d0b8813592bda3c25028540eeb2cda312ddc9";

    dependencies =
      [ effect either maybe prelude 
      ];
  };

exists =
  { version = "5.1.0";
    repo = "https://github.com/purescript/purescript-exists.git";
    rev = "c34820f8b2d15be29abdd5097c3d636f5df8f28c";

    dependencies =
      [ unsafe-coerce 
      ];
  };

exitcodes =
  { version = "4.0.0";
    repo = "https://github.com/Risto-Stevcev/purescript-exitcodes.git";
    rev = "8a9a93fd1776aba4a14cdc9a31094c9e05b05348";

    dependencies =
      [ enums 
      ];
  };

expect-inferred =
  { version = "3.0.0";
    repo = "https://github.com/justinwoo/purescript-expect-inferred.git";
    rev = "f43fda03d49647e6c598fceee684168a76cc76eb";

    dependencies =
      [ prelude typelevel-prelude 
      ];
  };

express =
  { version = "0.9.0";
    repo = "https://github.com/purescript-express/purescript-express.git";
    rev = "761c0ed4e0f28a71d90c895cbf8b9bc52ea23c71";

    dependencies =
      [ aff arrays effect either exceptions foreign foreign-generic foreign-object functions maybe node-http prelude psci-support strings test-unit transformers unsafe-coerce 
      ];
  };

fast-vect =
  { version = "0.3.1";
    repo = "https://github.com/sigma-andex/purescript-fast-vect.git";
    rev = "8d7da03876a01adef52652563d5d6775c5e664f2";

    dependencies =
      [ arrays maybe partial prelude tuples typelevel-arithmetic 
      ];
  };

ffi-foreign =
  { version = "0.0.2";
    repo = "https://github.com/markfarrell/purescript-ffi-foreign.git";
    rev = "73746dce33050eb11640ca78b361a6930f9930aa";

    dependencies =
      [ console effect foreign prelude psci-support 
      ];
  };

filterable =
  { version = "4.0.1";
    repo = "https://github.com/purescript/purescript-filterable.git";
    rev = "c56f6df46a128efa3b16148fbc2b1e05e0563736";

    dependencies =
      [ arrays either foldable-traversable identity lists ordered-collections 
      ];
  };

fixed-points =
  { version = "6.0.0";
    repo = "https://github.com/purescript-contrib/purescript-fixed-points.git";
    rev = "3b643d948479aee7cd3e36c95258f1f84df0c35f";

    dependencies =
      [ exists newtype prelude transformers 
      ];
  };

fixed-precision =
  { version = "4.3.1";
    repo = "https://github.com/lumihq/purescript-fixed-precision.git";
    rev = "b01f5965be876e3aae73213b3ec5344b80a4229d";

    dependencies =
      [ bigints integers math maybe strings 
      ];
  };

flame =
  { version = "1.1.1";
    repo = "https://github.com/easafe/purescript-flame.git";
    rev = "075c60738adec00089c4965dbbcbf6697ffb6974";

    dependencies =
      [ aff argonaut-codecs argonaut-core argonaut-generic arrays bifunctors console effect either exceptions foldable-traversable foreign foreign-object functions maybe newtype nullable partial prelude psci-support random refs strings test-unit tuples typelevel-prelude unsafe-coerce web-dom web-events web-html web-uievents 
      ];
  };

float32 =
  { version = "1.0.0";
    repo = "https://github.com/purescript-contrib/purescript-float32.git";
    rev = "02748809d05bf456334641a9fac8ae99e771f1d6";

    dependencies =
      [ gen maybe prelude 
      ];
  };

foldable-traversable =
  { version = "5.0.1";
    repo = "https://github.com/purescript/purescript-foldable-traversable.git";
    rev = "d50216bb9ddcc49d97f28f6c90be1d9cda54fe3a";

    dependencies =
      [ bifunctors const control either functors identity maybe newtype orders prelude tuples 
      ];
  };

foreign =
  { version = "6.0.1";
    repo = "https://github.com/purescript/purescript-foreign.git";
    rev = "66492b0462143b5d51eb4b61bd5c5be091fdf192";

    dependencies =
      [ either functions identity integers lists maybe prelude strings transformers 
      ];
  };

foreign-generic =
  { version = "11.0.0";
    repo = "https://github.com/paf31/purescript-foreign-generic.git";
    rev = "3cddc5fe3e87e426e0f719465ba60b9df4c0c72d";

    dependencies =
      [ effect exceptions foreign foreign-object identity ordered-collections record 
      ];
  };

foreign-object =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-foreign-object.git";
    rev = "c9a7b7bb8bed1b87c5545c4ebe85a70f86c0e6b1";

    dependencies =
      [ arrays foldable-traversable functions gen lists maybe prelude st tailrec tuples typelevel-prelude unfoldable 
      ];
  };

fork =
  { version = "5.0.0";
    repo = "https://github.com/purescript-contrib/purescript-fork.git";
    rev = "153cc29e6e51fb1108368efc622d41d9f80bd707";

    dependencies =
      [ aff 
      ];
  };

form-urlencoded =
  { version = "6.0.2";
    repo = "https://github.com/purescript-contrib/purescript-form-urlencoded.git";
    rev = "860b2c4bf0a848322d2077faaefbeb98762cb8d6";

    dependencies =
      [ foldable-traversable js-uri maybe newtype prelude strings tuples 
      ];
  };

format =
  { version = "4.0.0";
    repo = "https://github.com/sharkdp/purescript-format.git";
    rev = "764c4f4a9f7d01f9572cf34449d6a0ffbe3bb89a";

    dependencies =
      [ arrays effect integers math prelude strings unfoldable 
      ];
  };

formatters =
  { version = "6.0.0";
    repo = "https://github.com/purescript-contrib/purescript-formatters.git";
    rev = "b2e65b2bccd09a3c17a396f07e13e5cdca90e4e4";

    dependencies =
      [ datetime fixed-points lists numbers parsing prelude transformers 
      ];
  };

framer-motion =
  { version = "0.1.0";
    repo = "https://github.com/i-am-the-slime/purescript-framer-motion.git";
    rev = "d86da3b7450646621bb42cea316ec8c2b0c54326";

    dependencies =
      [ aff aff-promise arrays console effect foreign foreign-object heterogeneous literals maybe nullable prelude psci-support react-basic react-basic-dom react-basic-hooks record tuples two-or-more typelevel-prelude unsafe-coerce untagged-union web-dom web-events web-uievents 
      ];
  };

free =
  { version = "6.2.0";
    repo = "https://github.com/purescript/purescript-free.git";
    rev = "c185c0b2144ddfb2bc3ac2b345df32e33221b21d";

    dependencies =
      [ catenable-lists control distributive either exists foldable-traversable invariant lazy maybe prelude tailrec transformers tuples unsafe-coerce 
      ];
  };

freeap =
  { version = "6.0.0";
    repo = "https://github.com/ethul/purescript-freeap.git";
    rev = "7900fa09a5da2122d69aec3a4ff176015e40bb2b";

    dependencies =
      [ const exists gen lists 
      ];
  };

freet =
  { version = "6.0.0";
    repo = "https://github.com/purescript-contrib/purescript-freet.git";
    rev = "507c2edd9173cda5ad44dd0638133edd69fd9acd";

    dependencies =
      [ aff bifunctors effect either exists free prelude tailrec transformers tuples 
      ];
  };

functions =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-functions.git";
    rev = "691b3345bc2feaf914e5299796c606b6a6bf9ca9";

    dependencies =
      [ prelude 
      ];
  };

functors =
  { version = "4.1.1";
    repo = "https://github.com/purescript/purescript-functors.git";
    rev = "56e9889b6939264c4707ad48356419a147493c3e";

    dependencies =
      [ bifunctors const contravariant control distributive either invariant maybe newtype prelude profunctor tuples unsafe-coerce 
      ];
  };

fuzzy =
  { version = "0.4.0";
    repo = "https://github.com/citizennet/purescript-fuzzy.git";
    rev = "35666ab7440c8a7d9a89a57be3c60418624c4b48";

    dependencies =
      [ foldable-traversable foreign-object newtype ordered-collections prelude rationals strings tuples 
      ];
  };

gen =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-gen.git";
    rev = "85c369f56545a3de834b7e7475a56bc9193bb4b4";

    dependencies =
      [ either foldable-traversable identity maybe newtype nonempty prelude tailrec tuples unfoldable 
      ];
  };

geometry-plane =
  { version = "1.0.2";
    repo = "https://github.com/Ebmtranceboy/purescript-geometry-plane.git";
    rev = "b682cecc75d1ed696d94815d52e69f6bbe07a025";

    dependencies =
      [ console effect psci-support sparse-polynomials 
      ];
  };

github-actions-toolkit =
  { version = "0.3.0";
    repo = "https://github.com/purescript-contrib/purescript-github-actions-toolkit.git";
    rev = "d58b231bfe36246a0918ef7ff08fd9c63e695a5e";

    dependencies =
      [ aff aff-promise effect foreign-object node-buffer node-path node-streams nullable transformers 
      ];
  };

gl-matrix =
  { version = "2.1.0";
    repo = "https://github.com/dirkz/purescript-gl-matrix.git";
    rev = "2dd0da84d885c8cdb9eb11f21300d5408220f945";

    dependencies =
      [ arrays effect foldable-traversable functions math partial prelude psci-support 
      ];
  };

gomtang-basic =
  { version = "0.2.0";
    repo = "https://github.com/justinwoo/purescript-gomtang-basic.git";
    rev = "53651352d83c0d0dd926a4f582a485f53838c52b";

    dependencies =
      [ console effect prelude record web-html 
      ];
  };

grain =
  { version = "2.0.0";
    repo = "https://github.com/purescript-grain/purescript-grain.git";
    rev = "6e99614d4c3fb58570c2c046c30d49b3b21331c2";

    dependencies =
      [ web-html 
      ];
  };

grain-router =
  { version = "2.0.0";
    repo = "https://github.com/purescript-grain/purescript-grain-router.git";
    rev = "4106d6eeae2cd8ac6b8bf6f7cd92d7a3374976d9";

    dependencies =
      [ grain profunctor 
      ];
  };

grain-virtualized =
  { version = "2.0.0";
    repo = "https://github.com/purescript-grain/purescript-grain-virtualized.git";
    rev = "034996814d817c946f391f3bafdf24f88df4086d";

    dependencies =
      [ grain 
      ];
  };

graphql-client =
  { version = "7.0.0";
    repo = "https://github.com/OxfordAbstracts/purescript-graphql-client.git";
    rev = "bda92769c306f579f2cfa406b1f1a81d1bf76254";

    dependencies =
      [ aff aff-promise affjax argonaut-codecs argonaut-core arrays bifunctors control datetime effect either enums exceptions foldable-traversable foreign foreign-generic foreign-object functions halogen-subscriptions heterogeneous http-methods integers lists maybe media-types newtype node-buffer node-fs nullable numbers ordered-collections parsing prelude profunctor profunctor-lenses psci-support quickcheck record spec spec-discovery string-parsers strings strings-extra transformers tuples typelevel-prelude unicode 
      ];
  };

graphqlclient =
  { version = "1.2.1";
    repo = "https://github.com/purescript-graphqlclient/purescript-graphqlclient.git";
    rev = "d9617083d5ca1de6842590a88e90e8e3c4534285";

    dependencies =
      [ aff affjax argonaut-codecs argonaut-core argonaut-generic arrays bifunctors control datetime effect either foldable-traversable foreign-object http-methods integers lists maybe newtype prelude psci-support record strings transformers tuples 
      ];
  };

graphs =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-graphs.git";
    rev = "5d03edc58444595d7ac0ea6df3dc689ec6021b01";

    dependencies =
      [ catenable-lists ordered-collections 
      ];
  };

grid-reactors =
  { version = "3.0.0";
    repo = "https://github.com/Eugleo/purescript-grid-reactors.git";
    rev = "30bb8eb27d209c67315f457cc29cd35011331bd4";

    dependencies =
      [ arrays canvas-action colors effect exceptions foldable-traversable free halogen halogen-hooks halogen-subscriptions integers maybe partial prelude psci-support st tailrec transformers tuples web-events web-html web-uievents 
      ];
  };

group =
  { version = "4.1.1";
    repo = "https://github.com/morganthomas/purescript-group.git";
    rev = "3499b415eaeda8ea65898a93bf4d197126404fc3";

    dependencies =
      [ lists 
      ];
  };

halogen =
  { version = "6.1.3";
    repo = "https://github.com/purescript-halogen/purescript-halogen.git";
    rev = "79b86b70ab0848a3551e1dac1d854036ad23d833";

    dependencies =
      [ aff avar console const dom-indexed effect foreign fork free freeap halogen-subscriptions halogen-vdom media-types nullable ordered-collections parallel profunctor transformers unsafe-coerce unsafe-reference web-file web-uievents 
      ];
  };

halogen-bootstrap4 =
  { version = "0.2.0";
    repo = "https://github.com/mschristiansen/purescript-halogen-bootstrap4.git";
    rev = "03674aedecf5b69c642e17dbcbcdd36fe068659b";

    dependencies =
      [ halogen 
      ];
  };

halogen-css =
  { version = "9.0.0";
    repo = "https://github.com/purescript-halogen/purescript-halogen-css.git";
    rev = "e3b90ee69262d0f80f9511338da7079aa6154e51";

    dependencies =
      [ css halogen 
      ];
  };

halogen-formless =
  { version = "2.2.0";
    repo = "https://github.com/thomashoneyman/purescript-halogen-formless.git";
    rev = "657225e2961963bac7c3dcf6c6447218a2811065";

    dependencies =
      [ halogen heterogeneous profunctor-lenses variant 
      ];
  };

halogen-hooks =
  { version = "0.5.0";
    repo = "https://github.com/thomashoneyman/purescript-halogen-hooks.git";
    rev = "3e383fb59b7f32d9936c29153afde39d52d246d3";

    dependencies =
      [ halogen 
      ];
  };

halogen-hooks-extra =
  { version = "0.8.0";
    repo = "https://github.com/jordanmartinez/purescript-halogen-hooks-extra.git";
    rev = "c5eb9b445d9adf311abb7d767aa42d16a7a35578";

    dependencies =
      [ halogen-hooks 
      ];
  };

halogen-select =
  { version = "6.0.0";
    repo = "https://github.com/citizennet/purescript-halogen-select.git";
    rev = "27befa13f29272386a4e6edfae1c9258a4206747";

    dependencies =
      [ halogen record 
      ];
  };

halogen-store =
  { version = "0.2.1";
    repo = "https://github.com/thomashoneyman/purescript-halogen-store.git";
    rev = "d6a3bd6af1ef97ff08547a1b94fb662ecffd137d";

    dependencies =
      [ aff effect foldable-traversable halogen halogen-hooks halogen-subscriptions maybe prelude refs transformers unsafe-coerce unsafe-reference 
      ];
  };

halogen-storybook =
  { version = "1.0.1";
    repo = "https://github.com/rnons/purescript-halogen-storybook.git";
    rev = "1b59c7946bdda140249c617fd21b86fa583b59ba";

    dependencies =
      [ foreign-object halogen prelude routing 
      ];
  };

halogen-subscriptions =
  { version = "1.0.0";
    repo = "https://github.com/purescript-halogen/purescript-halogen-subscriptions.git";
    rev = "9180c6d9e1103d95d0d91800db23f2dc8b10bd41";

    dependencies =
      [ arrays effect foldable-traversable functors refs safe-coerce unsafe-reference 
      ];
  };

halogen-svg-elems =
  { version = "5.0.1";
    repo = "https://github.com/JordanMartinez/purescript-halogen-svg-elems.git";
    rev = "c710b9d50cd5952368cfa064c74ded12300cb66c";

    dependencies =
      [ halogen 
      ];
  };

halogen-vdom =
  { version = "7.0.1";
    repo = "https://github.com/purescript-halogen/purescript-halogen-vdom.git";
    rev = "5fd2b5fdc5f64ed3d34c2d8ab40809558ba6f630";

    dependencies =
      [ bifunctors effect foreign foreign-object maybe prelude refs tuples unsafe-coerce web-html 
      ];
  };

heckin =
  { version = "2.0.1";
    repo = "https://github.com/maxdeviant/purescript-heckin.git";
    rev = "555af5c56c4097dec84e16ea73faed164d7de408";

    dependencies =
      [ arrays foldable-traversable maybe prelude strings transformers tuples unicode 
      ];
  };

heterogeneous =
  { version = "0.5.1";
    repo = "https://github.com/natefaubion/purescript-heterogeneous.git";
    rev = "550445cf7932e158395423fc087cdc05bab41c40";

    dependencies =
      [ either functors prelude record tuples variant 
      ];
  };

heterogeneous-extrablatt =
  { version = "0.1.0";
    repo = "https://github.com/sigma-andex/purescript-heterogeneous-extrablatt.git";
    rev = "eb1c70ec365f88c27a33574d918c19e5fa8c2832";

    dependencies =
      [ heterogeneous 
      ];
  };

homogeneous =
  { version = "0.3.0";
    repo = "https://github.com/paluh/purescript-homogeneous.git";
    rev = "fad16f487007db445e9deaa5363d4c8ff3cebd10";

    dependencies =
      [ ps-pkgs."assert" console effect foreign-object psci-support variant 
      ];
  };

http-methods =
  { version = "5.0.0";
    repo = "https://github.com/purescript-contrib/purescript-http-methods.git";
    rev = "d373066a45017e886d1580cd359372368231de47";

    dependencies =
      [ either prelude strings 
      ];
  };

httpure =
  { version = "0.14.0";
    repo = "https://github.com/cprussin/purescript-httpure.git";
    rev = "3bffc0e2ade5d0ed7c0b8cb81eabdc969d62637e";

    dependencies =
      [ aff arrays bifunctors console effect either foldable-traversable foreign-object js-uri maybe newtype node-buffer node-fs node-http node-streams options ordered-collections prelude psci-support refs strings tuples type-equality 
      ];
  };

httpure-contrib-biscotti =
  { version = "0.2.0";
    repo = "https://github.com/drewolson/purescript-httpure-contrib-biscotti.git";
    rev = "aa67ba3008cff95691c71a669ada03989e20891d";

    dependencies =
      [ aff argonaut biscotti-cookie biscotti-session effect either httpure maybe profunctor-lenses psci-support test-unit tuples type-equality 
      ];
  };

identity =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-identity.git";
    rev = "5c150ac5ee4fa6f145932f6322a1020463dae8e9";

    dependencies =
      [ control invariant newtype prelude 
      ];
  };

identy =
  { version = "3.0.0";
    repo = "https://github.com/oreshinya/purescript-identy.git";
    rev = "4fc2a6dee8f54585c848eb18375ef8de0c49811e";

    dependencies =
      [ simple-json 
      ];
  };

indexed-monad =
  { version = "2.0.1";
    repo = "https://github.com/garyb/purescript-indexed-monad.git";
    rev = "164a2996b6c44fb480ef987f24a856deb24f54c2";

    dependencies =
      [ control newtype 
      ];
  };

inflection =
  { version = "1.0.1";
    repo = "https://github.com/athanclark/purescript-inflection.git";
    rev = "42e426aede294e7209e9df7a615e352901ca1462";

    dependencies =
      [ functions 
      ];
  };

integers =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-integers.git";
    rev = "8a783f2d92596c43afca53066ac18eb389d15981";

    dependencies =
      [ math maybe numbers prelude 
      ];
  };

interpolate =
  { version = "3.0.1";
    repo = "https://github.com/jordanmartinez/purescript-interpolate.git";
    rev = "a9bc999a9c95e9e4b4621a10aa3580bf38759ae6";

    dependencies =
      [ prelude 
      ];
  };

invariant =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-invariant.git";
    rev = "c421b49dec7a1511073bb408a08bdd8c9d17d7b1";

    dependencies =
      [ control prelude 
      ];
  };

js-date =
  { version = "7.0.0";
    repo = "https://github.com/purescript-contrib/purescript-js-date.git";
    rev = "a6834eef986e3af0490cb672dc4a8b4b089dcb15";

    dependencies =
      [ datetime effect exceptions foreign integers now 
      ];
  };

js-fileio =
  { version = "2.2.0";
    repo = "https://github.com/newlandsvalley/purescript-js-fileio.git";
    rev = "c90949afa5f1f3a68df8a472af14d71a52de7861";

    dependencies =
      [ aff effect prelude 
      ];
  };

js-timers =
  { version = "5.0.1";
    repo = "https://github.com/purescript-contrib/purescript-js-timers.git";
    rev = "86afef13f457b9506acdfe88559ee18f1cd2c2d8";

    dependencies =
      [ effect 
      ];
  };

js-uri =
  { version = "2.0.0";
    repo = "https://github.com/purescript-contrib/purescript-js-uri.git";
    rev = "6145d5e631be3d57d8a4a9cf976ae140713dee35";

    dependencies =
      [ functions maybe 
      ];
  };

justifill =
  { version = "0.2.1";
    repo = "https://github.com/i-am-the-slime/purescript-justifill.git";
    rev = "9545f1ec4394c3c94fc8fa7be9782441f8a54c39";

    dependencies =
      [ record spec typelevel-prelude 
      ];
  };

jwt =
  { version = "0.0.8";
    repo = "https://github.com/menelaos/purescript-jwt.git";
    rev = "65b8b91d6484c81fa513e141f797415e81a4c251";

    dependencies =
      [ argonaut-core arrays b64 either errors exceptions prelude profunctor-lenses strings 
      ];
  };

kafkajs =
  { version = "0.2.0";
    repo = "https://github.com/HivemindTechnologies/purescript-kafkajs.git";
    rev = "1a54387d2dc5d681596caa0e025b3b7f950346c2";

    dependencies =
      [ aff-promise console debug effect maybe node-buffer nullable psci-support spec 
      ];
  };

lazy =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-lazy.git";
    rev = "2f73f61e7ac1ae1cfe05564112e3313530e673ff";

    dependencies =
      [ control foldable-traversable invariant prelude 
      ];
  };

lcg =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-lcg.git";
    rev = "8fb2eb16bbba2cee1d115a6729659ac649da811b";

    dependencies =
      [ effect integers math maybe partial prelude random 
      ];
  };

leibniz =
  { version = "5.0.0";
    repo = "https://github.com/paf31/purescript-leibniz.git";
    rev = "0e723461d23bbe0e88cdc8f4a6bd0dfb992d95bf";

    dependencies =
      [ prelude unsafe-coerce 
      ];
  };

lists =
  { version = "6.0.1";
    repo = "https://github.com/purescript/purescript-lists.git";
    rev = "f07a986d14df3dcea57067b7f10fbbca4783be00";

    dependencies =
      [ bifunctors control foldable-traversable lazy maybe newtype nonempty partial prelude tailrec tuples unfoldable 
      ];
  };

literals =
  { version = "0.2.0";
    repo = "https://github.com/jvliwanag/purescript-literals.git";
    rev = "2ec84ef4668d6214169327a27117c82ccdf1276e";

    dependencies =
      [ ps-pkgs."assert" console effect integers numbers partial psci-support typelevel-prelude unsafe-coerce 
      ];
  };

logging =
  { version = "3.0.0";
    repo = "https://github.com/rightfold/purescript-logging.git";
    rev = "148c371aa97e30663532d548faaca3555fbd3fca";

    dependencies =
      [ console contravariant effect either prelude transformers tuples 
      ];
  };

longs =
  { version = "0.1.1";
    repo = "https://github.com/zapph/purescript-longs.git";
    rev = "6c2d531f6e1b31faaabb09aeb034b964a2d54fc0";

    dependencies =
      [ console effect foreign functions nullable prelude quickcheck strings 
      ];
  };

machines =
  { version = "6.1.0";
    repo = "https://github.com/purescript-contrib/purescript-machines.git";
    rev = "ff48a4f29de69f6de8881e9bb0b6bf0c63017d8d";

    dependencies =
      [ arrays control effect lists maybe prelude profunctor tuples unfoldable 
      ];
  };

makkori =
  { version = "1.0.0";
    repo = "https://github.com/justinwoo/purescript-makkori.git";
    rev = "0853e1518697e5c866043a17ff5432f11964a27e";

    dependencies =
      [ functions node-http prelude record 
      ];
  };

math =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-math.git";
    rev = "59746cc74e23fb1f04e09342884c5d1e3943a04f";

    dependencies =
      [ 
      ];
  };

matrices =
  { version = "5.0.1";
    repo = "https://github.com/kRITZCREEK/purescript-matrices.git";
    rev = "7e6e2a09cde41413d369acb8c3ffca8c33571691";

    dependencies =
      [ arrays strings 
      ];
  };

matryoshka =
  { version = "0.5.0";
    repo = "https://github.com/purescript-contrib/purescript-matryoshka.git";
    rev = "43eb7d9c2d42e2d8bafa4303b4f6185143846b05";

    dependencies =
      [ fixed-points free prelude profunctor transformers 
      ];
  };

maybe =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-maybe.git";
    rev = "8e96ca0187208e78e8df6a464c281850e5c9400c";

    dependencies =
      [ control invariant newtype prelude 
      ];
  };

media-types =
  { version = "5.0.0";
    repo = "https://github.com/purescript-contrib/purescript-media-types.git";
    rev = "b6efa4c1e6808b31f399d8030b5938acec87cb48";

    dependencies =
      [ newtype prelude 
      ];
  };

metadata =
  { version = "0.14.5";
    repo = "https://github.com/spacchetti/purescript-metadata.git";
    rev = "eb0523fb217cb6d36779c0c740c2118d11616dc2";

    dependencies =
      [ 
      ];
  };

midi =
  { version = "3.0.0";
    repo = "https://github.com/newlandsvalley/purescript-midi.git";
    rev = "f7397ce3381366e7f517f2883b0ea21b47995034";

    dependencies =
      [ effect integers lists prelude signal string-parsers 
      ];
  };

milkis =
  { version = "7.5.0";
    repo = "https://github.com/justinwoo/purescript-milkis.git";
    rev = "9d1d7eec0add72c54e3d991e594a7a454e24ae31";

    dependencies =
      [ aff-promise arraybuffer-types foreign-object prelude typelevel-prelude 
      ];
  };

minibench =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-minibench.git";
    rev = "c2ddaae02f38de01daa63e1a2f67b382b93f89e0";

    dependencies =
      [ console effect integers math numbers partial prelude refs 
      ];
  };

mmorph =
  { version = "6.0.0";
    repo = "https://github.com/Thimoteus/purescript-mmorph.git";
    rev = "ebe16afbfa16dd600f3379ccedc7529417402393";

    dependencies =
      [ free functors transformers 
      ];
  };

monad-control =
  { version = "5.0.0";
    repo = "https://github.com/athanclark/purescript-monad-control.git";
    rev = "9684a6955af3bc32550bed2aee7f63869b04bd46";

    dependencies =
      [ aff freet identity lists 
      ];
  };

monad-logger =
  { version = "1.3.1";
    repo = "https://github.com/cprussin/purescript-monad-logger.git";
    rev = "b5ae53361343e91481e8dd0f6303d5755c07afad";

    dependencies =
      [ aff ansi argonaut arrays console control effect foldable-traversable foreign-object integers js-date maybe newtype ordered-collections prelude strings transformers tuples 
      ];
  };

monad-loops =
  { version = "0.5.0";
    repo = "https://github.com/mlang/purescript-monad-loops.git";
    rev = "9324b29cda6a4be8f896d42f2018fc6143607fe8";

    dependencies =
      [ lists maybe prelude tailrec tuples 
      ];
  };

monad-unlift =
  { version = "1.0.1";
    repo = "https://github.com/athanclark/purescript-monad-unlift.git";
    rev = "4b00491a741b841885e1cc8273ef6c8c27069a18";

    dependencies =
      [ monad-control 
      ];
  };

monoidal =
  { version = "0.16.0";
    repo = "https://github.com/mcneissue/purescript-monoidal.git";
    rev = "c5b251227bfc96486b5d89624a49de43baf45b40";

    dependencies =
      [ either profunctor these tuples 
      ];
  };

morello =
  { version = "0.2.0";
    repo = "https://github.com/sigma-andex/purescript-morello.git";
    rev = "2dc894c5a43f98beaccdc63d28e40d85ad469e10";

    dependencies =
      [ console debug effect heterogeneous profunctor-lenses psci-support spec spec-discovery strings validation 
      ];
  };

motsunabe =
  { version = "2.0.0";
    repo = "https://github.com/justinwoo/purescript-motsunabe.git";
    rev = "9f1781d1bca2c2c4952933dc5cbdbee3ef13b90c";

    dependencies =
      [ lists strings 
      ];
  };

mysql =
  { version = "5.0.0";
    repo = "https://github.com/oreshinya/purescript-mysql.git";
    rev = "f655cf7e1fe752489fa5777e4e7549d7d4e7a4f9";

    dependencies =
      [ aff js-date simple-json 
      ];
  };

nano-id =
  { version = "1.0.0";
    repo = "https://github.com/eikooc/nano-id.git";
    rev = "458a4c22875894ce59ecb99fdd3116e605ad4120";

    dependencies =
      [ aff console effect lists maybe prelude psci-support random spec strings stringutils 
      ];
  };

naturals =
  { version = "3.0.0";
    repo = "https://github.com/LiamGoodacre/purescript-naturals.git";
    rev = "53aaa11516cd1bb8429f33032802bf43a5b04644";

    dependencies =
      [ enums maybe prelude 
      ];
  };

nested-functor =
  { version = "0.2.1";
    repo = "https://github.com/acple/purescript-nested-functor.git";
    rev = "f066b7933ff9b16ed3c281228e54bbe8519eed1e";

    dependencies =
      [ prelude type-equality 
      ];
  };

newtype =
  { version = "4.0.0";
    repo = "https://github.com/purescript/purescript-newtype.git";
    rev = "7b292fcd2ac7c4a25d7a7a8d3387d0ee7de89b13";

    dependencies =
      [ prelude safe-coerce 
      ];
  };

node-buffer =
  { version = "7.0.1";
    repo = "https://github.com/purescript-node/purescript-node-buffer.git";
    rev = "0721f1e8d768df48ae429547c8c60b121ca120cb";

    dependencies =
      [ arraybuffer-types effect maybe st unsafe-coerce 
      ];
  };

node-child-process =
  { version = "7.1.0";
    repo = "https://github.com/purescript-node/purescript-node-child-process.git";
    rev = "5c4e560eceead04efc1d5a3ec1f6de91bb1d512e";

    dependencies =
      [ exceptions foreign foreign-object functions node-fs node-streams nullable posix-types unsafe-coerce 
      ];
  };

node-fs =
  { version = "6.2.0";
    repo = "https://github.com/purescript-node/purescript-node-fs.git";
    rev = "3cb63cc55a02e506fe07d3940a50d6f0eb6ca2f2";

    dependencies =
      [ datetime effect either enums exceptions functions integers js-date maybe node-buffer node-path node-streams nullable partial prelude strings unsafe-coerce 
      ];
  };

node-fs-aff =
  { version = "7.0.0";
    repo = "https://github.com/purescript-node/purescript-node-fs-aff.git";
    rev = "1da5d326573c3b17c6d4dba3d0e0157e60869f91";

    dependencies =
      [ aff either node-fs node-path 
      ];
  };

node-he =
  { version = "0.3.0";
    repo = "https://github.com/justinwoo/purescript-node-he.git";
    rev = "6b91b06e3dde1bf36089295c9cdd5194ab82c18b";

    dependencies =
      [ 
      ];
  };

node-http =
  { version = "6.0.0";
    repo = "https://github.com/purescript-node/purescript-node-http.git";
    rev = "48a4da07051f0cc9a9d08fbfe8179ebf55aff39a";

    dependencies =
      [ arraybuffer-types contravariant effect foreign foreign-object maybe node-buffer node-net node-streams node-url nullable options prelude unsafe-coerce 
      ];
  };

node-net =
  { version = "2.0.1";
    repo = "https://github.com/purescript-node/purescript-node-net.git";
    rev = "e25a2c538dfa524cd9b75bf12fd7a393efe2f7e9";

    dependencies =
      [ effect either exceptions foreign maybe node-buffer node-fs nullable options prelude transformers 
      ];
  };

node-path =
  { version = "4.0.0";
    repo = "https://github.com/purescript-node/purescript-node-path.git";
    rev = "a2d7cf05e40b607ef7d048a3684cda788cd42890";

    dependencies =
      [ effect 
      ];
  };

node-postgres =
  { version = "5.0.0";
    repo = "https://github.com/epost/purescript-node-postgres.git";
    rev = "31475c0de6437803f50e6ae2a8fb68af3213ed20";

    dependencies =
      [ aff arrays datetime either foldable-traversable foreign integers nullable prelude transformers unsafe-coerce 
      ];
  };

node-process =
  { version = "8.2.0";
    repo = "https://github.com/purescript-node/purescript-node-process.git";
    rev = "e1e807ac7831d1a8a15e242964f7e5005e42f76b";

    dependencies =
      [ effect foreign-object maybe node-streams posix-types prelude unsafe-coerce 
      ];
  };

node-readline =
  { version = "5.0.0";
    repo = "https://github.com/purescript-node/purescript-node-readline.git";
    rev = "c59deb30c7ff5cc91d6b062120c5a3979bd4ccff";

    dependencies =
      [ effect foreign node-process node-streams options prelude 
      ];
  };

node-sqlite3 =
  { version = "7.0.0";
    repo = "https://github.com/justinwoo/purescript-node-sqlite3.git";
    rev = "1a97b071dc82eb8833fb72482aa84729a2023e53";

    dependencies =
      [ aff foreign 
      ];
  };

node-streams =
  { version = "5.0.0";
    repo = "https://github.com/purescript-node/purescript-node-streams.git";
    rev = "886bb2045685e3b9031687d69ccfed29972147bb";

    dependencies =
      [ effect either exceptions node-buffer prelude 
      ];
  };

node-url =
  { version = "5.0.0";
    repo = "https://github.com/purescript-node/purescript-node-url.git";
    rev = "d5671f5e38051f4fa7acacd9ec157ed9dc6ded46";

    dependencies =
      [ nullable 
      ];
  };

nodemailer =
  { version = "3.0.0";
    repo = "https://github.com/oreshinya/purescript-nodemailer.git";
    rev = "ad136469fc5b1f563a4077cda1861f8e5e02579c";

    dependencies =
      [ aff node-streams simple-json 
      ];
  };

nonempty =
  { version = "6.1.0";
    repo = "https://github.com/purescript/purescript-nonempty.git";
    rev = "7696eaf915da5333173bca7d779a51f91a525b83";

    dependencies =
      [ control foldable-traversable maybe prelude tuples unfoldable 
      ];
  };

now =
  { version = "5.0.0";
    repo = "https://github.com/purescript-contrib/purescript-now.git";
    rev = "4c994dae8bb650787de1e4d9e709f2565fb354fb";

    dependencies =
      [ datetime effect 
      ];
  };

npm-package-json =
  { version = "2.0.0";
    repo = "https://github.com/maxdeviant/purescript-npm-package-json.git";
    rev = "e35325d9cc2ee491fbb891388b8be820c79c0b9c";

    dependencies =
      [ argonaut control either foreign-object maybe ordered-collections prelude 
      ];
  };

nullable =
  { version = "5.0.0";
    repo = "https://github.com/purescript-contrib/purescript-nullable.git";
    rev = "8b19c16b16593102ae5d5d9f5b42eea0e213e2f5";

    dependencies =
      [ effect functions maybe 
      ];
  };

numbers =
  { version = "8.0.0";
    repo = "https://github.com/purescript/purescript-numbers.git";
    rev = "f5bbd96cbed58403c4445bd4c73df50fc8d86f46";

    dependencies =
      [ functions math maybe 
      ];
  };

open-folds =
  { version = "6.3.0";
    repo = "https://github.com/purescript-open-community/purescript-open-folds.git";
    rev = "b72b4dc1ce7c44328b6561c5608b0fcafdf6c5d8";

    dependencies =
      [ bifunctors console control distributive effect either foldable-traversable identity invariant maybe newtype ordered-collections prelude profunctor psci-support tuples 
      ];
  };

open-memoize =
  { version = "6.1.0";
    repo = "https://github.com/purescript-open-community/purescript-open-memoize.git";
    rev = "0b106d8ee915047402a8b46172f65d1b063cba00";

    dependencies =
      [ console effect either integers lazy lists maybe partial prelude psci-support strings tuples 
      ];
  };

open-mkdirp-aff =
  { version = "1.1.0";
    repo = "https://github.com/purescript-open-community/purescript-open-mkdirp-aff.git";
    rev = "d7d37d253309bf7ba053209fbb6a73c75e33aa55";

    dependencies =
      [ aff console effect exceptions node-fs-aff node-path prelude psci-support 
      ];
  };

open-pairing =
  { version = "6.1.0";
    repo = "https://github.com/purescript-open-community/purescript-open-pairing.git";
    rev = "b4fa36be62565eb5a12e790ea32f6a618169cfb2";

    dependencies =
      [ console control effect either free functors identity newtype prelude psci-support transformers tuples 
      ];
  };

option =
  { version = "9.0.0";
    repo = "https://github.com/joneshf/purescript-option.git";
    rev = "8506cbf1fd5d5465a9dc990dfe6f2960ae51c1ab";

    dependencies =
      [ argonaut-codecs argonaut-core codec codec-argonaut either foreign foreign-object lists maybe prelude profunctor record simple-json transformers tuples type-equality unsafe-coerce 
      ];
  };

options =
  { version = "6.0.0";
    repo = "https://github.com/purescript-contrib/purescript-options.git";
    rev = "0309a42692251ce5e3d1d0be57d4f63f7143f858";

    dependencies =
      [ contravariant foreign foreign-object maybe tuples 
      ];
  };

options-extra =
  { version = "0.2.0";
    repo = "https://github.com/PureFunctor/purescript-options-extra.git";
    rev = "182ad34695fc2f58a630c119a34dc287d6d90815";

    dependencies =
      [ contravariant options prelude tuples untagged-union 
      ];
  };

optparse =
  { version = "4.1.0";
    repo = "https://github.com/f-o-a-m/purescript-optparse.git";
    rev = "4249c6e5f9aa538ca168e15ff34a19daf89024cf";

    dependencies =
      [ aff arrays bifunctors console control effect either enums exists exitcodes foldable-traversable free gen integers lazy lists maybe newtype node-buffer node-process node-streams nonempty numbers open-memoize partial prelude quickcheck spec strings tailrec transformers tuples 
      ];
  };

ordered-collections =
  { version = "2.0.2";
    repo = "https://github.com/purescript/purescript-ordered-collections.git";
    rev = "1929b706b07e251995b6be51baa7995c61eb4d83";

    dependencies =
      [ arrays foldable-traversable gen lists maybe partial prelude st tailrec tuples unfoldable 
      ];
  };

ordered-set =
  { version = "0.4.0";
    repo = "https://github.com/flip111/purescript-ordered-set.git";
    rev = "da397fb3149d633f66f3687974087497fc812f4a";

    dependencies =
      [ argonaut-codecs arrays partial prelude unfoldable 
      ];
  };

orders =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-orders.git";
    rev = "c25b7075426cf82bcb960495f28d2541c9a75510";

    dependencies =
      [ newtype prelude 
      ];
  };

owoify =
  { version = "1.1.2";
    repo = "https://github.com/deadshot465/purescript-owoify.git";
    rev = "ae5e14260977f9b158dcb926d5a7a1b9f09eda66";

    dependencies =
      [ arrays bifunctors console effect either foldable-traversable integers lists maybe prelude psci-support random strings transformers tuples unfoldable 
      ];
  };

pairs =
  { version = "8.0.0";
    repo = "https://github.com/sharkdp/purescript-pairs.git";
    rev = "97ae3cce9b0e00ff9473fff2779fcbcb4d7bc597";

    dependencies =
      [ console distributive foldable-traversable quickcheck 
      ];
  };

parallel =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-parallel.git";
    rev = "16b38a2e148639b04ae67e0ce63cc220da8857f7";

    dependencies =
      [ control effect either foldable-traversable functors maybe newtype prelude profunctor refs transformers 
      ];
  };

parsing =
  { version = "8.2.0";
    repo = "https://github.com/purescript-contrib/purescript-parsing.git";
    rev = "843a41b3a5ab9885927df476f3908d4555da3108";

    dependencies =
      [ arrays either foldable-traversable identity integers lists maybe prelude strings transformers unicode 
      ];
  };

parsing-dataview =
  { version = "2.1.0";
    repo = "https://github.com/jamesdbrock/purescript-parsing-dataview.git";
    rev = "e29558a1599ea27bb88278def56409f182e59474";

    dependencies =
      [ arraybuffer arraybuffer-types effect float32 maybe parsing prelude transformers tuples uint 
      ];
  };

parsing-expect =
  { version = "0.0.3";
    repo = "https://github.com/markfarrell/purescript-parsing-expect.git";
    rev = "7ebe5d8b57a5233cd337d3306323ac0351a753ea";

    dependencies =
      [ console effect parsing prelude psci-support 
      ];
  };

parsing-repetition =
  { version = "0.0.6";
    repo = "https://github.com/markfarrell/purescript-parsing-repetition.git";
    rev = "a57acb5eb533a645ca99ac61c1ea7da867798615";

    dependencies =
      [ console effect parsing parsing-expect prelude psci-support 
      ];
  };

parsing-replace =
  { version = "1.0.2";
    repo = "https://github.com/jamesdbrock/purescript-parsing-replace.git";
    rev = "5449f2d2f9f499025a877663c6252d7dfddabf4c";

    dependencies =
      [ parsing 
      ];
  };

parsing-validation =
  { version = "0.1.2";
    repo = "https://github.com/markfarrell/purescript-parsing-validation.git";
    rev = "44e558b4bceadb0772910e2c5877b785c9e3ccf0";

    dependencies =
      [ console effect parsing prelude psci-support 
      ];
  };

partial =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-partial.git";
    rev = "2f0a5239efab68179a684603263bcec8f1489b08";

    dependencies =
      [ 
      ];
  };

pathy =
  { version = "8.1.0";
    repo = "https://github.com/purescript-contrib/purescript-pathy.git";
    rev = "b8cd25c47470dd88ac2004a8ffdcea07c84ff83d";

    dependencies =
      [ console exceptions lists partial profunctor strings transformers typelevel-prelude unsafe-coerce 
      ];
  };

payload =
  { version = "0.4.0";
    repo = "https://github.com/hoodunit/purescript-payload.git";
    rev = "1daa80d9ec3a998f56607ec304d7dcf647190154";

    dependencies =
      [ aff affjax arrays bifunctors console datetime effect either exceptions foldable-traversable foreign foreign-object http-methods integers js-date lists maybe media-types newtype node-buffer node-fs node-fs-aff node-http node-path node-streams node-url nullable ordered-collections prelude record refs simple-json strings stringutils test-unit transformers tuples type-equality typelevel-prelude unfoldable unsafe-coerce 
      ];
  };

phaser =
  { version = "0.4.0";
    repo = "https://github.com/lfarroco/purescript-phaser.git";
    rev = "f54fef4cbc5c08398ea37eb223086e1f2469b814";

    dependencies =
      [ aff effect option prelude psci-support 
      ];
  };

phoenix =
  { version = "4.0.0";
    repo = "https://github.com/brandonhamilton/purescript-phoenix.git";
    rev = "93d24c8b93e8ff1008bf3a2da429e36d1216d51b";

    dependencies =
      [ options 
      ];
  };

pipes =
  { version = "7.0.1";
    repo = "https://github.com/felixschl/purescript-pipes.git";
    rev = "37591aa116347173d1917ef95dac5629ccf140b7";

    dependencies =
      [ aff lists mmorph prelude tailrec transformers tuples 
      ];
  };

point-free =
  { version = "1.0.0";
    repo = "https://github.com/ursi/purescript-point-free.git";
    rev = "e4291b1c982312c9dd13e33fdd428817d08548cd";

    dependencies =
      [ prelude 
      ];
  };

polymorphic-vectors =
  { version = "3.0.0";
    repo = "https://github.com/artemisSystem/purescript-polymorphic-vectors.git";
    rev = "e122871df224376d3afe8f8f21f48846a39b9f3b";

    dependencies =
      [ distributive foldable-traversable math prelude record typelevel-prelude 
      ];
  };

posix-types =
  { version = "5.0.0";
    repo = "https://github.com/purescript-node/purescript-posix-types.git";
    rev = "e562680fce64b67e26741a61a51160a04fd3e7fb";

    dependencies =
      [ maybe prelude 
      ];
  };

precise =
  { version = "5.1.0";
    repo = "https://github.com/purescript-contrib/purescript-precise.git";
    rev = "5bedbf520022ce15b03a70474d9cf1a8dc3e6b2d";

    dependencies =
      [ arrays console effect exceptions gen integers lists numbers prelude strings 
      ];
  };

precise-datetime =
  { version = "6.0.1";
    repo = "https://github.com/awakesecurity/purescript-precise-datetime.git";
    rev = "ad5a1ba746ce78ce833602e4094f54fbb1d9ba30";

    dependencies =
      [ arrays console datetime decimals either enums foldable-traversable formatters integers js-date lists maybe newtype numbers prelude strings tuples unicode 
      ];
  };

prelude =
  { version = "5.0.1";
    repo = "https://github.com/purescript/purescript-prelude.git";
    rev = "68f8012bc2309d9bf5832cdf7316ad052d586905";

    dependencies =
      [ 
      ];
  };

prettier =
  { version = "0.3.0";
    repo = "https://github.com/epicallan/purescript-prettier.git";
    rev = "b880c0cf888fcbd00e360e7b7737847d01b3b1cd";

    dependencies =
      [ maybe prelude 
      ];
  };

prettier-printer =
  { version = "3.0.0";
    repo = "https://github.com/paulyoung/purescript-prettier-printer.git";
    rev = "eb0e183849a1044b3a13f40fc680704a8a91df8f";

    dependencies =
      [ console lists prelude strings tuples 
      ];
  };

pretty-logs =
  { version = "0.1.0";
    repo = "https://github.com/PureFunctor/purescript-pretty-logs.git";
    rev = "fe9ca0e15f0c55d685bc074d5afb16a347fe2297";

    dependencies =
      [ console effect newtype prelude 
      ];
  };

profunctor =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-profunctor.git";
    rev = "4551b8e437a00268cc9b687cbe691d75e812e82b";

    dependencies =
      [ control distributive either exists invariant newtype prelude tuples 
      ];
  };

profunctor-lenses =
  { version = "7.0.1";
    repo = "https://github.com/purescript-contrib/purescript-profunctor-lenses.git";
    rev = "9c3d87a6dab8eb785a93bff11aa183796dc93183";

    dependencies =
      [ arrays bifunctors const control distributive either foldable-traversable foreign-object functors identity lists maybe newtype ordered-collections partial prelude profunctor record transformers tuples 
      ];
  };

promises =
  { version = "3.1.1";
    repo = "https://github.com/thimoteus/purescript-promises.git";
    rev = "545f2e5380e3db311e946c54b242eb5a364d66d4";

    dependencies =
      [ console datetime exceptions functions prelude transformers 
      ];
  };

protobuf =
  { version = "2.1.2";
    repo = "https://github.com/xc-jp/purescript-protobuf.git";
    rev = "0162d661e45f99d0d0c150158577f21b4ccd8ea2";

    dependencies =
      [ arraybuffer arraybuffer-builder arraybuffer-types arrays control effect either enums float32 foldable-traversable longs maybe newtype parsing parsing-dataview partial prelude quickcheck record strings tailrec text-encoding transformers tuples uint 
      ];
  };

ps-cst =
  { version = "1.2.0";
    repo = "https://github.com/purescript-codegen/purescript-ps-cst.git";
    rev = "729f4c278598effb2a41ef7f2d6144ddbab1e30a";

    dependencies =
      [ ansi console dodo-printer effect node-fs-aff node-path psci-support record spec strings 
      ];
  };

psa-utils =
  { version = "8.0.0";
    repo = "https://github.com/natefaubion/purescript-psa-utils.git";
    rev = "5e9c60602ca3065e8e95e79e49c09de3fc4a0cf6";

    dependencies =
      [ ansi argonaut-codecs argonaut-core arrays console control effect either foldable-traversable maybe node-path ordered-collections prelude strings tuples unsafe-coerce 
      ];
  };

psc-ide =
  { version = "18.0.0";
    repo = "https://github.com/kRITZCREEK/purescript-psc-ide.git";
    rev = "b9b1d0320204927cafefcf24b105ec03d0ae256b";

    dependencies =
      [ aff argonaut arrays console maybe node-child-process node-fs parallel random 
      ];
  };

psci-support =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-psci-support.git";
    rev = "f26fe8266a63494080476333e22f971404ea8846";

    dependencies =
      [ console effect prelude 
      ];
  };

quantities =
  { version = "11.0.0";
    repo = "https://github.com/sharkdp/purescript-quantities.git";
    rev = "897803d59cad55268c5d651fcbbc21ebc93a8a02";

    dependencies =
      [ decimals either foldable-traversable lists math maybe newtype nonempty numbers pairs prelude tuples 
      ];
  };

queue =
  { version = "8.0.2";
    repo = "https://github.com/athanclark/purescript-queue.git";
    rev = "8be2f6e74dcb0a03c5bd4a4765fe83192724df1a";

    dependencies =
      [ aff avar foreign-object refs 
      ];
  };

quickcheck =
  { version = "7.1.0";
    repo = "https://github.com/purescript/purescript-quickcheck.git";
    rev = "1bb75362c09f5fad50dc029afaefb589fb0547e9";

    dependencies =
      [ arrays console control effect either enums exceptions foldable-traversable gen identity integers lazy lcg lists math maybe newtype nonempty partial prelude record st strings tailrec transformers tuples unfoldable 
      ];
  };

quickcheck-combinators =
  { version = "0.1.3";
    repo = "https://github.com/athanclark/purescript-quickcheck-combinators.git";
    rev = "293e5af07ae47b61d4eae5defef4c0f472bfa9ca";

    dependencies =
      [ quickcheck typelevel 
      ];
  };

quickcheck-laws =
  { version = "6.0.1";
    repo = "https://github.com/purescript-contrib/purescript-quickcheck-laws.git";
    rev = "464597522e5e001adc2619676584871f423b9ea0";

    dependencies =
      [ enums quickcheck 
      ];
  };

quickcheck-utf8 =
  { version = "0.0.0";
    repo = "https://github.com/openchronology/purescript-quickcheck-utf8.git";
    rev = "448e4cf5789ca17fa9b44accf5929137f770f077";

    dependencies =
      [ quickcheck 
      ];
  };

quotient =
  { version = "3.0.0";
    repo = "https://github.com/rightfold/purescript-quotient.git";
    rev = "cd7ab1fd0ece7f14ba85a0e6a5b87d863426c054";

    dependencies =
      [ prelude quickcheck 
      ];
  };

random =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-random.git";
    rev = "3e02da113c7afbac37ea4e16188c39d3057314d5";

    dependencies =
      [ effect integers math 
      ];
  };

rationals =
  { version = "5.0.0";
    repo = "https://github.com/anttih/purescript-rationals.git";
    rev = "172a4be9af576aaeea7c92c5125d0a01a44977da";

    dependencies =
      [ integers prelude 
      ];
  };

rave =
  { version = "0.1.1";
    repo = "https://github.com/reactormonk/purescript-rave.git";
    rev = "5375bba51f57ab272994da335b36ddfaedbc5940";

    dependencies =
      [ aff checked-exceptions console effect exceptions prelude record variant 
      ];
  };

react =
  { version = "9.0.0";
    repo = "https://github.com/purescript-contrib/purescript-react.git";
    rev = "02d337f289bb65b3d972d8d01a8693fc3f95931d";

    dependencies =
      [ effect exceptions maybe nullable prelude typelevel-prelude unsafe-coerce 
      ];
  };

react-basic =
  { version = "16.0.0";
    repo = "https://github.com/lumihq/purescript-react-basic.git";
    rev = "785c233434a2bdcab136318d2e5511f385b26625";

    dependencies =
      [ effect prelude record 
      ];
  };

react-basic-classic =
  { version = "2.0.0";
    repo = "https://github.com/lumihq/purescript-react-basic-classic.git";
    rev = "abe9d31bc9c75335ddf4e064d87e60aec4647045";

    dependencies =
      [ aff console effect functions maybe nullable prelude psci-support react-basic 
      ];
  };

react-basic-dnd =
  { version = "8.0.0";
    repo = "https://github.com/lumihq/purescript-react-dnd-basic.git";
    rev = "667b966d002bc1a47988161b859ebf3d27ef6adf";

    dependencies =
      [ nullable prelude promises react-basic-dom react-basic-hooks 
      ];
  };

react-basic-dom =
  { version = "4.2.0";
    repo = "https://github.com/lumihq/purescript-react-basic-dom.git";
    rev = "4180d27396b278319841e9b3d78deb0716b3817c";

    dependencies =
      [ console effect foreign-object prelude psci-support react-basic unsafe-coerce web-dom web-events web-file web-html 
      ];
  };

react-basic-emotion =
  { version = "6.0.0";
    repo = "https://github.com/lumihq/purescript-react-basic-emotion.git";
    rev = "cfdd8837ccc1c5903f48170ec35c0c3ec2774a42";

    dependencies =
      [ colors console effect foreign foreign-object numbers prelude react-basic react-basic-hooks typelevel-prelude unsafe-reference 
      ];
  };

react-basic-hooks =
  { version = "7.0.1";
    repo = "https://github.com/spicydonuts/purescript-react-basic-hooks.git";
    rev = "732ab86a4f99457882beb66469d6b73d408c6236";

    dependencies =
      [ aff aff-promise bifunctors console control datetime effect either exceptions foldable-traversable functions indexed-monad integers maybe newtype now nullable ordered-collections prelude psci-support react-basic refs tuples type-equality unsafe-coerce unsafe-reference web-html 
      ];
  };

react-dom =
  { version = "7.0.0";
    repo = "https://github.com/purescript-contrib/purescript-react-dom.git";
    rev = "2a8106315c52c48355dd0124aad175f314f3294a";

    dependencies =
      [ effect react web-dom 
      ];
  };

react-enzyme =
  { version = "1.1.1";
    repo = "https://github.com/alvart/purescript-react-enzyme.git";
    rev = "afbc31eb5678df45fdcf72ec3988a9c9e3ae487b";

    dependencies =
      [ aff console effect foreign psci-support react 
      ];
  };

react-halo =
  { version = "2.0.0";
    repo = "https://github.com/robertdp/purescript-react-halo.git";
    rev = "ed9f2f9594733098fa2ad6bc6668c8fbc77b7f6f";

    dependencies =
      [ aff free freeap halogen-subscriptions react-basic-hooks refs unsafe-reference 
      ];
  };

react-queue =
  { version = "1.3.2";
    repo = "https://github.com/athanclark/purescript-react-queue.git";
    rev = "641c791d8bc806c0823fd4b7da45cd434a062bc6";

    dependencies =
      [ exceptions queue react zeta 
      ];
  };

react-testing-library =
  { version = "3.1.4";
    repo = "https://github.com/i-am-the-slime/purescript-react-testing-library.git";
    rev = "4b6d6bb474a566c24a6157b92dc08cf92d4a1408";

    dependencies =
      [ aff aff-promise arrays avar bifunctors control datetime effect either exceptions foldable-traversable foreign foreign-object functions identity integers lists maybe newtype nullable partial prelude react-basic react-basic-dom react-basic-hooks record remotedata run spec strings transformers tuples typelevel-prelude unsafe-coerce variant web-dom web-events web-html 
      ];
  };

read =
  { version = "1.0.1";
    repo = "https://github.com/truqu/purescript-read.git";
    rev = "fbf014b21bedeb844b5c3d64221d550aa72226e0";

    dependencies =
      [ maybe prelude strings 
      ];
  };

record =
  { version = "3.0.0";
    repo = "https://github.com/purescript/purescript-record.git";
    rev = "091495d61fcaa9d8d8232e7b800f403a3165a38f";

    dependencies =
      [ functions prelude unsafe-coerce 
      ];
  };

record-extra =
  { version = "4.0.0";
    repo = "https://github.com/justinwoo/purescript-record-extra.git";
    rev = "614259a13fa535f2086be6f429b7815983fed25f";

    dependencies =
      [ arrays functions lists record typelevel-prelude 
      ];
  };

record-extra-srghma =
  { version = "0.1.0";
    repo = "https://github.com/srghma/purescript-record-extra-srghma.git";
    rev = "276ab7c847f0ccae6f3234917eb22d049ad28791";

    dependencies =
      [ arrays ps-pkgs."assert" console control effect functions js-timers lists maybe parallel prelude record transformers tuples typelevel-prelude unfoldable 
      ];
  };

redux-devtools =
  { version = "0.1.0";
    repo = "https://github.com/justinwoo/purescript-redux-devtools.git";
    rev = "aa27344a0a2cef9a1f703e0d77abd8861876e65f";

    dependencies =
      [ effect foreign nullable prelude 
      ];
  };

refined =
  { version = "1.0.0";
    repo = "https://github.com/danieljharvey/purescript-refined.git";
    rev = "60ef6bd5fea4a39cb39ee66cb54a55c60e038608";

    dependencies =
      [ argonaut effect prelude quickcheck typelevel 
      ];
  };

refs =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-refs.git";
    rev = "f66d3cdf6a6bf4510e5181b3fac215054d8f1e2e";

    dependencies =
      [ effect prelude 
      ];
  };

remotedata =
  { version = "5.0.0";
    repo = "https://github.com/krisajenkins/purescript-remotedata.git";
    rev = "cc9932a6c19262d8e4217c534c658a127562c14c";

    dependencies =
      [ bifunctors either profunctor-lenses 
      ];
  };

resource =
  { version = "2.0.1";
    repo = "https://github.com/joneshf/purescript-resource.git";
    rev = "af0abd0d18013e3d4510a7c14d69411817e22dc9";

    dependencies =
      [ aff console control effect newtype prelude psci-support refs 
      ];
  };

resourcet =
  { version = "1.0.0";
    repo = "https://github.com/robertdp/purescript-resourcet.git";
    rev = "89df9dbc1e07defc159343cedd0eeee62d9e76d7";

    dependencies =
      [ aff effect foldable-traversable maybe ordered-collections parallel refs tailrec transformers tuples 
      ];
  };

result =
  { version = "1.0.3";
    repo = "https://github.com/ad-si/purescript-result.git";
    rev = "11bf97ec2872a7a4b4eae0a27b5c8c9cb8263a85";

    dependencies =
      [ either foldable-traversable prelude 
      ];
  };

return =
  { version = "0.1.4";
    repo = "https://github.com/ursi/purescript-return.git";
    rev = "e839ebb8490b47a7af8b8f89f4dc9efa0b16b600";

    dependencies =
      [ foldable-traversable point-free prelude 
      ];
  };

ring-modules =
  { version = "5.0.1";
    repo = "https://github.com/f-o-a-m/purescript-ring-modules.git";
    rev = "48f72122e7f80dfd1efcc2bd5bb2f8fb92942f68";

    dependencies =
      [ prelude 
      ];
  };

routing =
  { version = "10.0.1";
    repo = "https://github.com/purescript-contrib/purescript-routing.git";
    rev = "ffd3719f60500028996abf64e2111e4d2a75292e";

    dependencies =
      [ aff console control effect either foldable-traversable integers js-uri lists maybe numbers partial prelude semirings tuples validation web-html 
      ];
  };

routing-duplex =
  { version = "0.5.1";
    repo = "https://github.com/natefaubion/purescript-routing-duplex.git";
    rev = "4f59293135f993e396fc01ceb7a6ecda3afb0089";

    dependencies =
      [ arrays control either js-uri lazy numbers prelude profunctor record strings typelevel-prelude 
      ];
  };

row-extra =
  { version = "0.0.1";
    repo = "https://github.com/athanclark/purescript-row-extra.git";
    rev = "24cc40a96e27c2a256afb501458894aa76eb79aa";

    dependencies =
      [ 
      ];
  };

run =
  { version = "4.0.0";
    repo = "https://github.com/natefaubion/purescript-run.git";
    rev = "da336dbe4fdbc63f112020ff24884841cf84a6aa";

    dependencies =
      [ aff effect either free maybe newtype prelude profunctor tailrec tuples type-equality typelevel-prelude unsafe-coerce variant 
      ];
  };

run-external-state =
  { version = "1.0.0";
    repo = "https://github.com/Mateiadrielrafael/purescript-run-external-state.git";
    rev = "7c411a82202eb41223e4ca1b0cd40cc3f7b29b53";

    dependencies =
      [ effect maybe prelude profunctor-lenses refs run tuples typelevel-prelude 
      ];
  };

rxps =
  { version = "1.8.0";
    repo = "https://github.com/waynevanson/purescript-rxps.git";
    rev = "f61c32bc8aa701d142e95db3289e33fddfc80b3f";

    dependencies =
      [ arrays control control effect exceptions foldable-traversable foldable-traversable foreign-object functions identity identity partial partial prelude psci-support strings strings test-unit transformers transformers tuples tuples web-events web-events 
      ];
  };

safe-coerce =
  { version = "1.0.0";
    repo = "https://github.com/purescript/purescript-safe-coerce.git";
    rev = "e719defd227d932da067a1f0d62a60b3d3ff3637";

    dependencies =
      [ unsafe-coerce 
      ];
  };

safely =
  { version = "4.0.1";
    repo = "https://github.com/paf31/purescript-safely.git";
    rev = "b56e240c460f07d4a340842a5f06fc1105526d91";

    dependencies =
      [ freet lists 
      ];
  };

scrypt =
  { version = "1.0.1";
    repo = "https://github.com/athanclark/purescript-scrypt.git";
    rev = "3aebcdb204b5dd0a5bc81254c279ffc8ec89892f";

    dependencies =
      [ aff arraybuffer-types 
      ];
  };

selection-foldable =
  { version = "0.2.0";
    repo = "https://github.com/jamieyung/purescript-selection-foldable.git";
    rev = "998952c7321361f3e885514a89d472f323fcf7b0";

    dependencies =
      [ filterable foldable-traversable maybe prelude 
      ];
  };

semirings =
  { version = "6.0.0";
    repo = "https://github.com/purescript/purescript-semirings.git";
    rev = "c162896dc40ba8d1268c663a352ee5e108979a2c";

    dependencies =
      [ foldable-traversable lists newtype prelude 
      ];
  };

server-sent-events =
  { version = "0.3.1";
    repo = "https://github.com/MichaelXavier/purescript-server-sent-events.git";
    rev = "67691bed393f0a2d749af66bf9f6102b4da2a8d7";

    dependencies =
      [ console effect functions maybe prelude psci-support web-events 
      ];
  };

setimmediate =
  { version = "1.0.2";
    repo = "https://github.com/athanclark/purescript-setimmediate.git";
    rev = "fec5546325da318a5be7350bc8c0d59b7c62cad4";

    dependencies =
      [ effect functions 
      ];
  };

signal =
  { version = "12.0.1";
    repo = "https://github.com/bodil/purescript-signal.git";
    rev = "6935d13d49dbbc74a55113c9a627a30c50993169";

    dependencies =
      [ aff foldable-traversable js-timers maybe prelude 
      ];
  };

simple-ajax =
  { version = "4.0.0";
    repo = "https://github.com/dariooddenino/purescript-simple-ajax.git";
    rev = "7ec5e1f6bbd8ebddb10b37091a90ef75cc9c448b";

    dependencies =
      [ affjax argonaut prelude variant 
      ];
  };

simple-emitter =
  { version = "2.0.0";
    repo = "https://github.com/oreshinya/purescript-simple-emitter.git";
    rev = "7a9b24fe0b156f213df000d44d21d756bbb67d29";

    dependencies =
      [ ordered-collections refs 
      ];
  };

simple-i18n =
  { version = "1.0.0";
    repo = "https://github.com/oreshinya/purescript-simple-i18n.git";
    rev = "c9b927fb4113885946e0fb6de47df02ffe4f53c4";

    dependencies =
      [ foreign-object record-extra 
      ];
  };

simple-json =
  { version = "8.0.0";
    repo = "https://github.com/justinwoo/purescript-simple-json.git";
    rev = "e32dc568b4b08e1153f0814e8b423b10cdcfc7ea";

    dependencies =
      [ arrays exceptions foreign foreign-object nullable prelude record typelevel-prelude variant 
      ];
  };

simple-jwt =
  { version = "3.1.0";
    repo = "https://github.com/oreshinya/purescript-simple-jwt.git";
    rev = "92b2f24b2f5982494262475bc6072c5ca41aee1e";

    dependencies =
      [ crypto simple-json strings 
      ];
  };

simple-ulid =
  { version = "2.0.0";
    repo = "https://github.com/oreshinya/purescript-simple-ulid.git";
    rev = "87f7797599fc5dea8104b74085f581561720fa8b";

    dependencies =
      [ exceptions now strings 
      ];
  };

sized-matrices =
  { version = "1.0.0";
    repo = "https://github.com/csicar/purescript-sized-matrices.git";
    rev = "4c322071b569a0dfba913f943dd3c2e9ae5c0f25";

    dependencies =
      [ arrays distributive foldable-traversable maybe prelude sized-vectors strings typelevel unfoldable vectorfield 
      ];
  };

sized-vectors =
  { version = "5.0.2";
    repo = "https://github.com/bodil/purescript-sized-vectors.git";
    rev = "0f5ebf3d9520f0e83d4e8a955f31182e34840251";

    dependencies =
      [ argonaut arrays distributive foldable-traversable maybe prelude quickcheck typelevel unfoldable 
      ];
  };

slug =
  { version = "3.0.0";
    repo = "https://github.com/thomashoneyman/purescript-slug.git";
    rev = "1b454aff442091e2ce68418ae0a3b9490136cd70";

    dependencies =
      [ argonaut-codecs maybe prelude strings unicode 
      ];
  };

snabbdom =
  { version = "1.0.1";
    repo = "https://github.com/LukaJCB/purescript-snabbdom.git";
    rev = "a1b37c26304bc4731551bea5c8cabe0f6ff5bf5a";

    dependencies =
      [ ordered-collections prelude web-dom web-html 
      ];
  };

sodium =
  { version = "2.1.0";
    repo = "https://github.com/SodiumFRP/purescript-sodium.git";
    rev = "dc745a4eab2688f2c66465ab9e60d163c976205a";

    dependencies =
      [ aff nullable numbers quickcheck-laws test-unit 
      ];
  };

soundfonts =
  { version = "3.2.0";
    repo = "https://github.com/newlandsvalley/purescript-soundfonts.git";
    rev = "fc1436b0a1248729e38a3bbe15a954e6b636a2d4";

    dependencies =
      [ affjax argonaut-core b64 console effect http-methods midi parallel prelude 
      ];
  };

sparse-matrices =
  { version = "1.1.0";
    repo = "https://github.com/Ebmtranceboy/purescript-sparse-matrices.git";
    rev = "3120911028da3ad6032f77ffacb119b43b7d2082";

    dependencies =
      [ console effect prelude sparse-polynomials 
      ];
  };

sparse-polynomials =
  { version = "1.0.3";
    repo = "https://github.com/Ebmtranceboy/purescript-sparse-polynomials.git";
    rev = "4aa26e8fac689645f3c00d21099fbd71416ac21c";

    dependencies =
      [ cartesian console effect ordered-collections prelude rationals tuples 
      ];
  };

spec =
  { version = "5.0.1";
    repo = "https://github.com/purescript-spec/purescript-spec.git";
    rev = "2cfa11573dbb695c117efce0a8f76a3daba12e87";

    dependencies =
      [ aff ansi avar console exceptions foldable-traversable fork now pipes prelude strings transformers 
      ];
  };

spec-discovery =
  { version = "6.0.0";
    repo = "https://github.com/purescript-spec/purescript-spec-discovery.git";
    rev = "d62f3625861efc9cd61f5fba55c1fdc38b276684";

    dependencies =
      [ arrays effect node-fs prelude spec 
      ];
  };

spec-mocha =
  { version = "4.0.0";
    repo = "https://github.com/purescript-spec/purescript-spec-mocha.git";
    rev = "1511b8cf82a96d076f789123240f8f48bd6b22ff";

    dependencies =
      [ console exceptions foldable-traversable spec 
      ];
  };

spec-quickcheck =
  { version = "4.0.0";
    repo = "https://github.com/purescript-spec/purescript-spec-quickcheck.git";
    rev = "c2991f475b8fa11de8b68bcb5895b36be04d1e82";

    dependencies =
      [ aff prelude quickcheck random spec 
      ];
  };

spork =
  { version = "1.0.0";
    repo = "https://github.com/natefaubion/purescript-spork.git";
    rev = "131f07d669f2c09175faed39c3445c6a46ca924f";

    dependencies =
      [ aff arrays console dom-indexed effect foldable-traversable foreign halogen-vdom maybe ordered-collections prelude refs tailrec unsafe-reference web-dom web-events web-html web-uievents 
      ];
  };

st =
  { version = "5.0.1";
    repo = "https://github.com/purescript/purescript-st.git";
    rev = "d3c4a2b7d6464050f2595297922bb2b25cd338a5";

    dependencies =
      [ partial prelude tailrec unsafe-coerce 
      ];
  };

strictlypositiveint =
  { version = "1.0.1";
    repo = "https://github.com/jamieyung/purescript-strictlypositiveint.git";
    rev = "feb38c7d0d8c50eeda4c263daf40817b9f9e374d";

    dependencies =
      [ prelude 
      ];
  };

string-parsers =
  { version = "6.0.1";
    repo = "https://github.com/purescript-contrib/purescript-string-parsers.git";
    rev = "7c3cad8ce7cd4d1036eeafa09af323dc7b8d367c";

    dependencies =
      [ arrays bifunctors control either foldable-traversable lists maybe prelude strings tailrec 
      ];
  };

strings =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-strings.git";
    rev = "157e372a23e4becd594d7e7bff6f372a6f63dd82";

    dependencies =
      [ arrays control either enums foldable-traversable gen integers maybe newtype nonempty partial prelude tailrec tuples unfoldable unsafe-coerce 
      ];
  };

strings-extra =
  { version = "3.0.1";
    repo = "https://github.com/purescript-contrib/purescript-strings-extra.git";
    rev = "f7e230de84a6fea025de86f4148e33098b8d12b8";

    dependencies =
      [ arrays foldable-traversable maybe prelude strings unicode 
      ];
  };

stringutils =
  { version = "0.0.11";
    repo = "https://github.com/menelaos/purescript-stringutils.git";
    rev = "e149d04cd5bcc25222c1807f2e1edafb36b5f70e";

    dependencies =
      [ arrays either integers maybe partial prelude strings 
      ];
  };

subcategory =
  { version = "0.2.0";
    repo = "https://github.com/matthew-hilty/purescript-subcategory.git";
    rev = "6a8a8ef9db5fb0abbc8852ba7020c6ee4fbc1049";

    dependencies =
      [ prelude profunctor record typelevel-prelude 
      ];
  };

substitute =
  { version = "0.2.3";
    repo = "https://github.com/ursi/purescript-substitute.git";
    rev = "adddf76f8f44a82b264df47e0dea5b3ce892c102";

    dependencies =
      [ foldable-traversable foreign-object maybe prelude return strings 
      ];
  };

subtlecrypto =
  { version = "0.0.1";
    repo = "https://github.com/athanclark/purescript-subtlecrypto.git";
    rev = "d442f77b1587bec690ed2361810e5e47130d4f7b";

    dependencies =
      [ aff arraybuffer-types foreign promises 
      ];
  };

suggest =
  { version = "5.0.0";
    repo = "https://github.com/nwolverson/purescript-suggest.git";
    rev = "bdce2322ddc5deef1c226937580c10df7d1930c1";

    dependencies =
      [ console node-buffer node-fs node-process node-streams psa-utils refs 
      ];
  };

sunde =
  { version = "2.0.0";
    repo = "https://github.com/justinwoo/purescript-sunde.git";
    rev = "7a1e3a02aa702acb8532ca4fab9817376a524691";

    dependencies =
      [ aff effect node-child-process prelude 
      ];
  };

supply =
  { version = "0.2.0";
    repo = "https://github.com/ajnsit/purescript-supply.git";
    rev = "be1bd323ea7fcda72ec8daf4ca45172c7b1e916a";

    dependencies =
      [ console control effect lazy prelude refs tuples 
      ];
  };

systemd-journald =
  { version = "0.2.1";
    repo = "https://github.com/paluh/purescript-systemd-journald.git";
    rev = "25f19d0334acef984034b76cf360596a9e840b50";

    dependencies =
      [ console functions prelude 
      ];
  };

tailrec =
  { version = "5.0.1";
    repo = "https://github.com/purescript/purescript-tailrec.git";
    rev = "b557d056c9719351f2b62cf120b1bdaab141e052";

    dependencies =
      [ bifunctors effect either identity maybe partial prelude refs 
      ];
  };

test-unit =
  { version = "16.0.0";
    repo = "https://github.com/bodil/purescript-test-unit.git";
    rev = "56d06897b621df5d2f619433d19ababb5bb8ebd1";

    dependencies =
      [ aff avar effect either free js-timers lists prelude quickcheck strings 
      ];
  };

text-encoding =
  { version = "1.0.0";
    repo = "https://github.com/AlexaDeWit/purescript-text-encoding.git";
    rev = "53e5d15ef5d7059866738834bc4bafd40980293e";

    dependencies =
      [ arraybuffer-types either exceptions functions strings 
      ];
  };

thermite =
  { version = "6.3.1";
    repo = "https://github.com/paf31/purescript-thermite.git";
    rev = "0611b86f121206f77ee82323bf8caf0e1e7be64a";

    dependencies =
      [ aff coroutines freet profunctor-lenses react 
      ];
  };

thermite-dom =
  { version = "0.3.1";
    repo = "https://github.com/athanclark/purescript-thermite-dom.git";
    rev = "98b29439f05d0e8a345f1a0b0317bbc186d948ec";

    dependencies =
      [ react react-dom thermite web-html 
      ];
  };

these =
  { version = "5.0.0";
    repo = "https://github.com/purescript-contrib/purescript-these.git";
    rev = "38dcf86a9bd772091e1153f2f1c13223703599b7";

    dependencies =
      [ arrays gen lists quickcheck quickcheck-laws tuples 
      ];
  };

toppokki =
  { version = "2.5.0";
    repo = "https://github.com/justinwoo/purescript-toppokki.git";
    rev = "f7512a83325dde4a3c5fd92aff0f254e1377545a";

    dependencies =
      [ aff-promise functions node-buffer node-http prelude record 
      ];
  };

transformers =
  { version = "5.2.0";
    repo = "https://github.com/purescript/purescript-transformers.git";
    rev = "1e5d4193b38c613c97ea1ebdb721c6b94cd8c50a";

    dependencies =
      [ control distributive effect either exceptions foldable-traversable identity lazy maybe newtype prelude tailrec tuples unfoldable 
      ];
  };

tree-rose =
  { version = "2.0.0";
    repo = "https://github.com/jordanmartinez/purescript-tree-rose.git";
    rev = "8530d6cfc14b6ad654c6607e0926db619ff48131";

    dependencies =
      [ free lists prelude 
      ];
  };

tuples =
  { version = "6.0.1";
    repo = "https://github.com/purescript/purescript-tuples.git";
    rev = "04630b287d453158b2b95c4be695dfe9fdd83a12";

    dependencies =
      [ control invariant prelude 
      ];
  };

turf =
  { version = "1.0.1";
    repo = "https://github.com/jisantuc/purescript-turf.git";
    rev = "97b01fa00e3578cae4fc85fd176e1bff6ba529d5";

    dependencies =
      [ argonaut-codecs argonaut-core foreign-object quickcheck 
      ];
  };

two-or-more =
  { version = "1.0.0";
    repo = "https://github.com/i-am-the-slime/purescript-two-or-more.git";
    rev = "2068aa61d8c38a0b96a5cff1ad82a1e2209c64e0";

    dependencies =
      [ arrays console effect foldable-traversable maybe partial prelude psci-support tuples 
      ];
  };

type-equality =
  { version = "4.0.0";
    repo = "https://github.com/purescript/purescript-type-equality.git";
    rev = "f7644468f22ed267a15d398173d234fa6f45e2e0";

    dependencies =
      [ 
      ];
  };

typedenv =
  { version = "1.0.0";
    repo = "https://github.com/nsaunders/purescript-typedenv.git";
    rev = "d9a6bab7b4cc8ae6ebe13393dc01ed0e54b90de4";

    dependencies =
      [ foreign-object integers numbers record strings typelevel-prelude 
      ];
  };

typelevel =
  { version = "6.0.0";
    repo = "https://github.com/bodil/purescript-typelevel.git";
    rev = "52975848003e42eb4cfb87895ff947e30b565ca9";

    dependencies =
      [ partial prelude tuples typelevel-prelude unsafe-coerce 
      ];
  };

typelevel-arithmetic =
  { version = "0.1.0";
    repo = "https://github.com/sigma-andex/purescript-typelevel-arithmetic.git";
    rev = "d30ffc89b9a23c06680271fcf605206a8c370fd3";

    dependencies =
      [ prelude tuples 
      ];
  };

typelevel-lists =
  { version = "2.1.0";
    repo = "https://github.com/PureFunctor/purescript-typelevel-lists.git";
    rev = "435206ebb9979db27e36e49329eae7ee5e3d7530";

    dependencies =
      [ prelude tuples typelevel-peano typelevel-prelude unsafe-coerce 
      ];
  };

typelevel-peano =
  { version = "1.0.1";
    repo = "https://github.com/csicar/purescript-typelevel-peano.git";
    rev = "f28f5045d0cf4fc3ced56f10433353dc3d5a976e";

    dependencies =
      [ arrays console effect prelude psci-support typelevel-prelude unsafe-coerce 
      ];
  };

typelevel-prelude =
  { version = "6.0.0";
    repo = "https://github.com/purescript/purescript-typelevel-prelude.git";
    rev = "83ddcdb23d06c8d5ea6196596a70438f42cd4afd";

    dependencies =
      [ prelude type-equality 
      ];
  };

typelevel-rows =
  { version = "0.1.0";
    repo = "https://github.com/jordanmartinez/purescript-typelevel-rows.git";
    rev = "2277c6ba93ed11a12af492ec0bdd90f75f042eec";

    dependencies =
      [ prelude 
      ];
  };

uint =
  { version = "6.0.3";
    repo = "https://github.com/purescript-contrib/purescript-uint.git";
    rev = "17fda2aff989ad7fa9f29171bf4c1196ca9ed504";

    dependencies =
      [ effect enums gen math maybe prelude 
      ];
  };

ulid =
  { version = "2.0.0";
    repo = "https://github.com/maxdeviant/purescript-ulid.git";
    rev = "754af18072fd520d939f5c7aa500bc135fbc002d";

    dependencies =
      [ effect functions maybe nullable prelude 
      ];
  };

undefinable =
  { version = "4.0.0";
    repo = "https://github.com/ethul/purescript-undefinable.git";
    rev = "ad540b35cf35811df67fe783076c7c8c77d4e784";

    dependencies =
      [ functions maybe 
      ];
  };

undefined =
  { version = "1.0.2";
    repo = "https://github.com/bklaric/purescript-undefined.git";
    rev = "4012dc06b58feae301140bc081135d0f24c432b0";

    dependencies =
      [ 
      ];
  };

undefined-is-not-a-problem =
  { version = "0.2.1";
    repo = "https://github.com/paluh/purescript-undefined-is-not-a-problem.git";
    rev = "47cd169543e9f84108a6143444babb7e0d4555bf";

    dependencies =
      [ ps-pkgs."assert" effect either foreign maybe prelude psci-support random tuples unsafe-coerce 
      ];
  };

undefined-or =
  { version = "1.0.1";
    repo = "https://github.com/d86leader/purescript-undefined-or.git";
    rev = "865da167f6c64db898f290c144753fec3b3793bf";

    dependencies =
      [ maybe 
      ];
  };

unfoldable =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-unfoldable.git";
    rev = "bbcc2b062b9b7d3d61f123cfb32cc8c7fb811aa6";

    dependencies =
      [ foldable-traversable maybe partial prelude tuples 
      ];
  };

unicode =
  { version = "5.0.1";
    repo = "https://github.com/purescript-contrib/purescript-unicode.git";
    rev = "2b66dcdb2ea533c7bc864574e860012c57ace2aa";

    dependencies =
      [ foldable-traversable maybe strings 
      ];
  };

unordered-collections =
  { version = "2.1.4";
    repo = "https://github.com/fehrenbach/purescript-unordered-collections.git";
    rev = "1be289188cef093520098e318ec910cf3ea5b40d";

    dependencies =
      [ arrays enums functions integers lists prelude record tuples typelevel-prelude 
      ];
  };

unorm =
  { version = "1.0.1";
    repo = "https://github.com/athanclark/purescript-unorm.git";
    rev = "5b44ae68ecb77ad2aa4478bc760b5e2625658b01";

    dependencies =
      [ 
      ];
  };

unsafe-coerce =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-unsafe-coerce.git";
    rev = "ee24f0d3b94bf925d9c50fcc2b449579580178c0";

    dependencies =
      [ 
      ];
  };

unsafe-reference =
  { version = "4.0.0";
    repo = "https://github.com/purescript-contrib/purescript-unsafe-reference.git";
    rev = "d4e11a0f291fe8db9855c8bec89fd50b4e48d043";

    dependencies =
      [ prelude 
      ];
  };

untagged-to-tagged =
  { version = "0.1.3";
    repo = "https://github.com/sigma-andex/purescript-untagged-to-tagged.git";
    rev = "dd454e5331312a6410c514328e25ca0ab34e4961";

    dependencies =
      [ either newtype prelude untagged-union 
      ];
  };

untagged-union =
  { version = "0.3.0";
    repo = "https://github.com/jvliwanag/purescript-untagged-union.git";
    rev = "364e172e759ebe722bd7ec12a599d532b527c0ef";

    dependencies =
      [ ps-pkgs."assert" console effect foreign foreign-object literals maybe newtype psci-support tuples unsafe-coerce 
      ];
  };

uri =
  { version = "8.0.1";
    repo = "https://github.com/purescript-contrib/purescript-uri.git";
    rev = "d56b9c24933e40b523a0d64e272f3b9f603a1f7c";

    dependencies =
      [ arrays integers js-uri numbers parsing prelude profunctor-lenses these transformers unfoldable 
      ];
  };

url-regex-safe =
  { version = "0.1.0";
    repo = "https://github.com/srghma/purescript-url-regex-safe.git";
    rev = "449f9b178defdd984e8dbddea117d382cc334737";

    dependencies =
      [ console effect prelude psci-support strings 
      ];
  };

uuid =
  { version = "8.0.0";
    repo = "https://github.com/spicydonuts/purescript-uuid.git";
    rev = "fed6ff84931756e8f58700f0cc63b835ac8a31be";

    dependencies =
      [ console effect foreign-generic maybe spec 
      ];
  };

validation =
  { version = "5.0.0";
    repo = "https://github.com/purescript/purescript-validation.git";
    rev = "2d50284b192e71c9ca6aff87747b0d980c1ca657";

    dependencies =
      [ bifunctors control either foldable-traversable newtype prelude 
      ];
  };

variant =
  { version = "7.0.3";
    repo = "https://github.com/natefaubion/purescript-variant.git";
    rev = "3f12411ede5edd342d25340c1babce9ae81d6793";

    dependencies =
      [ enums lists maybe partial prelude record tuples unsafe-coerce 
      ];
  };

vectorfield =
  { version = "1.0.1";
    repo = "https://github.com/csicar/purescript-vectorfield.git";
    rev = "df5710b5f7c8f6986b882ec2e0aec012c070af05";

    dependencies =
      [ console effect group prelude psci-support 
      ];
  };

veither =
  { version = "1.0.6";
    repo = "https://github.com/JordanMartinez/purescript-veither.git";
    rev = "24b516ce716fa936c5f624fa8dc9fed084a39a6f";

    dependencies =
      [ aff arrays console control effect either enums foldable-traversable invariant lists maybe newtype partial prelude quickcheck quickcheck-laws record spec tuples unsafe-coerce variant 
      ];
  };

versions =
  { version = "6.0.0";
    repo = "https://github.com/hdgarrood/purescript-versions.git";
    rev = "c3e8c4e0a4b94da7800b1a66e96fbd6686b22e80";

    dependencies =
      [ control either foldable-traversable functions integers lists maybe orders parsing partial strings 
      ];
  };

vexceptt =
  { version = "1.0.2";
    repo = "https://github.com/JordanMartinez/purescript-vexceptt.git";
    rev = "1d368db7b684d4f3973983baa42fe7cc75cb95ec";

    dependencies =
      [ aff effect newtype prelude spec tailrec transformers tuples unsafe-coerce variant veither 
      ];
  };

web-clipboard =
  { version = "3.0.0";
    repo = "https://github.com/purescript-web/purescript-web-clipboard.git";
    rev = "24f845a888d980d9de78c18f6a67353704429d0d";

    dependencies =
      [ web-html 
      ];
  };

web-cssom =
  { version = "1.0.0";
    repo = "https://github.com/purescript-web/purescript-web-cssom.git";
    rev = "7399a3573edb4b15fa95ba39c2958fe33854c14f";

    dependencies =
      [ web-dom web-html web-uievents 
      ];
  };

web-dom =
  { version = "5.0.0";
    repo = "https://github.com/purescript-web/purescript-web-dom.git";
    rev = "03dfc2f512e124615ab183ade357e3d54007c79d";

    dependencies =
      [ web-events 
      ];
  };

web-dom-parser =
  { version = "7.0.0";
    repo = "https://github.com/purescript-web/purescript-web-dom-parser.git";
    rev = "f247c30c996f82a6de1e660ac0ad29638e700a08";

    dependencies =
      [ effect partial prelude web-dom 
      ];
  };

web-dom-xpath =
  { version = "2.0.1";
    repo = "https://github.com/purescript-web/purescript-web-dom-xpath.git";
    rev = "c15b7402aa3293af9b2f2323b67b48c99647aa1e";

    dependencies =
      [ web-dom 
      ];
  };

web-encoding =
  { version = "2.0.0";
    repo = "https://github.com/purescript-web/purescript-web-encoding.git";
    rev = "b5ba046d46bc7d582575eba8dbb8562e121572dd";

    dependencies =
      [ arraybuffer-types effect newtype prelude 
      ];
  };

web-events =
  { version = "3.0.0";
    repo = "https://github.com/purescript-web/purescript-web-events.git";
    rev = "c8a50893f04f54e2a59be7f885d25caef3589c57";

    dependencies =
      [ datetime enums nullable 
      ];
  };

web-fetch =
  { version = "2.0.0";
    repo = "https://github.com/purescript-web/purescript-web-fetch.git";
    rev = "b5e3e572e0e1f13e26fb1d783826642d3cf33515";

    dependencies =
      [ effect foreign-object http-methods prelude record typelevel-prelude web-file web-promise web-streams 
      ];
  };

web-file =
  { version = "3.0.0";
    repo = "https://github.com/purescript-web/purescript-web-file.git";
    rev = "3e42263b4392d82c0e379b7a481bbee9b38b1308";

    dependencies =
      [ foreign media-types web-dom 
      ];
  };

web-html =
  { version = "3.2.0";
    repo = "https://github.com/purescript-web/purescript-web-html.git";
    rev = "3a249b966ee72c19874b4a2ec6db4059087500e4";

    dependencies =
      [ js-date web-dom web-file web-storage 
      ];
  };

web-promise =
  { version = "2.1.0";
    repo = "https://github.com/purescript-web/purescript-web-promise.git";
    rev = "26ceb2ee7d1046fea40697380b66b2c6313489b0";

    dependencies =
      [ effect exceptions foldable-traversable functions maybe prelude 
      ];
  };

web-resize-observer =
  { version = "1.0.0";
    repo = "https://github.com/nsaunders/purescript-web-resize-observer.git";
    rev = "68a925704f684a3740aef55e6d2fbb5af33640e5";

    dependencies =
      [ arrays control either foldable-traversable foreign record transformers web-dom 
      ];
  };

web-socket =
  { version = "3.0.0";
    repo = "https://github.com/purescript-web/purescript-web-socket.git";
    rev = "28c09f4c8db6bbf4c25f98db7381e42e4e73e349";

    dependencies =
      [ arraybuffer-types web-file 
      ];
  };

web-speech =
  { version = "0.2.0";
    repo = "https://github.com/dirkz/purescript-web-speech.git";
    rev = "8c8bd1d77cc6cf6a2809d74b11e67f971be84910";

    dependencies =
      [ aff effect functions integers maybe nullable prelude psci-support unsafe-coerce web-events web-html 
      ];
  };

web-storage =
  { version = "4.0.0";
    repo = "https://github.com/purescript-web/purescript-web-storage.git";
    rev = "22fa56bac204c708e521e746ad4ca2b5810f62c5";

    dependencies =
      [ nullable web-events 
      ];
  };

web-streams =
  { version = "2.0.0";
    repo = "https://github.com/purescript-web/purescript-web-streams.git";
    rev = "b8e10f3b3a26b80b0bc98d558ab9842890a7c2cb";

    dependencies =
      [ arraybuffer-types effect exceptions nullable prelude tuples web-promise 
      ];
  };

web-touchevents =
  { version = "3.0.0";
    repo = "https://github.com/purescript-web/purescript-web-touchevents.git";
    rev = "c4a4c41c51bca587c22ed00980ddeca3403c08cd";

    dependencies =
      [ web-uievents 
      ];
  };

web-uievents =
  { version = "3.0.0";
    repo = "https://github.com/purescript-web/purescript-web-uievents.git";
    rev = "cc0fe9095d58a2b5011982e25b31beb4b3626ad6";

    dependencies =
      [ web-html 
      ];
  };

web-url =
  { version = "1.0.2";
    repo = "https://github.com/mjepronk/purescript-web-url.git";
    rev = "9d687d4832f6c10a1c531826cd2a830fd3efe5f7";

    dependencies =
      [ maybe partial prelude psci-support spec tuples 
      ];
  };

web-xhr =
  { version = "4.1.0";
    repo = "https://github.com/purescript-web/purescript-web-xhr.git";
    rev = "997b87caa6dcdf66b6db22f29f522d722559956b";

    dependencies =
      [ arraybuffer-types datetime http-methods web-dom web-file web-html 
      ];
  };

which =
  { version = "1.0.0";
    repo = "https://github.com/maxdeviant/purescript-which.git";
    rev = "c367e2657a4f8d7acf5c5ae0726a0973de7b1663";

    dependencies =
      [ arrays effect foreign maybe nullable options prelude 
      ];
  };

yaml-next =
  { version = "3.0.1";
    repo = "https://github.com/archaeron/purescript-yaml-next.git";
    rev = "5a698b08f27a5eb6d5dfefa16e8012dd9686f687";

    dependencies =
      [ argonaut-codecs argonaut-core effect foreign functions ordered-collections unsafe-coerce 
      ];
  };

yargs =
  { version = "4.0.0";
    repo = "https://github.com/paf31/purescript-yargs.git";
    rev = "a517d190f15e7817a3144a982663281f125d28e8";

    dependencies =
      [ console either exceptions foreign unsafe-coerce 
      ];
  };

zeta =
  { version = "6.0.0";
    repo = "https://github.com/athanclark/purescript-zeta.git";
    rev = "5bb441254f33e0b33f40451d2cb77e93316f9487";

    dependencies =
      [ aff arrays foreign-object refs 
      ];
  };

zeta-extra =
  { version = "0.0.1";
    repo = "https://github.com/athanclark/purescript-zeta-extra.git";
    rev = "7ddfac970576e55c996770ba45ba050aba911872";

    dependencies =
      [ js-timers web-html zeta 
      ];
  };

zipperarray =
  { version = "1.1.0";
    repo = "https://github.com/jamieyung/purescript-zipperarray.git";
    rev = "e48d7e4fb1657a77034217ff14ff75d3ccfb87f5";

    dependencies =
      [ arrays maybe naturals prelude strictlypositiveint 
      ];
  };

 }
