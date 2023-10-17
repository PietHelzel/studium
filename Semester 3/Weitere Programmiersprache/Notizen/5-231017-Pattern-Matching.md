
## Guarded Expressions

Guarded Expressions bieten eine Alternative zu if-else-Statements.
Der `otherwise`-Block wird ausgeführt, wenn alle anderen Bedingungen falsch sind.
Die Auswertung erfolgt von oben nach unten.

```haskell
signum :: Int -> Int

signum n | n < 0 = -1
         | n == 0 = 0
         | otherwise = 1
```

Der Rückpfeil erlaubt Matching in Guarded Expressions (siehe Pattern Matching)

```haskell
geldda :: Int -> Int -> String
geldda konto zahlung
    | -1 <- signum (konto - zahlung), zahlung > 0 = "Diesen Monat nicht mehr!"
    | -1 <- signum (konto - zahlung) = "Ebbe im Portemonnaie!"
    | 1 <- signum (konto - zahlung) = "Geht noch!"
    | otherwise = "Alles ok."
```

## Let-Definition

Let-Definitionen erlauben das definieren von lokalen Konstanten.
Achtung: Einrückung beachten:

```haskell
calc x y =
    let a = 0
        b = 1
    in ...
```

Eine Alternative zu `let` ist `where`, womit die Definitionen nach dem Ausdruck stehen.

```haskell
calc x y = pol1 x + pol2 y
    where pol1 x = squ x
          pol2 x = x * squ x
```

Diese Definitionen sind lokal, und wird eine Variable in einem untergeordnetem
Block doppelt definiert, dann hat sie nur für diesen Block diesen Wert. Danach nimmt sie
wieder den vorherigen an.

Achtung: Dieser Ausdruck terminiert nicht, da `let x = x + 1` rekursiv ist!
(Es wird sich auf das neu definierte x bezogen).

```haskell
visible4 = let x = 1
               y = x + 1
           in
               let x = x + 1
               in [y,x]
```

## Pattern Matching

Beim Pattern Matching kann statt einer Variable ein konkreter Wert angegeben werden,
für den eine Funktion dann ausgewertet wird.

```haskell
count :: Int -> String
count 0 = "Null"
count 1 = "Eins"
count 2 = "Zwei"
count x = "Viele"

-- Mit Wildcards können auch beliebige Werte für einen Parameter entgegen genommen werden.
-- Dies verhindert potenzielle Warnungen für ungenutze Variablen.

findzero :: Int -> Int -> Int -> Int -> String
findzero 0 _ _ _ = "Erstes"
findzero _ 0 _ _ = "Zweites"
findzero _ _ 0 _ = "Drittes"
findzero _ _ _ 0 = "Viertes"
findzero _ _ _ _ = "Keines"
```

### Pattern Matching auf Tupeln

```haskell
-- Dieser Typ ist nur ein Alias, um Schreibarbeit zu verringern.
type Vector = (Double, Double)

addVectors :: Vector -> Vector -> Vector
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

addV5 :: Vector -> Vector
addV5 v = addVectors v (5,5)

fst3 :: (a,b,c) -> a
fst3 (x,_,_) = x

snd3 :: (a,b,c) -> b
snd3 (_,y,_) = y
```

### Pattern Matching auf Listen

```haskell
null [] = True
null (_head:_tail) = False

countl :: [a] -> String
countl [] = "Null"
countl [_] = "Eins"
countl [_,_] = "Zwei"
countl [x,y,z] = "Drei"
countl _ = "Viele"

suml :: [ Int ] -> (Int, String)
suml (x:y:z:_) = (x+y+z, "e: Mindestens 3 oder mehr")
```

### Pattern Matching mit as-Pattern

```haskell
firstLetter :: String -> String
firstLetter xs@(x:_) = xs ++ " begins with " ++ [x]
o1 = firstLetter "Haskell" -- "Haskell begins with H"
```

## Case

`case` erlaubt Pattern Matching in beliebigen Ausdrücken.

```haskell
describeList2 :: [a] -> String
describeList2 xs = "The list is " ++ case xs of
    [] -> "empty."
    [x] -> "a singleton list"
    xs -> "a longer list."
```

### Beispiel für Pattern Matching: Buchstaben 'd' aus String entfernen

```haskell
removeD :: String -> String
removeD [] = []
removeD ('d':xs) = removeD xs
removeD (x:xs) = x : removeD xs
```

## Errors

```haskell
mySqrt a | a >= 0 = sqrt a
         | otherwise = error "Zahl darf nicht kleiner als 0 sein"
```
