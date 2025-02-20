--create inpFunc
inpFunc a b = [a..b] 

--Define applicatorFunc
applicatorFunc inp s = 
    if s == 's' 
        then fromIntegral (sum inp) 
        else fromIntegral (sum inp) / fromIntegral (length inp)

main = do
    let a = 3
    let b = 7
    let result = applicatorFunc (inpFunc a b) 'a'  -- Call applicatorFunc with [a..b] and 'a'
    putStrLn ("Result = " ++ show result)