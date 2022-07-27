module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Main as Main
import Test.Assert (assert)

main :: Effect Unit
main = do
  assert true
  log Main.forTest
