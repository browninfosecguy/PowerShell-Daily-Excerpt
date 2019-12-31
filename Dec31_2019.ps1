#PowerShell PSDefaultParameterValues variable

#The PSDefaultParameterValues stored the default value for a CMDLET parameter in a hashtable
$PSDefaultParameterValues.Add('Get-CimInstance:ClassName','Win32_Process')


Write-Host "Size of Hashtable: " $PSDefaultParameterValues.Count "`n" -ForegroundColor Black -BackgroundColor Green

Write-Host "Hashtable name and value" -ForegroundColor Black -BackgroundColor Yellow
$PSDefaultParameterValues

Get-CimInstance | Format-Table

#Clear the content of Hash
$PSDefaultParameterValues.Clear()