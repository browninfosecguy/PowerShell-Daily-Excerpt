#Get List of Computers from Active Directory

([adsisearcher]"objectCategory=Computer").findall() | Select-Object -ExpandProperty Properties