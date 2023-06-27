module Chap2ex4test
  (main) where

import Test.Hspec
import Chap2ex4

main :: IO ()
main = hspec $ do
  describe "Chapter 2, exercise 4." $ do

    it "lastV1 ([1] :: [Int])      ---  (1 :: Int)" $ do
      lastV1 ([1] :: [Int]) `shouldBe` (1 :: Int)

    it "lastV1 ([1,2] :: [Int])    ---  (2 :: Int)" $ do
      lastV1 ([1,2] :: [Int]) `shouldBe` (2 :: Int)

    it "lastV1 ([1..10] :: [Int])  ---  (10 :: Int)" $ do
      lastV1 ([1..10] :: [Int]) `shouldBe` (10 :: Int)
