module Main where

import Prelude
import Data.Array ((!!))
import Data.Maybe (Maybe, maybe)
import Effect (Effect)
import Effect.Console (log)
import Dependency (a)
import IsNumber (isNumber)
import Nested (foreign1, foreign2)
import Node.Process as NP
import Node.Path (basename)

isIsnt :: Boolean -> (String -> String) ->  String
isIsnt b f = f (if b then "is" else "isn't")

logMaybe :: Maybe String -> Effect Unit
logMaybe = maybe (log "uh-oh") log

-- a comment for testing purposes
main :: Effect Unit
main = do
  argv <- NP.argv
  logMaybe $ basename <$> (argv !! 1)
  logMaybe $ argv !! 2
  log $ isIsnt (isNumber 1.2) \ii -> "1.2 " <> ii <> " a number"
  foreign1
  foreign2
  log a

forTest :: String
forTest = "test"
