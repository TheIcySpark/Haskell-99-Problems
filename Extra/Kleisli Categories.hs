import Data.Char (toUpper)

type Writer a = (a, String)

(>=>) :: (a -> Writer b) -> (b -> Writer c) -> (a -> Writer c)
m1 >=> m2 = \x ->
    let 
        (y, s1) = m1 x
        (z, s2) = m2 y
    in
        (z, s1 ++ s2)

writerConstructor :: a -> Writer a
writerConstructor x = (x, "")

upCase :: String -> Writer String
upCase s = (map toUpper s, "Log: To upper \n")

toWords :: String -> Writer [String]
toWords s = (words s, "Log: To words \n")



process :: String -> Writer [String]
process = upCase >=> upCase >=> toWords

main = do
    let r = process "Hola mundo todo es chistoso"
    print r
    return ()