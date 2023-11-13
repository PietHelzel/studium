# Intro Networking

### Adressierung

### OSI (Open System Interconnection)

Ein internationaler Standard. Besteht aus mehreren Schichten, welche jeweils bestimmte Aufgaben und Funktionen realisieren.
Zwischen den Schichten findet ein strukturierter Austausch von Packets statt.

1. Physical
2. Data Link
3. Network
4. Transport
5. Session
6. Presentation
7. Application

Anmerkung: Physical (Layer 1) ist der "unterste" Layer, Application (Layer 7) der "höchste".

#### Layers

1. Physical
    - Physische Übertragung von Bits über Kabel, Glasfaser, Wireless etc.
    - Signaldecoder und -encoder
2. Data Link
    - Kommunikation innerhalb eines LAN (Übertragung mit einem Hop)
3. Network
    - Daten von einem Host zum anderen innerhalb eines Netzwerks übermitteln
4. Transport
    - Kommunikation zwischen zwei Prozessen
    - Übertragung von Daten
5. Session
    - Verbindungen aufbauen, verwalten und abbauen
6. Presentation
    - Lokale Datenrepräsentation, z.B. Kompression, Verschlüsselung
7. Application
    - Generische Dienste wie FTP oder E-Mail
    - Kommunikation zwischen Prozessen oder Applications

### Protokolle

Standardisierte "Vereinbarung" (Konzepte und Prozeduren) zur Interaktion zwischen Systemen.
Die Schichten des OSI-Modells werden auch "Protocol Layer" genannt. Die Protokolle beschreiben, wie die Schichten Daten
vorbereiten sollen, damit sie übermittelt werden können.

### TCP/IP (Transmission Control Protocol/Internet Protocol)
