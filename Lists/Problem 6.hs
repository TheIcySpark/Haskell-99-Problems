-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

isPalindrome x = x == reverse x

main = do
    l <- getLine
    print $ isPalindrome $ words l
    return ()