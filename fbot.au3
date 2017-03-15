#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         nyteskyy + tread

 Script Function:
	Final Fantasy Record Keeper bot

#ce ----------------------------------------------------------------------------
#include <ImageSearch2015.au3>
#include <scripts\FbotImageVariables.au3>

ConsoleWrite ( "data" )
ConsoleWrite('! = Red' & @CRLF)

Func searchAndPeck($imgToSearchFor)

    Local $mouseX1 = 0
    Local $mouseY1 = 0
    Local $result

    Do ; TODO: Prevent infinite loop... not sure how, though

        $result = _ImageSearch($imgToSearchFor,1,$mouseX1,$mouseY1,0,0)
        ;_ImageSearch($findImage, $resultPosition, ByRef $x, ByRef $y, $tolerance, $transparancy = 0)

        ConsoleWrite($result)
    until $result = 1;

    MouseMove($mouseX1,$mouseY1,50)
    MouseClick("left")
EndFunc

searchAndPeck($ffrk_apk) ; First start the app
searchAndPeck($mm_play) ; Then press play

#cs

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

#ce