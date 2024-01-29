param(
    [string]$BasePath
)

$TravelExpensesPath = Join-Path -Path $BasePath -ChildPath "Reisekosten"
if (-not (Test-Path $TravelExpensesPath)) {
    New-Item -Path $TravelExpensesPath -ItemType Directory -Force
}


$Months = @("Januar", "Februar", "Maerz", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember")


foreach ($Month in $Months) {
    $MonthPath = Join-Path -Path $TravelExpensesPath -ChildPath $Month
    if (-not (Test-Path $MonthPath)) {
        New-Item -Path $MonthPath -ItemType Directory -Force
    }

    $SubmittedPath = Join-Path -Path $MonthPath -ChildPath "eingereicht"
    if (-not (Test-Path $SubmittedPath)) {
        New-Item -Path $SubmittedPath -ItemType Directory -Force
    }
}