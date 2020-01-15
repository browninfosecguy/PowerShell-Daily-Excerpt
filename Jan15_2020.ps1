#PowerShell one liner to check patch for CVE 2020-0601

Get-CimInstance -ClassName Win32_QuickFixEngineering | Where-Object {$_.HotFixID -eq 'KB4534273'}