$basePath = "PS/home/coder/project/workspace" 
$testingDir = Join-Path -Path $basePath -ChildPath "Testing" 
$subfolder1 = Join-Path -Path $testingDir -ChildPath "SubFolder1" 
$subfolder2 = Join-Path -Path $testingDir -ChildPath "SubFolder2" 

New-Item -Path $testingDir -ItemType Directory -Force 
New-Item -Path $subfolder1 -ItemType Directory -Force 
New-Item -Path $subfolder2 -ItemType Directory -Force 

1..3 | ForEach-Object {
    $filename = "Test$_.txt" 
    $filepath = Join-Path -Path $subfolder1 -ChildPath $filename 
    Set-Content -Path $filepath -Value "This is $filename content."
} 

4..6 | ForEach-Object {
    $filename = "Test$_.txt" 
    $filepath = Join-Path -Path $subfolder2 -ChildPath $filename 
    Set-Content -Path $filepath -Value "This is $filename content. "
} 
Write-Host "Folder 'Testing' and subfolders created with test files."