
$LUVI_VERSION = "0.7.1"
$LIT_VERSION = "0.10.5"

$LUVI_ARCH = "Windows-amd64"
$LUVI_URL = "https://github.com/luvit/luvi/releases/download/v$LUVI_VERSION/luvi-static-$LUVI_ARCH.exe"
$LIT_URL = "https://github.com/luvit/lit/archive/$LIT_VERSION.zip"

function Download-File {
param (
  [string]$url,
  [string]$file
 )
  Write-Host "Downloading $url to $file"
  $downloader = new-object System.Net.WebClient
  $downloader.Proxy.Credentials=[System.Net.CredentialCache]::DefaultNetworkCredentials;
  $downloader.DownloadFile($url, $file)
}

# Download Files
Download-File $LUVI_URL "luvi.exe"
Download-File $LIT_URL "lit.zip"

# Create lit.exe using lit
$env:LUVI_APP="lit.zip"
Start-Process "luvi.exe" -ArgumentList "make lit.zip" -Wait -NoNewWindow
$env:LUVI_APP=""

# Cleanup
Remove-Item "luvi.exe"
Remove-Item "lit.zip"
