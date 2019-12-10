
(Get-EventLog -List).Log | foreach-object {Get-LogProperties -Name $_}