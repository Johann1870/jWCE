#Persistent


SetTimer, Check, 10000
return

Check:


if (A_TimeIdlePhysical > 60000) {

;MouseGetPos, xpos, ypos
;ToolTip, The cursor is at X%xpos% Y%ypos%

DllCall("GetCursorPos", "uint64*", v:=0), _x := 0xFFFFFFFF & v, _y := v >> 32
;MsgBox % _x ", " _y

If (_x < 12) {
newx := _x + 3
} else {
newx := _x - 3
}

If (_y < 12) {
newy := _y + 3
} else {
newy := _y - 3
}


;SoundBeep, 750, 150
DllCall("SetCursorPos", "int", newx, "int", newy)
;SoundBeep, 750, 150

MouseGetPos, xpos, ypos

AHNewX := xpos - 3
AHNewY := ypos - 3
MouseMove, %AHNewX%, %AHNewY%, 1
;SoundBeep, 750, 150
MouseMove, %xpos%, %ypos%, 1
;SoundBeep, 750, 150
DllCall("SetCursorPos", "int", _x, "int", _y)
;SoundBeep, 523, 250
;MsgBox, The last keyboard or mouse activity was at least 45 seconds ago
}
return