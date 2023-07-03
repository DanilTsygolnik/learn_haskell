module HighAndLow7kyuSpec
    (main)
    where

import Test.Hspec
import HighAndLow7kyu

main :: IO ()
main = hspec $ do
  describe "Unit tests" $ do

    it "highAndLow \"\"            ---  \"\"" $ do
      highAndLow "" `shouldBe` ""

    it "highAndLow \"1\"           ---  \"1 1\"" $ do
      highAndLow "1" `shouldBe` "1 1"

    it "highAndLow \"1 9 3 4 -5\"  ---  \"9 -5\"" $ do
      highAndLow "1 9 3 4 -5" `shouldBe` "9 -5"
