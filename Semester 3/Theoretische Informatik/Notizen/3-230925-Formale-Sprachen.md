Formale Sprachen
================

Syntax (Grammatik)
: Wie sind Sätze in einer Sprache gebildet. In natürlichen Sprachen ist diese recht frei, in formalen ist sie festgeschrieben.

Semantik
: Die Bedeutung bestimmter Wörter in der Sprache. In natürlichen Sprachen z.B. durch ein Wörterbuch festgelegt, in formalen durch formale Definitionen.

## Alphabet

Alphabet
: Ein Alphabet (meist durch ein Sigma $\Sigma$) gekennzeichnet ist eine endliche, nicht-leere Menge, deren Elemente Zeichen oder Symbole genannt werden.

Wort
: Durch Konkatenation ("Hintereinanderschreiben") von Zeichen enthält man Wörter.
: Die Menge der Wörter der Länge n werden meist mit $\Sigma^n$ gekennzeichnet.
: Das Epsilon $\epsilon$ ist das Wort der Länge 0 (leeres Wort).
: Mit $\Sigma^+$ wird die Menge aller Wörter mit einer Länge größer als 0 beschrieben.
: Mit $\Sigma^*$ wird die Menge aller Wörter inklusive dem leeren Wort beschrieben.
: Mit $|w|$ wird die Länge des Wortes w beschrieben.
: Auch Wörter können konkatiniert werden.
: Jedes Wort $w \in \Sigma^*$ lässt sich eindeutig als Folge von Zeichen aus $\Sigma$ schreiben.

### Gesetze für Konkatenation von Wörtern

- $\forall u \in \Sigma^n (\forall v \in \Sigma^m (uv \in \Sigma^{n+m}))$
- $\forall u \in \Sigma^n (\epsilon u = u = u \epsilon)$
- $\forall u, v, w \in \Sigma^* ((uv)w = u(vw) = uvw)$
    - Konkatenation ist assoziativ, aber nicht kommutativ!

## Formale Sprache

Formale Sprache
: Eine Formale Sprache über $\Sigma$ ist eine Teilmenge L von $\Sigma^*$.
: Sprachen können auch konkateniert werden, wobei die neuen Wörter über das kartesiche Produkt erschaffen werden.
