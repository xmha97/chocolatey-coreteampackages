$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# Install start menu shortcut
$programs = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\ReactOS"
$shortcutFilePath = Join-Path $programs "Paint.lnk"
$targetPath = Join-Path $toolsDir "mspaint.exe"
Install-ChocolateyShortcut -shortcutFilePath $shortcutFilePath -targetPath $targetPath
