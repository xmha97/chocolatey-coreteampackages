$packageName    = 'ooniprobe-cli'
$url            = 'https://github.com/ooni/probe-cli/releases/download/v3.0.7/ooniprobe_v3.0.7_windows_amd64.zip'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum       = '02d86a5a8494c63949cf81934ae2090ceae526bf54565489fee336cd10f546eb'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
