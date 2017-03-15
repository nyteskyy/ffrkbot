#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         nyteskyy + tread

 Script Function:
	Final Fantasy Record Keeper bot

#ce ----------------------------------------------------------------------------
#include <ImageSearch2015.au3>
#include <scripts\FbotImageVariables.au3>

#TODO: write function that takes image to search for as a parameter, and it will automatically find and click it

$x1=0
$y1=0

Do
   $result = _ImageSearch($ffrk_apk,1,$x1,$y1,0,0)
   ;_ImageSearch($findImage, $resultPosition, ByRef $x, ByRef $y, $tolerance, $transparancy = 0)

ConsoleWrite($result)
until $result = 1;

if $result=1 Then
   MouseMove($x1,$y1,50)
   MouseClick("left")
Else
   MsgBox(0,"MSG","End")
EndIf