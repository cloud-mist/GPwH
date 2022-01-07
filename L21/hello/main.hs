helloPerson :: String -> String
helloPerson name = "hello" ++ " " ++ "name" ++ "!"

main :: IO()
main = do
    putStrLn "hello! what's your name?"
    name <- getLine
    
    let statement = helloPerson name
    putStrLn statement
