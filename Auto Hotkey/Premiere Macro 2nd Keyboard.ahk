#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;SetWorkingDir, C:\AHK\2nd-keyboard\ ;Or you could put the directory here. Whatevs.
Menu, Tray, Icon, shell32.dll, 283 ;changes the taskbar icon to something
;SetKeyDelay, 0 ;IDK exactly what this does.

;;EXACT LOCATION FOR WHERE TO PUT THIS SCRIPT:
; C:\AHK\2nd-keyboard\Intercept

;;Location for where to put a shortcut to the script, such that it will start when Windows starts:
;;  Here for just yourself:
;;  C:\Users\YOUR_USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
;;  Or here for all users:
;;  C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

#NoEnv
SendMode Input
#InstallKeybdHook
;#InstallMouseHook ;<--You'll want to use this if you have scripts that use the mouse.
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

;;The lines below are optional. Delete them if you need to.
#HotkeyModifierTimeout 60 ; https://autohotkey.com/docs/commands/_HotkeyModifierTimeout.htm
#KeyHistory 200 ; https://autohotkey.com/docs/commands/_KeyHistory.htm ; useful for debugging.
#MenuMaskKey vk07 ;https://autohotkey.com/boards/viewtopic.php?f=76&t=57683
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm ;prevent taskbar flashing.
;;The lines above are optional. Delete them if you need to.

;________________________________________________________________________________________
;                                                                                        
;		    2ND KEYBOARD USING INTERCEPTION AND INTERCEPT.exe (Logitech K120)            
;________________________________________________________________________________________

; Please watch https://www.youtube.com/watch?v=y3e_ri-vOIo for a comprehensive tutorial. 
;________________________________________________________________________________________

; DANGER: Installing interception may cause your USB devices to stop working sometimes, because it is limited to supporting only 10 of each device class. You have to uninstall it to fix that. Here is a follow up video with new information: https://www.youtube.com/watch?v=Hn18vv--sFY

; For this reason, I now use the Hasu USB to USB keyboard converter. It's sweet.
; https://www.1upkeyboards.com/shop/controllers/usb-to-usb-converter/

;;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||;;
;;||||||||||||| BEGIN SECOND KEYBOARD INTERCEPTION F23 ASSIGNMENTS ||||||||||||;;
;;|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||;;

;; You should DEFINITELY not be trying to add a 2nd keyboard unless you're already
;; familiar with how AutoHotkey works. I recommend that you at least take this tutorial:
;; https://autohotkey.com/docs/Tutorial.htm

;; You should probably use something better than Notepad for your scripting. (Do NOT use Word.)
;; I use Notepad++. "Real" programmers recoil from it, but it's fine for my purposes.
;; https://notepad-plus-plus.org/
;; You'll probably want the syntax highlighting:  https://stackoverflow.com/questions/45466733/autohotkey-syntax-highlighting-in-notepad


;;;WARNING - THIS IS KINDA UNTESTED SINCE I STOPPED USING IT. LET ME KNOW IF YOU HAVE ANY ISSUES, BY LEAVING A GITHUB... ISSUE.  https://github.com/TaranVH/2nd-keyboard/issues


; debug(message){
; If (message="zoomout.clp"){
;     MsgBox, %message%
;     }
; else if (message="zoomin.clp"){
;     MsgBox, %message%
;     }
    
; return
; }

;#if (getKeyState("F23", "P")) ;<--Everything after this line will only happen on the secondary keyboard that uses F23.
;F23::return ;this line is mandatory for proper functionality

escape::tooltip, [F23] You might wish to not give a command to escape. Could cause problems. IDK.
;escape::return ;<--to disable a key, just use a "return," like so.

preset(item)
{
send, {Alt down}{e down}{e up}{Alt up}{Alt}
Sleep, 50
;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
RunWait, %comspec% /c echo off | clip
Sleep, 100
RunWait, %comspec% /c C:\CLP\InsideClipboard.exe /loadclp %item%, c:\CLP
Sleep, 50
send ^v
Sleep, 100
;Run, C:\Users\iamkh\Desktop\clear.exe.lnk, /c echo.|clip
RunWait, %comspec% /c echo off | clip
;Sleep, 50
Return
}

