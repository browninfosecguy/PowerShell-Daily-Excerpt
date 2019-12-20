#PowerShell 101 : Array in PowerShell

[Int32[]] $IntArray = 1,2,3 #Int Array of Fixed Size

$IntArray.Add(12) #Will result in Error as PowerShell create array is of fixed size

$IntArray += 12 #Will Succedd as += create a new array and copies existing plus new item into it
Write-Host "Contects of IntArray: $IntArray"

[System.Collections.ArrayList] $ExampleArray = 1,2,3,4,'why'

$ExampleArray.Add(12) #Will succedd because ArrayList is not of fixed size

Write-Host "Contents of ExampleArray: $ExampleArray"
"`n"