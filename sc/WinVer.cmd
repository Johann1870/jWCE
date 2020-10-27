   @echo off
   SETLOCAL   
   ::parse the VER command 
   FOR /F "delims= tokens=*"  %%G IN ('ver') DO SET _version=%%G 
   :: show the result 
   echo %_version%
   ENDLOCAL