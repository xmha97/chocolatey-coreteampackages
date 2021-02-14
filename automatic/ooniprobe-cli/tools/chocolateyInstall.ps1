$ErrorActionPreference = 'Stop'

$packageName    = 'ooniprobe-cli'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$baseURL        = "https://github.com/ooni/probe-cli/releases/download/v$env:ChocolateyPackageVersion/ooniprobe_v" + "$env:ChocolateyPackageVersion"
$url            = $baseURL + "_windows_386.zip"
$url64          = $baseURL + "_windows_amd64.zip"

$checksum       = '6084aa77496956f3a80337ee45a4a9dd02d3ef2f5f34353276756a4cbdb1c8bd'
$checksum64     = '81766535f584c7add83143233f05714e18eb20f78508de02307e1221b5a9c92f'

$checksumType   = 'sha256'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"