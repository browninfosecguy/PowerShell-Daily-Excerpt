#PowerShell 101 : Do while Loop

$var = 1
do {
    #It will be executed before the condition is evaluated
    $var+=10
    Write-Host "Will be executed even though Var = $var" 
    
} while ($var -lt 10)

$var

do {
    #It will be executed before the condition is evaluated
    $var = $var - 10
    Write-Host "Will be executed even though Var = $var" 
    
} until ($var -lt 10)
"`n"