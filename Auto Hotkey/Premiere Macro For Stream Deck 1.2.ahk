#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;This scrip use for Stream Deck only
;And work for F13-F24 and can combine with Alt Shift and CTRL key
;Design By LordKhunz

;This is first function.

; F24::Transition("ZoomOut.clp")
; !+[::Transition("ZoomIn.clp")
; !+-::Transition("SlideUp.clp")
; !+;::Transition("SlideDown.clp")
; !+p::Transition("SlideLeft.clp")
; !+]::Transition("SlideRight.clp")
; !+0::Transition("SlideTopLeft.clp")
; !+=::Transition("SlideTopRight.clp")
; !+l::Transition("SlideBottomLeft.clp")
; !+'::Transition("SlideBottomRight.clp")

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

Transition(a, b, c) ;(.clpname, Delay, Direction)
{
    ;#IfWinActive ahk_exe Adobe Premiere Pro.exe
    ifWinActive, ahk_exe Adobe Premiere Pro.exe
    {
        send, +3
        Sleep, %b%
        send, ^+a
        Sleep, %b%
        send, {Alt down}{e down}{e up}{e down}{e up}{Alt up} ;Reload clipboard.
        Sleep, %b%
        send, {Alt down}{Shift down}{o down}{o up}{Alt up}{Shift Up} ;Deselect highlight vdo track.
        Sleep, %b%
        send, {Alt down}{Shift down}{i down}{i up}{Alt up}{Shift Up} ;Select highlight vdo track 8.
        Sleep, %b%
        send, {Alt down}{Shift down}{9 down}{9 up}{Alt up}{Shift Up} ;Deselect highlight all sound track.
        Sleep, %b%
        send, {Alt down}{Shift down}{8 down}{8 up}{Alt up}{Shift Up} ;Select highlight sound track 8.
        Sleep, %b%
        RunWait, %comspec% /c C:\CLP\InsideClipboard.exe /loadclp %a%, c:%c% ;load file clp.
        Sleep, %b%
        send ^v ;Paste clipboard.
        Sleep, %b%
        send, {Alt down}{Shift down}{i down}{i up}{Alt up}{Shift Up} ;Deselect highlight vdo track 8.
        Sleep, %b%
        send, {Alt down}{Shift down}{8 down}{8 up}{Alt up}{Shift Up} ;Deselect highlight sound track 8.
        Sleep, %b%
        send, {Alt down}{Shift down}{9 down}{9 up}{Alt up}{Shift Up} ;Select highlight all sound track.
        Sleep, %b%
        send, {Alt down}{Shift down}{q down}{q up}{Alt up}{Shift Up} ;Select highlight vdo track 1.
        Sleep, %b%
        ;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
        RunWait, %comspec% /c echo off | clip ;Clear clipboard.
        return
    }else{
        msgbox, 0, Alert!!!, เปิด Premiere Pro ก่อนที่จะใช้ %a%, 10
        return
    }
}


Animetion(a, b, c) ;(.clpname, delay, Direction)
{
    ;#IfWinActive ahk_exe Adobe Premiere Pro.exe
    ifWinActive, ahk_exe Adobe Premiere Pro.exe
    {
        send, +3
        Sleep, %b%
        send, ^+a
        Sleep, %b%
        send, {Alt down}{e down}{e up}{e down}{e up}{Alt up} ;Reload clipboard.
        Sleep, %b%
        send, {Alt down}{Shift down}{o down}{o up}{Alt up}{Shift Up} ;Deselect highlight vdo track.
        Sleep, %b%
        send, {Alt down}{Shift down}{u down}{u up}{Alt up}{Shift Up} ;Select highlight vdo track 8.
        Sleep, %b%
        send, {Alt down}{Shift down}{9 down}{9 up}{Alt up}{Shift Up} ;Deselect highlight all sound track.
        Sleep, %b%
        send, {Alt down}{Shift down}{7 down}{7 up}{Alt up}{Shift Up} ;Select highlight sound track 8.
        Sleep, %b%
        RunWait, %comspec% /c C:\CLP\InsideClipboard.exe /loadclp %a%, c:%c% ;load file clp.
        Sleep, %b%
        send ^v ;Paste clipboard.
        Sleep, %b%
        send, {Alt down}{Shift down}{u down}{u up}{Alt up}{Shift Up} ;Deselect highlight vdo track 8.
        Sleep, %b%
        send, {Alt down}{Shift down}{7 down}{7 up}{Alt up}{Shift Up} ;Deselect highlight sound track 8.
        Sleep, %b%
        send, {Alt down}{Shift down}{9 down}{9 up}{Alt up}{Shift Up} ;Select highlight all sound track.
        Sleep, %b%
        send, {Alt down}{Shift down}{q down}{q up}{Alt up}{Shift Up} ;Select highlight vdo track 1.
        Sleep, %b%
        ;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
        RunWait, %comspec% /c echo off | clip ;Clear clipboard.
        return
    }else{
        msgbox, 0, Alert!!!, เปิด Premiere Pro ก่อนที่จะใช้ %a%, 10
        return
    }
}


SecondFunction(a)
{
    ;#IfWinActive ahk_exe Adobe Premiere Pro.exe
    ifWinActive, ahk_exe Adobe Premiere Pro.exe
    {
        sleep, 10
        send, +3
        sleep, 100#
        MsgBox, 0, Custom, %a%, 1
        return
    }else{
        msgbox, 0, OPEN PR BITCH!, %a%, 10
        return
    }
}

; 1 = LCtrl <^
; 2 = Rctrl >^
; 3 = Lalt <!
; 4 = Ralt >!
; 5 = LShift <+
; 6 = Rshift >+


