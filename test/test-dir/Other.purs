module Other where

import Prelude
import Effect (Effect)
import Test.Assert (assert)

suffix :: String
suffix = "ing"

test :: Effect Unit
test = assert true
