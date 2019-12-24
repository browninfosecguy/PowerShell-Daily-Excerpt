#PowerShell 101 Series: In this example we create a simple class called GetProcess

class GetProcess { #Define a class
    
    [Int] $count #Define property

    [String[]] GetProcessPath([string] $ProcessName){ #Define a function

        Write-Host "Getting Path of Process Named $ProcessName"
        
        return (Get-Process | Where-Object {$_.name -like $ProcessName}|Select-Object Path -first $this.count)
    }
}

$Obj = [GetProcess]::new() #Instantiate an Object for Class

$Obj.count = 1 #Assign value for count property
$Obj.GetProcessPath('Calculator') #Call GetProcessPath method 
"`n"