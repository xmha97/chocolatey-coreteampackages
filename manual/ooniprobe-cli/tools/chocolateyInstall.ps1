$packageName    = 'ooniprobe-cli'
$url            = 'https://github.com/ooni/probe-cli/releases/download/v3.0.7-beta.1/ooniprobe_v3.0.7-beta.1_windows_amd64.zip'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum       = '809603ba1ad008213d2f9981f184d7d20b5944599d58474f71494a411f57960e'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
