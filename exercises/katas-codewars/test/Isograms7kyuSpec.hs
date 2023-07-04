module Isograms7kyuSpec
    (main)
    where

import Test.Hspec
import Isograms7kyu

main :: IO ()
main = hspec $ do
  describe "Unit tests" $ do

    it "isIsogram \"\"                  ---  True" $ do
      isIsogram "" `shouldBe` True 

    it "isIsogram \"moose\"             ---  False" $ do
      isIsogram "moose" `shouldBe` False 

    it "isIsogram \"moOse\"             ---  False" $ do
      isIsogram "moOse" `shouldBe` False 

    it "isIsogram \"Dermatoglyphics\"   ---  True" $ do
      isIsogram "Dermatoglyphics" `shouldBe` True 
