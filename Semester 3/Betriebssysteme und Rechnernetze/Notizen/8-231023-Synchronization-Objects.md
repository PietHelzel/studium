# Synchronization Objects

Oft teilen sich mehrere Threads eine Ressource. Dadurch entsteht ein Konflikt.
Gleichzeitiges Lesen und/oder Schreiben einer Ressource kann Probleme verursachen.
Statt direktem Zugriff auf Ressourcen wird zur Vermeidung dieses Problems ein
Synchronisierungs-Objekt genutzt, bei dem es sich um eine Art "Stellvertreter handelt".

Mutual Exclusion
: Die Garantie, dass zu jedem gegebenen Zeitpunkt nur genau ein Thread auf eine Ressource zugreifen kann.
: Andere Threads müssen warten, bis der vorherige Thread die Ressource nicht mehr nutzt.

Mutex
: Die Implementation des Mutual-Exclusion-Konzepts. Mit einem API-Call kann ein Handle auf
: ein Mutex vom OS bereitgestellt werden.

Semaphore
: Ein Zähler, der z.B. zum Zählen von Threads, die auf eine Ressource zugreifen, genutzt wird.
: Somit eine "abgeschwächte" Version eines Mutex.

Wartende Threads werden nicht nach FIFO ausgeführt, sondern z.B. auch nach Priorität.

Critical Sections
: Sektionen des Codes der auf non-shareable Ressourcen (Ressourcen, die vor gleichzeitigem
: Zugriff geschützt sind) zugreift.
