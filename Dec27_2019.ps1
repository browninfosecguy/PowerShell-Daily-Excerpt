<#
PowerShell 101: BEGIN PROCESS END statement
#>
function Meow
{
    begin{Write-Host "BEGIN statement: Object in Pipeline $_"} #Will be executed once at the beginning (Does not depend on the object in Pipeline)
    process{Write-Host "PROCESS statement: Object in Pipeline $_"} #Will be execute for every instance in the Pipeline
    end{Write-Host "END statement: Object in Pipeline $_"} #Will be executed once at the end for the final object in the Pipeline
}
Meow