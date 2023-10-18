import Data.Char

nospace :: String -> (String, Integer)
nospace s = let noWhitespace = [x | x <- s, x /= ' ']
            in (noWhitespace, toInteger (length s - length noWhitespace))

deleteVowels :: [Char] -> [Char]
deleteVowels a = [x | x <- a, notElem x ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']]

countElems :: Eq a => [a] -> [a] -> Int
countElems a b = length [x | x <- a, elem x b]

multipleElems :: [Integer] -> [Integer]
multipleElems [] = []
multipleElems [x] = []
multipleElems (x:xs) | elem x xs = x:multipleElems xs
                     | otherwise = multipleElems xs

descending :: Ord a => [a] -> Bool
descending [] = True
descending [a] = True
descending (x:xs) = x > head xs && descending xs

myToLowerCase :: [Char] -> [Char]
myToLowerCase = map myToLowerCaseH

myToLowerCaseH :: Char -> Char
myToLowerCaseH a | ord a >= 65 && ord a <= 90 = chr (ord a + 32)
                 | otherwise = a

smallestSum :: [Integer] -> Integer
smallestSum a = minimum (threeSums a)

threeSums :: [Integer] -> [Integer]
threeSums [] = []
threeSums [a] = []
threeSums [a, b] = []
threeSums (x:y:z:xs) = (x + y + z) : threeSums (y:z:xs)
