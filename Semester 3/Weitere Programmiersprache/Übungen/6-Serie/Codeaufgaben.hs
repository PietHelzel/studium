-- ===== Aufgabe 2 =====
data NewList a = Empty | NewList (a, NewList a) deriving Show

newListFromList :: [a] -> NewList a
newListFromList [] = Empty
newListFromList (x:xs) = NewList (x, newListFromList xs)

newLength :: NewList a -> Int
newLength Empty = 0
newLength (NewList (x, xs)) = 1 + newLength xs

newDrop :: Int -> NewList a -> NewList a
newDrop 0 xs = xs
newDrop _ Empty = Empty
newDrop n (NewList (x, xs)) = newDrop (n-1) xs

(#) :: a -> NewList a -> NewList a
(#) a Empty = NewList (a, Empty)
(#) a (NewList (x, xs)) = NewList (a, NewList (x, xs))

newTake :: Int -> NewList a -> NewList a
newTake 0 x = Empty
newTake n (NewList (x, xs)) = x # newTake (n-1) xs

(...) :: NewList a -> NewList a -> NewList a
(...) Empty x = x
(...) x Empty = x
(...) (NewList (x, xs)) y = x # (xs ... y)
