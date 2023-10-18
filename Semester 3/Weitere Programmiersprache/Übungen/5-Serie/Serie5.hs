module Serie5 where

isMonotonous :: Ord a => [a] -> Bool
isMonotonous [] = True
isMonotonous [a] = True
isMonotonous (x:xs) | x <= head xs = isMonotonousRising xs
                    | otherwise = isMonotonousDeclining xs

isMonotonousRising :: Ord a => [a] -> Bool
isMonotonousRising [] = True
isMonotonousRising [a] = True
isMonotonousRising (x:xs) = x <= head xs && isMonotonousRising xs

isMonotonousDeclining :: Ord a => [a] -> Bool
isMonotonousDeclining [] = True
isMonotonousDeclining [a] = True
isMonotonousDeclining (x:xs) = x >= head xs && isMonotonousDeclining xs

isAlternating :: (Ord a, Num a) => [a] -> Bool
isAlternating [] = False
isAlternating [a] = False
isAlternating [a, b] = signum a == -(signum b)
isAlternating (x:xs) = signum x == -(signum (head xs)) && isAlternating xs

isConstant :: Eq a => [a] -> Bool
isConstant [] = True
isConstant [a] = True
isConstant (x:xs) = x == head xs && isConstant xs

monotoneFolge = [2,3,5,7,11,13]
alternierendeFolge = [1,-2,3,-4,5,-6]
konstanteFolge = [1,1,1,1,1,1,1,1]
