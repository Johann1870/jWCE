# Backup bookmarks in Firefox

### `about:config`
* `browser.bookmarks.autoExportHTML` = `true`
* `browser.bookmarks.file` = `C:\Users\johan\Github\jWCE\Firefox\personal_bookmarks.html`

# Separate profiles

ref: https://old.reddit.com/r/firefox/comments/s2k5tt/have_multiple_firefox_profile_and_taskbar_icons/

### `about:profiles`
* create a new profile
* launch profile in new browser

### `about:config`
* create boolean `taskbar.grouping.useprofile` = `true`
* set `browser.startup.blankwindow` = `false`
* close browser

### original profile
* relaunch profile
* profile should launch in new icon on taskbar
* pin to taskbar and close again

### Windows Explorer
* shift right click and open properties
* change target to `"%PROGRAMFILES%\Mozilla Firefox\firefox.exe" --no-remote -P <profilename>`
* change icon
* change name
* restart explorer from task manager

# User Chrome

### `about:config`
* `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`

#Show Menu and Title bar
* right click anywhere in the toolbar; customise toolbar
* Select checkbox Title Bar
* Select dropdown in Toolbars for Menu Bar