module Main where

import Prelude
import Data.Array ((!!))
import Data.Maybe (Maybe, maybe)
import Effect (Effect)
import Effect.Console (log)
import Dependency (a)
import Node.Process as NP
import Node.Path (basename)

logMaybe :: Maybe String -> Effect Unit
logMaybe = maybe (log "uh-oh") log

-- a comment for testing purposes
main :: Effect Unit
main = do
  argv <- NP.argv
  logMaybe $ basename <$> (argv !! 1)
  logMaybe $ argv !! 2
  log a
