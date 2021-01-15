#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;This scrip use for Stream Deck only
;And work for F13-F24 and can combine with Alt Shift and CTRL key
;Design By LordKhunz


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
        
        return
    }
}

InserFXFunction(a, b , c) ;(Effect name, x Position, y Position)
{
    ;#IfWinActive ahk_exe Adobe Premiere Pro.exe
    ifWinActive, ahk_exe Adobe Premiere Pro.exe
    {
        Sleep, 100
        send, +7
        Sleep, 100
        MouseGetPos, xpos, ypos
        Sleep, 100
        ControlGetpos, X,  Y, Width, Height, DroverLord - Window Class46, ahk_class Premiere Pro ;class will change every time when change work space.
        ;MsgBox, 0, Custom, %a% %xpos% %ypos%, 1
        Sleep, 100
        MouseMove, x+20, y+15, 0
        Sleep, 100
        MouseClick, Left, , ,1
        Sleep, 100
        Send, {backspace}
        Sleep, 100
        Send,  %a%
        Sleep, 100
        MouseMove, %b%, %c%, 0, R
        Sleep, 100
        MouseClickDrag, Left, , , %xpos%, %ypos%,0
    }else{

    }
    return

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
<^<!F1::InserFXFunction("-Lens Distortion Preset", 55, 45)
<^<!F2::InserFXFunction("Warp Stabilizer", 55, 145)
<^<!F3::InserFXFunction("Camera Blur", 55, 145)
<^<!F4::InserFXFunction("Directional Blur", 55, 145)
<^<!F5::InserFXFunction("lumetri Color", 55, 145)
<^<!F6::InserFXFunction("Transform", 55, 145)
<^<!F7::InserFXFunction("Crop", 55, 145)
<^<!F8::InserFXFunction("Horizontal Flip", 55, 145)
<^<!F9::InserFXFunction("Vertical Flip", 55, 145)
<^<!F10::InserFXFunction("Dynamics", 55, 105)
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
>^<!>!<+F2::
>^<!>!<+F3::Animetion("Smoke01.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F4::Animetion("Smoke02.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F5::Animetion("Smoke03.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F6::Animetion("Smoke04.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F7::Animetion("Smoke05.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F8::Animetion("Smoke06.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F9::Animetion("Smoke07.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F10::Animetion("Smoke08.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F11::Animetion("Smoke09.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F12::Animetion("Smoke10.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F13::Animetion("Smoke11.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F14::Animetion("Smoke12.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F15::Animetion("Smoke13.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F16::Animetion("Smoke14Top.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F17::Animetion("Smoke14Under.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F18::Animetion("Smoke15.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F19::Animetion("Smoke16.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F20::Animetion("Smoke17.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F21::Animetion("Smoke18.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F22::Animetion("Smoke19.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F23::Animetion("Smoke20.clp", 150, "\CLP\Animation\Smoke")
>^<!>!<+F24::Animetion("BWSmoke01.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F1::Animetion("BWSmoke02.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F2::Animetion("BWSmoke03.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F3::Animetion("BWSmoke04.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F4::Animetion("BWSmoke05.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F5::Animetion("BWSmoke06.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F6::Animetion("BWSmoke07.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F7::Animetion("BWSmoke08.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F8::Animetion("BWSmoke09.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F9::Animetion("BWSmoke10.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F10::Animetion("BWSmoke11.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F11::Animetion("BWSmoke12.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F12::Animetion("BWSmoke13.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F13::Animetion("BWSmoke14Top.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F14::Animetion("BWSmoke14Under.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F15::Animetion("BWSmoke15.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F16::Animetion("BWSmoke16.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F17::Animetion("BWSmoke17.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F18::Animetion("BWSmoke18.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F19::Animetion("BWSmoke19.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F20::Animetion("BWSmoke20.clp", 150, "\CLP\Animation\Smoke\BW")
>^<!>!>+F21::Animetion("Electric01.clp", 150, "\CLP\Animation\Electric")
>^<!>!>+F22::Animetion("Electric02.clp", 150, "\CLP\Animation\Electric")
>^<!>!>+F23::Animetion("Electric03.clp", 150, "\CLP\Animation\Electric")
>^<!>!>+F24::Animetion("Electric04.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F1::Animetion("Electric05.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F2::Animetion("Electric06.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F3::Animetion("Electric07.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F4::Animetion("Electric08.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F5::Animetion("Electric09.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F6::Animetion("Electric10.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F7::Animetion("Electric11.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F8::Animetion("Electric12.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F9::Animetion("Electric13.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F10::Animetion("Electric14.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F11::Animetion("Electric15.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F12::Animetion("Electric16.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F13::Animetion("Electric17.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F14::Animetion("Electric18.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F15::Animetion("Electric19.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F16::Animetion("Electric20.clp", 150, "\CLP\Animation\Electric")
>^<!<+>+F17::Animetion("BWElectric01.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F18::Animetion("BWElectric02.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F19::Animetion("BWElectric03.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F20::Animetion("BWElectric04.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F21::Animetion("BWElectric05.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F22::Animetion("BWElectric06.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F23::Animetion("BWElectric07.clp", 150, "\CLP\Animation\Electric\BW")
>^<!<+>+F24::Animetion("BWElectric08.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F1::Animetion("BWElectric09.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F2::Animetion("BWElectric10.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F3::Animetion("BWElectric11.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F4::Animetion("BWElectric12.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F5::Animetion("BWElectric13.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F6::Animetion("BWElectric14.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F7::Animetion("BWElectric15.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F8::Animetion("BWElectric16.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F9::Animetion("BWElectric17.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F10::Animetion("BWElectric18.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F11::Animetion("BWElectric19.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F12::Animetion("BWElectric20.clp", 150, "\CLP\Animation\Electric\BW")
>^>!<+>+F13::Animetion("Shape01.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F14::Animetion("Shape02.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F15::Animetion("Shape03.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F16::Animetion("Shape04.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F17::Animetion("Shape05.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F18::Animetion("Shape06.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F19::Animetion("Shape07.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F20::Animetion("Shape08.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F21::Animetion("Shape09.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F22::Animetion("Shape10.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F23::Animetion("Shape11.clp", 150, "\CLP\Animation\Shape")
>^>!<+>+F24::Animetion("Shape12.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F1::Animetion("Shape13.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F2::Animetion("Shape14top.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F3::Animetion("Shape14Under.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F4::Animetion("Shape15.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F5::Animetion("Shape16.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F6::Animetion("Shape17.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F7::Animetion("Shape18.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F8::Animetion("Shape19.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F9::Animetion("Shape20.clp", 150, "\CLP\Animation\Shape")
<!>!<+>+F10::Animetion("BWShape01.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F11::Animetion("BWShape02.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F12::Animetion("BWShape03.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F13::Animetion("BWShape04.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F14::Animetion("BWShape05.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F15::Animetion("BWShape06.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F16::Animetion("BWShape07.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F17::Animetion("BWShape08.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F18::Animetion("BWShape09.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F19::Animetion("BWShape10.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F20::Animetion("BWShape11.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F21::Animetion("BWShape12.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F22::Animetion("BWShape13.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F23::Animetion("BWShape14top.clp", 150, "\CLP\Animation\Shape\BW")
<!>!<+>+F24::Animetion("BWShape14Under.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F1::Animetion("BWShape15.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F2::Animetion("BWShape16.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F3::Animetion("BWShape17.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F4::Animetion("BWShape18.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F5::Animetion("BWShape19.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F6::Animetion("BWShape20.clp", 150, "\CLP\Animation\Shape\BW")
<^>^<!>!<+F7::Animetion("Flame01.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F8::Animetion("Flame02.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F9::Animetion("Flame03.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F10::Animetion("Flame04.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F11::Animetion("Flame05.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F12::Animetion("Flame06.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F13::Animetion("Flame07.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F14::Animetion("Flame08.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F15::Animetion("Flame09.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F16::Animetion("Flame10.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F17::Animetion("Flame11.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F18::Animetion("Flame12.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F19::Animetion("Flame13.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F20::Animetion("Flame14top.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F21::Animetion("Flame14Under.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F22::Animetion("Flame15.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F23::Animetion("Flame16.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!<+F24::Animetion("Flame17.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!>+F1::Animetion("Flame18.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!>+F2::Animetion("Flame19.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!>+F3::Animetion("Flame20.clp", 150, "\CLP\Animation\Flame")
<^>^<!>!>+F4::Animetion("BWFlame01.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F5::Animetion("BWFlame02.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F6::Animetion("BWFlame03.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F7::Animetion("BWFlame04.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F8::Animetion("BWFlame05.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F9::Animetion("BWFlame06.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F10::Animetion("BWFlame07.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F11::Animetion("BWFlame08.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F12::Animetion("BWFlame09.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F13::Animetion("BWFlame10.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F14::Animetion("BWFlame11.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F15::Animetion("BWFlame12.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F16::Animetion("BWFlame13.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F17::Animetion("BWFlame14top.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F18::Animetion("BWFlame14Under.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F19::Animetion("BWFlame15.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F20::Animetion("BWFlame16.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F21::Animetion("BWFlame17.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F22::Animetion("BWFlame18.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F23::Animetion("BWFlame19.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!>!>+F24::Animetion("BWFlame20.clp", 150, "\CLP\Animation\Flame\BW")
<^>^<!<+>+F1::Animetion("Energy01.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F2::Animetion("Energy02.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F3::Animetion("Energy03.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F4::Animetion("Energy04.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F5::Animetion("Energy05.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F6::Animetion("Energy06.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F7::Animetion("Energy07.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F8::Animetion("Energy08.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F9::Animetion("Energy09.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F10::Animetion("Energy10.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F11::Animetion("Energy11.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F12::Animetion("Energy12.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F13::Animetion("Energy13.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F14::Animetion("Energy14.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F15::Animetion("Energy15.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F16::Animetion("Energy16.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F17::Animetion("Energy17.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F18::Animetion("Energy18.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F19::Animetion("Energy19.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F20::Animetion("Energy20.clp", 150, "\CLP\Animation\Energy")
<^>^<!<+>+F21::Animetion("BWEnergy01.clp", 150, "\CLP\Animation\Energy\BW")
<^>^<!<+>+F22::Animetion("BWEnergy02.clp", 150, "\CLP\Animation\Energy\BW")
<^>^<!<+>+F23::Animetion("BWEnergy03.clp", 150, "\CLP\Animation\Energy\BW")
<^>^<!<+>+F24::Animetion("BWEnergy04.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F1::Animetion("BWEnergy05.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F2::Animetion("BWEnergy06.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F3::Animetion("BWEnergy07.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F4::Animetion("BWEnergy08.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F5::Animetion("BWEnergy09.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F6::Animetion("BWEnergy10.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F7::Animetion("BWEnergy11.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F8::Animetion("BWEnergy12.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F9::Animetion("BWEnergy13.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F10::Animetion("BWEnergy14.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F11::Animetion("BWEnergy15.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F12::Animetion("BWEnergy16.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F13::Animetion("BWEnergy17.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F14::Animetion("BWEnergy18.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F15::Animetion("BWEnergy19.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F16::Animetion("BWEnergy20.clp", 150, "\CLP\Animation\Energy\BW")
<^>^>!<+>+F17::Animetion("Line01.clp", 150, "\CLP\Animation\Line")
<^>^>!<+>+F18::Animetion("Line02.clp", 150, "\CLP\Animation\Line")
<^>^>!<+>+F19::Animetion("Line03.clp", 150, "\CLP\Animation\Line")
<^>^>!<+>+F20::Animetion("Line04.clp", 150, "\CLP\Animation\Line")
<^>^>!<+>+F21::Animetion("Line05.clp", 150, "\CLP\Animation\Line")
<^>^>!<+>+F22::Animetion("Line06.clp", 150, "\CLP\Animation\Line")
<^>^>!<+>+F23::Animetion("Line07.clp", 150, "\CLP\Animation\Line")
<^>^>!<+>+F24::Animetion("Line08.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F1::Animetion("Line09.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F2::Animetion("Line10.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F3::Animetion("Line11.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F4::Animetion("Line12.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F5::Animetion("Line13.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F6::Animetion("Line14.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F7::Animetion("Line15.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F8::Animetion("Line16.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F9::Animetion("Line17.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F10::Animetion("Line18.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F11::Animetion("Line19.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F12::Animetion("Line20.clp", 150, "\CLP\Animation\Line")
<^<!>!<+>+F13::Animetion("BWLine01.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F14::Animetion("BWLine02.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F15::Animetion("BWLine03.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F16::Animetion("BWLine04.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F17::Animetion("BWLine05.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F18::Animetion("BWLine06.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F19::Animetion("BWLine07.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F20::Animetion("BWLine08.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F21::Animetion("BWLine09.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F22::Animetion("BWLine10.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F23::Animetion("BWLine11.clp", 150, "\CLP\Animation\Line\BW")
<^<!>!<+>+F24::Animetion("BWLine12.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F1::Animetion("BWLine13.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F2::Animetion("BWLine14.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F3::Animetion("BWLine15.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F4::Animetion("BWLine16.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F5::Animetion("BWLine17.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F6::Animetion("BWLine18.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F7::Animetion("BWLine19.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F8::Animetion("BWLine20.clp", 150, "\CLP\Animation\Line\BW")
>^<!>!<+>+F9::Animetion("Transition01.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F10::Animetion("Transition02.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F11::Animetion("Transition03.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F12::Animetion("Transition04.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F13::Animetion("Transition05.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F14::Animetion("Transition06.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F15::Animetion("Transition07.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F16::Animetion("Transition08.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F17::Animetion("Transition09.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F18::Animetion("Transition10.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F19::Animetion("Transition11.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F20::Animetion("Transition12.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F21::Animetion("Transition13.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F22::Animetion("Transition14.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F23::Animetion("Transition15.clp", 150, "\CLP\Animation\Transition")
>^<!>!<+>+F24::Animetion("Transition16.clp", 150, "\CLP\Animation\Transition")
<^>^<!>!<+>+F1::Animetion("Transition17.clp", 150, "\CLP\Animation\Transition")
<^>^<!>!<+>+F2::Animetion("Transition18.clp", 150, "\CLP\Animation\Transition")
<^>^<!>!<+>+F3::Animetion("Transition19.clp", 150, "\CLP\Animation\Transition")
<^>^<!>!<+>+F4::Animetion("Transition20.clp", 150, "\CLP\Animation\Transition")
<^>^<!>!<+>+F5::Animetion("BWTransition01.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F6::Animetion("BWTransition02.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F7::Animetion("BWTransition03.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F8::Animetion("BWTransition04.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F9::Animetion("BWTransition05.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F10::Animetion("BWTransition06.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F11::Animetion("BWTransition07.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F12::Animetion("BWTransition08.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F13::Animetion("BWTransition09.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F14::Animetion("BWTransition10.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F15::Animetion("BWTransition11.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F16::Animetion("BWTransition12.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F17::Animetion("BWTransition13.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F18::Animetion("BWTransition14.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F19::Animetion("BWTransition15.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F20::Animetion("BWTransition16.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F21::Animetion("BWTransition17.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F22::Animetion("BWTransition18.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F23::Animetion("BWTransition19.clp", 150, "\CLP\Animation\Transition\BW")
<^>^<!>!<+>+F24::Animetion("BWTransition20.clp", 150, "\CLP\Animation\Transition\BW")