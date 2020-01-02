#PowerShell fun with CIM cmdlets
#How to View events using the WMI class

Get-CimInstance -ClassName Win32_NTEventlogFile | Out-File -FilePath "C:\Users\Public\Output.txt"

Get-CimInstance -ClassName Win32_NTLogEvent -Filter "(LogFile = 'System') and (EventCode = 129) " | Select-Object -first 10 | Out-File -FilePath "C:\Users\Public\Output.txt" -Append

Get-Content -Path "C:\Users\Public\Output.txt"

Remove-Item -Path "C:\Users\Public\Output.txt"