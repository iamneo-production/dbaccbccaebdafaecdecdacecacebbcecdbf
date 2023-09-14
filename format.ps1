$date = Read-Host -Prompt "Enter the day (DD)"
$month = Read-Host -Prompt "Enter the month (MM)" 
$year = Read-Host -Prompt "Enter the year (YYYY)" 

if($date -match  '^\d{1,2}$' -and $month -match '^\d{1,2}$' -and $year -match '^d{4}$'){
    $formatteddate = "{0:D2}-{1:D2}-{2}" -  f [int]$date, [int]$month,[int]$year
    Write-Host "Formatted Date of Birth: $formatteddate"
} else {
    Write-Host "Invalid input.Please input valid values for date,month and year"
}