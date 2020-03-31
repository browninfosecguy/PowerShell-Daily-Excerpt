#Get a list of Domain Controllers

([adsisearcher]"(&(objectCategory=Computer)(userAccountControl:1.2.840.113556.1.4.803:=8192))").findall() | Select-Object -ExpandProperty Properties