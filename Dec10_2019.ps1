#PowerShell one liner to view Log setting
(Get-EventLog -List).Log | foreach-object {Get-LogProperties -Name $_}