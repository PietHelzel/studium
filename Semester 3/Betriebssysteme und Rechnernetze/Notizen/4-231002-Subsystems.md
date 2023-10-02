Subsystems
==========

Subsystem
: Ein Teil eines weiteren Systems. Kann wiederum aus mehreren Komponenten bestehen.
: Eine Komponente kann auch Teil mehrerer Systeme sein.

## Das Window- und Graphics-Subsystem

- Läuft im Kernel-Space.
- Eingebettete Komponente des Systems: Selbst auf Servern ohne GUI vorhanden.
- Wird selbst vom Session Manager gestartet.
- Kümmert sich um das Anzeigen von Fenstern und Dialogboxen.

## Sessions

Session
: Begriff für das User-Mode-Environment (Arbeitsumgebung). Wird vom Session Manager verwaltet.

Session Manager
: Ein Executable (*image file*) mit dem Namen "Smss.exe".
: Er erstellt Sessions und startet das Window-Subsystem.
: Der Session Manager ist der erste User-Mode-Prozess, der erstellt wird.
: Um mehrere Sessions zu erstellen kann "Smss".exe mehrere Instanzen von sich selbst erstellen.

Client/Server Runtime Subsystem (csrss)
: Eine Instanz des csrss wird für jede Session gestartet. (TODO: Weiter ausführen!)

User-Prozesse können nicht direkt mit dem Kernel kommunizieren und nutzen dafür
eine Kollektion von Subsystem-DLLs (z.B. "csrsrv.dll", "basesrv.dll", "winsrv.dll").

Ntdll.dll
: Übersetzt eine dokumentierte Funktion in einen passenden nativen System Call.
: Es gibt auch nicht dokumentierte Funktionen, die nur indirekt intern genutzt werden. Sie
: sind nicht dokumentiert, da sie nicht für Entwickler gedacht sind.
: Die Subsystem-DLLs nutzen zum Großteil die Hauptschnittstelle "ntdll.dll" zur Überbrückung
: von User- und Kernel Address Space.

## System Service Dispatcher

System Service Dispatcher
: Ordnet Aufrufe der User-Mode-Schnittstellen den Kernel-Mode-Komponenten zu.

## Layers

### Der Executive-Layer

Executive-Layer
: Beinhaltet Komponenten wie das Kernel sowie eine Sammlung von Gerätetreibern und den HAL.
: Enthält auch Funktionen, die exportiert werden und von User-Code aufgerufen werden kann.

Funktionen:
- Speichermanagement
- Prozessmanagement
- Threadmanagement
- Sicherheitsmanagement
- Eingabe/Ausgabe (I/O)
- Networking
- IPC (*Inter-Process Communication*)

### Hardware Abstraction Layer (HAL)

Hardware Abstraction Layer
: Macht es möglich, dass ein OS unabhängig von der eingesetzten Hardware laufen kann.
: Der HAL bietet neutralen Low-Level-Zugriff auf die Hardware.
: Das Kernel ist durch diese Schicht von der Hardware isoliert.
: Nur bestimmte Architektur-spezifische Funktionen sind im Kernel implementiert.

## Policy Making

Policies
: Kriterien (qualitative, operative Standards), Regeln (quantitative Guidelines) und Constraints (beschränken, testen und forcieren von bestimmten Aktionen) um den Zustand des OS zu regulieren.

Beispiele für Kriterien
- Access Policy für *shareable resources* (Ressourcen, die von mehreren Nutzern genutzt werden können) außerhalb des KAS.
- Sicherheitschecks zum Schutz bestimmter Ressourcen.

Beispiele für Regeln
- Power Management
- Quotas für Ressourcen (z.B. nutzbarer Speicher)

Beispiele für Constraints
- Management der Prozessorkern-Policy
- "Hinzufügen von physischem Speicher ist nicht erlaubt"

Tool "Slpolicy.exe" erlaubt Visualisieren von Policies.
Das Kernel separiert sich von Executives durch Vermeiden von Policy Making (Ausnahme: Thread Scheduling).

## Treiber

Hardware-Treiber
: Übersetzen I/O Funktionsaufrufe in spezifische Hardware-IO-Requests.

Nicht-Hardware-Treiber
: Beispielsweise Dateisystem und Netzwertreiber. Diese Komponenten werden von Windows als Peripherie angesehen!

## OS-Prozesse im UAS

- System support services: Sind abhängig vom Logon eines Nutzers.
- Dienstprozesse: Unabhängig vom Logon eines Nutzers (gestartet zur Boot-Zeit). 
    - Werden durch den Service Control Manager (SCM) verwaltet (starten, stoppen, interagieren).

Services werden in der Registry gespeichert.

Services haben unterschiedliche Namen:
1. Der Prozessname
2. Der interne Name in der Registry
3. Der Anzeigename in dem Service-Administrationswerkzeug
