# Instructions Windows 11 Pro

* Version 7.0.1
* Updated for Windows 11

### First Steps

1. Set taskbar to left. Taskbar settings > Taskbar behaviours > Taskbar alignment: Left
2. Personalisation > Colours > Choose your mode > Dark
3. Personalisation > Colours > Accent Colour > Manual > Customised Colours > More > #002B7F
4. Personalisation > Colours > Show accent colour on Start and taskbar
5. Personalisation > Colours > Show accent colour on title bars and window borders
6. Install Git for Windows https://gitforwindows.org/
7. md %HOMEPATH%\Github
8. cd %HOMEPATH%\Github
9. git clone https://github.com/Johann1870/jWCE.git

### Chocolatey
https://chocolatey.org/install

1. Open powershell admin
2. `Get-ExecutionPolicy`
3. `Set-ExecutionPolicy AllSigned`
4. ```Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))```
5. open cmd admin
6. `cd %HOMEPATH%\Github\jWCE`
7. `choco install chocolateypackages.config -y`

### Firefox

1. Sign into Firefox Sync
2. Sign into Lastpass
3. Set default search as Kagi
4. Remove other search engines. Confirm Firefox hasn't done something funky like changing the home page

### Dropbox

1. Sign into Dropbox and begin sync

### Scripts
1. md `C:\sc`
2. remove all permissions from the folder except System and current user
3. copy contents of `%HOMEPATH%\Github\jWCE\sc` to `C:\sc`
4. Open Task Scheduler
5. Create New Task, **Name**: 'Map Drives', **Trigger**: at logon, **Action**: `C:\sc\MapNetDrives.vbs`
6. Save and Run Task

### Conemu
* Import `%HOMEPATH%\Dropbox\jWCE\sc`

### Pulsar
1. Install `sync-settings` by *atom-community*
2. Install `sync-settings-folder-location` by *UziTech*
3. Settings `sync-settings-folder-location`, **Folder Path**: `W:\bin\atom`
4. Settings `sync-settings`, **Use Other Backup Location**
5. Settings `sync-settings`, **Disallowed Settings**: `sync-settings-folder-location.folderPath`
6. Ctrl+Shift+P (command pallet): `Sync Settings: Restore`
7. Let it sync (it may take a while) and restart Pulsar

### Other programmes

* **Q-dir**: replace `%AppData%\Q-Dir\Q-Dir.ini` with  `%HOMEPATH%\Dropbox\lib\Q-dir.ini`
* **ShareX**: import from `%HOMEPATH%\Dropbox\lib\ShareX-15.0.0-backup.sxb`
* **Excel, Word**: import quick access and toolbar customisations from `%HOMEPATH%\Dropbox\lib\Excel Customizations.exportedUI` and `%HOMEPATH%\Dropbox\lib\Word Customizations.exportedUI`
* **Notepad++**: Plugins
	* AutoSave
	* Code Alignment
	* DSpellCheck
	* GitSCM
	* HEX-Editor
	* JSON Viewer
	* Markdown Panel
	* MarkdownViewer++
	* Mime tools
	* Npp Converter
	* NppExec
	* NppExport
	* Preview HTML
	* XML Tools
* **Kate**: Enable doc preview