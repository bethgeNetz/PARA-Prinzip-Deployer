$Year = Get-Date -Format "yyyy"
$BasePath = Join-Path -Path (Get-Location) -ChildPath $Year

if (-not (Test-Path $BasePath)) {
    New-Item -Path $BasePath -ItemType Directory -Force
}

# Aufrufen des Skripts, um den Ordner "Reisekosten" zu erstellen
. ".\src/reisekosten.ps1" -BasePath $BasePath
