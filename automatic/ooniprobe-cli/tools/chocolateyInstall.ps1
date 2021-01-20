$ErrorActionPreference = 'Stop'

$packageName    = 'ooniprobe-cli'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url            = "https://github.com/ooni/probe-cli/releases/download/v$env:ChocolateyPackageVersion/ooniprobe_v$env:ChocolateyPackageVersion_windows_386.zip"
$url64          = "https://github.com/ooni/probe-cli/releases/download/v$env:ChocolateyPackageVersion/ooniprobe_v$env:ChocolateyPackageVersion_windows_amd64.zip"

$checksum       = '6a859c8d24c1e025949c71a60363b1c4302683f648b758c5e6132b7029611665'
$checksum64     = '4165c0c95a4fc138dcfe836ccf628660fd570ea8e01a1c07655012c85f7d7e93'

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