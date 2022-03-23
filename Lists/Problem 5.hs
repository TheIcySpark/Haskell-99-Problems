-- Reverse a list.
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

reverse' = reverse

main = do
    l <- getLine
    print $ reverse' $ words l
    return ()