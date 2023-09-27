Grammatik
=========

## Beschreibung einer formalen Sprache

- Beschreibung durch eine Menge: Durch Aufzählen der Wörter, Mengenkonstruktur, Mengenoperationen
- Generative Beschreibung: Grammatiken
- Analysierende Beschreibung: Automaten

## Beispiel einer Grammatik

\<Satz\> -\> \<Subjekt\>\<Prädikat\>\<Objekt\> \
\<Subjekt -\> \<Artikel\>\<Attribut\>\<Substantiv\> \
\<Artikel\> -\> der \
\<Artikel\> -\> die \
\<Artikel\> -\> das \
\<Artikel\> -\> $\epsilon$ \
\<Attribut\> -\> \<Adjektiv\> \
\<Attribut\> -\> \<Ajektiv\>\<Attribut\> \
...

Die Wörter ohne <>-Klammern sind Wörter des Alphabets $\Sigma$.
Die Wörter mit <>-Klammern heißen Produktionen, und werden ersetzt.
Sind keine Ersetzungen mehr möglich, hat man einen Satz nach der Sprache erstellt.
Die Sprache ist defininiert durch die Wörter, die mit dieser Grammatik erstellt werden können.

## Grammatik formal

Grammatik
: Eine Grammatik ist ein 4-Tupel G = (V, $\Sigma$, P, S)
: V: Endliche Menge der Variablen (Nichtterminale). Die Wörter, die zuvor in <>-Klammern geschrieben wurden.
: $\Sigma$: Terminalalphabet ($V \cap \Sigma = \emptyset$). Die Wörter, die zuvor nicht in <>-Klammern geschrieben wurden.
: P: $P \subseteq (V \cup \Sigma)^+ \times (V \cup \Sigma)^*$. Endliche Menge von Produktionen. Auf der linken Seite muss mindestens eine Variable stehen.
: S: $S \in V$. Startvariable, von dieser Variable aus werden Sätze gebildet.

Ableitungsrelation
: Zwei Wörter stehen in der Ableitungsrelation $u \Rightarrow_G v$, wenn $\exists x, z \in (V \cup \Sigma)^* (\exists l \rightarrow r \in P: u = xlz \land v = xrz)$.
: Diese Ableitung kann auch mehrfach durchgeführt werden: $u \Rightarrow_G^n v$ wenn sich v durch n-Faches Ableiten herstellen lässt.
: Wenn v mit n Schritten ($n \geq 1$) abgeleitet werden kann, gilt $u \Rightarrow_G^+ v$.
: Wenn v mit n Schritten ($n \geq 0$) abgeleitet werden kann, gilt $u \Rightarrow_G^* v$.

Es gilt: Die Ableitungsrelation $\Rightarrow_G^*$ ist die kleinste reflexive und transitive Relation auf $(V \cup \Sigma)^*$, die $\Rightarrow_G$ umfasst.

Die Sequenz der Ableitungen von einem Wort zum Anderen nennt man einfach Ableitung.

## Sprache, die durch G erzeugt wird

Die erzeugte Sprache lässt sich wie folgt definieren:
$L(G) = \{w: w \in \Sigma^* | S \Rightarrow_G^* w\}$.
L besteht dabei nur aus Terminalsymbolen.
