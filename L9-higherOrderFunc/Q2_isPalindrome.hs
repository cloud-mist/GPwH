import Data.Char (toLower)

f text = processedText == reverse processedText
  where
    noSpaceText = filter (/= ' ') text
    processedText = map toLower noSpaceText

main = do
  let s1 = "A man a plan a canal Panama"
      s2 = "abc"
  print $ f s1
  print $ f s2

-- True
-- False
