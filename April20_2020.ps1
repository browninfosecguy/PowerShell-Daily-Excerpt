
#Checking for Scheduled Task in Event Logs
#
#We wil execute the following command from command line to generate event
#
#schtasks /create /tn "mysc" /tr C:\Users\Public\malware.exe /sc ONLOGON /ru "System"
#

#Requires -RunAsAdministrator

$myEvents = Get-WinEvent -FilterHashtable @{ LogName='Security'; Id='4688' }

foreach($event in $myEvents)
{

    [xml]$data =  $event.toxml()

    $CommandLine = $data.Event.EventData.Data[8]."#text"

    if($CommandLine -like '*schtasks*')
    {
        Write-Host "WE FOUND MALWARE!!!"
    }

}
