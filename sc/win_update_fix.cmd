::Fixes corrupted Software Update cache
::Must be run as admin
@ECHO OFF
NET STOP wuauserv
NET STOP cryptSvc
NET STOP DoSvc
NET STOP bits
NET STOP msiserver
DEL C:\Windows\SoftwareDistribution.old /Q
DEL C:\Windows\System32\Catroot2.old /Q
REN C:\Windows\SoftwareDistribution SoftwareDistribution.old
REN C:\Windows\System32\catroot2 Catroot2.old
NET START msiserver
NET START bits
NET START DoSvc
NET START cryptSvc
NET START wuauserv
@ECHO ON