;;--------------------Single Press--------------------;;
F1::preset("sound1.clp")
F2::preset("sound2.clp")
F3::preset("sound3.clp")
F4::preset("sound4.clp")
F5::preset("sound5.clp")
F6::preset("sound6.clp")
F7::preset("sound7.clp")
F8::preset("sound8.clp")
; F9::preset("")
; F10::preset("")
F11::preset("Goat.clp")
F12::preset("Titlepopup.clp")

;;--------------------CTRL + Press--------------------;;
^F1::preset("sound9.clp")
^F2::preset("sound10.clp")
^F3::preset("sound11.clp")
^F4::preset("sound12.clp")
^F5::preset("sound13.clp")
^F6::preset("sound14.clp")
^F7::preset("sound15.clp")
^F8::preset("sound16.clp")
; ^F9::preset("")
; ^F10::preset("")
; ^F11::preset("")
; ^F12::preset("")

;;--------------------SHIFT + Press--------------------;;
+F1::preset("sound17.clp")
+F2::preset("sound18.clp")
+F3::preset("sound19.clp")
+F4::preset("sound20.clp")
+F5::preset("sound21.clp")
+F6::preset("sound22.clp")
+F7::preset("sound23.clp")
+F8::preset("sound24.clp")
; +F9::preset("")
; +F10::preset("")
; +F11::preset("")
; +F12::preset("")

;;--------------------ALT + Press--------------------;;
!F1::preset("sound25.clp")
!F2::preset("sound26.clp")
!F3::preset("sound27.clp")
!F4::preset("sound28.clp")
;!F5::preset("")
;!F6::preset("")
;!F7::preset("")
;!F8::preset("")
;!F9::preset("")
;!F10::preset("")
;!F11::preset("")
;!F12::preset("")

;;--------------------[ Color Label ]--------------------;;
;`::
F24:: send, ^+!1
2:: send, ^+!2
3:: send, ^+!3
4:: send, ^+!4
5:: send, ^+!5
6:: send, ^+!6
7:: send, ^+!7
8:: send, ^+!8
;9::
;0::
;-::
;=::
;backspace::<----------Do not use this!!

;;--------------------[ Color Label with CRTL]--------------------;;
;`::
+1:: send, ^+!q
+2:: send, ^+!w
+3:: send, ^+!e
+4:: send, ^+!r
+5:: send, ^+!t
+6:: send, ^+!y
+7:: send, ^+!u
+8:: send, ^+!i
;9::
;0::
;-::
;=::
;backspace::<----------Do not use this!!

;;--------------------KEYBOARD 2ND ROW--------------------;;
;;tab::<----------Do not use this!!
;q::
w::preset("slideup.clp")
;e::
;r::
;t::
;y::
;u::
;i::
;o::
;p::
;[::
;]::
;\::
;;capslock::<----------Do not use this!!


;;--------------------KEYBOARD 3RD ROW--------------------;;
a::preset("slideleft.clp")
s::preset("zoomout.clp")
d::preset("slideright.clp")
;f::
;g::
;h::
;j::
;k::
;l::
;`;::;for the above line, (semicolon) note that the ` is necessary as an escape character -- and that the syntax highlighting might get it wrong.
;'::
;enter::tooltip, [F23]  %A_thisHotKey%

;;--------------------KEYBOARD 3RD ROW--------------------;;
;^a::
+s::preset("zoomin.clp")
;^d::preset("SlideRight.clp")
;^f::
;^g::
;^h::
;^j::
;^K::
;^l::
;^`;::;for the above line, (semicolon) note that the ` is necessary as an escape character -- and that the syntax highlighting might get it wrong.
;^'::
;^enter::tooltip, [F23]  %A_thisHotKey%

;;--------------------KEYBOARD 4TH ROW--------------------;;
;z::
x::preset("slidedown.clp")
;c::
;v::
;b::
;n::
;m::
;,::
;.::
;/::
