#How to create a comma or semicolon seperated string from Object Property

Get-NetTCPConnection -State Listen | Join-String -Property LocalPort -DoubleQuote -Separator ";"