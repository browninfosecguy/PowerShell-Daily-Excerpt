#PowerShell one liner to save output in HTML format

Get-Process | ConvertTo-Html | Out-File "Demo.html"
