-- 从两个递归函数归纳出map

-- 1.
addAnA [] = []
addAnA (x : xs) = ("a " ++ x) : addAnA xs

-- 2.
squareAll [] = []
squareAll (x : xs) = x ^ 2 : squareAll xs

-- map
myMap f [] = []
myMap f (x : xs) = (f x) : myMap f xs

--
main = do
  let alist = [1 .. 10]
      res1 = myMap (^ 2) alist
      res2 = map (^ 2) alist
  print res1
  print res2

-- [1,4,9,16,25,36,49,64,81,100]
-- [1,4,9,16,25,36,49,64,81,100]
