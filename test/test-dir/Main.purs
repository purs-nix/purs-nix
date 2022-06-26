module Test.Test where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Test.Assert (assert)

main :: Effect Unit
main = do
  assert true
  log "testing"
