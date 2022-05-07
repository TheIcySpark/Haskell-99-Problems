

safeRoot x 
    | x >= 0 = Just $ sqrt x
    | otherwise = Nothing 

main = do
    print $ safeRoot $ -10
    return ()