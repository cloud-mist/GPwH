-- first-class func , 和其他数据没有任何不同。func能作为参数，也能被返回。

ifEven myFunc x =
  if even x
    then myFunc x
    else x

inc x = x + 1

double x = x * 2

square x = x ^ 2

ifEvenInc = ifEven inc

ifEvenDouble = ifEven double

ifEvenSquare = ifEven square

main = do
  let res1 = ifEvenInc 3
  print res1 -- 3
  let res2 = ifEvenInc 4
  print res2 -- 5

  -- 函数优先级总是高于运算符
  let res3 = inc 2 * 3
  print res3 -- 9
