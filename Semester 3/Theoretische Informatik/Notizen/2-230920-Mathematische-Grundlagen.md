Mathematische Grundlagen: Mengen, Relationen, Funktionen
========================================================

Menge
: Eine Zusammenfassung von bestimmten, unterschiedlichen Objekten (Elemente genannt) zu einem Ganzen.

## Grundlegende Axiome

Axiom der Bestimmtheit (Zermelo, 1908)
: $\forall M \forall N (M = N \leftrightarrow \forall z (z \in M \leftrightarrow z \in N))$
: Oder kürzer: *Jede Menge ist durch ihre Elemente bestimmt.*

Axiom der leeren Menge (Zermelo, 1908)
: $\exists M \forall y (y \notin M)$
: *Es gibt eine Menge, die Nullmenge $\emptyset$, welche keine Elemente enthält.*

## Verwandte Konzepte

- Kollektion: Elemente dürfen mehrfach vorkommen
- Liste: Elemente haben eine Reihenfolge
- Tupel: Festgelegte Anzahl Elemente, mit Reihenfolge. Geschrieben z.B. `T = ({a, b}, 1, (c + d))`
- Relationen: $R \subseteq M \times M$.
    - $x \sim_R y \Leftrightarrow (x, y) \in R$
    - $x \nsim_R y \Leftrightarrow (x, y) \notin R$

### Eigenschaften von Relationen

- reflexiv: $\forall a (a \sim_R a)$
- irreflexiv: $\forall a (\lnot a \sim_R a)$
- transitiv: $\forall a, b, c ((a \sim_R b \land b \sim_R c) \rightarrow a \sim_R c)$
- symmetrisch: $\forall a, b (a \sim_R b \rightarrow b \sim_R a)$
- antisymmetrisch: $\forall a, b ((a \sim_R b \land b \sim_R a) \rightarrow a = b)$
- asymmetrisch: $\forall a, b (a \sim_R b \rightarrow \lnot b \sim_R a)$

Äquivalenzrelation
: Eine Relation, die reflexiv, symmetrisch und transitiv ist.

Äquivalenzklasse
: $[a]_R = \{b : b \in M \land a \sim_R b\}$
: In einer Äquivalenzklasse sind alle Elemente enthalten, die bezüglich einer Relation R äquivalent sind.

Menge aller Restklassen
: $M/R = \{[a]_R : a \in M\}$
: M/R ist ein **disjunktes** Mengensystem, das die leere Menge nicht enthält. Die Vereinigungsmenge ist M. M/R ist Zerlegung von M.

Relationenprodukt
: $R \cdot S = \{(x, y) | \exists z (x \sim_R z \land z \sim_S y)\}$
: $R^{-1} = \{(y, x) | (x, y) \in R\}$
: $R^0 = \{(x, x): x \in M\}$
: $R^n = R \cdot R^(n-1)$

Transitive Hülle
: Die transitive Hülle R+ ist die kleinste Relation, die R einschließt und die Eigenschaft der Transitivität erfüllt.
: R* erfüllt außerdem die Reflexivität.

## Funktionen

Eine Funktion $f: M \rightarrow N$ ist eine spezielle Relation, die jedem Element x der Definitionsmenge M höchstens ein Element f(x) der Zielmenge N zuweist.

Eine Funktion $f: M \rightarrow N$ heißt:

- **total**, wenn für jedes $x \in M$ ein Element $f(x) \in N$ existiert.
- **partiell**, wenn sie für mindestens ein $x \in M$ undefiniert ist.
