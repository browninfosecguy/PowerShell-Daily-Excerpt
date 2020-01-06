#PowerShell one liner to start a porcess using WMI

Invoke-CimMethod -ClassName Win32_Process -MethodName "Create" -Arguments @{ CommandLine = "cmd.exe" }
