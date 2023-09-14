$date = Read-Host -Prompt "Enter the day (DD)"
$month = Read-Host -Prompt "Enter the month (MM)" 
$year = Read-Host -Prompt "Enter the year (YYYY)" 
if ($day -match '^\d{1,2}$' -and $month -match '^\d{1,2}$' -and $year -match '^\d{4}$'){
    $formattedDate = "{0:D2"
}
