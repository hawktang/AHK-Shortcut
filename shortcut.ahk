#NoEnv
#MaxHotkeysPerInterval 650
;#InstallKeybdHook
SendMode Input
CoordMode, Mouse, Client

;NumpadDiv::Run C:\apps\GoldenDict\GoldenDict.exe
;NumpadAdd::Media_Play_Pause


;CapsLock::Return
;Numpaddiv::F16 
;NumpadMult::F17
;NumpadSub::F18
F19::Volume_Down
F20::Volume_Up
;F21::Media_Play_Pause
;F22::Run C:/Windows/System32/SndVol.exe -T 99490633

;Numpad2::Volume_Down
;Numpad8::Volume_Up
;Numpad6::Media_Next
;Numpad4::Media_Prev
;Numpad5::Media_Play_Pause


;Lister
Numpad3::^+!F12
Numpad9::^+!F9

;RShift::Enter
;Pause::Suspend
;+Pause::Run c:\apps\SysinternalsSuite\psshutdown.exe -d -t 0

NumpadDot::Run explorer.exe ::{645FF040-5081-101B-9F08-00AA002F954E}
<+CapsLock::CapsLock
ScrollLock::Run C:/Windows/System32/SndVol.exe -T 99490633

;LWin & p::Run C:\apps\EmEditorPortable\EmEditor.exe
;LWin & p::Run C:\Apps\PDF Viewer\PDFXCview.exe
;AppsKey::Run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
;RAlt::Run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
;RAlt::Run C:\Apps\PDF Viewer\PDFXCview.exe
;AppsKey::Run C:\Apps\PDF Viewer\PDFXCview.exe


;Numpad4::Run C:\Program Files (x86)\foobar2000\foobar2000.exe /prev
;Numpad6::Run C:\Program Files (x86)\foobar2000\foobar2000.exe /next
;Numpad5::Run C:\Program Files (x86)\foobar2000\foobar2000.exe /playpause

;NumpadAdd::Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
;LWin & c::Run control.exe




;+Pause::Run, shutdown.exe /r /t 00
;Scrolllock::Run C:\Program Files\ShrewSoft\VPN Client\ipsecc.exe -r "cosbeta" -u hawktang1 -p hawktang20011 -a
;+Scrolllock::Run c:\Program Files\ShrewSoft\VPN Client\ipseca.exe

;LWin & End::Run, shutdown.exe /s /t 00
;LWin & End::Run, shutdown.exe /s /t 00

;LWin & d::Run rundll32.exe shell32.dll`,Control_RunDLL desk.cpl ; Opens Control Panel > Display Properties > Settings
;LWin & n::Run rundll32.exe shell32.dll`,Control_RunDLL ncpa.cpl



;*LWin::Send {LControl Down}
;*LWin Up::Send {LControl Up}




;<#+t::^+t
;<#c::SendInput,^c
;<#v::SendInput,^v
;<#f::SendInput, ^f
;<#s::SendInput,^s
;<#a::SendInput,^a
;<#p::SendInput,^p
;<#x::SendInput,^x
;<#z::SendInput,^z
;<#y::SendInput,^y
;<#w::SendInput,^w
;<#r::Run, %comspec%;
;#g::Enter
;Del::Enter
;+Del::Del

;<#Space::^Shift


