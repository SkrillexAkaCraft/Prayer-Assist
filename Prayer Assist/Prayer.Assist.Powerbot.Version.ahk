
InputBox, UserInput, Login, Please enter your Powerbot Name, 500, 147

Home:
Msgbox,64,Info, Updates Will/Might come soon!
Gui, Home:Add, Button, x405 y420 w80 h25 gPrayers, Start Now
Gui, Home:Add, Text, x35 y35 w235 h155 BackgroundTrans, Welcome %UserInput% to Prayer Assist from ProBotterIamNoob`nMake sure you have pre selected your prayers!
Gui, Home:Add, Picture, x245 y75 w100 h255, %A_ScriptDir%\lib\images\prayer_ico.png
Gui, Home:Show, w497 h457, Prayer Assist
return

HomeGuiClose:
ExitApp

Prayers:
Gui, Home:Destroy
Gui, Prayers:Add, Text, x10 y35 w300 h80 , Idle Press F1 to Activate your prayers!
Gui, Prayers:Add, Button, x50 y50 w80 h25 gStop, Stop
Gui, Prayers:Add, Text, x10 y100 w300 h155 , Your name = %UserInput%
Gui Prayers:+AlwaysOnTop
Gui, Prayers:Add, Text, x30 y20 w235 h80 BackgroundTrans, Status
Gui, Prayers:Show, w190 h120, Prayers
F1::
ImageSearch, FoundX, FoundY, 0,0,1300,700, *25 %A_ScriptDir%\lib\images\Prayer_Icon.png
Click %FoundX%, %FoundY%
sleep 300
gosub Message
return

Stop:
Gui, Prayers:Destroy
SoundPlay *-1
;Msgbox,64,Thank You, Thank You for trieng out Prayer Assistant`nLeave Feedback Here
Gui, Stop:Add, Button, x150 y80 w80 h25 gExit, Ok
Gui, Stop:Add, Text, x10 y35 w300 h80 BackgroundTrans, Thank You, Thank You for trieng out Prayer Assistant`nLeave Feedback and Suggestions
Gui, Stop:Add, Text, x175 y48 w300 h80 BackgroundTrans  gGotoSite, Click Here
Gui, Stop:Show, w300 h120, Thank You
return

Exit:
ExitApp
return

GotoSite:
run http://www.powerbot.org/community/topic/1303360-prayer-support/
ExitApp
return


Message:
Gui, Prayers:Add, Text, x10 y35 w235 h80 , Prayers Active Re-opening Inventory
gosub InvSlot
return

PrayersGuiClose:
ExitApp

InvSlot:
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\lib\images\bag2.png
if ErrorLevel = 2
   return
else if ErrorLevel = 1
    return
else
    Click %FoundX%, %FoundY%
return




;Location absolute: 551,166
;Location relative: 559,174
;Relative to: TRiBot Old-School - The Desktop Botting Solution
;Size: 20,22

 ;This has been placed on the clipboard.