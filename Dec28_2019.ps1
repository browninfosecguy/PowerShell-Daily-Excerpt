<#
PowerShell 101: Function
#>
function GetProcessByName
{
    param (
        [parameter(ValueFromPipelineByPropertyName,ValueFromPipeline)] #Able to accept parameter value from Pipeline and property name
        [String]
        $ProcessName
    )
    

    begin{Write-Host "Get Process using process name filter" -BackgroundColor Yellow -ForegroundColor Black} 
    process{Get-Process | Where-Object {$_.name -like $ProcessName} }
    end{Write-Host "PowerShell Processes" -BackgroundColor Yellow -ForegroundColor Black}

}