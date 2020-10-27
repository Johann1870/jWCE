'Option Explicit
Dim objNetwork, strDrive, objShell, objUNC
Dim strRemotePath, strDriveLetter, strNewName


'If WScript.Arguments.length =0 Then
'Set objShell = CreateObject("Shell.Application")

'objShell.ShellExecute "wscript.exe", Chr(34) & _
'WScript.ScriptFullName & Chr(34) & " uac", "", "runas", 1
'Else

'Removes current mappings

On Error Resume Next


Set objNetwork = CreateObject("Wscript.Network")

Set colDrives = objNetwork.EnumNetworkDrives

For i = 0 to colDrives.Count-1 Step 2

    objNetwork.RemoveNetworkDrive colDrives.Item(i)

Next


On Error Resume Next

'Share1'
'DropBox
'
strDriveLetter1 = "W:"
strRemotePath1 = "\\HBMSEA-DITZEL\c$\Users\jditzel\Dropbox"
strNewName1 = "DropBox"

' Section to map the network drive
Set objNetwork = CreateObject("WScript.Network")
objNetwork.MapNetworkDrive strDriveLetter1, strRemotePath1

' Section which actually (re)names the Mapped Drive
Set objShell = CreateObject("Shell.Application")
objShell.NameSpace(strDriveLetter1).Self.Name = strNewName1

'Share2'
'Scripts
'
strDriveLetter2 = "X:"
strRemotePath2 = "\\HBMSEA-DITZEL\c$\sc"
strNewName2 = "Scripts"

' Section to map the network drive
Set objNetwork = CreateObject("WScript.Network")
objNetwork.MapNetworkDrive strDriveLetter2, strRemotePath2

' Section which actually (re)names the Mapped Drive
Set objShell = CreateObject("Shell.Application")
objShell.NameSpace(strDriveLetter2).Self.Name = strNewName2

'Share3
'MCG
'
strDriveLetter2 = "N:"
strRemotePath2 = "\\mcg001azrres001\MCG"
strNewName2 = "MCG"

' Section to map the network drive
Set objNetwork = CreateObject("WScript.Network")
objNetwork.MapNetworkDrive strDriveLetter2, strRemotePath2

' Section which actually (re)names the Mapped Drive
Set objShell = CreateObject("Shell.Application")
objShell.NameSpace(strDriveLetter2).Self.Name = strNewName2

'Share4
'
strDriveLetter4 = "H:"
strRemotePath4 = "\\mcg001azrres001\Departments"
strNewName4 = "Departments"

' Section to map the network drive
Set objNetwork = CreateObject("WScript.Network")
objNetwork.MapNetworkDrive strDriveLetter4, strRemotePath4

' Section which actually (re)names the Mapped Drive
Set objShell = CreateObject("Shell.Application")
objShell.NameSpace(strDriveLetter4).Self.Name = strNewName4


' 'Share5
' '
' strDriveLetter5 = "S:"
' strRemotePath5 = "\\mcg001azrres001\MCG\OTC Team\Storyline FINAL"
' strNewName5 = "Storyline"

' ' Section to map the network drive
' Set objNetwork = CreateObject("WScript.Network")
' objNetwork.MapNetworkDrive strDriveLetter5, strRemotePath5

' ' Section which actually (re)names the Mapped Drive
' Set objShell = CreateObject("Shell.Application")
' objShell.NameSpace(strDriveLetter5).Self.Name = strNewName5

' 'Share6
' '
' strDriveLetter6 = "V:"
' strRemotePath6 = "\\mcg001azrres001\MCG\OTC Team\Audio"
' strNewName6 = "Audio"

' ' Section to map the network drive
' Set objNetwork = CreateObject("WScript.Network")
' objNetwork.MapNetworkDrive strDriveLetter6, strRemotePath6

' ' Section which actually (re)names the Mapped Drive
' Set objShell = CreateObject("Shell.Application")
' objShell.NameSpace(strDriveLetter6).Self.Name = strNewName6

' 'Share7
' '
' strDriveLetter7 = "P:"
' strRemotePath7 = "\\HBMSEA-DITZEL\c$\Users\jditzel\Hearst"
' strNewName7 = "Hearst"
'
' ' Section to map the network drive
' Set objNetwork = CreateObject("WScript.Network")
' objNetwork.MapNetworkDrive strDriveLetter7, strRemotePath7
'
' ' Section which actually (re)names the Mapped Drive
' Set objShell = CreateObject("Shell.Application")
' objShell.NameSpace(strDriveLetter7).Self.Name = strNewName7

' 'Share8
' '
' strDriveLetter8 = "J:"
' strRemotePath8 = "\\mcg001azrres001\MCG\JonD"
' strNewName8 = "JonD-n"

' ' Section to map the network drive
' Set objNetwork = CreateObject("WScript.Network")
' objNetwork.MapNetworkDrive strDriveLetter8, strRemotePath8

' ' Section which actually (re)names the Mapped Drive
' Set objShell = CreateObject("Shell.Application")
' objShell.NameSpace(strDriveLetter8).Self.Name = strNewName8

'Share9
'
strDriveLetter9 = "U:"
strRemotePath9 = "\\mcg001azrres001\Users\jditzel"
strNewName9 = "jditzel-c"

' Section to map the network drive
Set objNetwork = CreateObject("WScript.Network")
objNetwork.MapNetworkDrive strDriveLetter9, strRemotePath9

' Section which actually (re)names the Mapped Drive
Set objShell = CreateObject("Shell.Application")
objShell.NameSpace(strDriveLetter9).Self.Name = strNewName9


''Share10
'
strDriveLetter10 = "G:"
strRemotePath10 = "\\HBMSEA-DITZEL\c$\Users\jditzel\Github"
strNewName10 = "Github"

' Section to map the network drive
Set objNetwork = CreateObject("WScript.Network")
objNetwork.MapNetworkDrive strDriveLetter10, strRemotePath10

' Section which actually (re)names the Mapped Drive
Set objShell = CreateObject("Shell.Application")
objShell.NameSpace(strDriveLetter10).Self.Name = strNewName10



'End If


'Wscript.Echo "Check : "& strDriveLetter & " for " & strNewName
WScript.Quit
