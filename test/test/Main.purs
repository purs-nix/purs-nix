module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Main (forTest)
import MarkdownIt as Md
import Other (suffix)
import Test.Assert (assert)

main :: Effect Unit
main = do
  md <- Md.renderString "# md"
  assert $ md == "<h1>md</h1>\n"
  log $ forTest <> suffix
