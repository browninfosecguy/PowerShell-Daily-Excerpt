
#Reading Event log in XML Format
#
#Reading Logs Directly
#[xml]$data = Get-WinEvent -LogName Security -MaxEvents 1|ForEach-Object {$_.toxml()}
#

[xml]$data = Get-Content -Path "C:\Users\browninfosecguy\Documents\GitHub\PowerShell-Daily-Excerpt\April14_2020.xml"

$SystemName = $data.Event.System.Computer

$CommandLine = $data.Event.EventData.Data[8]."#text"

Write-Host "System Name: $SystemName and Command Line: $CommandLine"