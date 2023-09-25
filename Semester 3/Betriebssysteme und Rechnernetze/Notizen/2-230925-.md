Management von Hardware-Ressourcen
==================================

## Wiederholung

### Viele Prozesse, limitierte Ressourcen

Auf einem Computer laufen viele unterschiedliche Prozesse, die um limitierte Ressourcen konkurrieren.
Ein Betriebssystem enthält ein komplexes Managementsystem zum verteilen dieser Ressourcen.
Dadurch wird das System komplexer, und damit auch u.U. unsicherer und fehleranfälliger.

#### Herausforderungen

1. Reliability
2. Security
3. Efficiency
4. Resilience
5. Scalability: Erweitern des Systems auf größere Einsatzsysteme
6. Heterogenität von Hardware (und auch von Software)

## Prozessoren

1. Applikationen kommunizieren mit OS.
2. OS bietet Schnittstelle mit der Hardware.
    - OS stellt außerdem eine Reihe von spezifisch definierten Services über diese Schnittstelle zur Verfügung, die von Applikationen bedient werden können.
3. Code der Applikation wird auf dem Prozessor ausgeführt.

Call
: Ein Aufruf eines OS-Services von einem user-mode Programm. Der Service wandelt diesen Aufruf in Prozessorinstruktionen für den Prozessor um.
: Ist der Service vollständig durchgeführt kann das Programm fortgesetzt werden.

Sinn dieser unterschiedlichen Ebenen ist das separieren von Software und Hardware, um die oben genannten Herausforderungen
zu bewältigen (vor allem Security).

## Networking

Grundlegende Networkkomponenten:

- Windows network services
- Windows network APIs
- Network-Protokolle
- Treiber- und Network-Adapter

## Android

- Offener Code (zumindest größtenteils) -> Erlaubt Herstellen das Erstellen von eigenen Android-Versionen
- Relativ Hardwareunabhängig
- Java (JVM) wird intensiv eingesetzt
- Fragmentiertes Ökosystem
