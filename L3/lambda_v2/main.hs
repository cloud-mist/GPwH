-- let version

sumSquareOrSquaresum x y = let sumSquare = (x^2 + y^2)
                               squareSum = (x+y)^2
                           in
                            if sumSquare > squareSum
                               then sumSquare
                               else squareSum


main = do
    let res = sumSquareOrSquaresum 1 2
    print res

-- 9
