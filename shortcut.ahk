;NumpadDiv::Run C:\apps\GoldenDict\GoldenDict.exe
;NumpadAdd::Media_Play_Pause
;Numpad2::Volume_Down
;Numpad8::Volume_Up
;Numpad0::Run C:\Program Files (x86)\Thunder Network\Thunder\Program\Thunder.exe

;Numpad1::
;{
;	if WinExist("ahk_class ahk_class TForm1") {		 
;			Send ^!{F6} 
;			Return		
;	}
;	else{
;		Run C:\apps\Balabolka\balabolka.exe
;		Return
;	}
;}


!Space::!Shift




;LWin & p::Run C:\apps\EmEditorPortable\EmEditor.exe
;LWin & p::Run C:\Apps\PDF Viewer\PDFXCview.exe
;LWin & w::Run c:\apps\Sublime Text 3\sublime_text.exe
+Esc::Run C:\apps\SysinternalsSuite\procexp.exe
;AppsKey::Run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
;RAlt::Run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
;RAlt::Run C:\Apps\PDF Viewer\PDFXCview.exe
;AppsKey::Run C:\Apps\PDF Viewer\PDFXCview.exe





;Numpad4::Run C:\Program Files (x86)\foobar2000\foobar2000.exe /prev
;Numpad6::Run C:\Program Files (x86)\foobar2000\foobar2000.exe /next
;Numpad5::Run C:\Program Files (x86)\foobar2000\foobar2000.exe /playpause

;NumpadAdd::Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
;LWin & c::Run control.exe

Pause::Run c:\apps\SysinternalsSuite\psshutdown.exe -d -t 0
;+Pause::Run, shutdown.exe /r /t 00
;Scrolllock::Run C:\Program Files\ShrewSoft\VPN Client\ipsecc.exe -r "cosbeta" -u hawktang1 -p hawktang20011 -a
;+Scrolllock::Run c:\Program Files\ShrewSoft\VPN Client\ipseca.exe

;LWin & End::Run, shutdown.exe /s /t 00
;LWin & End::Run, shutdown.exe /s /t 00

;LWin & d::Run rundll32.exe shell32.dll`,Control_RunDLL desk.cpl ; Opens Control Panel > Display Properties > Settings
;LWin & n::Run rundll32.exe shell32.dll`,Control_RunDLL ncpa.cpl




;*LWin::Send {LControl Down}
;*LWin Up::Send {LControl Up}
LWin:: 
{
	If WinExist("ahk_class Chrome_WidgetWin_1") {
		;WinGet, maximized, MinMax, ahk_class Chrome_WidgetWin_1
		;if (maximized=0) or (maximized=1){
		IfWinActive 
		{
			WinMinimize
			Return
		}
		else {
			;WinSet, AlwaysOnTop, on
			WinActivate
			Return
		}	}
	else{
		Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
		return
	}
}


<#+t::^+t
<#c::SendInput,^c
<#v::SendInput,^v
<#f::SendInput, ^f
<#s::SendInput,^s
<#a::SendInput,^a
<#p::SendInput,^p
<#x::SendInput,^x
<#z::SendInput,^z
<#y::SendInput,^y
<#w::SendInput,^w
<#r::Run, %comspec%
<#e::
{
	If WinExist("ahk_class TTOTAL_CMD") {
		;WinGet, maximized, MinMax, ahk_class TTOTAL_CMD
		 ;if (maximized=0) or (maximized=1){
		IfWinActive 
		{
			WinMinimize
			Return
		}
		else {
			Run C:\totalcmd\TOTALCMD64.EXE
			Return
		}
	}
	else{
		Run C:\totalcmd\TOTALCMD64.EXE
		return
	}
}

<#Space::
{
	If WinExist("ahk_class EVERYTHING") {
		;WinGet, maximized, MinMax, ahk_class EVERYTHING
		 ;if (maximized=0) or (maximized=1){
		IfWinActive
		{
			WinMinimize
			Return
		}
		else {
			Run C:\Program Files\Everything\Everything.exe
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
;Numpad0::
;{
;	if WinExist("ahk_class XLUEFrameHostWnd") {
;		IfWinActive
;		{
;			WinMinimize
;			Return
;		}
;		else {
;			Run C:\Program Files (x86)\Thunder Network\Thunder\Program\Thunder.exe
;			Return
;		}
;	}
;	else{
;		Run C:\Program Files (x86)\Thunder Network\Thunder\Program\Thunder.exe
;		Return
;	}
;}



RAlt::
{
	if WinExist("ahk_class #32770") {
	;	 WinGet, maximized, MinMax, ahk_class #32770
	;	 if (maximized=0) or (maximized=1){
		IfWinActive
		{
			WinMinimize
			Return
		}
		else {
			Run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
			Return
		}
	}
	else{
		Run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
		Return 
	}
}
AppsKey::
{
	if WinExist("ahk_class DSUI:PDFXCViewer") {
		 ;WinGet, maximized, MinMax, ahk_class DSUI:PDFXCViewer
		 ;if (maximized=0) or (maximized=1){
		IfWinActive
		{
			WinMinimize
			Return
		}
		else {
			Run C:\Apps\PDF Viewer\PDFXCview.exe
			Return
		}
	}
	else{
		Run C:\Apps\PDF Viewer\PDFXCview.exe
		Return
	}
}
NumpadAdd:: 
{
	if WinExist("ahk_class PotPlayer64") {
			WinRestore
			;WinMinimize
			Send ^!+{NumpadAdd} 
			Return
	}
	else{
		Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
		Winwait ahk_class PotPlayer64
		Send ^!{NumpadMult}
		Send ^!+{NumpadAdd} 
		return
	}
}

Numpad0::
{
	If WinExist("ahk_class QWidget") {
		;WinGet, maximized, MinMax, ahk_class QWidget
		;if (maximized=0) or (maximized=1){
		IfWinActive
		{
			WinMinimize
			Return
		}
		else {
			WinRestore
			Return
		}
	}
	else{
		Run C:\apps\GoldenDict\GoldenDict.exe
		return
	}
}

NumpadDot::Run explorer.exe ::{645FF040-5081-101B-9F08-00AA002F954E}
;!Space::^!+NumpadSub
;Numpad9::Space
;NumpadEnter::^!+NumpadSub

Numpad1::
{
	if WinExist("ahk_class {97E27FAA-C0B3-4b8e-A693-ED7881E99FC1}") {
		 ;WinGet, maximized, MinMax, ahk_class {97E27FAA-C0B3-4b8e-A693-ED7881E99FC1}
		 ;if (maximized=0) or (maximized=1){
		IfWinActive
		{	
			WinMinimize
			Return
		}
		else {
			Run C:\Program Files (x86)\foobar2000\foobar2000.exe /show
			Return
		}
	}
	else{
		Run C:\Program Files (x86)\foobar2000\foobar2000.exe /show
		Return
	}
}