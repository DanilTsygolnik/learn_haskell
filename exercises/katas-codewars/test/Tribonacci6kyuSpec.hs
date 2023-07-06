module Tribonacci6kyuSpec
    ( main )
    where

import Test.Hspec
import Tribonacci6kyu

main :: IO ()
main = hspec $ do
  describe "Unit tests" $ do

    it "tribonacci (0,1,2) 0  ---  []" $ do
      tribonacci (0,1,2) 0 `shouldBe` ([] :: [Int])

    it "tribonacci (0,1,2) 1  ---  [0]" $ do
      tribonacci (0,1,2) 1 `shouldBe` ([0] :: [Int])

    it "tribonacci (0,1,2) 2  ---  [0,1]" $ do
      tribonacci (0,1,2) 2 `shouldBe` ([0,1] :: [Int])

    it "tribonacci (0,1,2) 3  ---  [0,1,2]" $ do
      tribonacci (0,1,2) 3 `shouldBe` ([0,1,2] :: [Int])

    it "tribonacci (0,1,2) 4  ---  [0,1,2,3]" $ do
      tribonacci (0,1,2) 4 `shouldBe` ([0,1,2,3] :: [Int])

    it "tribonacci (0,1,2) 5  ---  [0,1,2,3,6]" $ do
      tribonacci (0,1,2) 5 `shouldBe` ([0,1,2,3,6] :: [Int])
