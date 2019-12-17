#PowerShell one liner to get list of Installed programs

 Get-CimInstance -ClassName Win32_Product | Select-Object -Property Name,InstallDate, version 