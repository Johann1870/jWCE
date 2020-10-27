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

6) [ ] Taskbar
    a) [ ] cinst qdir
    a) [ ] Set taskbar to autohide, display left
    b) [ ] Set up Toolbars folder in C
    c) [ ] cinst t-Clock
7) [ ]  Shared drives
    a) [ ] connect to the VPN
    b) [ ] cinst Dropbox
    a) [ ] run the map net drives script
8) [ ]  Atlassian profile for FF
    a) [ ] create a new FF profile
    b) [ ] save a shortcut to the profile
8) [ ] Cygwin
    a) [ ] Download setup-x86_64.exe
    b) [ ]
