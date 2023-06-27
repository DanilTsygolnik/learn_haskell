module Chap2ex5test
  (main) where

import Test.Hspec
import Chap2ex5

main :: IO ()
main = hspec $ do
  describe "Chapter 2, exercise 4." $ do

    it "initV1 ([1] :: [Int])      ---  ([] :: [Int])" $ do
      initV1 ([1] :: [Int]) `shouldBe` ([] :: [Int])

    it "initV1 ([1,2] :: [Int])    ---  ([1] :: [Int])" $ do
      initV1 ([1,2] :: [Int]) `shouldBe` ([1] :: [Int])

    it "initV1 ([1..10] :: [Int])  ---  ([1..9] :: [Int])" $ do
      initV1 ([1..10] :: [Int]) `shouldBe` ([1..9] :: [Int])

    it "initV2 ([1] :: [Int])      ---  ([] :: [Int])" $ do
      initV2 ([1] :: [Int]) `shouldBe` ([] :: [Int])

    it "initV2 ([1,2] :: [Int])    ---  ([1] :: [Int])" $ do
      initV2 ([1,2] :: [Int]) `shouldBe` ([1] :: [Int])

    it "initV2 ([1..10] :: [Int])  ---  ([1..9] :: [Int])" $ do
      initV2 ([1..10] :: [Int]) `shouldBe` ([1..9] :: [Int])
