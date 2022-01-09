-- 一行一行不断地读取输入，并将读进来的字反过来输出到屏幕上, 在输入空白行的时候停止。
main = do
  line <- getLine
  if null line
    then return ()
    else do
      putStrLn $ reverseWords line
      main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

-- . 连接各个函数
-- words       ：以空格分割，存入list
-- map reverse ：将所有单词反转
-- unwords     ：组合
