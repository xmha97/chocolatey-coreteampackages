$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$myVersion  = [system.String]::Join('.', $env:ChocolateyPackageVersion.Split('.')[0..2])
$url        = "https://github.com/rastikerdar/vazir-font/releases/download/v$env:ChocolateyPackageVersion/vazir-font-v$env:ChocolateyPackageVersion.zip"
$myChecksum = '3a45738af972306a40a2fa8239a359c239b4efbf614bcf89a1022c533a1666c8'

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