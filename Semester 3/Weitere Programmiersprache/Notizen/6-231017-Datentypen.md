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
