$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$myVersion  = [system.String]::Join('.', $env:ChocolateyPackageVersion.Split('.')[0..2])
$url        = "https://github.com/ryanoasis/nerd-fonts/releases/download/v$env:ChocolateyPackageVersion/DejaVuSansMono.zip"
$myChecksum = '3fbcc4904c88f68d24c8b479784a1aba37f2d78b1162d21f6fc85a58ffcc0e0f'

$packageArgs = @{
  softwareName  = 'DejaVuSansMono Nerd Font'
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksumType  = 'sha256'
  checksum      = $myChecksum
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyFont "$toolsDir\DejaVu Sans Mono Nerd Font Complete Mono Windows Compatible.ttf"
