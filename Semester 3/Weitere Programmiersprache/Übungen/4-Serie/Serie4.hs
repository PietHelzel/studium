module Serie4 where

import Data.List

testDoubles :: String -> Bool
testDoubles a = testDoubles2 (words a)

testDoubles2 :: [String] -> Bool
testDoubles2 [] = False
testDoubles2 [x] = False
testDoubles2 [x, y] = x == y
testDoubles2 a =
  (head a == a !! 1) || testDoubles2 (tail a)

listDoubles :: String -> [String]
listDoubles a = nub (listDoublesDup a) 

listDoublesDup :: String -> [String]
listDoublesDup [] = []
listDoublesDup [a] = []
listDoublesDup a =
  let w = words a
   in if head w `elem` tail w
        then head w : listDoubles (unwords (tail w))
        else listDoubles (unwords (tail w))
