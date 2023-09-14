$num1 = Read-Host "enter first number"
$num2 = Read-Host "enter second number" 

$num1 = [int]$num1 
$num2 = [int]$num2 

$tot = $num1 + $num2 

if ($tot -ge 70) {
    Write-Host "Pass"
} else {
    Write-Host "Fail"
}