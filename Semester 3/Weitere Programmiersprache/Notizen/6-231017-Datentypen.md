## Typabkürzungen (type)

`type` erzeugt einen "Type-Alias", der einem Typ
einfach einen anderen Namen gibt.

```haskell
type Point3 = (Double, Double, Double)
type Translation = Point3 -> Point3

-- Rekursive Definitionen sind nicht möglich!
type Tree = (Char, [Tree])

-- Typen können parameterisiert werden.
type Pair a = (a, a)
```

`type` bietet aber keine Typsicherheit. Dafür kann dann `data` verwendet werden:

```haskell
-- Die rechte Seite defininiert den Konstruktor. Dieser kann Argumente annehmen (aber auch nicht)
-- Mit "deriving" können Typklassen abgeleitet werden.
data Article = Article String Int deriving (Show)

a1 = Article "Laptop" 1000

-- Pattern Matching auf Data
print :: Article -> String
print (Article name preis) = "Artikel " ++ name ++ " kostet " ++ show preis ++ " Euro"

-- Es können mehrere Konstruktoren definiert werden.
-- Wenn alle Konstrukturen keine Argumente haben, dann werden sie als Enumeration bezeichnet.
data Bool = True | False

-- Enumeration für Bewegung in Himmelsrichtungen
data Dir = North | South | East | West
move :: Dir -> (Int, Int) -> (Int, Int)
move North (x,y) = (x,y+1)
move South (x,y) = (x,y-1)
move East (x,y) = (x+1,y)
move West (x,y) = (x-1,y)

-- Funktionen auf Data
data Geometrie = Circle Double -- Radius
    | Rectangle (Double, Double) -- Kantenlaengen (Tupel)
    | Triangle Double Double Double -- Kantenlaengen
myShapes :: [Geometrie]
myShapes = [Circle 5, Rectangle (3,4), Triangle 5 6 7]

cf :: Geometrie -> Double
cf (Circle a) = 2 * a * pi
cf (Rectangle (a,b)) = 2 * a + 2 * b
cf (Triangle a b c) = a + b + c

-- Record Syntax zur Benennung der Eigenschaften
data Article = Article {name::String, price::Int}
hose2 :: Article
hose2 = Article {price=50, name="Hose"}
showName :: Article -> String
showName Article {name=n} = n

-- Durch die Record Syntax werden automatisch Funktionen für die Parameter erstellt.
a = price hose2
-- Achtung: Da die Parameter als Funktionen definiert sind, darf ein Parametername nur einmal vorkommen!

-- Rekursive Definition von Bäumen
data Tree a = Leaf a | Node (Tree a) a (Tree a)
deriving (Show)
tree :: Tree Char
tree = Node (Leaf 'a') 'g' (Node (Leaf 'k') 'm' (Leaf 'p'))
```

## Maybe und Either

```haskell
ersteKante :: Geometrie -> Maybe Double
ersteKante (Circle _) = Nothing
ersteKante (Rectangle (a,_)) = Just a
ersteKante (Triangle a _ _) = Just a

ersteKante2 :: Geometrie -> Either String Double
ersteKante2 (Circle _) = Left "Der Kreis hat keine Kanten"
ersteKante2 (Rectangle (a,_)) = Right a
ersteKante2 (Triangle a _ _) = Right a
```

## Newtype

`newtype`s haben genau einen Konstruktor und ein Feld.

```haskell
newtype StrWrapper = Wrap String
v :: StrWrapper
v = Wrap "Hello World"

```
