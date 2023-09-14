$folderName = "NewFolder" 
$fileName = "NewFile.txt" 
$homeDirectory = [System.Environment]::GetFolderPath("UserProfile") 
$folderPath = Join-Path -Path $homeDirectory -ChildPath $folderName
New-Item -Path $folderPath -ItemType Directory -Force 

$filePath =Join-Path -Path $folderPath -ChildPath $fileName
New-Item -Path $filePath -ItemType File -Force 

Write-Host "New folder '$folderName' and new file '$fileName' created in home directory"