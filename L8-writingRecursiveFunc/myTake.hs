-- take

-- 1.
myTake _ [] = []
myTake 0 _ = []
-- 2.
myTake n (x : xs) = x : rest
  where
    rest = myTake (n - 1) xs
