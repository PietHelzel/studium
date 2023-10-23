Objekt
: Ressourcen, wie z.B. Dateien, Daten, Pointer, Prozesse.
: Das Kernel stellt beispielsweise eine primitive Menge an Objekten zur Verfügung
: (Beispiel: Pointer auf bestimmte wichtige Daten).

Exportieren und Importieren von Funktionen
: Wenn eine Funktion exportiert wird, dann wird sie nach außen zur Verfügung gestellt.
: Wird diese Funktion dann anderswo verwendet, dann wird sie importiert.

Dynamic Link Library (DLL)
: Eine Windows Executable. Sie folgt der PE-Struktur (Portable Executable), der selben wie eine .exe-Datei.
: Eine DLL exportiert Funktionen und Attributen die von anderen Executables verwendet werden können.
: Windows biete viele wichtige Standart-DLLs (kernel32.dll, user32.dll, gdi32.dll).

Windows API (Application Programming Interface)
: Die user-mode Programmierinterfaces für Windows. Diese enthält tausende Aufrufbare Funktionen
: z.B. für Networking, Grafik, Multimedia, etc.

Process
: **TODO!**

Thread
: Die ausführbare Basiseinheit, der vom OS Prozessorzeit zugeteilt wird.
: Jeder Prozess startet mit einem Thread (*primary Thread*), kann aber weitere erstellen.