Numpad1::
{
	If WinExist("ahk_exe Thunder.exe") {
		IfWinNotActive
		{
       		Run C:\Program Files (x86)\Thunder Network\Thunder\Program\Thunder.exe
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files (x86)\Thunder Network\Thunder\Program\Thunder.exe
		return
	}
}

+Esc::
Pause::
{
	If WinExist("ahk_exe procexp64.exe") {
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\apps\SysinternalsSuite\procexp.exe
		return
	}
}

/*
Numpad6::
{
	If WinExist("ahk_exe dopus.exe") {
		IfWinNotActive
		{
      		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Apps\DirectoryOpus12b11x64_bx-pc18\Dopus12x64_Portable.exe
		return
	}
}

*/

<#e::
Numpad5::
{
	If WinExist("ahk_exe TOTALCMD64.EXE") {
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\totalcmd\TOTALCMD64.EXE
		return
	}
}


!Space::
{
	If WinExist("ahk_exe Everything.exe") {
		IfWinNotActive
		{
      		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files\Everything\Everything.exe
		return
	}
}


;flag=1
;
;NumpadMult:: 
;{
;	if (flag=0) {
;		 Send ^!+{NumpadMult}
;		 flag=1
;		 return
;	}
;	else {
;		 Send ^!{NumpadMult}
;		 flag=0
;		 return
;	}
;}

;flagfoobar=1
;NumpadDiv::
;{
;	if (flagfoobar=1) {
;		 Send ^+{NumpadDiv}
;		 flagfoobar=0
;		 return
;	}
;	else {
;		 Send ^!{NumpadDiv}
;		 flagfoobar=1
;		 return
;	}
;}

LWin:: 
{	

	If WinExist("ahk_exe chrome.exe") {
		
		IfWinNotActive
		{
			WinActivate
      		/*
      		WinGetPos,ChromeX,ChromeY, ChromeWidth, ChromeHeight, ahk_exe chrome.exe
      		;MsgBox, %ChromeX%
			if (ChromeX > -100 and ChromeY > -100){
				WinMove, ahk_exe chrome.exe, , 461, 0, 2109, 1398
			} else {
				WinMove, ahk_exe chrome.exe, , -1929, -235, 1938, 1048
			} 
      		*/
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
		return
	}
}


;CapsLock:: 
Numpad7::
{
	If WinExist("ahk_exe sublime_text.exe") {
		IfWinNotActive
		{
      		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Apps\Sublime Text\sublime_text.exe
		return
	}
}

;+Tab::Tab


+AppsKey::
{
	If WinExist("ahk_exe Acrobat.exe") {
	;if WinExist("ahk_exe PDFXEdit.exe") {
	;if WinExist("ahk_exe FoxitPhantomPDF.exe") {
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\Acrobat.exe
		;Run C:\Program Files\Tracker Software\PDF Editor\PDFXEdit.exe
		;Run c:\Program Files (x86)\Foxit Software\Foxit PhantomPDF\FoxitPhantomPDF.exe
		Return
	}
}


AppsKey::
{
	If WinExist("ahk_exe PDFXCview.exe") {
	;if WinExist("ahk_exe PDFXEdit.exe") {
	;if WinExist("ahk_exe FoxitPhantomPDF.exe") {
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run c:\Apps\PDF-XChange Viewer\PDFXCview.exe
		;Run C:\Program Files\Tracker Software\PDF Editor\PDFXEdit.exe
		;Run c:\Program Files (x86)\Foxit Software\Foxit PhantomPDF\FoxitPhantomPDF.exe
		Return
	}
}

;<#>^Numpad4::


^AppsKey::
{
	If WinExist("ahk_exe FoxitPhantomPDF.exe") {
	;if WinExist("ahk_exe PDFXEdit.exe") {
	;if WinExist("ahk_exe FoxitPhantomPDF.exe") {
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files (x86)\Foxit Software\Foxit PhantomPDF\FoxitPhantomPDF.exe
		;Run C:\Program Files\Tracker Software\PDF Editor\PDFXEdit.exe
		;Run c:\Program Files (x86)\Foxit Software\Foxit PhantomPDF\FoxitPhantomPDF.exe
		Return
	}
}



;<#>^Numpad6::
;RAlt:: 
;{
;	if WinExist("ahk_exe WINWORD.EXE") {
;		IfWinNotActive
;		{
;       		WinActivate
;
;
;       		Return
; 		}
; 		else
;    	{
;    		WinMinimize
;    		Return
;    	}
;	}
;	else{
;		Run C:\Program Files\Microsoft Office\Office16\WINWORD.EXE
;		Return
;	}
;}




;NumpadAdd:: 
;{
;	if WinExist("ahk_class PotPlayer64") {
;			WinRestore
;			;WinMinimize
;			Send ^!+{NumpadAdd} 
;			Return
;	}
;	else{
;		Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
;		Winwait ahk_class PotPlayer64
;		Send ^!{NumpadMult}
;		Send ^!+{NumpadAdd} 
;		return
;	}
;}




Numpad0::
{
	if WinExist("ahk_exe IDMan.exe") {
		IfWinNotActive
		{
      		WinActivate
       		Return
		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
		Return 
	}
}

Numpad4::
{
	If WinExist("ahk_exe GoldenDict.exe") 
	{
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else
	{
		Run C:\apps\GoldenDict\GoldenDict.exe
		return
	}
}
F18::
NumpadEnter::
{
	if WinExist("ahk_exe foobar2000.exe") {
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files (x86)\foobar2000\foobar2000.exe /show
		Return
	}
}

Numpad8::
{
	If WinExist("ahk_exe balabolka.exe") {
		IfWinNotActive
		{
      		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else{
		Run C:\Program Files (x86)\Balabolka\balabolka.exe
		Return
	}
}


NumpadAdd:: 
{
	If WinExist("ahk_exe PotPlayerMini64.exe") 
	{
		IfWinNotActive
		{
       		WinActivate
       		Return
 		}
 		else
    	{
    		WinMinimize
    		Return
    	}
	}
	else
	{
		Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
		Return
	}
	
}

^<#L::
	
	MouseGetPos, x1, y1,ahkid
	WinMaximize, ahk_id %ahkid%
return


~LButton::
	 
	;CoordMode, Mouse, Screen
	;SetKeyDelay 0, 10
	;CoordMode, Mouse, Client
	MouseGetPos, x1, y1,ahkid
	KeyWait, LButton
	MouseGetPos, x2, y2

	If ((A_priorHotKey = "~LButton" and A_TimeSincePriorHotkey < 400) or abs(x2-x1) > 40 or abs(y2-y1) > 30) and (y1>=164 and y2>=164){ ; and (y1>=164)
			;CaretX := A_CaretX
			;CaretY := A_CaretY
			;If (abs(y1-CaretY)>50 ){
				gosub, PasteToDict
			;}
	}
return

PasteToDict:
	WinGet, MousePrograme, ProcessName, ahk_id %ahkid%
	;or MousePrograme="WINWORD.EXE" or MousePrograme="POWERPNT.EXE" MousePrograme ="chrome.exe" or 
	If (MousePrograme="PDFXCview.exe" or MousePrograme="PDFXEdit.exe" or MousePrograme="firefox.exe" or MousePrograme="FoxitPhantomPDF.exe" or MousePrograme="Acrobat.exe" ) {	
		Clip0:= ClipboardAll
		ClipboardText0 := ClipBoard	
		Send {LCtrl down}{c down}
		Sleep 100 ;youtube page in Chrome would need much longer time 50+
		Send {c up}{LCtrl up}	
		ClipWait , 2, 1
		if ErrorLevel {
			MsgBox, clipboard error
		}
		;Clip := ClipboardAll
		ClipboardText := ClipBoard
		;MsgBox, %ClipboardText0%, %ClipboardText% 
		If (ClipboardText0<>ClipboardText) {
			cliplen := StrLen(ClipboardText) 
			If (cliplen >= 3) and (cliplen <= 30) {
				EnglishWords := RegExReplace(ClipboardText, "-`r`n", "")
				;MsgBox, %EnglishWords%
				EnglishWords := RegExReplace(EnglishWords, "[^0-9a-zA-Z -]", "")
				IF (EnglishWords<>"") and (EnglishWords<>" ") and (EnglishWords<>"  ") and (EnglishWords<>"   ")  { ;and (A_Cursor="IBeam")
					
					
					;MsgBox, X Caret %CaretX%, %A_CaretY% Y Caret %CaretY%,X1 %x1%,Y1 %y1%
					
					Run C:\apps\GoldenDict\GoldenDict.exe "%EnglishWords%"
					WinActivate, ahk_id %ahkid%
					WinActivate, ahk_id %ahkid% ;I also don't why there has to be 2 WinActivate 
				}	
			}

			If (MousePrograme="PDFXEdit.exe" or MousePrograme="FoxitPhantomPDF.exe" or MousePrograme="PDFXCview.exe" )
			{
				ClipboardText := Trim(ClipboardText)
				ClipboardText := StrReplace(ClipboardText,"`r`n`r`n","`r`n")
				ClipboardText := StrReplace(ClipboardText,"`r`n`r`n","`r`n") 
				ClipboardText := StrReplace(ClipboardText,"-`r`n","") 
				ClipboardText := StrReplace(ClipboardText,"`r`n"," ") 
				Clipboard := ClipboardText
			} else {
				ClipBoard := Clip0
			}
		}
		
		Clip0 := ""
		Clip := ""
		ClipboardText0 := ""	
		ClipboardText := ""		
		
	} 
return

       		
       		/*
       		WinGetPos,WordX,WordY, WordWidth, WordHeight, ahk_exe WINWORD.EXE
      		;MsgBox, %ChromeX%
			if (WordX > -100 and WordY > -100){
				WinMove, ahk_exe WINWORD.EXE, , 461, 0, 2109, 1398
			} else {
				WinMove, ahk_exe WINWORD.EXE, , -1929, -235, 1938, 1048
			}*/