module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Dependency (a)

-- a comment for testing purposes
main :: Effect Unit
main = do
  log a
