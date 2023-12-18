; UNDERTALE WASD keybinding v1.0.1

#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#HotkeyInterval 1000

#IfWinActive, ahk_exe UNDERTALE Yellow.exe
    ^!s::Suspend
    ^!e::ExitApp
    w::Up
    a::Left
    s::Down
    d::Right
    l::z
    k::x
    m::c
#IfWinActive
