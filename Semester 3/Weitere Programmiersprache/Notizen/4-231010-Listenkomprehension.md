# Listenkomprehensionen

## Beispiele Listen

```haskell
l1 = ['b', 's', 'p']

l2 = [2..7]

l3 = [7, 5.5..(-1)]

l4 = ['a', 'c' .. 'o']

l5 = [0, 100..]

l6 = [1, 2] ++ [3, 4]

l7 = 2:5:[]
```

### Extensional, Intensional

Extensional
: Listendefinition durch Aufzählung aller Elemente

Intensional
: Listendefinition durch charakterisierung der Eigenschaften aller Elemente

## Weitere Funktionen auf Listen

```haskell
a = sum [1, 2, 3, 4, 5]

b = product [1, 2, 3, 4, 5]

c = map (+ 1) [1, 2, 3, 4, 5]
```

## Beispiele Listenkomprehension

```haskell
isEven x = (mod x 2) == 0

x = [a | a <- [1..20], isEven a]

y = [a * b | a <- [1..10], b <- [1..10], isEven (a * b), isEven(a + b)]

-- Die Reihenfolge der Generatoren bestimmt die Reihenfolge der Elemente
z = [(x, b) | x <- ['a'..'c'], b <- [1..3]]
```


