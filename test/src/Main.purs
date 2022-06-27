module Main where

import Prelude
import Prelude as Prelude
import Effect (Effect)
import Effect as Effect
import Effect.Console (log)
import Dependency (a)
import IsEven (isEven)
import IsNumber (isNumber)
import Nested (foreign1, foreign2)

isIsnt :: Boolean -> (String -> String) ->  String
isIsnt b f = f (if b then "is" else "isn't")

logEven :: Int -> Effect Unit
logEven n =
  log $ isIsnt (isEven n) \ii -> show n <> " " <> ii  <> " even"

-- a comment for testing purposes
main :: Effect Unit
main = do
  log Prelude.override
  log Effect.override
  logEven 2
  logEven 3
  log $ isIsnt (isNumber 1.2) \ii -> "1.2 " <> ii <> " a number"
  foreign1
  foreign2
  log a
