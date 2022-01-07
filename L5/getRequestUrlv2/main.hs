-- v2 使用 partial application

getRequestUrl host apiKey resource id =
  host
    ++ "/"
    ++ resource
    ++ "/"
    ++ id
    ++ "?token="
    ++ apiKey

exampleUrlBuilder = getRequestUrl "http://exmaple.com"

myExampleUrlBuilder = exampleUrlBuilder "1337ask"

main = do
  let res = myExampleUrlBuilder "book" "1234"
  print res

--  "http://exmaple.com/book/1234?token=1337ask"
