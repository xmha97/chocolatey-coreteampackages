$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/rastikerdar/vazir-font/releases/download/v$env:ChocolateyPackageVersion/vazir-font-v$env:ChocolateyPackageVersion.zip"
$myChecksum = '41242a8fecec467f547118a9fa6b14a9bd5c7e8f1d8f88f418c811f4b4695501'

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