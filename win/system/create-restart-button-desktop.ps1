# Description: Create restart.bat on the Desktop of the current user.

$desktopPath = [Environment]::GetFolderPath("Desktop")

$restartBatch =
@"
echo Press any key to restart.
pause > nul
shutdown /r
"@

$restartBatch | Out-File -FilePath $desktopPath\restart.bat