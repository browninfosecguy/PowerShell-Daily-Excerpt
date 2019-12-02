#PowerShell to execute Base64 Encoded Command

$command = 'ipconfig'

$EncodedCommand =[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($command))

powershell.exe -EncodedCommand $EncodedCommand