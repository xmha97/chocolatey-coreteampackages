$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$myVersion  = [system.String]::Join('.', $env:ChocolateyPackageVersion.Split('.')[0..2])
$url        = "https://github.com/rastikerdar/vazir-font/releases/download/v$env:ChocolateyPackageVersion/vazir-font-v$env:ChocolateyPackageVersion.zip"
$myChecksum = '29dd19de15983dd3b027f9760ef47c262e95d9e006326adc2c486245d9395a41'

$packageArgs = @{
  softwareName  = 'Vazir font'
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksumType  = 'sha256'
  checksum      = $myChecksum
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyFont $toolsDir -multiple