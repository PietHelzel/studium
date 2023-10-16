module Serie4 where

testDoubles :: String -> Bool
testDoubles a = testDoubles2 (words a)

testDoubles2 :: [String] -> Bool
testDoubles2 [] = False
testDoubles2 [x] = False
testDoubles2 [x, y] = x == y
testDoubles2 a =
    if head a == a!!1 then True
    else testDoubles2 (tail a)

listDoubles :: String -> [String]
listDoubles a = let w = words a in
    [w!!x | x <- [0..((length w) - 1)], w!!x == w!!(x+1)]
