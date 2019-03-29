Function Is64BitOS()
    If GetObject("winmgmts:root\cimv2:Win32_Processor='cpu0'").AddressWidth _
       = 64 Then
        Is64BitOS = True
    Else
        Is64BitOS = False
    End If
End Function