Serie 2
=======

## Aufgabe 1

#### Aufgabe 1.1

Der Typ ist `(Ord a, Num a) => (a -> Bool, Bool)`. Es handelt sich um ein Tupel, welches eine Lambda-Funktion sowie einen Wahrheitswert enthält. Die Lambda-Funktion nimmt einen Wert *n* an, und gibt zurück ob dieser positiv ist. Daher kommen auch die Beschränkungen *Ord* und *Num* auf *n*: Es muss sich um eine Zahl handelt, die geordnet werden kann.

#### Aufgabe 1.2

Der Typ ist `Num a => a`. Es handelt sich also um eine Funktion, die keine Parameter annimmt und eine Zahl *a* zurückgibt. Da `x = 2` gilt und die Funktion `x - 1` zurückgibt, ist f die Konstante 1.

#### Aufgabe 1.3

Der Typ ist `Num a => a -> a`. Es handelt sich also um eine Funktion, die eine Zahl y entgegennimmt und eine Zahl zurückgibt. Da sie `x = 2` definiert und x - y zurückgibt, ist der Funktionswert immer der Eingabewert subtrahiert von 2.

#### Aufgabe 1.4

Der Typ ist `[a] -> [a]`. Es handelt sich also um eine Funktion, die ein Array von beliebigem Typ entgegennimmt und ein Array zurückgibt. Da die Funktion den Head und den Tail der Eingabe einfach aneinanderhängt, gibt diese Funktion ihre Eingabe unverändert zurück.

#### Aufgabe 1.5

Der Typ ist `Num a => a -> a -> a`. Dies ist der Fall, da `snd` einfach nur das zweite Elements des Tupels zurückgibt. Der Typ ist also identisch mit dem von `(+)`. Der Additions-Operator nimmt zwei Zahlen entgegen und liefert eine weitere Zahl (die Summe). Die Funktionssignatur entsteht dadurch, dass Currying angewandt wird. Es handelt sich also um eine Funktion, die eine Zahl nimmt und eine weitere Funktion zurückgibt, die wiederum eine Zahl annimmt und eine zurückgibt.

#### Aufgabe 1.6

Der Typ ist `(Num a, Enum a) => [a]`. Es handelt sich also um eine Funktion, die eine Zahl entgegennimmt (welche zusätzlich Enumerierbar sein muss, damit die Range `[1..10]` konstruiert und deren Elemente x zugewiesen werden können), und ein Array von Zahlen zurückgibt. Als Ergebnis entsteht dabei ein Array mit den ersten zehn Quadratzahlen in ungekehrter Reihenfolge.
