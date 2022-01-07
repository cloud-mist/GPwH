import Data.Binary ()
import Data.List
import Distribution.ModuleName (main)

names =
  [ ("Ian", "Curtis"),
    ("Bernard", "Sumner"),
    ("Peter", "Hook"),
    ("Stephen", "Morris"),
    ("Ean", "Curtis")
  ]

compareFunc name1 name2
  | lastName1 > lastName2 = GT
  | lastName1 < lastName2 = LT
  | firstName1 < firstName2 = LT
  | firstName1 > firstName2 = GT
  | otherwise = EQ
  where
    lastName1 = snd name1
    lastName2 = snd name2
    firstName1 = fst name1
    firstName2 = fst name2

main = do
  let res = sortBy compareFunc names
  print res
