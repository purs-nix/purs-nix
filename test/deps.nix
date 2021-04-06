{ console =
    builtins.fetchGit
       { url = "https://github.com/purescript/purescript-console.git";
         rev = "d7cb69ef8fed8a51466afe1b623868bb29e8586e";
       };

  effect =
    builtins.fetchGit
       { url = "https://github.com/purescript/purescript-effect.git";
         rev = "985d97bd5721ddcc41304c55a7ca2bb0c0bfdc2a";
       };

  prelude =
    builtins.fetchGit
       { url = "https://github.com/purescript/purescript-prelude.git";
         rev = "37717776a3693fd5a0a614239f7de1285cba8cdf";
       };
}
