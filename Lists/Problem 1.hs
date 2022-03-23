-- Find the last element of a list.
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

last' [x] = x
last' (x:xs) = last' xs

main = do
    l <- getLine
    print $ last' $ words l
    return ()