﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;This scrip use for Stream Deck only
;And work for F13-F24 and can combine with Alt Shift and CTRL key
;Design By LordKhunz

;This is first function.

Transition(item)
{
    send, +3
    Sleep, 150
    send, ^+a
    Sleep, 150
    send, {Alt down}{e down}{e up}{e down}{e up}{Alt up} ;Reload clipboard.
    Sleep, 150
    send, {Alt down}{Shift down}{o down}{o up}{Alt up}{Shift Up} ;Deselect highlight vdo track.
    Sleep, 150
    send, {Alt down}{Shift down}{r down}{r up}{Alt up}{Shift Up} ;Select highlight vdo track 4.
    Sleep, 150
    send, {Alt down}{Shift down}{9 down}{9 up}{Alt up}{Shift Up} ;Deselect highlight all sound track.
    Sleep, 150
    send, {Alt down}{Shift down}{4 down}{4 up}{Alt up}{Shift Up} ;Select highlight sound track 4.
    Sleep, 150
    RunWait, %comspec% /c C:\CLP\InsideClipboard.exe /loadclp %item%, c:\CLP ;load file clp.
    Sleep, 150
    send ^v ;Paste clipboard.
    Sleep, 150
    send, {Alt down}{Shift down}{r down}{r up}{Alt up}{Shift Up} ;Deselect highlight vdo track 4.
    Sleep, 150
    send, {Alt down}{Shift down}{4 down}{4 up}{Alt up}{Shift Up} ;Deselect highlight sound track 4.
    Sleep, 150
    send, {Alt down}{Shift down}{9 down}{9 up}{Alt up}{Shift Up} ;Select highlight all sound track.
    Sleep, 150
    send, {Alt down}{Shift down}{q down}{q up}{Alt up}{Shift Up} ;Select highlight vdo track 1.
    Sleep, 150
    ;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
    RunWait, %comspec% /c echo off | clip ;Clear clipboard.
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

;This is second function.

; SoundFx(item)
; {
;     send, +3 ;Select timeline.
;     Sleep, 150
;     send, ^+a ;Deselect any thing.
;     Sleep, 150
;     send, {Alt down}{e down}{e up}{e down}{e up}{Alt up} ;Reload clipboard.
;     Sleep, 150
;     send, {Ctrl down}{Shift down}{F12 down}{F12 up}{Ctrl up}{Shift Up} ;Deselect highlight all sound track.
;     Sleep, 150
;     send, {Ctrl down}{Shift down}{F5 down}{F5 up}{Ctrl up}{Shift Up} ;Select highlight sound track 5.
;     Sleep, 150
;     RunWait, %comspec% /c C:\CLP\InsideClipboard.exe /loadclp %item%, c:\CLP ;load file clp.
;     Sleep, 150
;     send ^v ;Paste clipboard.
;     Sleep, 150
;     send, {Ctrl down}{Shift down}{F5 down}{F5 up}{Ctrl up}{Shift Up} ;Deselect highlight sound track 5.
;     Sleep, 150
;     send, {Ctrl down}{Shift down}{F12 down}{F12 up}{Ctrl up}{Shift Up} ;Select highlight all sound track.
;     Sleep, 150
;     ;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
;     RunWait, %comspec% /c echo off | clip ;Clear clipboard.
; }


; F13::SoundFx("Sheep1.clp")
; F14::SoundFx("Sheep2.clp")
; F15::SoundFx("Sheep3.clp")
; F16::SoundFX("Duck1.clp")
; F17::SoundFx("Duck2.clp")
; F18::SoundFx("Cat1.clp")
; F19::SoundFx("Cat2.clp")
; F20::SoundFx("Cat3.clp")