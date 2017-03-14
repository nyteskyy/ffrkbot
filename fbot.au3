#include <ImageSearch2015.au3>

$x1=0
$y1=0

$main_menu_play = "c:\FFRK\images\main_menu_play.PNG"
Do
   $result = _ImageSearch($main_menu_play,1,$x1,$y1,0,0)
   ;_ImageSearch($findImage, $resultPosition, ByRef $x, ByRef $y, $tolerance, $transparancy = 0)

ConsoleWrite($result)
until $result = 1;
if $result=1 Then
   MouseMove($x1,$y1,50)
Else
   MsgBox(0,"MSG","End")
EndIf