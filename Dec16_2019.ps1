#PowerShell CIM Cmdlet to get chrome process using 3 different ways

# 1. Filtering using WMI Query
Get-CimInstance -Query "SELECT * from Win32_Process WHERE name LIKE 'chro%'"

# 2. Filtering using Where-Object
Get-CimInstance -ClassName Win32_Process | Where-Object {$_.Name -like 'chro%'}

# 3. Filtering using inbuilt filter parameter
Get-CimInstance -ClassName Win32_Process -Filter "Name like 'chro%'"