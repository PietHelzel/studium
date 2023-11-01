# Rekursion

Motivation: Haskell bietet keine eingebauten for- oder while-Schleifen, da dies
Konstrukte der imperativen (operationalen ) Programmierung sind. Rekursion
biete stattdessen eine funktionale (denotationelle) Alternative.

Beispiele:

```haskell
fac :: Integer -> Integer
fac 0 = 1
fac 1 = 1
fac n = n * fac(n-1)

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = insert x (isort xs)

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) = if x <= y
    then x : y : ys
    else y : insert x ys
```

### Arten von Rekursion

- Linear: Höchstens einen rekursiven Aufruf in der Funktion
- Endständig: Linear rekursiv und der rekursive Aufruf ist letze Aktion zur Berechnung der Funktion
    - Vorteil: Konstanter Speicherbedarf möglich (durch Akkumulator)
- Mehrfach rekursiv: Rekursiver Aufruf kommt in Funktionsdefinition mehrfach vor
- Verschachtelt rekursiv: Das Ergbnis eines rekursiven Aufrufs ist Parameter eines rekursiven Aufrufs
- Wechselseitig rekursiv: Rekursive Funktionen rufen sich gegenseitig aus

### 5 Punkte-Plan

1. Bestimmung des Typs
2. Beschreibung der Fälle
3. Bestimmung des einfachen Falls
4. Berechnung im rekursiven Fall
5. Generalisierung und Vereinfachung
