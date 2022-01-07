-- pattern matching

sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount n = "a bunch"

main = do
  let res1 = sayAmount 100
      res2 = sayAmount 1
  print (res1, res2)

-- ("a bunch","one")
