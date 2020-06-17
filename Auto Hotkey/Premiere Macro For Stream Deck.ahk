#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;This scrip use for Stream Deck only
;And work for F13-F24 and can combine with Alt Shift and CTRL key
;Design By LordKhunz

;This is First Function

Transition(item)
{
Sleep, 100
send, {Alt down}{e down}{e up}{Alt up} ;This line for reload clipboard
Sleep, 100
send, {Alt down}{Shift down}{F12 down}{F12 up}{Alt up}{Shift Up} ;This line for deselect highlight vdo track
Sleep, 100
send, {Alt down}{Shift down}{F4 down}{F4 up}{Alt up}{Shift Up} ;This line for select highlight vdo track 4
Sleep, 100
send, {Ctrl down}{Shift down}{F12 down}{F12 up}{Ctrl up}{Shift Up} ;This line for deselect highlight all sound track
Sleep,100
send, {Ctrl down}{Shift down}{F3 down}{F3 up}{Ctrl up}{Shift Up} ;This line for select highlight sound track 3
Sleep, 100
RunWait, %comspec% /c C:\CLP\InsideClipboard.exe /loadclp %item%, c:\CLP ;This line in for load file clp 
Sleep, 100
send ^v ;This line for paste clipboard
Sleep, 100
send, {Alt down}{Shift down}{F4 down}{F4 up}{Alt up}{Shift Up} ;This line for deselect highlight vdo track 4
Sleep,100
send, {Ctrl down}{Shift down}{F3 down}{F3 up}{Ctrl up}{Shift Up} ;This line for deselect highlight sound track 3
Sleep, 100
send, {Ctrl down}{Shift down}{F12 down}{F12 up}{Ctrl up}{Shift Up} ;This line for select highlight all sound track
Sleep, 100
send, {Alt down}{Shift down}{F1 down}{F1 up}{Alt up}{Shift Up} ;This line for select highlight vdo track 1
;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
RunWait, %comspec% /c echo off | clip ;This line for clear clipboard
}

!+\::Transition("ZoomOut.clp")
!+[::Transition("ZoomIn.clp")
!+-::Transition("SlideUp.clp")
!+;::Transition("SlideDown.clp")
!+p::Transition("SlideLeft.clp")
!+]::Transition("SlideRight.clp")
!+0::Transition("SlideTopLeft.clp")
!+=::Transition("SlideTopRight.clp")
!+l::Transition("SlideBottomLeft.clp")
!+'::Transition("SlideBottomRight.clp")
