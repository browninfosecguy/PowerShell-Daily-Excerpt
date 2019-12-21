#PowerShell 101 : Foreach Loop
#Don't confuse Foreach loop with Foreach-Object Cmdlet

#In this scanario foreach loop is used to iterate a collection
$naughtyList = "Trump","Putin","Clinton"

foreach ($item in $naughtyList) 
{
    Write-Host $item    
}
"`n"
#In this scenario foreach is used to iterate over process objects returned from Get-Process cmdlet
foreach($process in (Get-Process|Where-Object {$_.Name -eq 'chrome'}))
{
   Write-Host $process.Name
}