module Serie4 where

testDoubles :: String -> Bool
testDoubles a = testDoubles2 (words a)

testDoubles2 :: [String] -> Bool
testDoubles2 [] = False
testDoubles2 [x] = False
testDoubles2 (x : xs) = (x == head xs) || testDoubles2 xs

listDoubles :: String -> [String]
listDoubles a = listDoubles2 (words a)

listDoubles2 :: [String] -> [String]
listDoubles2 [] = []
listDoubles2 [x] = []
listDoubles2 (x : xs) = if x == head xs then x : listDoubles2 xs else listDoubles2 xs
