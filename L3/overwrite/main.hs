overwrite x = let x = 2
              in
                let x = 3
                in
                  let x = 4
                  in
                    x

overwrite' x = (\x -> 
               (\x ->
                   (\x -> x) 4
                ) 3
               ) 2


main = do
    let res = overwrite 6
    print res

    let res' = overwrite' 6
    print res'

-- 4

