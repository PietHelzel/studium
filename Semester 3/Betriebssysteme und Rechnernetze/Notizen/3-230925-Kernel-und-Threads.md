Kernel und Threads
==================

gpOS sind:

- Multi-User
- Interactive
- Connected

## Kernel

Kernel
: Das Kernel ist eine Kernkomponente eines OS. Es besteht aus spezifisches Bibliotheken, die
: die Kernfunktionen eines OS realisieren.

### Wichtigste Funktionen eines Kernels:

1. File Management
2. Memory Management
3. I/O
4. Process Management

Multithreading
: Zu jedem beliebigen Zeitpunkt können mehrere unterschiedliche Instruktionen gleichzeitig ausgeführt werden.

Das Kernel bietet direkte Unterstützung des Prozessors. Ein OS ist somit eng an den Prozessor gekoppelt.

### Monolithische Kernel

Windows und Unix sind monolithische Systeme. Das heißt, dass das System *logisch* eine Einheit bildet.
Der Source-Code dieser Systeme umfasst (vergleichsweise) sehr viele Zeilen Code und umfasst viele eng verbundene Komponenten.
Alle Kernel-Komponenten sind vollständig von User-Prozessen *geschützt*.

Nachteil: Fehlerhafte Komponenten innerhalb des OS können die Funktionalität des gesamten OS beeinträchtigen.

Lösung: Implementierung von Schutzmechanismen.


## Memory Segregation

In den meisten gpOS wird Nutzercode separat vom OS selbst ausgeführt.
Der Speicher wird dabei in Kernel- (KAS: Kernel Address Space) und User-Space (UAS: User Address Space) geteilt.
Alle Prozesse außerhalb des eigentlichen OS laufen im User-Space, aber auch OS-Prozesse können im User-Space laufen.
Auch die User-Interfaces für Applikationen seitens des OS laufen im User-Space.
Diese Segregation geschieht durch unterschiedliche Adressbereiche.
Prozesse im Kernel-Space sind priviligierter als die im User-Space.

### Aufruf eines OS-Service

1. User-Mode Code ruft einen OS-Service auf.
2. Der Prozessor führt eine spezielle Instruktion aus, die in den Kernel-Mode wechselt.
3. ???

## Prozesse

Prozess
: Eine Applikation besteht aus einem oder mehreren Prozessen. Ein Prozess ist ein Container für eine Menge an Ressourcen.
: Ein Prozess kann auch eine Liste an *Handles* (Zeiger auf eine Ressource) auf verschiedene Systemressourcen enthalten. 

Thread
: Eine spezifische Art von Ressource eines Prozesses, die Code enthält (bzw. eine ausführbare Einheit eines Prozesses).
: Der Code wird im sog. *Private Address Space* gespeichert.
: Ein Prozess kann mehrere Threads beinhalten, aber ein Thread gehört immer nur einem Prozess.
: Alle Threads eines Prozesses teilen sich einen Adressbereich.

Merke: Applikationen und Prozesse können nicht ausgeführt werden, nur Threads!

## Architektur von Windows

Betriebssysteme wie Windows sind schichtenbasiert, sodass zusammenhängende Komponenten in einer Schicht zusammengefasst werden.

Bei Windows ist das Kernel eine Datei namens "Ntoskrnl.exe". Diese Datei wird geladen und erstellt den Kernel-Prozess.

Windowing and Graphics System
: Ein Subsystem für Darstellung der graphischen Benutzeroberfläche. Damit wird Interaktivität gewährleistet.
