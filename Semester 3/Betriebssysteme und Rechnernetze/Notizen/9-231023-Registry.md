# Registry

Das Registry ist ein Datenrepository, die als Baumstruktur vorliegt.
Windows speichert und lädt Konfigurationsdaten aus der Registry.

1. Beim Booten lädt der Bootloader Konfigurationsdaten sowie eine Liste von Treibern
für Boot-Geräte in den Memory.
2. Der Kernel lädt Informationen über Treiber
3. Beim Logon lädt das OS Nutzerspezifische Informationen
4. Beim Start eine Applikation lädt diese anwendungsspezifische Konfigurationsinformationen.

Registry-API
: Kernel- und User-Prozesse nutzen eine API um Daten aus der Registry zu holen, sie zu verändern oder zu löschen.

### Aufbau der Registry

Die Registry hat eine Struktur ähnlich dem normalen Dateisystem (Ordner: "Key", Unterordner: "Subkey", Dateien: "Value").
Die Registry-Daten werden auf einem Sekundärspeicher gespeichert und beim Booten geladen.
Dazu werden unterstützende Dateien namens "Hives" verwendet, die Backups der Registry-Daten enthalten.
Manche Hive-Dateien sind "volatile", d.h. sie sind temporär, werden nur gelesen und Änderungen werden nicht zurückgespielt.
Es gibt sechs Ordner im Root:

1. HKEY_CURRENT_USER: Daten assoziiert mit dem eingeloggten User
2. HKEY_USERS: Daten über alle Accounts
3. HKEY_CLASSES_ROOT: COM (Component Object Model)-bezogene Dateien
4. HKEY_LOCAL_MACHINES: Systeminformationen
5. HKEY_PERFORMANCE_DATA; Performanceinformationen (kann nicht vom Registry-Editor angezeigt werden)
6. HKEY_CURRENT_CONFIG: Informationen über das momentane Hardwareprofil

#### Configuration Manager

Der Configuration Manager verwaltet die Registry. Er teilt die Registry in "Allocation Units" (Blocks) auf.
Auch erlaubt er die Überwachung von Registry-Prozessen.

##### Callback-Funktion

Ein Prozess kann eine Callback-Funktion beim CM registrieren, um auf einen Registry-Key zuzugreifen.
Immer wenn auf den jeweiligen Key zugegriffen wird, dann wird die Callback-Funktion aufgerufen.
So kann ein Prozess einen Registry-Key überwachen.

Altitude
: Die Priorität, mit dem eine Callback-Funktion definiert werden kann. Wichtig, wenn mehrere Prozesse auf einen
: Key zugreifen wollen. Die Callback-Funktionen werden nach ihrere Priorität nacheinander ausgeführt.

### Object Manager

**TODO!**
