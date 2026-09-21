; Inno Setup 6 configuration. Build on Windows after dotnet publish.
#define AppVersion "1.0.0"
[Setup]
AppId={{DENTIVA-CLINIC-OS}}
AppName=Dentiva
AppVersion={#AppVersion}
DefaultDirName={autopf}\Dentiva
DefaultGroupName=Dentiva
OutputDir=..\dist\release
OutputBaseFilename=Dentiva-Setup-v{#AppVersion}-x64
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
Uninstallable=yes
[Files]
Source: "..\publish\win-x64\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion
[Icons]
Name: "{group}\Dentiva"; Filename: "{app}\Dentiva.exe"
Name: "{autodesktop}\Dentiva"; Filename: "{app}\Dentiva.exe"; Tasks: desktopicon
[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; Flags: unchecked
