module Main where

import Prelude
import Prelude as Prelude
import Data.Array ((!!))
import Data.Maybe (Maybe, maybe)
import Effect (Effect)
import Effect as Effect
import Effect.Console (log)
import Dependency (a)
import IsNumber (isNumber)
import Nested (foreign1, foreign2)
import Node.Process as NP
import Node.Path (basename)
import PursNixBuildTest as PursNixBuildTest

isIsnt :: Boolean -> (String -> String) ->  String
isIsnt b f = f (if b then "is" else "isn't")

logEven :: Int -> Effect Unit
logEven n =
  log $ isIsnt (isEven n) \ii -> show n <> " " <> ii <> " even"

logMaybe :: Maybe String -> Effect Unit
logMaybe = maybe (log "uh-oh") log

-- a comment for testing purposes
main :: Effect Unit
main = do
  argv <- NP.argv
  logMaybe $ basename <$> (argv !! 1)
  logMaybe $ argv !! 2
  log Prelude.override
  log Effect.override
  logEven 2
  logEven 3
  log $ isIsnt (isNumber 1.2) \ii -> "1.2 " <> ii <> " a number"
  foreign1
  foreign2
  PursNixBuildTest.log
  log a

forTest :: String
forTest = "testing"
