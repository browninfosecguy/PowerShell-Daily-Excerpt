<#PowerShell 101 Series: This excerpt build on excerpt posted on December 23, 2019 and 
demonstrate how to define constructors and overload constructors. 
A constructor is executed on object instantiation.
#>
class PowerShellIsAwesome { #Define a class
    
    PowerShellIsAwesome () #Default Constructor, executed when Obj1 is Instantiated
    {
        Write-Host "Jeffrey Snover is Cool"
    }

    PowerShellIsAwesome ([string] $Title) #Parameterized Constructor, executed when Obj2 is Instantiated
    {

        Write-Host "Jeffrey Snover is $Title"
        
    }
}

$Obj1 = [PowerShellIsAwesome]::new() #Instantiate an Object for Class, Default Constructor is executed

$Obj2 = [PowerShellIsAwesome]::new('Microsoft Technical Fellow') #Instantiate an Object for Class, Parameterized Constructor is executed

"`n"