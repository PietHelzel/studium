# Typen, Typinferenz

## Typinferenz

Jeder Ausdruck muss einen Typ haben. Wenn er nicht angegeben wird, dann nimmt die Variable
durch Typinferenz einen passenden Typ an.

Typinferenz generiert nicht immer einen konkreten Typ, sondern einen Typ-Constraint.
Die Einschränkung des Typs geschieht also durch die Typklasse.

```haskell
read "3.14" -- geht nicht, da 3.14 sowohl Float als auch Double sein könnte
read "3.14" :: Double -- geht
```

## Überladene Funktionen

Operatoren wie (+) funktionieren auf diversen unterschiedlichen numerischen Typen.
Die Funktion ist also überladen, und dessen Typ nennt man auch überladen.

## Builtin Typklassen

- Eq: Typen unterstützen (==) und (/=)
- Ord: Geordnete Typen, unterstützen (<), (>), (<=), (>=), min, max, ...
- Num: Numerische Typen, unterstützen (+), (-), (*), negate, abs, signum, ...
- Show: Typen, die in einen String umgewandelt werden können
- Read: Typen, die aus einem String erzeugt werden können
- Integral: Teilmenge von Num, unterstützen ganzzahlige Division: div, mod
- Fractional: Teilmenge von Num, Brüche und Kehrwerte, unterstützen (/), recip

