-- Generalized applicatorFunc
applicatorFunc :: [Int] -> Char -> Float
applicatorFunc xs s =
    if s == 's'
        then fromIntegral (sum xs)
        else fromIntegral (sum xs) / fromIntegral (length xs)

main = do
    putStrLn "Enter the start of the range (a):"
    aStr <- getLine
    putStrLn "Enter the end of the range (b):"
    bStr <- getLine
    putStrLn "Enter 's' for sum or anything else for average:"
    op <- getLine

    let a = read aStr :: Int
    let b = read bStr :: Int
    let inpList = [a..b]

    let result = applicatorFunc inpList (head op)
    putStrLn ("Result = " ++ show result)
