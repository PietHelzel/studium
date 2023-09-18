Operating Systems & Networking
==============================

Wichtige Begriffe und Themen:

- Netzwerke
    - OSI Referenzmodell
    - TCP/IP
    - Internetprotokolle
- Betriebssysteme
    - Speichermanagement
    - Prozesse und Threads
    - "Object Manager" (?)
    - Windows Registry


## Ziel eines Betriebssystems

Steuern von Ressourcen, also:

1. Hardware
2. Daten
3. Prozesse

Interne und externe Entitäten versuchen, auf diese Ressourcen zuzugreifen.

## Arten von Betriebssystemen

- General Purpose OS (gpOS): Ist für Nutzerinteraktionen designed
    - Server
    - Mobilgeräte
    - Desktop-PC
- Real Time OS (RTOS): Designed für Applikationen mit höher Verlässlichkeit und sehr prezisem Timing (z.B. Airbags)
    - Medizinische Geräte
    - IoT
    - Luftfahrt, Automobilindustrie

Netzwerkgeräte können je nach Art des Geräts sowohl gpOS als auch RTOS benutzen.
RTOS ist nicht zwangsläufig einfacher, sondern die "Qualität" der Arbeit ist anders.
Es gibt bei Echtzeitanwendungen (und teilweise auch für gpOS) meist Gesetze, die "Security, Safety, Scalability" sichern. (Die Englischen begriffe werden verwendet, da Security und Safety unterschiedlich sind)

### Timing

- Hard real-time: Maximale Zeit für eine bestimmte Operation, die niemals überschritten wird.
- Soft real-time: Timing ist vorhersehbar, höchstwahrscheinlich wird eine Operation innerhalb einer bestimmten Zeit ausgeführt.

Jitter
: Die Varianz der Ausführungszeit über mehrere Iterationen.

## Windows

Windows auditiert konstant jede einzelne Entität (Daten, Prozesse, Hardware), um deren Validität zu verifizieren.

## Hardware

1. Prozessor, ist immer vorhanden, führt Befehle aus
2. Speicher (RAM und ROM), speichert Daten (nicht zwingend Informationen)
3. Peripheriegeräte (Headset, Mikrophon, Drucker, etc.)

## Halbleiter

- CPU (Logik)
- Speicher
- Sensoren
- Power ICs (Integrated Circuit): Sind für Powermanagement zuständig
- Digital Signal Processors (DSP)
- Analoge Chips zum aufnehmen und verarbeiten von Wellen (audio, video)

Internet of Things basiert hauptsächlich auf solchen Halbleitern.

### Produktion von Halbleitern

#### Funktionales Design

- Ein- und Ausgabe definieren
- Benötigte Spannungen berechnen
- (Nicht in Folien): Architektur entwickeln
- Firmen: Intel, arm, NVidia

#### Manufaktur der Chips

- Teuer und aufwändig
- Aufbau der Produktion dauert sehr lange
- Firmen: TSMC, UMC
