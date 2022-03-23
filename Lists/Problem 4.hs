-- Find the number of elements of a list.
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

length' = foldl (\acc _ -> acc + 1) 0

main = do
    l <- getLine
    print $ length' $ words l
    return ()