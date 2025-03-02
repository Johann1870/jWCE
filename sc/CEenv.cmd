@ECHO OFF

GOTO DEBUG
:DEBUG

::DIRECTORIES
	::CD %WINDIR%\system32
	
	
REM SETLOCAL	
REM ::COLORS	
	REM ::ADMIN 64 BACKGROUND COLOR
	REM SET "A64BCOLOR=0"	
	REM ::ADMIN 64 FOREGROUND COLOR
	REM SET "A64FCOLOR=C"	
	REM ::ADMIN 32 BACKGROUND COLOR
	REM SET "A32BCOLOR=7"	
	REM ::ADMIN 32 FOREGROUND COLOR
	REM SET "A32FCOLOR=C"	
	REM ::USER 64 BACKGROUND COLOR
	REM SET "U64BCOLOR=F"	
	REM ::USER 64 FOREGROUND COLOR
	REM SET "U64FCOLOR=2"	
	REM ::USER 32 BACKGROUND COLOR
	REM SET "U32BCOLOR=7"	
	REM ::USER 32 FOREGROUND COLOR
	REM SET "U32FCOLOR=2"
	REM ::SYSTEM FOREGROUND COLOR
	REM SET "SFCOLOR=C"
	REM ::SYSTEM BACKGROUND COLOR
	REM SET "SBCOLOR=E"
	
REM ::TITLES AND COLORS
	REM ::TITLE
	REM SET TITLE1= - %USERDOMAIN%\%USERNAME% - %COMPUTERNAME%  LogonServer: %LOGONSERVER%	
	REM ::Determines whether the cmd session is a 32 or 64 bit process
	REM ECHO %PROCESSOR_ARCHITECTURE%|FINDSTR AMD64>nul && (SET TITLE2=64 bit %TITLE1%&SET BCOLOR=%A64BCOLOR%%U64BCOLOR%&SET FCOLOR=%A64FCOLOR%%U64FCOLOR%)||(SET TITLE2=32 bit %TITLE1%&SET BCOLOR=%A32BCOLOR%%U32BCOLOR%&SET FCOLOR=%A32FCOLOR%%U32FCOLOR%)	
	REM ::ADDS SESSION NAME TO TITLE
	REM SET TITLE3= %TITLE2%  Session:%SESSIONNAME%	
	REM ::CHECKS ADMIN STATUS
	REM FSUTIL DIRTY QUERY %SYSTEMDRIVE% > nul 2> nul && (SET TITLE4=ADMIN %TITLE3%&SET FCOLOR=%FCOLOR:~0,1%&SET BCOLOR=%BCOLOR:~0,1%) || (SET BCOLOR=%BCOLOR:~1,1%&SET FCOLOR=%FCOLOR:~1,1%&SET TITLE4=NONADMIN %TITLE3%)	
	REM ::SYSTEM
	REM WHOAMI /GROUPS | FINDSTR /c:"S-1-16-16384">nul: &&  (TITLE [SYSTEM] %TITLE4%&SET FCOLOR=%SFCOLOR%&SET BCOLOR=%SBCOLOR%) || (TITLE [NONSYSTEM] %TITLE4%)
	REM ::COLOR
	REM SET DCOLOR=%BCOLOR%%FCOLOR%
	REM ::COLOR %DCOLOR%
REM ENDLOCAL

SETLOCAL	
::COLORS	
	::ADMIN 64 BACKGROUND COLOR
	SET "A64BCOLOR=0"	
	::ADMIN 64 FOREGROUND COLOR
	SET "A64FCOLOR=C"	
	::ADMIN 32 BACKGROUND COLOR
	SET "A32BCOLOR=0"	
	::ADMIN 32 FOREGROUND COLOR
	SET "A32FCOLOR=3"
	
	::USER 64 BACKGROUND COLOR
	SET "U64BCOLOR=0"	
	::USER 64 FOREGROUND COLOR
	SET "U64FCOLOR=B"	
	::USER 32 BACKGROUND COLOR
	SET "U32BCOLOR=7"	
	::USER 32 FOREGROUND COLOR
	SET "U32FCOLOR=3"

	::SYSTEM BACKGROUND COLOR
	SET "S64BCOLOR=E"	
	::SYSTEM FOREGROUND COLOR
	SET "S64FCOLOR=C"
	::SYSTEM 32 BACKGROUND COLOR
	SET "S32BCOLOR=E"
	::SYSTEM 32 FOREGROUND COLOR
	SET "S32FCOLOR=3"

	
