module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

foreign import isEven :: Int -> Boolean

logEven :: Int -> Effect Unit
logEven n =
  log $ show n <> " " <> (if isEven n then "is" else "isn't") <> " even"

main :: Effect Unit
main = do
 logEven 1
 logEven 2
 logEven 3
