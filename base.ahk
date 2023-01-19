#Requires AutoHotkey v2.0

LaunchFocus(exeName, activateDelay, runPath)
{
	if (WinExist(exeName)) {
		WinActivate
	} else {
		Run(runPath)
		Sleep(activateDelay)
		WinActivate(exeName)
	}
}

; Terminal
LWin & Enter::
{
	LaunchFocus("ahk_exe WindowsTerminal.exe", 300, "wt")
}

; Browser
LWin & B::
{
	LaunchFocus("ahk_exe firefox.exe", 300, "firefox")
}
