#PowerShell Invoke-History cmdlet to run commands from history

#Command Number: 1
Get-Date

#Command Number: 2
Get-Culture

#Command Number: 3
Write-Host "browninfosecguy"

1..3| foreach-object {Invoke-History -id $_}