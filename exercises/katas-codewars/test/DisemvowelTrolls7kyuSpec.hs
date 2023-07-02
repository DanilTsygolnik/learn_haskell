module DisemvowelTrolls7kyuSpec
    (main)
    where

import Test.Hspec
import DisemvowelTrolls7kyu

main :: IO ()
main = hspec $ do
  describe "Unit tests" $ do

    it "disemvowel \"\"            ---  \"\"" $ do
      disemvowel "" `shouldBe` ""

    it "disemvowel \"aeiou\"       ---  \"\"" $ do
      disemvowel "aeiou" `shouldBe` ""

    it "disemvowel \"AEIOU\"       ---  \"\"" $ do
      disemvowel "AEIOU" `shouldBe` ""

    it "disemvowel \"xAyEzIvOwU\"  ---  \"xyzvw\"" $ do
      disemvowel "AEIOU" `shouldBe` ""
