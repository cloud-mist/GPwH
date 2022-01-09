-- foldr

myFoldr f init [] = init
myFoldr f init (x : xs) = f x rightRes
  where
    rightRes = myFoldr f init xs
