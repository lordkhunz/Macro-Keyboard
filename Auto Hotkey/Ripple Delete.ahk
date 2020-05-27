#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;F1 - Auto cut Vdo in timeline
F1::
Send c
MouseClick Left, , ,1
Send v
return

;F2 - Cut & Ripple delete
F2::
send v
MouseClick Left, , ,1
;Sleep, 5
;Loop, 5
	;Send, {Left}
;Send d
Sleep 50
Send ^!+d
;Send {Ctrl down}{Alt down}{Shift down}{d down}{d up}{Shift up}{Alt up}{Ctrl up}
;Send {Shift}{Del}
;Sleep 50
;Send v 

return


;BlockInput,SendAndMouse
;BlockInput, On
;Send, {C}
;Sleep, 50
;MouseClick Left, , ,1
;Sleep, 50
;Send, {V}
;BlockInput, Off
;Return
;}