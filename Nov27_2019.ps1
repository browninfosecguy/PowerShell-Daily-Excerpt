#PowerShell code malware use to detect Russian System and VM environment
#This technique is employed by Rozena Malware Family
#Source: https://www.gdatasoftware.com/blog/2019/07/35061-server-side-polymorphism-powershell-backdoors

if((Get-UICulture).Name -match 'RU' -or (Get-CimInstance -class Win32_ComputerSystem -Property Model).Model -match
 'VirtualBox|VMware'){}else{"`n`nYou are not Motherland Russia System I'm going to infect you.`n`n"}