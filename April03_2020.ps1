#Get List of Domain Admins from Active Directory

$domainAdmin = New-Object system.directoryservices.directorysearcher("name=Domain Admins")

$domainAdmin.findone() | Select-Object -ExpandProperty Properties