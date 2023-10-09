Memory Management
=================

**Wichtig!**: *Memory* nicht übersetzen! Da im englischen *Memory* != *Storage*, im deutschen wäre aber beides Speicher.
Auch *Random Access Memory* sollte nicht zu Arbeitsspeicher übersetzt werden.

## Aufbau

- Adressdecoder: Dekodiert die Adressen, die vom *Address Bus* kommen.
- Address Bus: Der Bus, der Speicheraddressen enthält. Je breiter der Bus, desto mehr Bytes können addressiert werden. Bits können nicht direkt addressiert werden.
- Data Bus: Der Bus, der die Ein- und Ausgabe von Daten im Speicher enthält.

Flat Address
: Eine einzelne Addresse in den *Random Access Memory*, ausgedrückt durch eine einzelne Zahl.

## Memory Segregation

- Welcher Code darf welche Befehle ausführen? Auf welchen Speicher darf zugegriffen werden?
- **TODO**: Fehlenden Punkt nachschauen!

Ring bits
: Zusatzinformationen als zusätzliche Bits in einer Addresse, um den Memory zu segregieren. 

Segment
: Durch die Ring Bits wird der Memory in Segmente unterteilt.
: Um eine Addresse zu finden ist die Basisadresse des Segments
: sowie ein Offset nötig.

## Priviledge Levels

- Zweck: **Memory Protection**
- Realisierung durch "Ringe"

Berechtigung der Ringe:

- Ring 0: Kernel-Ring, ist am höchsten priviligiert
- Ring 1, 2: Hauptsächlich für OS-Prozesse, Ring 1 hat höhere Priorität
- Ring 3: Für User-Prozesse

Eine x86-CPU läuft zu einem spezifischen Zeitpunkt immer in einem bestimmten Priviledge Level.
Meist werden Ring 1 und 2 nicht verwendet.

**Wichtig**: Priviledge Levels sind unabhängig vom Konzept der OS-User!

Code im Ring 3 ist sehr limitiert, kann z.B. keine Dateien öffnen, Pakete über das Netzwerk schicken, Speicher reservieren etc. ohne Funktionen des Kernels aufzurufen.

## Virtual Memory

Die Intel-Architektur hat drei Address Spaces: **Virual, Linear, Physical**.

Virtual Address Space (Logical Address)
: Es gibt keinen Virtual Memory, es handelt sich nur um ein Konzept.
: Das OS teilt jedem Prozess seinen eigenen Address Space zu.
: Dieser ist ein kontinuierlicher Block im Physical Memory.

Linear Address Space
: Im Memory sind bestimmte Bytes nicht als Datenspeicher verfügbar, da sie für CPU-interne Daten verwendet
: werden. Diese sind hier ausgenommen.

Physical Memory
: Der tatsächliche physische Memory, der durch *flat Addresses* addressiert werden kann.

### Memory-Abbildung

Ein virtual AS wird auf einen Block im Linear Memory (und letztendlich im Physical Memory) abgebildet.
Ersterer ist theoretisch beliebig groß, obwohl letzterer limitiert ist.
Diese Zuordnung erfolgt durch eine Segmenttabelle, den **Global Descriptor Table (GDT)**.

Segment Descriptor
: Beschreibt Zugriffsrechte, Typ, Usage Information und Basisadresse eines Segments.

Page
: Ein Segment innerhalb des virtual AS mit einer festen, vom OS vorgegebenen konstanten Größe.

Frame
: Ein Segment innerhalb vom Physical Memory mit derselben Größe wie die Pages.

Pages werden mit einer Tabelle (**Page Table**) auf die Frames abgebildet.

Memory-Auslagerung (Swapping)
: Auslagern von Frames, die zu groß sind für den physical Memory.

#### Warum virtual Memory?

Obwohl der Adressbus bei der x86-64-Architektur 64 Bit groß ist, werden meist nur 48 Bits große AS verwendet.

Virtual Memory ist nützlich für folgende Zwecke:

- Schutz von Memory: Die Segmentation durch virtual Memory sichert den Schutz des Memory. Für diesen Zweck ist Segmentation in dieser Weise recht effizient.

#### Erweiterung dieser Abbildung

Diagramm: Siehe Folien

## Context Switch

Da die CPU mehrere Threads ausführen muss, kann sie die relevanten Threads zu einer Zeit auswählen. Dieser Wechsel heißt Context Switch.

## Memory Manager

- Gehört zum Executive Layer des KAS

Hauptaufgaben des Memory Manager:

1. Mapping von virtual AS in den physical AS
2. Swapping wird vom Memory Manager veranlasst (nicht direkt durchgeführt!)
3. Anbieten von Services für andere Komponenten im Executive Layer

### Page Fault Exception

Versucht ein Prozess auf eine Page zuzugreifen, die gerade auf dem sekundären Speicher liegt, löst die CPU eine Page Fault Exception aus.
Diese wird behandelt, und ein Swap wird vom Memory Manager ausgeführt.

### Shared Memory

Shared Memory
: Speicher, der für mehrere Prozesse sichtbar ist (hauptsächlich DLLs).
