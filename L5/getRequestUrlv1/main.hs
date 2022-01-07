-- v1 创建一个函数，然后返回一个函数，等待一些参数的函数(lambda表达式)。

-- 组成一个URL
getRequestUrl host apiKey resource id =
  host
    ++ "/"
    ++ resource
    ++ "/"
    ++ id
    ++ "?token="
    ++ apiKey

getHostRequestBuilder host = (\apiKey resource id -> getRequestUrl host apiKey resource id)

exampleUrlBuilder = getHostRequestBuilder "http://example.com"

genApiRequestBuilder hostBuilder apiKey =
  ( \resource id ->
      hostBuilder apiKey resource id
  )

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hask"

main = do
  let res = myExampleUrlBuilder "book" "1234"
  print res
