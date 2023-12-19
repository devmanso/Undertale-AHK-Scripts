Gui, Add, Text, , Width:
Gui, Add, Edit, vWidth
Gui, Add, Text, , Height:
Gui, Add, Edit, vHeight
Gui, Add, Button, Default gApplyButton, Apply
Gui, Show, , ResizeUndertaleYellow

ApplyButton:
Gui, Submit, NoHide

; Check if Width and Height are valid numbers
if (Width := StrReplace(Width, ",", ""))  ; Remove commas if present
if (Height := StrReplace(Height, ",", ""))  ; Remove commas if present
if (Width + 0 = Width && Height + 0 = Height) ; Check if they are valid numbers
{
    ; Calculate the center coordinates of the screen
    SysGet, Monitor, Monitor
    CenterX := MonitorWidth // 2
    CenterY := MonitorHeight // 2

    ; If the window exists, activate it and set the width, height, and position to the center of the screen
    IfWinExist, Undertale Yellow 
    {
        WinActivate
        WinMove, , , CenterX, CenterY, %Width%, %Height%
    }
}
else
{
    MsgBox, Please enter valid numeric values for Width and Height.
}

return

GuiClose:
ExitApp
