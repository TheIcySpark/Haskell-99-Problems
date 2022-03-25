-- Delete consecutive duplicates
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

compress [x] = [x]
compress (x:y:xs) =
    if x == y then
        compress $ y:xs
    else
        x : compress (y:xs)


main = do
    input <- getLine
    print $ compress input
    return ()