::TITLES AND COLORS
	::TITLE
	SET TITLE1= :%USERDOMAIN%\%USERNAME% :%COMPUTERNAME%  LogonServer:%LOGONSERVER%	
	::Determines whether the cmd session is a 32 or 64 bit process
	ECHO %PROCESSOR_ARCHITECTURE%|FINDSTR AMD64>nul && (SET TITLE2=64 bit %TITLE1%&SET BCOLOR=%S64BCOLOR%%A64BCOLOR%%U64BCOLOR%&SET FCOLOR=%S64FCOLOR%%A64FCOLOR%%U64FCOLOR%)||(SET TITLE2=32 bit %TITLE1%&SET BCOLOR=%S32BCOLOR%%A32BCOLOR%%U32BCOLOR%&SET FCOLOR=%S32FCOLOR%%A32FCOLOR%%U32FCOLOR%)	
	::ADDS SESSION NAME TO TITLE
	SET TITLE3= %TITLE2%  Session:%SESSIONNAME%	
	
	::SYSTEM
	WHOAMI /GROUPS | FINDSTR /c:"S-1-16-16384">nul: &&  (SET TITLE4=[SYSTEM] %TITLE3%&SET FCOLOR=%FCOLOR:~0,1%&SET BCOLOR=%BCOLOR:~0,1%) || (SET BCOLOR=%BCOLOR:~1,2%&SET FCOLOR=%FCOLOR:~1,2%&SET TITLE4=[NONSYSTEM] %TITLE3%)
	
	::CHECKS ADMIN STATUS
	FSUTIL DIRTY QUERY %SYSTEMDRIVE% > nul 2> nul && (TITLE ADMIN %TITLE4%&SET FCOLOR=%FCOLOR:~0,1%&SET BCOLOR=%BCOLOR:~0,1%) || (SET BCOLOR=%BCOLOR:~1,1%&SET FCOLOR=%FCOLOR:~1,1%&TITLE NONADMIN %TITLE4%)	

	::COLOR
	SET DCOLOR=%BCOLOR%%FCOLOR%
	

	
	COLOR %DCOLOR%



	
ENDLOCAL


::PATHS	
	::Scripting Path
	SET PATH=%PATH%;C:\sc
	::Notepad++
	SET PATH=%PATH%;C:\Program Files (x86)\Notepad++
	::Pandoc
	SET PATH=%PATH%;%LOCALAPPDATA%\Pandoc
	::Python27
	::SET PATH=%PATH%;C:\Python27
	::Office
	SET PATH=%PATH%;C:\Program Files (x86)\Microsoft Office\root\Office16
	::Desktop
	SET PATH=%PATH%;%HOMEPATH%\Desktop
	::PSTools
	::SET PATH=%PATH%;C:\PSTools
	::SCREENFETCH
	::SET PATH=%PATH%;C:\cygwin64\home\Jonathan\screenfetch-c
	::GO bin
	::SET PATH=%PATH%;C:\Users\Jonathan\GoWorkspace\bin

::ALIASES
	DOSKEY npp=notepad++ $*
	::DOSKEY st="C:\Program Files\Sublime Text 3\sublime_text.exe" $*
	::DOSKEY np=%WINDIR%\System32\notepad.exe $*
	DOSKEY xl=C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE $*
	DOSKEY ps=%WINDIR%\System32\WindowsPowerShell\v1.0\powershell.exe $*
	DOSKEY au3=C:\Program Files (x86)\AutoIt3\AutoIt3.exe $*
	DOSKEY au364=C:\Program Files (x86)\AutoIt3\AutoIt3_x64.exe $*
	DOSKEY pg=C:\Python27\Scripts\pygmentize.exe $*
	DOSKEY ~=cd /d "C:\cygwin64\home\Jonathan"
	DOSKEY wego="C:\Users\Jonathan\GoWorkspace\bin\wego" $*
	DOSKEY moff=nircmd monitor off
	DOSKEY home=cd /d %HOMEPATH% $*
	DOSKEY docs=cd /d %HOMEPATH%\Documents $*
	DOSKEY proj=cd /d %HOMEPATH%\Documents\proj $*
	DOSKEY jiraa=jira issue $* --assign 5ad9008c1b0b680955f4f390

	
	DOSKEY stopvlc=taskkill /F /IM vlc.exe
	
	DOSKEY cupcake=cup all -y --ignore-dependencies
	
	DOSKEY cfm=mpv http://icecast.thisisdax.com/ClassicFMMP3.m3u
	DOSKEY bbc1=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_low/ak/bbc_radio_one.m3u8
	DOSKEY bbc2=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_low/ak/bbc_radio_two.m3u8
	DOSKEY bbc3=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_vlow/ak/bbc_radio_three.m3u8
	DOSKEY bbc4=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_low/ak/bbc_radio_fourfm.m3u8
	DOSKEY bbc5=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_low/ak/bbc_radio_fourfm.m3u8
	DOSKEY bbc6=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_low/ak/bbc_radio_fourfm.m3u8
	DOSKEY bbc4x=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_low/ak/bbc_radio_four_extra.m3u8
	DOSKEY bbcw=mpv http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/nonuk/sbr_low/ak/bbc_world_service.m3u8
	DOSKEY kingfm=mpv https://classicalking.streamguys1.com/king-fm-aac-128k
	DOSKEY hr2=mpv https://dispatcher.rndfnk.com/hr/hr2/live/mp3/high
	
	
	::DOSKEY home=%HOMEPATH%
	
	"C:\sc\My_CmdInit.cmd"
	
	CLS
	::screenfetch-c.exe -E
	
	
	::PROMPT [94;40m#$S[96;40m%USERNAME%$S[97;40m@$S[92;40m%COMPUTERNAME%$S[97;40min$S[93;40m$P$S[97;40m[$T]$_[91;40m$$[97;40m

@ECHO ON
