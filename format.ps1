$date = Read-Host -Prompt "Enter the day (DD)"
$month = Read-Host -Prompt "Enter the month (MM)" 
$year = Read-Host -Prompt "Enter the year (YYYY)" 

if($date -match  '^\d{1,2}$' -and $month -match '^\d{1,2}$' -and $year -match '^d{4}$'){
    try{
        $dateofBirth = [DateTime]::ParseExact("$year-$month-$day","yyyy-MM-dd",[System.Globalization.CultureInfo]::I)
        $formatteddate = $dateofBirth.ToString("dd-MM-yyyy")
        Write-Host "Date of Birth: $formatteddate"}
        catch {
            Write-Host "Invalid date"
        }
} else {
    Write-Host "Invalid input.Please input valid values for date,month and year"
}