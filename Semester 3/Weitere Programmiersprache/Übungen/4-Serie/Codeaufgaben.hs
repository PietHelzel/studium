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

qsortSplit :: Ord a => [a] -> (a, [a], [a])
qsortSplit a = (head a, [x | x <- tail a, x < head a], [x | x <- tail a, x >= head a])

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [a] = [a]
qsort a =
  let (p, x, y) = qsortSplit a
   in qsort x ++ (p : qsort y)
