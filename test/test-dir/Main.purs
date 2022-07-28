module Test.Test where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Main (forTest)
import Other (suffix)
import Test.Assert (assert)

main :: Effect Unit
main = do
  assert true
  log $ forTest <> suffix
