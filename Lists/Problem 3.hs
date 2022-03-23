-- Find the K'th element of a list. The first element in the list is number 1.
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

elementAt = (!!)

main = do
    l <- getLine
    p <- getLine
    print $ elementAt (words l) (read p :: Int)
    return ()