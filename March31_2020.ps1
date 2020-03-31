#Get List of User's from Active Directory

([adsisearcher]"objectCategory=User").findall() | Select-Object -ExpandProperty Properties