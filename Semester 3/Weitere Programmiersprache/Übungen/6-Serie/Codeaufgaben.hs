-- ===== Aufgabe 1 =====
type KT = Double
type Parabel = (KT, KT, KT)

eval :: Parabel -> KT -> KT
eval (a,b,c) x = a*x*x + b*x + c

derive :: Parabel -> Parabel
derive (a,b,c) = (0, 2*a, b)

slope :: Parabel -> KT -> KT
slope p = eval (derive p)

-- ===== Aufgabe 2 =====
data NewList a = Empty | NewList (a, NewList a)

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

-- ===== Aufgabe 2 Alternativ =====
data NewList' a = Empty' | Cons a (NewList' a)

-- Ordnet der NewList' die custom show Funktion zu
instance (Show a) => Show (NewList' a) where show = printList

newLength' :: NewList' a -> Int
newLength' Empty' = 0
newLength' (Cons a xs) = 1 + newLength' xs

newDrop' :: Int -> NewList' a -> NewList' a
newDrop' 0 xs = xs
newDrop' _ Empty' = Empty'
newDrop' n (Cons _ xs) = newDrop' (n-1) xs

-- newTake' wurde ausgelassen, ist aber trivial

(##) :: a -> NewList' a -> NewList' a
(##) = Cons

list = 2 ## (1 ## Empty')

-- Konkatenation mit (...) wurde weggelassen

-- Nicht in der Aufgabenstellung, aber nützlich
printList :: Show a => NewList' a -> String
printList a = show (toNormalList a)

toNormalList :: NewList' a -> [a]
toNormalList Empty' = []
toNormalList (Cons x xs) = x : toNormalList xs

-- ===== Aufgabe 3 =====

data MyTree a = Node a (MyTree a) (MyTree a) | Null deriving Show

tree = Node 5 (Node 4 Null Null) (Node 11 (Node 10 Null Null) (Node 100 Null Null)) 

insertIntoTree :: (Ord a) => MyTree a -> a -> MyTree a
insertIntoTree Null n = Node n Null Null
insertIntoTree (Node m left right) n 
    | n > m = Node m left (insertIntoTree right n)
    | n < m = Node m (insertIntoTree left n) right
    | n == m = Node m left right

binarySearch :: (Ord a) => MyTree a -> a -> Bool
binarySearch Null a = False
binarySearch (Node x left right) a
    | a == x = True
    | a > x = binarySearch right a
    | a < x = binarySearch left a
