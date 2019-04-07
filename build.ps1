$XPI_OUT = "xpi/unread-badge@streiff.net.xpi"

Add-Type -A System.IO.Compression.FileSystem

# mkdir -p xpi
New-Item -ItemType directory -Path xpi -ErrorAction SilentlyContinue

if (Test-Path $XPI_OUT)
{
	Remove-Item $XPI_OUT
}

# zip the 'src' directory into an XPI
[IO.Compression.ZipFile]::CreateFromDirectory("src", $XPI_OUT)
