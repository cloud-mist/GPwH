name = [("Ian", "Curtis"), ("Bernard", "Sumner"), ("Peter", "Hook"), ("Stephen", "Morris")]

addressLetter name location = nameText ++ " - " ++ location
  where
    nameText = fst name ++ " " ++ snd name

main = do
  let res = addressLetter ("Bob", "Smith") "PO Box 1234 - San Francisco, CA, 94111"
  print res
