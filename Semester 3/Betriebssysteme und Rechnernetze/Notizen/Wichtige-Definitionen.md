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
