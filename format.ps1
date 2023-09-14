$date = Read-Host -Prompt "Enter the day (DD)"
$month = Read-Host -Prompt "Enter the month (MM)" 
$year = Read-Host -Prompt "Enter the year (YYYY)" 

if($date -match  '^\d{1,2}$' -and $month -match '^\d{1,2}$' -and $year -match '^d{4}$'){
    $dateofBirth = Get-Date -Year $year -Month $month -Day $day
    $formatteddate = $dateofBirth.ToString("dd-MM-yyyy")
    Write-Host "Date of Birth: $formatteddate"
} else {
    Write-Host "Invalid input.Please input valid values for date,month and year"
}