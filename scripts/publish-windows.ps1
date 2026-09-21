$ErrorActionPreference='Stop'
$version=(Get-Content VERSION).Trim()
Remove-Item -Recurse -Force publish,dist/release -ErrorAction SilentlyContinue
 dotnet restore Dentiva.sln
 dotnet test Dentiva.sln -c Release --no-restore
 dotnet publish src/Dentiva.Desktop/Dentiva.Desktop.csproj -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -o publish/win-x64
New-Item -ItemType Directory -Force dist/release | Out-Null
Compress-Archive -Path publish/win-x64/* -DestinationPath "dist/release/Dentiva-Portable-v$version-x64.zip"
Write-Host 'Portable package created. Run installer/Dentiva.iss with Inno Setup to create the installer.'
