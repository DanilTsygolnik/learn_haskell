module IsTriangle8kyuSpec
  (main) where

import Test.Hspec
import IsTriangle8kyu

main :: IO ()
main = hspec $ do
  describe "Unit tests" $ do

    it "isTriangle 8 3 4  ---  False" $ do
      isTriangle (8::Int) (3::Int) (4::Int) `shouldBe` False

    it "isTriangle 3 8 4  ---  False" $ do
      isTriangle (3::Int) (8::Int) (4::Int) `shouldBe` False

    it "isTriangle 3 4 8  ---  False" $ do
      isTriangle (3::Int) (4::Int) (8::Int) `shouldBe` False

    it "isTriangle 0 3 4  ---  False" $ do
      isTriangle (0::Int) (3::Int) (4::Int) `shouldBe` False

    it "isTriangle 3 0 4  ---  False" $ do
      isTriangle (3::Int) (0::Int) (4::Int) `shouldBe` False

    it "isTriangle 3 4 0  ---  False" $ do
      isTriangle (3::Int) (4::Int) (0::Int) `shouldBe` False

    it "isTriangle 3 4 5  ---  True" $ do
      isTriangle (3::Int) (4::Int) (5::Int) `shouldBe` True
