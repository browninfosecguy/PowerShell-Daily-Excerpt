#PowerShell 101 : Switch Statement

$Choice = Read-Host "Enter your choice" #Capture user input

switch ($Choice) #Evaluate user choie
{
    1   {Write-Host "You selected one";break} #Without break every statement will be executed
    2   {Write-Host "You selected two";break}
    default {Write-Host "Christmas is coming"} #Execute if Choice is not equal to 1 or 2
}

Write-Host "`nEverything is software : Jeffrey Snower (Father of PowerShell)`n`n "