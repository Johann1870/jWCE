
::Doesn't work as expected

@ECHO OFF

SET PATH=%1

FOR /D %%I in ("\%PATH%\*") do (
	PUSHD "%%~fI"
	"%ProgramFiles%\7-Zip\7z.exe" a "%%~dpnxI.zip" ".\*"
	POPD
)

@ECHO ON