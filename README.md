# johann1870's Windows Custom Environment
My custom windows setup.


## Taskbar
<img src="/resources/images/Taskbar_20190128.png" height="600" style="display:flex; float:left; margin:10px; padding:10px;">
The taskbar is customized by running [TranslucentTB](/TranslucentTB/TranslucentTB) and [TClock](https://github.com/White-Tiger/T-Clock).
It is set to Auto-hide and display on one monitor on the right side of the screen.

TranslucentTB is run from a batch script scheduled by Task Scheduler.

TClock is configured to show week numbers, the day of the year, uses T-Clock's calendar and 1 month past, 3 months total. The week is set according to ISO 8601 standards

<p style="clear: left;">
</p>
TClock's time format
<pre>
<code>
  HH:nn:ss\nddd, dd-mmm-yy\nyyyy-"W"Wi Od\n"JD: "JD\n"POSIX: "POSIX\n"Uptime:  "ST\n"UTC "W+8:nn:ss"           "@@@.@@
</code>
</pre>

Application shortcuts are arranged into toolbars which are located under root. Toolbars do not show text or title. Some toolbars show large icons and others small.
###  List of toolbars

1. **articulate**

    a. Articulate 360
    b. Storyline

2. **cloud**

    a. Backup and Sync from Google
    b. Datacastle Red
    c. Dropbox
    d. iCloud
    e. OneDrive
    f. ShareFile Desktop

3. **comm**

    a. lync.exe (Skype for Business)
    b. Microsoft Teams
    c. Rambox
    d. Signal Private Messenger
    e. Slack
    f. Telegram
    g. Yammer

4. **creative**

    a. Audacity
    b. Google Play Music Desktop Player
    c. iTunes
    d. Mp3tag
    e. Spotify
    f. VLC media player

5. **datavis**

    a. draw.io
    b. gvedit.exe
    c. Tableau Reader
    d. yed

6. **design**

    a. Designer
    b. ImageMagick Display
    c. Inkscape
    d. Pencil

7. **dev**

    a. Arachnophilia
    b. atom
    c. Eclipse Java Oxygen
    d. KDiff3
    e. Notepad++
    f. SciTE Script Editor
    g. Spyder
    h. Sublime Text 3
    i. Visual Studio 2017

8. **files**

    a. 7-zip File Manager
    b. Double Commander
    c. Explorer++
    d. Far Manager 3 x64
    e. File Explorer
    f. FileVoyager
    g. FreeCommander
    h. Q-Dir
    i. XenonPortable

9. **office**

    a. Access
    b. Excel
    c. Microsoft Store
    d. OneNote
    e. Outlook
    f. PowerPoint
    g. Publisher
    h. Word

10. **pm**

    a. Bitnami Redmine Stack Manager Tool
    b. GanttProject
    c. MeisterTask
    d. ProjectLibre
    e. Quip
    f. Trello

11. **prod**

    a. CherryTree
    b. Evernote
    c. speedcrunch

12. **repo**

    a. Git Bash
    b. Git GUI
    c. GitHub Desktop
    d. GitKraken
    e. Sourcetree

13. **screenshare**

    a. MirrorOp
    b. Remote Desktop Connection
    c. Reservationless-Plus VoIP
    d. Start Zoom
    e. TeamViewer 14
    f. TeamViewer 13.0.281
    g. WebEx Productivity Tools

14. **ss**

    a. Greenshot
    b. ShareX
    c. Snagit 12
    d. Snipping Tool

15. **term**

    a. Anaconda Navigator
    b. Command Prompt
    c. ConEmu64
    d. Debian GNU-Linux (WSL)
    e. Git Bash
    f. IDLE (Python GUI)
    g. Kali Linux (WSL)
    h. Ubuntu (WSL)

16. **util**

    a. Admin Panel
      <pre style="display:block;margin-left:3em; text-indent:0em;padding:5px;"><code>C:\Windows\explorer.exe shell:::{ED7BA470-8E54-465E-825C-99712043E01C}</code></pre>
    b. Apps
    <pre style="display:block;margin-left:3em; text-indent:0em;padding:5px;"><code>C:\Windows\explorer.exe shell:appsfolder</code></pre>
    c. AutoIt Window Info (x64)
    d. Bulk Rename Utility
    e. CCleaner
    f. Control Panel
    g. Core FTP LE
    h. Expresso
    i. FileTypesMan
    j. glogg
    k. grepWin
    l. LogiOptions
    m. Process Explorer
    n. Resource Hacker
    o. RunAsDate
    p. Snipping Tool
    q. Speccy
    r. SpeedCrunch
    s. Start.exe (portable apps)
    t. Task Manager
    u. tinySpell
    v. Winaero Tweaker

17. **web**

    a. Brave
    b. Chrome Canary
    c. Chromium
    d. Cyberfox
    e. Edge
    f. Falkon
    g. Google Chrome
    h. Internet Explorer
    i. Chrome - work profile
    j. Chrome - work profile 2
    k. Chrome Canary - work profile 3
    l. Chrome - home profile
    m. K-Meleon
    n. Maxthon
    o. Chrome - work team profile
    p. Mozilla Firefox
    q. Opera
    r. Chrome - work profile 4
    s. Vivaldi

18. **writing**

    a. EPS Viewer
    b. Ghostscript
    c. MikTeX
    d. TeXworks
    e. Typora

## Cygwin
1. Install the Cygwin [setup-x86_64.exe](https://cygwin.com/install.html) and run.
2. Install zsh, git, wget, xterm, etc


## Command Prompt
A script is referenced at when the shell is started.
This is referenced in the registry at
`HKEY_CURRENT_USER\Software\Microsoft\Command Processor`
A string key `Autorun` is created and is set to the path for the batch script which runs.
See \Command Prompt\cmdrc.cmd


## Chocolatey
1. Install [chocolatey](https://chocolatey.org/install)

    a. cmd
    <pre><code>@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"</code></pre>
    b. PowerShell

        i. Run `Get-ExecutionPolicy`. If it returns `Restricted`, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`
        ii. run
    <pre><code>Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))</code></pre>

2. Install programs

    a. create an xml file from the list of [InstalledPackages](/choco/InstalledPackages.txt) as per [choco-autoinstaller](https://gitlab.com/luukgrefte/choco-autoinstalller).

        *See also* [chocolatey documentation](https://chocolatey.org/docs/commands-install)

    b. run `cinst InstalledPackages.config`

## Conemu
see conemu settings xml

## Qdir
see Qdir settings xml

## Python


## Dropbox
install Dropbox
## Portable Apps
Pin Start.exe from Dropbox to taskbar

## Firefox
I use several extensions and settings to configure FF

### Extensions

 * Cisco Webex Extension
 * Cookie-Editor
 * LastPass
 * OneTab
 * salesforce-favicon
 * Tree Style Tab
 * uBlock Origin
 * uMatrix
 * Wappalyzer
 * Vim Vixen

### Customized theme

1. add the folder chrome containing bindings.xml, userChrome.css and userContent.css to your %appdata%\Mozilla\Firefox\Profiles\[yourprofile]
2. add the contents of tree_style_tab.css to your Advanced settings in Tree Style Tab extension.


## Winaero Tweaker

1. Customize This PC Folders
    a. Github
    b. cygwin home profile
    c. windows home profile

## Slack

Sidebar Theme

<pre><code>#ffffff,#ffffff,#0397D6,#aaeeee,#ddffff,#4E5661,#00968F,#C5003E</code></pre>

## Atom
1. Package list created by
`apm list --installed --bare > package-list.txt`

2. Install packages `apm install --packages-file package-list.txt`
