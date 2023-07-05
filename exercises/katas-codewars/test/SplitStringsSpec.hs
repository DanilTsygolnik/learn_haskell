module SplitStringsSpec
(main)
where

import Test.Hspec
import SplitStrings

main :: IO ()
main = hspec $ do
  describe "Unit tests" $ do

    it "solution \"\"            ---  []" $ do
      solution "" `shouldBe` ([] :: [String])

    it "solution \"a\"           ---  [\"a_\"]" $ do
      solution "a" `shouldBe` (["a_"] :: [String])

    it "solution \"ab\"          ---  [\"ab\"]" $ do
      solution "ab" `shouldBe` (["ab"] :: [String])

    it "solution \"abc\"         ---  [\"ab\", \"c_\"]" $ do
      solution "abc" `shouldBe` (["ab", "c_"] :: [String])

    it "solution \"abcd\"        ---  [\"ab\", \"cd\"]" $ do
      solution "abcd" `shouldBe` (["ab", "cd"] :: [String])
