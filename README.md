## PARA-Prinzip - Deployer
___
## Verwendung
- Kopiere den Ordner ``main`` in das Verzeichnis, wo die Ordnerstruktur für das aktuelle Kalenderjahr erstellt werden soll.
- Öffne in diesem Ordner die PowerShell (Rechtsklick -> Im Terminal öffnen)
- Skript ausführen ```.\main.ps1```
- Anschließend können die Skriptdateien wieder aus dem Verzeichnis gelöscht werden.
### Falls Berechtigung zum Ausführen von PowerShell-Scripts fehlt

- ``Set-ExecutionPolicy RemoteSigned -Scope Process``

- wieder rückgängig machen:
  - ``Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope Process``


### Aktuelle Ordnerstruktur, die erzeugt wird

```
- 2024 (aktuelles Kalenderjahr)
  - Reisekosten
    - Januar
      - eingereicht
    - Februar
      - eingereicht
      ...
``