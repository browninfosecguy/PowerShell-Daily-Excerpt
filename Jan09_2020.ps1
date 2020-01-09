#PowerShell Test-Path Cmdlet

Test-Path -Path "C:\Windows\System32\cmd.exe"

if(!(Test-Path -Path "C:\Users\Public\babushka"))
{
    Write-Host "No Babushka!! No Malware!!"
}
else 
{
    Write-Host "Malware for You!!!"
}

Out-File -FilePath "C:\Users\Public\babushka"

"`n"