Serie 1
=======

## Aufgabe 1

#### 2.

Das `:t` gibt den Typ des dahinter stehenden Ausdrucks zurück.
1. `1 :: Num a => a`: Es handelt sich um eine Funktion, die eine Zahl (Num) zurückgibt, in diesem Fall den Wert 1.
2. Gibt eine Fehlermeldung zurück, da Bool kein Ausdruck ist, sondern selbst ein Typ. Bool hat somit keinen Typ.
3. `(+) :: Num a => a -> a -> a`: Es handelt sich um eine Funktion, die 2 Zahlen vom Typ Num annimmt, und eine weitere Zahl zurückgibt.
4. -
5. -
6. Die Funktion funktioniert

## Aufgabe 2

1. `4 - 2`
2. `4 + 2`
3. `4 ^ 2`: Auf der rechten Seite darf keine Kommazahl stehen.
4. `mod 4 2`: Entweder Präfix-Notation oder Infix mit Backticks
5. Geht nicht, da unterschiedliche Typen
6. `(9, 'c')`: Eine Liste kann nicht unterschiedliche Typen enthalten. Also wechsel zu Tupel
7. Geht nicht, da Wurzel von negativer Zahl
8. mod funktioniert nur auf ganzen Zahlen

## Aufgabe 3

### 1.

1. 3 * 2 = 6
2. 10 / 4 = 2.5
3. 2 ^ 5 = 32
4. (100 + 40) * 3 = 420

### 2.

1. (*) 3 2 = 6
2. (/) 10 4 = 2.5
3. (^) 2 5 = 32
4. (*) ((+) 100 40) 3 = 420

### 3.

Die Backticks erlauben das nutzen einer Präfix-Funktion als Infix-Funktion.

Es taucht ein Fehler beim zweiten Aufruf auf, da multiplyTuple einen Tupel als Argument nimmt, nicht zwei Werte. Der zweite Aufruf übergibt aber zwei einzelne Werte.

### 4.

```haskell
add1 a b c = a * b * c
add2 (a, b, c) = a * b * c
(\a b c -> a * b * c) 4 5 6
```

## Aufgabe 4

```haskell
successor a = a + 1

-- Falsche Aufrufe
successor 'c'
successor [1]
```

Die Fehlermeldungen sagen aus, dass Char bzw [Integer] nicht der Typklasse Num angehören.

## Aufgabe 5

```haskell
proofMorgan a b = not (a && b) == (not a) || (not b)
```
