$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$myVersion  = [system.String]::Join('.', $env:ChocolateyPackageVersion.Split('.')[0..2])
$url        = "https://github.com/rastikerdar/vazir-font/releases/download/v$env:ChocolateyPackageVersion/vazir-font-v$env:ChocolateyPackageVersion.zip"
$myChecksum = 'cb74f7db8257d783d6301c798ae2e10d25035aaf4d202fca17c2129578ab29c3'

$packageArgs = @{
  softwareName  = 'DejaVuSansMono Nerd Font'
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksumType  = 'sha256'
  checksum      = $myChecksum
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyFont "$toolsDir\Vazir.ttf"
Install-ChocolateyFont "$toolsDir\Vazir-Thin.ttf"
Install-ChocolateyFont "$toolsDir\Vazir-Medium.ttf"
Install-ChocolateyFont "$toolsDir\Vazir-Light.ttf"
Install-ChocolateyFont "$toolsDir\Vazir-Bold.ttf"
Install-ChocolateyFont "$toolsDir\Vazir-Black.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits\Vazir-Thin-FD.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits\Vazir-Medium-FD.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits\Vazir-Light-FD.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits\Vazir-FD.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits\Vazir-Bold-FD.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits\Vazir-Black-FD.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits-Without-Latin\Vazir-Thin-FD-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits-Without-Latin\Vazir-Medium-FD-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits-Without-Latin\Vazir-Light-FD-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits-Without-Latin\Vazir-FD-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits-Without-Latin\Vazir-Bold-FD-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Farsi-Digits-Without-Latin\Vazir-Black-FD-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Without-Latin\Vazir-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Without-Latin\Vazir-Thin-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Without-Latin\Vazir-Medium-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Without-Latin\Vazir-Light-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Without-Latin\Vazir-Bold-WOL.ttf"
Install-ChocolateyFont "$toolsDir\Without-Latin\Vazir-Black-WOL.ttf"
