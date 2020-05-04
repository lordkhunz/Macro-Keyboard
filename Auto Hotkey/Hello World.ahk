#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




^t:: MsgBox, 4,Test, Would you like to continue? (press Yes or No)
IfMsgBox Yes
    MsgBox You pressed Yes.
else
    MsgBox You pressed No.