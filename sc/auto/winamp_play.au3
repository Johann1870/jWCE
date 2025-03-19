        ; Simulate the key combination Win + R to open the Run dialogue window.
        Send("#r")

        ; Wait 10 seconds for the Run dialogue window to appear.
        WinWait("Run", "", 10)

        ; Simulate entering notepad.exe and pressing the 'ENTER' key.
        Send("winamp{Enter}")

        ; Wait 10 seconds for the Notepad window to appear.
        Local $hWnd = WinWait("[CLASS:BaseWindow_RootWnd]", "", 10)
	
	Send("!p")
	
	Sleep(1500)

	
	Send("p")