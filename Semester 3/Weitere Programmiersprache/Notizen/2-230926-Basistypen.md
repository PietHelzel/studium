Basistypen, Listen, Funktionen
==============================

## Blöcke

Mit `let` lässt sich ein Block einleiten, um die Sichtbarkeit von
Variablen zu begrenzen:

```haskell
d = let x = 3
        y = 4
    in sqrt(x^2 + y^2)
```

## Typklassen

Typklasse
: Eine Typklasse fasst eine Menge von Typen mit ähnlichen Eigenschaften zusammen.
: Beispielsweise werden Int, Double, Integer, etc. in der Klasse **Num** zusammengefasst.

## Vergleiche

```haskell
9 == 1 -- > True
9 /= 1 -- > False
(==) 9 1 -- > Infix-Operatoren können auch in Prefix-Operatoren umgewandelt werden
```

Die Typklasse Eq fasst alle Typen zusammen, deren Werte auf Gleichheit überprüft werden können.

## Tupel

```haskell
-- > :t (7, True)
(7, True) :: Num a => (a, Bool)
```

Nulltupel
: Das Nulltupel wird `()`  geschrieben und ist ein leeres Tupel. Typ und Wert sind dabei gleich.

## Listen

```haskell
l = ["a", "ab", "42"]
-- > :t l
l :: Num a => [a]

j = [1, 2, "a"] -- Fehler!
```

Listen und Tupel können geschachtelt werden.

### Listenkonstruktion

```haskell
[m..n] -- Alle Elemente von m bis n, Abstand 1
[l, m..n] -- Alle Elemente von m bis n, Abstand m - l
['a'..'z'] -- Buchstaben von a bis z
[m..n] ++ [l, m..n] -- Hängt zwei Listen aneinander

1:[2, 3] -- Hängt ein Element vor eine Liste
(:) 0 [1, 2, 3] -- Das geht auch als Präfixoperator
```

Da ein String auch nur eine Liste von Char ist, funktionieren Listenoperationen auch auf Strings.

### Listenfunktionen

- head: Das erste Element
- tail: Alle Elemente bis auf das erste
- last: Das letzte Element
- init: Alle Elemente bis auf das letzte

## Funktionen

```haskell
-- Typdefinition
predec :: Int -> Int

-- Funktionsdefinition
predec x = x-1

-- Funktionsdefinition als Lambda-Darstellung
-- Der Backslash repräsentiert ein Lambda
predec2 = \x -> x-1

-- Präfixfunktionen
a = mod 6 5

-- Präfixfunktion als Infix
a = 6 `mod` 5

-- Drop-Funktion
-- > drop 2 [1, 2, 3, 4]
[3, 4]

-- Anonyme Funktionen (Funktionen ohne Namen.)
(\x -> x-1) 5
```

### Funktionen mit mehreren Argumenten und partieller Auswertung

```haskell
add = (\x y -> x + y)
-- > add 2 3
5

addFour = add 4
-- > addFour 1
5

-- Variante 1: Definition der Argumente als Tupel
v1 :: (Int, Int) -> Int

-- Variante 2: Definition als mehrstellige Funktion (meist verwendet, da partielle Auswertung)
v2 :: Int -> Int -> Int
```

#### Currying
: Haskell betrachtet v2 als Funktion, die einen Int nimmt, und eine Funktion zurückgibt, die einen Int auf einen Int abbildet.
: Funktionstypen sind implizit **rechtsgeklammert**! Also gilt `Int -> Int -> Int` entspricht `Int -> (Int -> Int)`.   

```haskell
-- > :t curry v1
:: Int -> Int -> Int

-- > :t uncurry v2
:: (Int, Int) -> Int
```
