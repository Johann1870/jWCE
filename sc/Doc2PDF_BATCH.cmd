@ECHO OFF
SETLOCAL
SET "sourcedir=C:\Users\jditzel\snadbox"
PUSHD %sourcedir%
FOR /f %%a IN ('dir /b /s /a-d *.docx') DO (
	IF /i "%%~xa"==".docx" (
		C:\sc\doc2pdf.vbs %%a
	)
)
POPD
GOTO :EOF
ENDLOCAL
@ECHO ON