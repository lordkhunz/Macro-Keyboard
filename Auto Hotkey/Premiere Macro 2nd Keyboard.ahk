#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#if (getKeyState("F23", "P")) ;<--Everything after this line will only happen on the secondary keyboard that uses F23.
F23::return ;this line is mandatory for proper functionality

escape::tooltip, [F23] You might wish to not give a command to escape. Could cause problems. IDK.
;escape::return ;<--to disable a key, just use a "return," like so.



;--------------------------[ TRANSITION ]---------------------------



preset(item)
{
;send, {Alt down}{e down}{e up}{Alt up}{Alt}
Sleep, 100
;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
RunWait, %comspec% /c echo off | clip
;Sleep, 50
RunWait, %comspec% /c C:\InsideClipboard.exe /loadclp %item%, c:\
;Sleep, 50
;Send, {Ctrl Down}{v Down}
;Sleep, 10
;Send, {Ctrl Up}{v Up}
;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
;RunWait, %comspec% /c echo off | clip
;Sleep, 100
Return
}

s::preset("zoomout.clp")

;--------------------------[ LABEL COLOR ]--------------------------
;! = alt
;+ = SHIFT 


1:: send, +!1
2:: send, +!2
3:: send, +!3
4:: send, +!4
5:: send, +!5
6:: send, +!6
7:: send, +!7
8:: send, +!8
^1:: send, +!9
^2:: send, +!q
^3:: send, +!r
^4:: send, +!t
^5:: send, +!y
^6:: send, +!u
^7:: send, +!i
^8:: send, +!o



;-------------------------[ TOGGLE ALL AUDIO VDO ]--------------------



9:: send, ^9 ;AUDIO
0:: send, ^0 ;VDO