:: This is to backup my work hard drive
:: Directories to include
::    C:\Articulate
::    C:\sc (X:\)
::    C:\Users\jditzel
::        XD C:\Users\jditzel\Dropbox
::        XD C:\Users\jditzel\AppData
::        XD C:\Users\jditzel\.atom
::        XD C:\Users\jditzel\Downloads
::        XD C:\Users\jditzel\Sharepoint
::        XD C:\Users\jditzel\bin
::        XD C:\Users\jditzel\ODBA
::
::    C:\cygwin64\home\jditzel
::
:: Directories to Back-up to
::    C:\Users\jditzel\Dropbox\Work\MCG\JonD
::    N:\JonD\

@ECHO OFF
  SET cdvar="%CD%"
    PUSHD X:\

      ::Copy everything to folder on mcg001azrres001
        ::Articulate
        ROBOCOPY "C:\Articulate" "\\mcg001azrres001\MCG\JonD\Articulate" /E /MIR /NP /Z /MT:10 /LOG:"General_bak_log_J.txt" /NDL /TS
        ::sc
        ROBOCOPY "C:\sc" "\\mcg001azrres001\MCG\JonD\sc" /E /MIR /NP /Z /MT:10 /LOG+:"General_bak_log_J.txt" /NDL /TS
        ::jditzel
        ROBOCOPY "C:\Users\jditzel" "\\mcg001azrres001\MCG\JonD\jditzel" /XD "C:\Users\jditzel\Dropbox" "C:\Users\jditzel\AppData" "C:\Users\jditzel\.atom" "C:\Users\jditzel\Downloads" "C:\Users\jditzel\Sharepoint" "C:\Users\jditzel\bin" "C:\Users\jditzel\ODBA" /E /MIR /NP /Z /MT:10 /LOG+:"General_bak_log_J.txt" /NDL /TS
        ::cyghome
        ROBOCOPY "C:\cygwin64\home\jditzel" "\\mcg001azrres001\MCG\JonD\cyghome" /E /MIR /NP /Z /MT:10 /LOG+:"General_bak_log_J.txt" /NDL /TS
        ::notify complete
        MSG jditzel /v /w "General Backup to \\mcg001azrres001 complete"

      :: Copy everything to DB
        ::J to W
        :: ROBOCOPY "\\mcg001azrres001\MCG\JonD" "C:\Users\jditzel\Dropbox\Work\MCG\JonD" /E /MIR /NP /Z /MT:10 /LOG:"General_bak_log_W.txt" /NDL /TS
        ::notify complete
        MSG jditzel /v /w "General Backup to Dropbox complete"

    POPD
  CD %cdvar%
@ECHO ON
