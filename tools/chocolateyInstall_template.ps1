$tools = Split-Path $MyInvocation.MyCommand.Definition

. $tools\helper.ps1

$packageArgs = @{
  PackageName     = 'rubymine'
  FileType        = 'exe'
  Silent          = '/S'
  ChecksumType    = 'sha256'
  Checksum        = '{{checksum}}'
  Url             = '{{download}}'
}
Install-ChocolateyPackage @packageArgs