F1::
F2::
F3::
F4::
F5::
F6::
F7::
F8::
F9::
F10::
F11::
F12::
F13::
F14::
F15::
F16::
F17::
F18::
F19::
F20::
F21::
F22::
F23::
F24::
<^F1::Transition("ZoomOut.clp", 150, "\CLP")
<^F2::Transition("ZoomIn.clp", 150, "\CLP")
<^F3::Transition("SlideUp.clp", 150, "\CLP")
<^F4::Transition("SlideDown.clp", 150, "\CLP")
<^F5::Transition("SlideLeft.clp", 150, "\CLP")
<^F6::Transition("SlideRight.clp", 150, "\CLP")
<^F7::Transition("SlideTopLeft.clp", 150, "\CLP")
<^F8::Transition("SlideTopRight.clp", 150, "\CLP")
<^F9::Transition("SlideBottomLeft.clp", 150, "\CLP")
<^F10::Transition("SlideBottomRight.clp", 150, "\CLP")
<^F11::Transition("CrossSpin.clp", 150, "\CLP")
<^F12::Transition("FilmRoll.clp", 150, "\CLP")
<^F13::Transition("LensDisortion.clp", 150, "\CLP")
<^F14::Transition("LumaFade.clp", 150, "\CLP")
<^F15::Transition("Mosaic.clp", 150, "\CLP")
<^F16::Transition("SpinClockwise.clp", 150, "\CLP")
<^F17::Transition("SpinCounterClockwise.clp", 150, "\CLP")
<^F18::
<^F19::
<^F20::
<^F21::
<^F22::
<^F23::
<^F24::
>^F1::
>^F2::
>^F3::
>^F4::
>^F5::
>^F6::
>^F7::
>^F8::
>^F9::
>^F10::
>^F11::
>^F12::
>^F13::
>^F14::
>^F15::
>^F16::
>^F17::
>^F18::
>^F19::
>^F20::
>^F21::
>^F22::
>^F23::
>^F24::
<!F1::
<!F2::
<!F3::
<!F4::
<!F5::
<!F6::
<!F7::
<!F8::
<!F9::
<!F10::
<!F11::
<!F12::
<!F13::
<!F14::
<!F15::
<!F16::
<!F17::
<!F18::
<!F19::
<!F20::
<!F21::
<!F22::
<!F23::
<!F24::
>!F1::
>!F2::
>!F3::
>!F4::
>!F5::
>!F6::
>!F7::
>!F8::
>!F9::
>!F10::
>!F11::
>!F12::
>!F13::
>!F14::
>!F15::
>!F16::
>!F17::
>!F18::
>!F19::
>!F20::
>!F21::
>!F22::
>!F23::
>!F24::
<+F1::
<+F2::
<+F3::
<+F4::
<+F5::
<+F6::
<+F7::
<+F8::
<+F9::
<+F10::
<+F11::
<+F12::
<+F13::
<+F14::
<+F15::
<+F16::
<+F17::
<+F18::
<+F19::
<+F20::
<+F21::
<+F22::
<+F23::
<+F24::
>+F1::
>+F2::
>+F3::
>+F4::
>+F5::
>+F6::
>+F7::
>+F8::
>+F9::
>+F10::
>+F11::
>+F12::
>+F13::
>+F14::
>+F15::
>+F16::
>+F17::
>+F18::
>+F19::
>+F20::
>+F21::
>+F22::
>+F23::
>+F24::
<^>^F1::
<^>^F2::
<^>^F3::
<^>^F4::
<^>^F5::
<^>^F6::
<^>^F7::
<^>^F8::
<^>^F9::
<^>^F10::
<^>^F11::
<^>^F12::
<^>^F13::
<^>^F14::
<^>^F15::
<^>^F16::
<^>^F17::
<^>^F18::
<^>^F19::
<^>^F20::
<^>^F21::
<^>^F22::
<^>^F23::
<^>^F24::
<^<!F1::
<^<!F2::
<^<!F3::
<^<!F4::
<^<!F5::
<^<!F6::
<^<!F7::
<^<!F8::
<^<!F9::
<^<!F10::
<^<!F11::
<^<!F12::
<^<!F13::
<^<!F14::
<^<!F15::
<^<!F16::
<^<!F17::
<^<!F18::
<^<!F19::
<^<!F20::
<^<!F21::
<^<!F22::
<^<!F23::
<^<!F24::
<^>!F1::
<^>!F2::
<^>!F3::
<^>!F4::
<^>!F5::
<^>!F6::
<^>!F7::
<^>!F8::
<^>!F9::
<^>!F10::
<^>!F11::
<^>!F12::
<^>!F13::
<^>!F14::
<^>!F15::
<^>!F16::
<^>!F17::
<^>!F18::
<^>!F19::
<^>!F20::
<^>!F21::
<^>!F22::
<^>!F23::
<^>!F24::
<^<+F1::
<^<+F2::
<^<+F3::
<^<+F4::
<^<+F5::
<^<+F6::
<^<+F7::
<^<+F8::
<^<+F9::
<^<+F10::
<^<+F11::
<^<+F12::
<^<+F13::
<^<+F14::
<^<+F15::
<^<+F16::
<^<+F17::
<^<+F18::
<^<+F19::
<^<+F20::
<^<+F21::
<^<+F22::
<^<+F23::
<^<+F24::
<^>+F1::
<^>+F2::
<^>+F3::
<^>+F4::
<^>+F5::
<^>+F6::
<^>+F7::
<^>+F8::
<^>+F9::
<^>+F10::
<^>+F11::
<^>+F12::
<^>+F13::
<^>+F14::
<^>+F15::
<^>+F16::
<^>+F17::
<^>+F18::
<^>+F19::
<^>+F20::
<^>+F21::
<^>+F22::
<^>+F23::
<^>+F24::
>^<!F1::
>^<!F2::
>^<!F3::
>^<!F4::
>^<!F5::
>^<!F6::
>^<!F7::
>^<!F8::
>^<!F9::
>^<!F10::
>^<!F11::
>^<!F12::
>^<!F13::
>^<!F14::
>^<!F15::
>^<!F16::
>^<!F17::
>^<!F18::
>^<!F19::
>^<!F20::
>^<!F21::
>^<!F22::
>^<!F23::
>^<!F24::
>^>!F1::
>^>!F2::
>^>!F3::
>^>!F4::
>^>!F5::
>^>!F6::
>^>!F7::
>^>!F8::
>^>!F9::
>^>!F10::
>^>!F11::
>^>!F12::
>^>!F13::
>^>!F14::
>^>!F15::
>^>!F16::
>^>!F17::
>^>!F18::
>^>!F19::
>^>!F20::
>^>!F21::
>^>!F22::
>^>!F23::
>^>!F24::
>^<+F1::
>^<+F2::
>^<+F3::
>^<+F4::
>^<+F5::
>^<+F6::
>^<+F7::
>^<+F8::
>^<+F9::
>^<+F10::
>^<+F11::
>^<+F12::
>^<+F13::
>^<+F14::
>^<+F15::
>^<+F16::
>^<+F17::
>^<+F18::
>^<+F19::
>^<+F20::
>^<+F21::
>^<+F22::
>^<+F23::
>^<+F24::
>^>+F1::
>^>+F2::
>^>+F3::
>^>+F4::
>^>+F5::
>^>+F6::
>^>+F7::
>^>+F8::
>^>+F9::
>^>+F10::
>^>+F11::
>^>+F12::
>^>+F13::
>^>+F14::
>^>+F15::
>^>+F16::
>^>+F17::
>^>+F18::
>^>+F19::
>^>+F20::
>^>+F21::
>^>+F22::
>^>+F23::
>^>+F24::
<!>!F1::
<!>!F2::
<!>!F3::
<!>!F4::
<!>!F5::
<!>!F6::
<!>!F7::
<!>!F8::
<!>!F9::
<!>!F10::
<!>!F11::
<!>!F12::
<!>!F13::
<!>!F14::
<!>!F15::
<!>!F16::
<!>!F17::
<!>!F18::
<!>!F19::
<!>!F20::
<!>!F21::
<!>!F22::
<!>!F23::
<!>!F24::
<!<+F1::
<!<+F2::
<!<+F3::
<!<+F4::
<!<+F5::
<!<+F6::
<!<+F7::
<!<+F8::
<!<+F9::
<!<+F10::
<!<+F11::
<!<+F12::
<!<+F13::
<!<+F14::
<!<+F15::
<!<+F16::
<!<+F17::
<!<+F18::
<!<+F19::
<!<+F20::
<!<+F21::
<!<+F22::
<!<+F23::
<!<+F24::
<!>+F1::
<!>+F2::
<!>+F3::
<!>+F4::
<!>+F5::
<!>+F6::
<!>+F7::
<!>+F8::
<!>+F9::
<!>+F10::
<!>+F11::
<!>+F12::
<!>+F13::
<!>+F14::
<!>+F15::
<!>+F16::
<!>+F17::
<!>+F18::
<!>+F19::
<!>+F20::
<!>+F21::
<!>+F22::
<!>+F23::
<!>+F24::
>!<+F1::
>!<+F2::
>!<+F3::
>!<+F4::
>!<+F5::
>!<+F6::
>!<+F7::
>!<+F8::
>!<+F9::
>!<+F10::
>!<+F11::
>!<+F12::
>!<+F13::
>!<+F14::
>!<+F15::
>!<+F16::
>!<+F17::
>!<+F18::
>!<+F19::
>!<+F20::
>!<+F21::
>!<+F22::
>!<+F23::
>!<+F24::
>!>+F1::
>!>+F2::
>!>+F3::
>!>+F4::
>!>+F5::
>!>+F6::
>!>+F7::
>!>+F8::
>!>+F9::
>!>+F10::
>!>+F11::
>!>+F12::
>!>+F13::
>!>+F14::
>!>+F15::
>!>+F16::
>!>+F17::
>!>+F18::
>!>+F19::
>!>+F20::
>!>+F21::
>!>+F22::
>!>+F23::
>!>+F24::
<+>+F1::
<+>+F2::
<+>+F3::
<+>+F4::
<+>+F5::
<+>+F6::
<+>+F7::
<+>+F8::
<+>+F9::
<+>+F10::
<+>+F11::
<+>+F12::
<+>+F13::
<+>+F14::
<+>+F15::
<+>+F16::
<+>+F17::
<+>+F18::
<+>+F19::
<+>+F20::
<+>+F21::
<+>+F22::
<+>+F23::
<+>+F24::
<^>^<!F1::
<^>^<!F2::
<^>^<!F3::
<^>^<!F4::
<^>^<!F5::
<^>^<!F6::
<^>^<!F7::
<^>^<!F8::
<^>^<!F9::
<^>^<!F10::
<^>^<!F11::
<^>^<!F12::
<^>^<!F13::
<^>^<!F14::
<^>^<!F15::
<^>^<!F16::
<^>^<!F17::
<^>^<!F18::
<^>^<!F19::
<^>^<!F20::
<^>^<!F21::
<^>^<!F22::
<^>^<!F23::
<^>^<!F24::
<^>^>!F1::
<^>^>!F2::
<^>^>!F3::
<^>^>!F4::
<^>^>!F5::
<^>^>!F6::
<^>^>!F7::
<^>^>!F8::
<^>^>!F9::
<^>^>!F10::
<^>^>!F11::
<^>^>!F12::
<^>^>!F13::
<^>^>!F14::
<^>^>!F15::
<^>^>!F16::
<^>^>!F17::
<^>^>!F18::
<^>^>!F19::
<^>^>!F20::
<^>^>!F21::
<^>^>!F22::
<^>^>!F23::
<^>^>!F24::
<^>^<+F1::
<^>^<+F2::
<^>^<+F3::
<^>^<+F4::
<^>^<+F5::
<^>^<+F6::
<^>^<+F7::
<^>^<+F8::
<^>^<+F9::
<^>^<+F10::
<^>^<+F11::
<^>^<+F12::
<^>^<+F13::
<^>^<+F14::
<^>^<+F15::
<^>^<+F16::
<^>^<+F17::
<^>^<+F18::
<^>^<+F19::
<^>^<+F20::
<^>^<+F21::
<^>^<+F22::
<^>^<+F23::
<^>^<+F24::
<^>^>+F1::
<^>^>+F2::
<^>^>+F3::
<^>^>+F4::
<^>^>+F5::
<^>^>+F6::
<^>^>+F7::
<^>^>+F8::
<^>^>+F9::
<^>^>+F10::
<^>^>+F11::
<^>^>+F12::
<^>^>+F13::
<^>^>+F14::
<^>^>+F15::
<^>^>+F16::
<^>^>+F17::
<^>^>+F18::
<^>^>+F19::
<^>^>+F20::
<^>^>+F21::
<^>^>+F22::
<^>^>+F23::
<^>^>+F24::
<^<!>!F1::
<^<!>!F2::
<^<!>!F3::
<^<!>!F4::
<^<!>!F5::
<^<!>!F6::
<^<!>!F7::
<^<!>!F8::
<^<!>!F9::
<^<!>!F10::
<^<!>!F11::
<^<!>!F12::
<^<!>!F13::
<^<!>!F14::
<^<!>!F15::
<^<!>!F16::
<^<!>!F17::
<^<!>!F18::
<^<!>!F19::
<^<!>!F20::
<^<!>!F21::
<^<!>!F22::
<^<!>!F23::
<^<!>!F24::
<^<!<+F1::
<^<!<+F2::
<^<!<+F3::
<^<!<+F4::
<^<!<+F5::
<^<!<+F6::
<^<!<+F7::
<^<!<+F8::
<^<!<+F9::
<^<!<+F10::
<^<!<+F11::
<^<!<+F12::
<^<!<+F13::
<^<!<+F14::
<^<!<+F15::
<^<!<+F16::
<^<!<+F17::
<^<!<+F18::
<^<!<+F19::
<^<!<+F20::
<^<!<+F21::
<^<!<+F22::
<^<!<+F23::
<^<!<+F24::
<^<!>+F1::
<^<!>+F2::
<^<!>+F3::
<^<!>+F4::
<^<!>+F5::
<^<!>+F6::
<^<!>+F7::
<^<!>+F8::
<^<!>+F9::
<^<!>+F10::
<^<!>+F11::
<^<!>+F12::
<^<!>+F13::
<^<!>+F14::
<^<!>+F15::
<^<!>+F16::
<^<!>+F17::
<^<!>+F18::
<^<!>+F19::
<^<!>+F20::
<^<!>+F21::
<^<!>+F22::
<^<!>+F23::
<^<!>+F24::
<^>!<+F1::
<^>!<+F2::
<^>!<+F3::
<^>!<+F4::
<^>!<+F5::
<^>!<+F6::
<^>!<+F7::
<^>!<+F8::
<^>!<+F9::
<^>!<+F10::
<^>!<+F11::
<^>!<+F12::
<^>!<+F13::
<^>!<+F14::
<^>!<+F15::
<^>!<+F16::
<^>!<+F17::
<^>!<+F18::
<^>!<+F19::
<^>!<+F20::
<^>!<+F21::
<^>!<+F22::
<^>!<+F23::
<^>!<+F24::
<^>!>+F1::
<^>!>+F2::
<^>!>+F3::
<^>!>+F4::
<^>!>+F5::
<^>!>+F6::
<^>!>+F7::
<^>!>+F8::
<^>!>+F9::
<^>!>+F10::
<^>!>+F11::
<^>!>+F12::
<^>!>+F13::
<^>!>+F14::
<^>!>+F15::
<^>!>+F16::
<^>!>+F17::
<^>!>+F18::
<^>!>+F19::
<^>!>+F20::
<^>!>+F21::
<^>!>+F22::
<^>!>+F23::
<^>!>+F24::
<^<+>+F1::
<^<+>+F2::
<^<+>+F3::
<^<+>+F4::
<^<+>+F5::
<^<+>+F6::
<^<+>+F7::
<^<+>+F8::
<^<+>+F9::
<^<+>+F10::
<^<+>+F11::
<^<+>+F12::
<^<+>+F13::
<^<+>+F14::
<^<+>+F15::
<^<+>+F16::
<^<+>+F17::
<^<+>+F18::
<^<+>+F19::
<^<+>+F20::
<^<+>+F21::
<^<+>+F22::
<^<+>+F23::
<^<+>+F24::
>^<!>!F1::
>^<!>!F2::
>^<!>!F3::
>^<!>!F4::
>^<!>!F5::
>^<!>!F6::
>^<!>!F7::
>^<!>!F8::
>^<!>!F9::
>^<!>!F10::
>^<!>!F11::
>^<!>!F12::
>^<!>!F13::
>^<!>!F14::
>^<!>!F15::
>^<!>!F16::
>^<!>!F17::
>^<!>!F18::
>^<!>!F19::
>^<!>!F20::
>^<!>!F21::
>^<!>!F22::
>^<!>!F23::
>^<!>!F24::
>^<!<+F1::
>^<!<+F2::
>^<!<+F3::
>^<!<+F4::
>^<!<+F5::
>^<!<+F6::
>^<!<+F7::
>^<!<+F8::
>^<!<+F9::
>^<!<+F10::
>^<!<+F11::
>^<!<+F12::
>^<!<+F13::
>^<!<+F14::
>^<!<+F15::
>^<!<+F16::
>^<!<+F17::
>^<!<+F18::
>^<!<+F19::
>^<!<+F20::
>^<!<+F21::
>^<!<+F22::
>^<!<+F23::
>^<!<+F24::
>^<!>+F1::
>^<!>+F2::
>^<!>+F3::
>^<!>+F4::
>^<!>+F5::
>^<!>+F6::
>^<!>+F7::
>^<!>+F8::
>^<!>+F9::
>^<!>+F10::
>^<!>+F11::
>^<!>+F12::
>^<!>+F13::
>^<!>+F14::
>^<!>+F15::
>^<!>+F16::
>^<!>+F17::
>^<!>+F18::
>^<!>+F19::
>^<!>+F20::
>^<!>+F21::
>^<!>+F22::
>^<!>+F23::
>^<!>+F24::
>^>!<+F1::
>^>!<+F2::
>^>!<+F3::
>^>!<+F4::
>^>!<+F5::
>^>!<+F6::
>^>!<+F7::
>^>!<+F8::
>^>!<+F9::
>^>!<+F10::
>^>!<+F11::
>^>!<+F12::
>^>!<+F13::
>^>!<+F14::
>^>!<+F15::
>^>!<+F16::
>^>!<+F17::
>^>!<+F18::
>^>!<+F19::
>^>!<+F20::
>^>!<+F21::
>^>!<+F22::
>^>!<+F23::
>^>!<+F24::
>^>!>+F1::
>^>!>+F2::
>^>!>+F3::
>^>!>+F4::
>^>!>+F5::
>^>!>+F6::
>^>!>+F7::
>^>!>+F8::
>^>!>+F9::
>^>!>+F10::
>^>!>+F11::
>^>!>+F12::
>^>!>+F13::
>^>!>+F14::
>^>!>+F15::
>^>!>+F16::
>^>!>+F17::
>^>!>+F18::
>^>!>+F19::
>^>!>+F20::
>^>!>+F21::
>^>!>+F22::
>^>!>+F23::
>^>!>+F24::
>^<+>+F1::
>^<+>+F2::
>^<+>+F3::
>^<+>+F4::
>^<+>+F5::
>^<+>+F6::
>^<+>+F7::
>^<+>+F8::
>^<+>+F9::
>^<+>+F10::
>^<+>+F11::
>^<+>+F12::
>^<+>+F13::
>^<+>+F14::
>^<+>+F15::
>^<+>+F16::
>^<+>+F17::
>^<+>+F18::
>^<+>+F19::
>^<+>+F20::
>^<+>+F21::
>^<+>+F22::
>^<+>+F23::
>^<+>+F24::
<!>!<+F1::
<!>!<+F2::
<!>!<+F3::
<!>!<+F4::
<!>!<+F5::
<!>!<+F6::
<!>!<+F7::
<!>!<+F8::
<!>!<+F9::
<!>!<+F10::
<!>!<+F11::
<!>!<+F12::
<!>!<+F13::
<!>!<+F14::
<!>!<+F15::
<!>!<+F16::
<!>!<+F17::
<!>!<+F18::
<!>!<+F19::
<!>!<+F20::
<!>!<+F21::
<!>!<+F22::
<!>!<+F23::
<!>!<+F24::
<!>!>+F1::
<!>!>+F2::
<!>!>+F3::
<!>!>+F4::
<!>!>+F5::
<!>!>+F6::
<!>!>+F7::
<!>!>+F8::
<!>!>+F9::
<!>!>+F10::
<!>!>+F11::
<!>!>+F12::
<!>!>+F13::
<!>!>+F14::
<!>!>+F15::
<!>!>+F16::
<!>!>+F17::
<!>!>+F18::
<!>!>+F19::
<!>!>+F20::
<!>!>+F21::
<!>!>+F22::
<!>!>+F23::
<!>!>+F24::
<!<+>+F1::
<!<+>+F2::
<!<+>+F3::
<!<+>+F4::
<!<+>+F5::
<!<+>+F6::
<!<+>+F7::
<!<+>+F8::
<!<+>+F9::
<!<+>+F10::
<!<+>+F11::
<!<+>+F12::
<!<+>+F13::
<!<+>+F14::
<!<+>+F15::
<!<+>+F16::
<!<+>+F17::
<!<+>+F18::
<!<+>+F19::
<!<+>+F20::
<!<+>+F21::
<!<+>+F22::
<!<+>+F23::
<!<+>+F24::
>!<+>+F1::
>!<+>+F2::
>!<+>+F3::
>!<+>+F4::
>!<+>+F5::
>!<+>+F6::
>!<+>+F7::
>!<+>+F8::
>!<+>+F9::
>!<+>+F10::
>!<+>+F11::
>!<+>+F12::
>!<+>+F13::
>!<+>+F14::
>!<+>+F15::
>!<+>+F16::
>!<+>+F17::
>!<+>+F18::
>!<+>+F19::
>!<+>+F20::
>!<+>+F21::
>!<+>+F22::
>!<+>+F23::
>!<+>+F24::
<^>^<!>!F1::
<^>^<!>!F2::
<^>^<!>!F3::
<^>^<!>!F4::
<^>^<!>!F5::
<^>^<!>!F6::
<^>^<!>!F7::
<^>^<!>!F8::
<^>^<!>!F9::
<^>^<!>!F10::
<^>^<!>!F11::
<^>^<!>!F12::
<^>^<!>!F13::
<^>^<!>!F14::
<^>^<!>!F15::
<^>^<!>!F16::
<^>^<!>!F17::
<^>^<!>!F18::
<^>^<!>!F19::
<^>^<!>!F20::
<^>^<!>!F21::
<^>^<!>!F22::
<^>^<!>!F23::
<^>^<!>!F24::
<^>^<!<+F1::
<^>^<!<+F2::
<^>^<!<+F3::
<^>^<!<+F4::
<^>^<!<+F5::
<^>^<!<+F6::
<^>^<!<+F7::
<^>^<!<+F8::
<^>^<!<+F9::
<^>^<!<+F10::
<^>^<!<+F11::
<^>^<!<+F12::
<^>^<!<+F13::
<^>^<!<+F14::
<^>^<!<+F15::
<^>^<!<+F16::
<^>^<!<+F17::
<^>^<!<+F18::
<^>^<!<+F19::
<^>^<!<+F20::
<^>^<!<+F21::
<^>^<!<+F22::
<^>^<!<+F23::
<^>^<!<+F24::
<^>^<!>+F1::
<^>^<!>+F2::
<^>^<!>+F3::
<^>^<!>+F4::
<^>^<!>+F5::
<^>^<!>+F6::
<^>^<!>+F7::
<^>^<!>+F8::
<^>^<!>+F9::
<^>^<!>+F10::
<^>^<!>+F11::
<^>^<!>+F12::
<^>^<!>+F13::
<^>^<!>+F14::
<^>^<!>+F15::
<^>^<!>+F16::
<^>^<!>+F17::
<^>^<!>+F18::
<^>^<!>+F19::
<^>^<!>+F20::
<^>^<!>+F21::
<^>^<!>+F22::
<^>^<!>+F23::
<^>^<!>+F24::
<^>^>!<+F1::
<^>^>!<+F2::
<^>^>!<+F3::
<^>^>!<+F4::
<^>^>!<+F5::
<^>^>!<+F6::
<^>^>!<+F7::
<^>^>!<+F8::
<^>^>!<+F9::
<^>^>!<+F10::
<^>^>!<+F11::
<^>^>!<+F12::
<^>^>!<+F13::
<^>^>!<+F14::
<^>^>!<+F15::
<^>^>!<+F16::
<^>^>!<+F17::
<^>^>!<+F18::
<^>^>!<+F19::
<^>^>!<+F20::
<^>^>!<+F21::
<^>^>!<+F22::
<^>^>!<+F23::
<^>^>!<+F24::
<^>^>!>+F1::
<^>^>!>+F2::
<^>^>!>+F3::
<^>^>!>+F4::
<^>^>!>+F5::
<^>^>!>+F6::
<^>^>!>+F7::
<^>^>!>+F8::
<^>^>!>+F9::
<^>^>!>+F10::
<^>^>!>+F11::
<^>^>!>+F12::
<^>^>!>+F13::
<^>^>!>+F14::
<^>^>!>+F15::
<^>^>!>+F16::
<^>^>!>+F17::
<^>^>!>+F18::
<^>^>!>+F19::
<^>^>!>+F20::
<^>^>!>+F21::
<^>^>!>+F22::
<^>^>!>+F23::
<^>^>!>+F24::
<^>^<+>+F1::
<^>^<+>+F2::
<^>^<+>+F3::
<^>^<+>+F4::
<^>^<+>+F5::
<^>^<+>+F6::
<^>^<+>+F7::
<^>^<+>+F8::
<^>^<+>+F9::
<^>^<+>+F10::
<^>^<+>+F11::
<^>^<+>+F12::
<^>^<+>+F13::
<^>^<+>+F14::
<^>^<+>+F15::
<^>^<+>+F16::
<^>^<+>+F17::
<^>^<+>+F18::
<^>^<+>+F19::
<^>^<+>+F20::
<^>^<+>+F21::
<^>^<+>+F22::
<^>^<+>+F23::
<^>^<+>+F24::
<^<!>!<+F1::
<^<!>!<+F2::
<^<!>!<+F3::
<^<!>!<+F4::
<^<!>!<+F5::
<^<!>!<+F6::
<^<!>!<+F7::
<^<!>!<+F8::
<^<!>!<+F9::
<^<!>!<+F10::
<^<!>!<+F11::
<^<!>!<+F12::
<^<!>!<+F13::
<^<!>!<+F14::
<^<!>!<+F15::
<^<!>!<+F16::
<^<!>!<+F17::
<^<!>!<+F18::
<^<!>!<+F19::
<^<!>!<+F20::
<^<!>!<+F21::
<^<!>!<+F22::
<^<!>!<+F23::
<^<!>!<+F24::
<^<!>!>+F1::
<^<!>!>+F2::
<^<!>!>+F3::
<^<!>!>+F4::
<^<!>!>+F5::
<^<!>!>+F6::
<^<!>!>+F7::
<^<!>!>+F8::
<^<!>!>+F9::
<^<!>!>+F10::
<^<!>!>+F11::
<^<!>!>+F12::
<^<!>!>+F13::
<^<!>!>+F14::
<^<!>!>+F15::
<^<!>!>+F16::
<^<!>!>+F17::
<^<!>!>+F18::
<^<!>!>+F19::
<^<!>!>+F20::
<^<!>!>+F21::
<^<!>!>+F22::
<^<!>!>+F23::
<^<!>!>+F24::
<^<!<+>+F1::
<^<!<+>+F2::
<^<!<+>+F3::
<^<!<+>+F4::
<^<!<+>+F5::
<^<!<+>+F6::
<^<!<+>+F7::
<^<!<+>+F8::
<^<!<+>+F9::
<^<!<+>+F10::
<^<!<+>+F11::
<^<!<+>+F12::
<^<!<+>+F13::
<^<!<+>+F14::
<^<!<+>+F15::
<^<!<+>+F16::
<^<!<+>+F17::
<^<!<+>+F18::
<^<!<+>+F19::
<^<!<+>+F20::
<^<!<+>+F21::
<^<!<+>+F22::
<^<!<+>+F23::
<^<!<+>+F24::
<^>!<+>+F1::
<^>!<+>+F2::
<^>!<+>+F3::
<^>!<+>+F4::
<^>!<+>+F5::
<^>!<+>+F6::
<^>!<+>+F7::
<^>!<+>+F8::
<^>!<+>+F9::
<^>!<+>+F10::
<^>!<+>+F11::
<^>!<+>+F12::
<^>!<+>+F13::
<^>!<+>+F14::
<^>!<+>+F15::
<^>!<+>+F16::
<^>!<+>+F17::
<^>!<+>+F18::
<^>!<+>+F19::
<^>!<+>+F20::
<^>!<+>+F21::
<^>!<+>+F22::
<^>!<+>+F23::
<^>!<+>+F24::
>^<!>!<+F1::
>^<!>!<+F2::Animetion("Smoke01.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F3::Animetion("Smoke02.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F4::Animetion("Smoke03.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F5::Animetion("Smoke04.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F6::Animetion("Smoke05.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F7::Animetion("Smoke06.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F8::Animetion("Smoke07.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F9::Animetion("Smoke08.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F10::Animetion("Smoke09.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F11::Animetion("Smoke10.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F12::Animetion("Smoke11.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F13::Animetion("Smoke12.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F14::Animetion("Smoke13.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F15::Animetion("Smoke14Top.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F16::Animetion("Smoke14Under.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F17::Animetion("Smoke15.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F18::Animetion("Smoke16.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F19::Animetion("Smoke17.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F20::Animetion("Smoke18.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F21::Animetion("Smoke19.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F22::Animetion("Smoke20.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F23::Animetion("BWSmoke01.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!<+F24::Animetion("BWSmoke02.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F1::Animetion("BWSmoke03.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F2::Animetion("BWSmoke04.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F3::Animetion("BWSmoke05.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F4::Animetion("BWSmoke06.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F5::Animetion("BWSmoke07.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F6::Animetion("BWSmoke08.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F7::Animetion("BWSmoke09.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F8::Animetion("BWSmoke10.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F9::Animetion("BWSmoke11.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F10::Animetion("BWSmoke12.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F11::Animetion("BWSmoke13.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F12::Animetion("BWSmoke14Top.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F13::Animetion("BWSmoke14Under.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F14::Animetion("BWSmoke15.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F15::Animetion("BWSmoke16.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F16::Animetion("BWSmoke17.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F17::Animetion("BWSmoke18.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F18::Animetion("BWSmoke19.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F19::Animetion("BWSmoke20.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F20::Animetion("Electric01.clp", 150, "\CLP\Animation\Electric")
>^<!>!>+F21::Animetion("Electric02.clp", 150, "\CLP\Animation\Electric")
>^<!>!>+F22::Animetion("Electric03.clp", 150, "\CLP\Animation\Electric")
>^<!>!>+F23::Animetion("Electric04.clp", 150, "\CLP\Animation\Electric")
>^<!>!>+F24::Animetion("Electric05.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F1::Animetion("Electric06.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F2::Animetion("Electric07.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F3::Animetion("Electric08.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F4::Animetion("Electric09.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F5::Animetion("Electric10.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F6::Animetion("Electric11.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F7::Animetion("Electric12.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F8::Animetion("Electric13.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F9::Animetion("Electric14.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F10::Animetion("Electric15.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F11::Animetion("Electric16.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F12::Animetion("Electric17.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F13::Animetion("Electric18.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F14::Animetion("Electric19.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F15::Animetion("Electric20.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F16::Animetion("BWElectric01.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F17::Animetion("BWElectric02.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F18::Animetion("BWElectric03.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F19::Animetion("BWElectric04.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F20::Animetion("BWElectric05.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F21::Animetion("BWElectric06.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F22::Animetion("BWElectric07.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F23::Animetion("BWElectric08.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F24::Animetion("BWElectric09.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F1::Animetion("BWElectric10.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F2::Animetion("BWElectric11.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F3::Animetion("BWElectric12.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F4::Animetion("BWElectric13.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F5::Animetion("BWElectric14.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F6::Animetion("BWElectric15.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F7::Animetion("BWElectric16.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F8::Animetion("BWElectric17.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F9::Animetion("BWElectric18.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F10::Animetion("BWElectric19.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F11::Animetion("BWElectric20.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F12::Animetion("Shape01.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F13::Animetion("Shape02.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F14::Animetion("Shape03.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F15::Animetion("Shape04.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F16::Animetion("Shape05.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F17::Animetion("Shape06.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F18::Animetion("Shape07.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F19::Animetion("Shape08.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F20::Animetion("Shape09.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F21::Animetion("Shape10.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F22::Animetion("Shape11.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F23::Animetion("Shape12.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F24::Animetion("Shape13.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F1::Animetion("Shape14top.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F2::Animetion("Shape14Under.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F3::Animetion("Shape15.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F4::Animetion("Shape16.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F5::Animetion("Shape17.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F6::Animetion("Shape18.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F7::Animetion("Shape19.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F8::Animetion("Shape20.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F9::Animetion("BWShape01.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F10::Animetion("BWShape02.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F11::Animetion("BWShape03.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F12::Animetion("BWShape04.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F13::Animetion("BWShape05.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F14::Animetion("BWShape06.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F15::Animetion("BWShape07.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F16::Animetion("BWShape08.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F17::Animetion("BWShape09.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F18::Animetion("BWShape10.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F19::Animetion("BWShape11.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F20::Animetion("BWShape12.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F21::Animetion("BWShape13.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F22::Animetion("BWShape14top.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F23::Animetion("BWShape14Under.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F24::Animetion("BWShape15.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F1::Animetion("BWShape16.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F2::Animetion("BWShape17.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F3::Animetion("BWShape18.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F4::Animetion("BWShape19.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F5::Animetion("BWShape20.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F6::Animetion("Flame01.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F7::Animetion("Flame02.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F8::Animetion("Flame03.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F9::Animetion("Flame04.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F10::Animetion("Flame05.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F11::Animetion("Flame06.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F12::Animetion("Flame07.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F13::Animetion("Flame08.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F14::Animetion("Flame09.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F15::Animetion("Flame10.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F16::Animetion("Flame11.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F17::Animetion("Flame12.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F18::Animetion("Flame13.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F19::Animetion("Flame14top.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F20::Animetion("Flame14Under.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F21::Animetion("Flame15.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F22::Animetion("Flame16.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F23::Animetion("Flame17.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F24::Animetion("Flame18.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!>+F1::Animetion("Flame19.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!>+F2::Animetion("Flame20.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!>+F3::Animetion("BWFlame01.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F4::Animetion("BWFlame02.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F5::Animetion("BWFlame03.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F6::Animetion("BWFlame04.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F7::Animetion("BWFlame05.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F8::Animetion("BWFlame06.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F9::Animetion("BWFlame07.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F10::Animetion("BWFlame08.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F11::Animetion("BWFlame09.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F12::Animetion("BWFlame10.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F13::Animetion("BWFlame11.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F14::Animetion("BWFlame12.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F15::Animetion("BWFlame13.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F16::Animetion("BWFlame14top.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F17::Animetion("BWFlame14Under.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F18::Animetion("BWFlame15.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F19::Animetion("BWFlame16.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F20::Animetion("BWFlame17.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F21::Animetion("BWFlame18.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F22::Animetion("BWFlame19.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F23::Animetion("BWFlame20.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F24::
<^>^<!<+>+F1::
<^>^<!<+>+F2::
<^>^<!<+>+F3::
<^>^<!<+>+F4::
<^>^<!<+>+F5::
<^>^<!<+>+F6::
<^>^<!<+>+F7::
<^>^<!<+>+F8::
<^>^<!<+>+F9::
<^>^<!<+>+F10::
<^>^<!<+>+F11::
<^>^<!<+>+F12::
<^>^<!<+>+F13::
<^>^<!<+>+F14::
<^>^<!<+>+F15::
<^>^<!<+>+F16::
<^>^<!<+>+F17::
<^>^<!<+>+F18::
<^>^<!<+>+F19::
<^>^<!<+>+F20::
<^>^<!<+>+F21::
<^>^<!<+>+F22::
<^>^<!<+>+F23::
<^>^<!<+>+F24::
<^>^>!<+>+F1::
<^>^>!<+>+F2::
<^>^>!<+>+F3::
<^>^>!<+>+F4::
<^>^>!<+>+F5::
<^>^>!<+>+F6::
<^>^>!<+>+F7::
<^>^>!<+>+F8::
<^>^>!<+>+F9::
<^>^>!<+>+F10::
<^>^>!<+>+F11::
<^>^>!<+>+F12::
<^>^>!<+>+F13::
<^>^>!<+>+F14::
<^>^>!<+>+F15::
<^>^>!<+>+F16::
<^>^>!<+>+F17::
<^>^>!<+>+F18::
<^>^>!<+>+F19::
<^>^>!<+>+F20::
<^>^>!<+>+F21::
<^>^>!<+>+F22::
<^>^>!<+>+F23::
<^>^>!<+>+F24::
<^<!>!<+>+F1::
<^<!>!<+>+F2::
<^<!>!<+>+F3::
<^<!>!<+>+F4::
<^<!>!<+>+F5::
<^<!>!<+>+F6::
<^<!>!<+>+F7::
<^<!>!<+>+F8::
<^<!>!<+>+F9::
<^<!>!<+>+F10::
<^<!>!<+>+F11::
<^<!>!<+>+F12::
<^<!>!<+>+F13::
<^<!>!<+>+F14::
<^<!>!<+>+F15::
<^<!>!<+>+F16::
<^<!>!<+>+F17::
<^<!>!<+>+F18::
<^<!>!<+>+F19::
<^<!>!<+>+F20::
<^<!>!<+>+F21::
<^<!>!<+>+F22::
<^<!>!<+>+F23::
<^<!>!<+>+F24::
>^<!>!<+>+F1::
>^<!>!<+>+F2::
>^<!>!<+>+F3::
>^<!>!<+>+F4::
>^<!>!<+>+F5::
>^<!>!<+>+F6::
>^<!>!<+>+F7::
>^<!>!<+>+F8::
>^<!>!<+>+F9::
>^<!>!<+>+F10::
>^<!>!<+>+F11::
>^<!>!<+>+F12::
>^<!>!<+>+F13::
>^<!>!<+>+F14::
>^<!>!<+>+F15::
>^<!>!<+>+F16::
>^<!>!<+>+F17::
>^<!>!<+>+F18::
>^<!>!<+>+F19::
>^<!>!<+>+F20::
>^<!>!<+>+F21::
>^<!>!<+>+F22::
>^<!>!<+>+F23::
>^<!>!<+>+F24::
<^>^<!>!<+>+F1::
<^>^<!>!<+>+F2::
<^>^<!>!<+>+F3::
<^>^<!>!<+>+F4::
<^>^<!>!<+>+F5::
<^>^<!>!<+>+F6::
<^>^<!>!<+>+F7::
<^>^<!>!<+>+F8::
<^>^<!>!<+>+F9::
<^>^<!>!<+>+F10::
<^>^<!>!<+>+F11::
<^>^<!>!<+>+F12::
<^>^<!>!<+>+F13::
<^>^<!>!<+>+F14::
<^>^<!>!<+>+F15::
<^>^<!>!<+>+F16::
<^>^<!>!<+>+F17::
<^>^<!>!<+>+F18::
<^>^<!>!<+>+F19::
<^>^<!>!<+>+F20::
<^>^<!>!<+>+F21::
<^>^<!>!<+>+F22::
<^>^<!>!<+>+F23::
<^>^<!>!<+>+F24::