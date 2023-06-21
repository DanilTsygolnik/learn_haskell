module MySumSpec where

import Ch1ex2
import Test.Hspec

{- Unit tests for `mySum` function -}
spec :: Spec
spec = describe "mySum" $ do
          context "mySum []" $
             it "should be 0" $
                mySum [] `shouldBe` 0

main :: IO ()
main = hspec spec
