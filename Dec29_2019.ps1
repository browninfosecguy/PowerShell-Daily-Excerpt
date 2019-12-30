<#
PowerShell 101: Function
#>
function GetProcessByName
{
    [cmdletbinding(HelpUri='https://google.ca')] #If you type "Get-Help GetProcessByName -Online" Google will open in the browser
    param (
        [parameter(ParameterSetName="ProcessName")] #Group the paramter under ProcessName parameter set
        [String]
        $ProcessName,
        
        [parameter(ParameterSetName="ProcessId")] #Group the paramter under ProcessId parameter set
        [Int]
        $ProcessId

    )  

    begin{Write-Host "List of processes filtered by process name" -BackgroundColor Yellow -ForegroundColor Black} 
    process{
        switch ($PsCmdlet.ParameterSetName)
        {
            "ProcessName" {Get-Process | Where-Object {$_.name -like $ProcessName} }
            "ProcessId"{Get-Process | Where-Object {$_.id -eq $ProcessId}}
        }
    
    }
    end{Write-Host "$ProcessName Processes" -BackgroundColor Yellow -ForegroundColor Black}

}