module Node where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Node.Process (version)

main :: Effect Unit
main = log version
