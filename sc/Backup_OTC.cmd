:: This is a backup for the OTC folder on the shares drive
:: Written 13 Feb 2018 after an 'incident' caused the losing of several critical files from the shares drive

@ECHO OFF
SET "var="%CD%"
PUSHD X:\

ROBOCOPY "N:\OTC Team" "D:\OTC_bak" /E /MIR /NP /Z /XX /MT:10 /LOG:"OTC_bak_log_D.txt" /NDL /TS
MSG jditzel /v /w "OTC Backup to External HD Complete"
::ROBOCOPY "N:\OTC Team" "P:\Online Training Center Projec - Doc\OTC_Shares_bak" /E /MIR /NP /Z /XX /MT:10 /LOG:"OTC_bak_log_P.txt" /NDL /TS
::MSG jditzel /v /w "OTC Backup to Sharepoint Complete"
POPD
CD %var%
@ECHO ON
