module Main where

import Prelude
import Prelude as Prelude
import Effect (Effect)
import Effect as Effect
import Effect.Console (log)
import Dependency (a)

main :: Effect Unit
main = do
  log Prelude.override
  log Effect.override
  log a
