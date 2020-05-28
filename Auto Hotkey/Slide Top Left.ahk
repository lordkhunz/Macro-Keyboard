#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
RunWait, %comspec% /c echo off | clip
Sleep, 50
Loop, 10
{
    send, {Left}
}
Sleep, 100
send, {Alt down}{e down}{e up}{Alt up}
Sleep, 50
send, {Alt down}{Shift down}{F12 down}{F12 up}{Alt up}{Shift Up}
Sleep, 50
send, {Alt down}{Shift down}{F4 down}{F4 up}{Alt up}{Shift Up}
Sleep, 100
RunWait, %comspec% /c C:\CLP\InsideClipboard.exe /loadclp "slidetopleft.clp", c:\CLP
Sleep, 50
send ^v
Sleep, 50
send, {Alt down}{Shift down}{F4 down}{F4 up}{Alt up}{Shift Up}
Sleep, 50
send, {Alt down}{Shift down}{F1 down}{F1 up}{Alt up}{Shift Up}
;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
RunWait, %comspec% /c echo off | clip

Return

^+!F24::ExitApp