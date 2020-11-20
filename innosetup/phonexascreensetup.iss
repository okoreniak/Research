; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Phonexa Screenshoter"
#define MyAppVersion "1.1"
#define MyAppPublisher "Phonexa Inc."
#define MyAppURL "https://phonexa.com/"
#define MyAppExeName "phonexa-screens.exe"
#define SrcFilesRoot  "phonexa-screens-1.8.0-continuous-windows"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1F1DD3DE-E571-4E35-B2CF-49F86443F6CC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
;
;LicenseFile=C:\InnoSetups\license.txt
;InfoBeforeFile=C:\InnoSetups\infobefore.txt
;InfoAfterFile=C:\InnoSetups\infoafter.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=buildsetup
OutputBaseFilename=phonexa_screens_setup{#MyAppVersion}
SetupIconFile=C:\InnoSetups\phonexa_logo_128.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SrcFilesRoot}\phonexa-screens.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\bearer\*"; DestDir: "{app}\bearer\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcFilesRoot}\iconengines\*"; DestDir: "{app}\iconengines\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcFilesRoot}\imageformats\*"; DestDir: "{app}\imageformats\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcFilesRoot}\platforms\*"; DestDir: "{app}\platforms\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcFilesRoot}\printsupport\*"; DestDir: "{app}\printsupport\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcFilesRoot}\translations\*"; DestDir: "{app}\translations\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SrcFilesRoot}\D3Dcompiler_47.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\libeay32.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\libEGL.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\libGLESV2.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5Core.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5Gui.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5Network.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5PrintSupport.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5Svg.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5Widgets.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5WinExtras.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5Xml.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\ssleay32.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\Qt5WinExtras.dll"; DestDir: "{app}\"; Flags: ignoreversion
Source: "{#SrcFilesRoot}\ssleay32.dll"; DestDir: "{app}\"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
