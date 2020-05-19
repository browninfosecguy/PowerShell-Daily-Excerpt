$newObj = [PSCustomObject]@{
    Name = 'browninfosecguy'
    Location = 'Halifax'
    'Area Code' = 902
}

$newObj | Add-Member -MemberType ScriptProperty -Name 'Todays Date' -Value {Get-Date}

$newObj | Add-Member  -MemberType ScriptProperty -Name Province -Value {$this.Location + ", NS"}