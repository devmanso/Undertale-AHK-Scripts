Gui, Add, Text, , Width:
Gui, Add, Edit, vWidth
Gui, Add, Text, , Height:
Gui, Add, Edit, vHeight
Gui, Add, Text, , X:
Gui, Add, Edit, vX
Gui, Add, Text, , Y:
Gui, Add, Edit, vY
Gui, Add, Button, Default gApplyButton, Apply
Gui, Show, , ResizeUndertaleYellow

ApplyButton:
Gui, Submit, NoHide

; Check if Width, Height, X, and Y are valid numbers
if (Width := StrReplace(Width, ",", ""))  ; Remove commas if present
if (Height := StrReplace(Height, ",", ""))  ; Remove commas if present
if (X := StrReplace(X, ",", ""))  ; Remove commas if present
if (Y := StrReplace(Y, ",", ""))  ; Remove commas if present
if (Width + 0 = Width && Height + 0 = Height && X + 0 = X && Y + 0 = Y) ; Check if they are valid numbers
{
    ; If the window exists, activate it and set the width, height, and position to user input
    IfWinExist, Undertale Yellow 
    {
        WinActivate
        WinMove, , , %X%, %Y%, %Width%, %Height%
    }
}
else
{
    MsgBox, Please enter valid numeric values for Width, Height, X, and Y.
}

return

GuiClose:
ExitApp