'On Error Resume Next
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")

githubLocation = "GitDesktop\GitHubDesktopSetup.exe"

'write logoff.bat
outFile= "%userprofile%\Desktop\logoff.bat"
Set objFile = objFSO.CreateTextFile(outFile,True)
objFile.Write "shutdown -f -l" & vbCrLf
objFile.Close



'Run Github Desktop (Only if x64)
If GetObject("winmgmts:root\cimv2:Win32_Processor='cpu0'").AddressWidth _
       = 64 Then
	WshShell.Run (githubLocation, 1, true)
End If





'Clear logs folder
fso.DeleteFolder logsFolder
fso.CreateFolder logsFolder