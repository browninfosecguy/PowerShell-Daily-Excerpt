#PowerShell Splatting in Action

$myArguments = @{
                
                Recurse = $true
                
                Path = "C:\Users"
                
                }

Get-ChildItem @myArguments