-- ===== Aufgabe 3 =====

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] [] = []
merge a [] = a
merge [] a = a
merge a b =
  if head a <= head b
    then head a : merge b (tail a)
    else head b : merge a (tail b)

half :: [a] -> ([a], [a])
half [] = ([], [])
half [a] = ([a], [])
half a =
  let h = half (drop 2 a)
   in (head a : fst h, a !! 1 : snd h)

msort :: Ord a => [a] -> [a]
msort [] = []
msort [a] = [a]
msort a =
  let h = half a
   in merge (msort (fst h)) (msort (snd h))

-- ===== Aufgabe 4 =====

qsortSplit :: Ord a => [a] -> (a, [a], [a])
qsortSplit a = (head a, [x | x <- tail a, x < head a], [x | x <- tail a, x >= head a])

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [a] = [a]
qsort a =
  let (p, x, y) = qsortSplit a
   in qsort x ++ (p : qsort y)

-- ===== Aufgabe 5 =====

myTake :: Integer -> [a] -> [a]
myTake 0 x = []
myTake n (x:xs) | n <= toInteger (length xs + 1) = x : myTake (n-1) xs
                | otherwise = error "Cannot take more elements than list length"

myDrop :: Integer -> [a] -> [a]
myDrop 0 x = x
myDrop n (x:xs) | n <= toInteger (length xs + 1) = myDrop (n-1) xs
                | otherwise = error "Cannot drop more elements than list length"

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f a = [x | x <- a, f x]

-- ===== Aufgabe 6 =====

moreOften :: (Eq a, Ord a) => a -> a -> [a] -> Bool
moreOften a b xs = let as = [x | x <- xs, x == a]
                       bs = [x | x <- xs, x == b]
                   in length as > length bs

isPrime :: Integer -> Bool
isPrime a = sieve a [2..a]

sieve :: (Integral a) => a -> [a] -> Bool
sieve _ [] = False
sieve a (x:xs) | a == x = True
               | otherwise = sieve a (removeMultiples x xs)

removeMultiples :: (Integral a) => a -> [a] -> [a]
removeMultiples x xs = [a | a <- xs, mod a x /= 0]
