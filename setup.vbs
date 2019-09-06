
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")

githubLocation = "GitDesktop\GitHubDesktopSetup.txt"

'write logoff.bat
strPath = WshShell.SpecialFolders("Desktop")
outFile= strPath & "\logoff.bat"
Set objFile = fso.CreateTextFile(outFile,True)
objFile.Write "shutdown -f -l"
objFile.Close

'Run Github Desktop (Only if x64)
If GetObject("winmgmts:root\cimv2:Win32_Processor='cpu0'").AddressWidth = 64 Then
	WshShell.Run githubLocation, 1, true
End If


Dim URL
URL = "chrome://settings/syncSetup"
WshShell.run "CMD /C start chrome.exe " & URL & "",0,False


'fso.DeleteFolder logsFolder
'fso.CreateFolder logsFolder