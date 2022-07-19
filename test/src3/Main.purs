module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import MarkdownIt as Md

-- a comment for testing purposes
main :: Effect Unit
main = log =<< Md.renderString "# md"
