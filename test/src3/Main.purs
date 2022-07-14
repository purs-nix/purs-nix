module Main where

import Prelude
import Effect (Effect)
import Effect.Console (logShow)
import Murmur3 as Murmur3

-- a comment for testing purposes
main :: Effect Unit
main = logShow $ Murmur3.hash 0 "murmur"
