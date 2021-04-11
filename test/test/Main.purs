module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Test.Assert (assert, assert')

main :: Effect Unit
main = do
  assert true
  log "❄"
  assert' "this is supposed to fail" false
