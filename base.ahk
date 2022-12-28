#Requires AutoHotkey v2.0

; Terminal
LWin & Enter::
{
	if (WinExist("ahk_exe WindowsTerminal.exe")) {
		WinActivate
	} else {
		Run "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.15.2875.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe"
		Sleep 300
		WinActivate("ahk_exe WindowsTerminal.exe")
	}
}

; Browser
LWin & B::
{
	if (WinExist("ahk_exe firefox.exe")) {
		WinActivate
	} else {
		Run "firefox"
		Sleep 300
		WinActivate("ahk_exe firefox.exe")
	}
}
