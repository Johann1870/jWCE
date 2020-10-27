'runs a batch script invisibly
CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False