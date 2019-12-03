#PowerShell Compare-Object cmdlet to compare Property

$RefObj =  [PSCustomObject]@{
    SerialNo = 111
    Type = 'Car'
    Part = 'Exhaust'
}

$DiffObj =  [PSCustomObject]@{
    SerialNo = 112
    Type = 'Car'
    Part = 'Brake'
}


Compare-Object -ReferenceObject $RefObj -DifferenceObject $DiffObj -Property Part




