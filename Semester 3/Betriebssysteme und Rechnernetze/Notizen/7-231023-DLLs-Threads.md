
## Image Loader Fortsetzung

In einer Image-Datei ist ein sog "Import Address Table" (IAT) enthalten, die die Namen und
Funktions-Pointer der DLLs enthält, welche verwendet werden sollen.

Dann initialisiert der Image Loader den User-Mode-State der Applikation.
Dazu gehören der initiale VAS, Threads, statische Daten, Konstanten, Ressourcen (z.B. Bilder),
importierte und exportierte DLLs.

Shared DLLs werden von Section Objects gehandhabt, die vom Image Loader erstellt werden.
DLLs können aber auch zur Laufzeit noch geladen werden.

## Module

Module
: Geladene DLLs und die primäre Executable eines Prozesses heißen Module.

Module Database
: Enthält eine Liste von Modules, um mehrfaches Laden von DLLs zu vermeiden (Performance).

Known DLLs
: DLLs, die beim Booting des OS geladen wurden. Die DLL muss danach also nicht mehr geladen werden.

Nach DLLs wird wie folgt gesucht:

- Das Directory, von der die Applikation ausgeführt wurde.
- Das native Windows System-Directory (z.B. "C:\\Windows\\System32")
- Das 16-bit Windows System-Directory (z.B. "C:\\Windows\\System")
- Das Windows-Directory (z.B. "C:\\Windows")
- Das current Directory, von wo aus die Applikation gestartet wurde
- Alle Directories, die in der %PATH% Umgebungsvariable spezifiziert sind

Die DLL wird dann in die Module Database eingefügt. Danach wird der *DLL search path* neu berechnet
und nach weiteren DLLs gesucht (um Abhängigkeiten aufzulösen).

### Static vs Dynamic Linking

Static Linking
: Laden von DLLs beim Laden einer Portable Executable.

Dynamic Linking
: Laden von DLLs bei der Ausführung eines Threads.

## Prozesse

Process Object
: Eine dedizierte Datenstruktur, die den Zustand eines laufenden Prozesses darstellen.
: Wird auch *EPROCESS* genannt und liegt im KAS.

### Threads

#### Aus Programmierer-Sicht

Ein Thread beginnt essentiell mit einer `main()`-Funktion (im Sinne von Programmiersprachen).
Diese Funktion kann weitere Funktionen aufrufen, die auch wiederum Funktionen aufrufen können.
Funktionen können dann Ergebnisse produzieren, die von der aufrufenden Funktion verwendet werden.
Irgendwann terminiert die `main()`-Funktion und der Prozess ist zu Ende.

#### Aus CPU-Sicht

Ein Thread enthält eine Abfolge von Instruktionen für die CPU.
Funktionsaufrufe werden durch zwei Stacks realisiert. Ein Stack ist für die Ausführung im Kernel Mode,
der andere für die Ausführung im User Mode. Ein Stack ist eine Region im physical Memory und speichert
Daten und Pointer für die Ausführung einer Funktion. Außerdem hat ein Thread eine einzigartige ID und
einen TLS (Thread Local Storage).

#### Thread Context

In einem OS gibt es viele Threads, die gleichzeitig auf begrenzte CPU-Ressourcen zugreifen wollen.
Jeder Thread bekommt deswegen nur eine begrenzte CPU-Zeit, nach welche zum nächsten Thread gewechselt wird.

Thread Context
: Alle Daten in einem Thread (Register, Stacks, TLS).

Multithreading
: Neuere CPUs haben meist mehrere Kerne, die jeweils einen Thread ausführen können.

Hyperthreading
: Eine Technologie, mit der mehr als ein Thread auf einem Core laufen kann.

Idle Process
: Wenn kein ausführbarer Thread auf einer CPU existiert, dann lässt Windows den Idle-Thread ausführen.
: Mit diesem kann die Auslastung und Nutzung der CPU bestimmt werden. Dieser Prozess hat kein Image
: und auch keinen User-Mode Adress Space.

### System Worker Threads

Der System-Prozess (ID 4) ist ein spezieller Prozess, der für Standardoperationen wie IO zuständig ist.
Windows erstellt beim Start mehrere Instanzen dieser Threads.
