-- Find the last but one element of a list.
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

lastBut' [x, _] = x
lastBut' (x:xs) = lastBut' xs

main = do
    l <- getLine
    print $ lastBut' $ words l
    return ()