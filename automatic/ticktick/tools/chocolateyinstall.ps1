$ErrorActionPreference = 'Stop';

$packageName= 'ticktick'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://ticktick.com/static/getApp/download?type=win64'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  softwareName  = 'TickTick'
  checksum      = 'f73a6e369421a34688bbdcc07ca05062e4f6af1d4960c40cf572d0008aeafc81'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
