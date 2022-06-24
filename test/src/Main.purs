module Main where

import Prelude
import Prelude as Prelude
import Effect (Effect)
import Effect as Effect
import Effect.Console (log)
import Dependency (a)
import IsEven (isEven)

logEven :: Int -> Effect Unit
logEven n =
  log $ show n <> " " <> (if isEven n then "is" else "isn't") <> " even"

-- a comment for testing purposes
main :: Effect Unit
main = do
  log Prelude.override
  log Effect.override
  logEven 2
  logEven 3
  log a
