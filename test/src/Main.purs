module Main where

import Prelude
import Prelude as Prelude
import Data.Array ((!!))
import Data.Maybe (Maybe, maybe)
import Effect (Effect)
import Effect as Effect
import Effect.Console (log)
import Dependency (a)
import IsEven (isEven)
import Node.Process as NP
import Node.Path (basename)

logEven :: Int -> Effect Unit
logEven n =
  log $ show n <> " " <> (if isEven n then "is" else "isn't") <> " even"

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
  log a
