module Class where

import Prelude

import Effect (Effect)
import Test.Assert (assert')

import Class2 as Class2

foreign import data Instance :: Type
foreign import data Constructor :: Type
foreign import instance_ :: Instance
foreign import constructor :: Constructor
foreign import instanceOf :: forall a b. a -> b -> Boolean

sameInstances :: Effect Unit
sameInstances = do
  assert' "instanceOf intance' constructor"
    (instanceOf instance_ constructor)
  assert' "instanceOf Class2.intance' Class2.constructor"
    (instanceOf Class2.instance_ Class2.constructor)
  assert' "instanceOf intance' Class2.constructor"
    (instanceOf instance_ Class2.constructor)
  assert' "instanceOf Class2.intance' constructor"
    (instanceOf Class2.instance_ constructor)
