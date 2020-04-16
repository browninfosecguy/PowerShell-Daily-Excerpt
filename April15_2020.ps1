
#Checking for rundll32.exe in Event Logs
#
#We wil execute the following command from command line to generate event
#
#rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";alert('FUCK COVID');
#

#Requires -RunAsAdministrator

$myEvents = Get-WinEvent -FilterHashtable @{ LogName='Security'; Id='4688' }

foreach($event in $myEvents)
{

    [xml]$data =  $event.toxml()

    $CommandLine = $data.Event.EventData.Data[8]."#text"

    if($CommandLine -like '*rundll32.exe*')
    {
        Write-Host "WE FOUND FUCKING COVID!!!"
    }

}
