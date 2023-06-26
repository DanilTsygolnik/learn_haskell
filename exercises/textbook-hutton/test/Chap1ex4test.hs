module Chap1ex4test
  (main) where

import Test.Hspec
import Chap1ex4

main :: IO ()
main = hspec $ do
  describe "Chapter 1, exercise 4." $ do

    it "revQsort []       ---  []" $ do
      revQsort ( [] :: [Int] ) `shouldBe` ( [] :: [Int] )

    it "revQsort [1]      ---  [1]" $ do
        revQsort ( [1] :: [Int] ) `shouldBe` ( [1] :: [Int] )

    it "revQsort [1,2]    ---  [2,1]" $ do
        revQsort ( [1,2] :: [Int] ) `shouldBe` ( [2,1] :: [Int] )

    it "revQsort [2,1]    ---  [2,1]" $ do
        revQsort ( [2,1] :: [Int] ) `shouldBe` ( [2,1] :: [Int] )

    it "revQsort [1,2,3]  ---  [3,2,1]" $ do
        revQsort ( [1,2,3] :: [Int] ) `shouldBe` ( [3,2,1] :: [Int] )

    it "revQsort [1,3,2]  ---  [3,2,1]" $ do
        revQsort ( [1,3,2] :: [Int] ) `shouldBe` ( [3,2,1] :: [Int] )

    it "revQsort [2,1,3]  ---  [3,2,1]" $ do
        revQsort ( [2,1,3] :: [Int] ) `shouldBe` ( [3,2,1] :: [Int] )

    it "revQsort [2,3,1]  ---  [3,2,1]" $ do
        revQsort ( [2,3,1] :: [Int] ) `shouldBe` ( [3,2,1] :: [Int] )

    it "revQsort [3,1,2]  ---  [3,2,1]" $ do
        revQsort ( [3,1,2] :: [Int] ) `shouldBe` ( [3,2,1] :: [Int] )

    it "revQsort [3,2,1]  ---  [3,2,1]" $ do
        revQsort ( [3,2,1] :: [Int] ) `shouldBe` ( [3,2,1] :: [Int] )

