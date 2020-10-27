:: Starts/restarts Translucent Task Bar with my custom settings.
::--dynamic-ws
@ECHO off
PSKILL translucentTB -nobanner >NUL
START "" "C:\Users\jditzel\Dropbox\TranslucentTB.2017.3\Translucenttb.exe" --tint ff1b375a tint
@ECHO ON