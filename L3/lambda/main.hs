-- \x -> x 2  ,\声明这是一个lambda表达式，参数 -> 函数体 代入的参数

main = do
  let a = sumSquareOrSquareSum 1 2
  print a

-- 9

sumSquareOrSquareSum x y =
  ( \sumSquare squareSum ->
      if sumSquare > squareSum
        then sumSquare
        else squareSum
  )
    (x ^ 2 + y ^ 2)
    ((x + y) ^ 2)
