; UNDERTALE WASD keybinding v1.0.1

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
#HotkeyInterval 1000 ; measured in ms
; prevents script from bugging out when you hit keys in rapid succesion

#IfWinActive, UNDERTALE ahk_class YYGameMakerYY
  ^!s::Suspend ; if user hits control+alt+s it will suspend the program
  ^!e::ExitApp ; if user hits control+alt+e then exit the script
  w::Up
  a::Left
  s::Down
  d::Right
  l::z
  k::x
  m::c
#IfWinActive
; putting #IfWinActive at the end of the script should stop this script from messing with any other programs
