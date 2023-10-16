-- ##### Aufgabe 1 #####

myLength :: [a] -> Integer
myLength a = sum [1 | x <- a]

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x : xs) = x + mySum xs

stringConcat :: [String] -> String
stringConcat [] = ""
stringConcat (x : xs) = x ++ stringConcat xs

-- ##### Aufgabe 2 #####

fun3 :: Eq a => (a, b, a) -> (b, a, Bool)
fun3 (a, b, c) = (b, a, a /= c)

apply :: (a -> b) -> a -> b
apply f = f

applyList :: (a -> b) -> [a] -> [b]
applyList = map

applyString :: (Char -> Char) -> [Char] -> [Char]
applyString = map

fun4 :: Num a => a -> a -> b -> (a, b)
fun4 a b c = (a + b, c)

fun5 :: Num a => p -> [a -> a]
fun5 p = [(+) 1]

-- ##### Aufgabe 3 #####
intersect :: Eq b => (a -> b) -> (a -> b) -> [a] -> [(a, b)]
intersect f g d = [(x, f x) | x <- d, f x == g x]

higherFunction :: Ord b => (a -> b) -> (a -> b) -> a -> b
higherFunction f g x = max (f x) (g x)

nospace :: String -> (String, Integer)
nospace s =
  let a = [x | x <- s, x /= ' ']
   in (a, toInteger (length s - length a))

-- ##### Aufgabe 4 #####
input = [1, -5, 3, 0, 11, 3, 25, 100, 7]

l1 = [x | x <- input, x >= 1, x <= 7]

l2 = [x | x <- [1 .. 100], mod x 6 == 0, mod (x - 2) 4 == 0]

l3 = [z | x <- input, let z = x ^ 2, z > 100, mod z 2 == 1]

l4 = [elem x l1 | x <- input]

l5 = length [x | x <- l2, mod (x - 1) 5 == 0]

-- ##### Aufgabe 5 #####
