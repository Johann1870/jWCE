dim oShell, oShellEnv, computerName, userprofile
set oShell    = WScript.CreateObject("WScript.Shell")
set oShellEnv = oShell.Environment("Process")
computerName  = oShellEnv("ComputerName")
userprofile  = oShellEnv("username")
MsgBox(userprofile)
