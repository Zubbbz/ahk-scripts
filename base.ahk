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
	LaunchFocus("ahk_exe WindowsTerminal.exe", 300, "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.15.2875.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe")
}

; Browser
LWin & B::
{
	LaunchFocus("ahk_exe firefox.exe", 300, "firefox")
}
