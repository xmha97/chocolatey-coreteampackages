$ErrorActionPreference = 'Stop'
# Remove start menu shortcut
$programs = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\ReactOS"
$shortcutFilePath = Join-Path $programs "Paint.lnk"
if (Test-Path $shortcutFilePath) { Remove-Item $shortcutFilePath }
