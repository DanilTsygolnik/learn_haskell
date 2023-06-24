module Chap1ex3test
  (main) where

import Test.Hspec
import Chap1ex3

main :: IO ()
main = hspec $ do
  describe "Chapter 1, exercise 3." $ do

    it "productInner []      --- 1" $ do
      productInner [] `shouldBe` ( 1 :: Int )

    it "productInner [2]     --- 2" $ do
      productInner [2] `shouldBe` ( 2 :: Int )

    it "productInner [2,3]   --- 6" $ do
      productInner [2,3] `shouldBe` ( 6 :: Int )

    it "     product []      --- 0" $ do
      Chap1ex3.product [] `shouldBe` ( 0 :: Int )

    it "     product [2,3,4] --- 24" $ do
      Chap1ex3.product [2,3,4] `shouldBe` ( 24 :: Int )
