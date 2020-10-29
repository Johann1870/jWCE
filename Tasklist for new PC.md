# Set up for a new computer



1) [x] Install/Update Firefox
    a) [x] Install LastPass Extension
    b) [x] Sign into Firefox work profile
    c) [x] Set Firefox as default browser
2) [x] chocolatey
    a) [x] Run admin power shell
        i)  [x] `Set-ExecutionPolicy AllSigned`
        ii) [x] Run chocolatey install script
3) [x] Set up Github
    a) [x] Add folder in home for Github
    b) [x] cinst git
    c) [x] Clone this repo into the folder
4) [x] File Explorer
    a) [x] Show File Name Extensions
    b) [x] Show Hidden items
5) [x] Firefox custom chrome
    a) [x] change `about:config` `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`
    a) [x] Add chrome folder to default profile `%appdata%\Mozilla\Firefox\Profiles\[yourprofile]`
    b) [x] Add userChrome and userContent to folder
    c) [x] paste contents of tree_style_tab to Tree Style Tab settings plugin in FF (Options > Advanced > Extra style rules)
    d) [x] restart FF
    - **Note** *The custom icons for folders will work once dropbox is installed and mapped to drive W*
6) [x] Add scripts folder to C
    a) [x] Set permissions to System and user only
7) [ ] Set cmd settings
    a) [x] cinst Conemu
    b) [x] Set Autorun in the registry
    c) [ ] Set up Conemu with settings (wait for cygwin install?)
6) [x] Taskbar
    a) [x] cinst qdir
    b) [x] add `Q-dir.ini` to `%appdata%\Q-dir`.
    c) [x] set one tree for all
    d) [x] Set taskbar to autohide, display left
    e) [x] Set Accent colour to #002B7F for start, taskbar and action centre
    f) [ ] Set up Toolbars folder in C
    g) [x] cinst t-Clock
    h) [x] cinst opensans font
    i) [x] set t-Clock options
7) [x] Notepad++
    a) [x] cinst notepadplusplus
    b) [x] install plugins
    c) [x] add userDefineLang.xml to `%appdata%\Notepad++`
8) [x] Atom
    a) [x] cinst ATom
    b) [x] atom package manager install
        i) [x] sync-settings
        ii) [x] sync-settings-folder-location
    c) [x] set sync-settings to 'Use other backup location'
    d) [x] set folder location to %userprofile%/Dropbox/settings/atom
    e) [x] sync-settings > Restore
9) [x] Pandoc
    a) [x] cinst pandoc
    b) [x] enter location of pandoc exe in Markdown Preview Plus package in Atom
10) [x]  Shared drives
    a) [x] cinst Dropbox
    b) [x] connect to the VPN
    c) [x] run the map net drives script
11) [x]  Firefox Atlassian profile
    a) [x] create a new FF profile
        i) [x] about:profile
        ii) [x] create profile named 'Clean'
    b) [x] save a shortcut to the profile `"C:\Program Files (x86)\Mozilla Firefox\firefox.exe" -P Clean -no-remote`
11) [ ] X Mouse Button Control
    a) [ ] cinst x-mouse-button-control
    b) [ ]
10) [ ] Cygwin
    a) [ ] Download setup-x86_64.exe
    b) [ ]

## Misc

1) Disable Snagit startup
2) show all icons in the taskbar notification area
3) cinst ShareX
  setup sharex tasks
4) setup Slack
5) Setup Outlook
  a) add plugins
6) update office to latest version
7) update windows to latest version
