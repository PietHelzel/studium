# Registry

Das Registry ist ein Datenrepository, die als Baumstruktur vorliegt.
Windows speichert und lädt Konfigurationsdaten aus der Registry.

1. Beim Booten lädt der Bootloader Konfigurationsdaten sowie eine Liste von Treibern
für Boot-Geräte in den Memory.
2. Der Kernel lädt Informationen über Treiber
3. Beim Logon lädt das OS Nutzerspezifische Informationen
4. Beim Start eine Applikation lädt diese anwendungsspezifische Konfigurationsinformationen.
