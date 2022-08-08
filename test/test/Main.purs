module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Main (forTest)
import Murmur3 as Murmur3
import Other (suffix)
import Test.Assert (assert)

main :: Effect Unit
main = do
  assert $ Murmur3.hash 0 "murmur" == 1945310157
  log $ forTest <> suffix
