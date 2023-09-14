$date = Read-Host  "Enter the day (DD)"
$month = Read-Host  "Enter the month (MM)" 
$year = Read-Host  "Enter the year (YYYY)" 
if ($date -match '^\d{1,2}$' -and $month -match '^\d{1,2}$' -and $year -match '^\d{4}$'){
    $formattedDate = "{0:D2}-{1:D2}-{2}" -f [int]$date, [int]$month, $year 
    Write-Host "Date of Birth: $formattedDate"
} else{
    Write-Host "Invalid"
}
