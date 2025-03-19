@ECHO OFF

:: Description: Cleans up Microsoft Team's Cache
 

ECHO "Closing Teams Processes..."
TASKKILL /f /t /fi "IMAGENAME eq teams.exe"
ECHO "Teams Processes closed successfully"
DEL /f /q "%appdata%\Microsoft\Teams\application cache\cache\*.*" > nul 2>&1
DEL /f /q "%appdata%\Microsoft\Teams\blob_storage\*.*" > nul 2>&1
DEL /f /q "%appdata%\Microsoft\Teams\databases\*.*" > nul 2>&1
DEL /f /q "%appdata%\Microsoft\Teams\GPUcache\*.*" > nul 2>&1
DEL /f /q "%appdata%\Microsoft\Teams\IndexdDB\*.db" > nul 2>&1
DEL /f /q "%appdata%\Microsoft\Teams\Local Storage\*.*" > nul 2>&1
DEL /f /q "%appdata%\Microsoft\Teams\tmp\*.*" > nul 2>&1
ECHO "Team's Cache has been cleared"
ECHO "Restarting Teams"
C:\Users\%USERNAME%\AppData\Local\Microsoft\Teams\Update.exe --processStart Teams.exe
ECHO "DONE"


ECHO "Press the Any Key to exit"
Pause >nul
@ECHO ON
