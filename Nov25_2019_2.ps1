#PowerShell Add-Type Cmdlet

$code = @"
using System;
namespace DemoApp
{
    public class MyDemo
        {
            public static void Hello()
            {
                Console.WriteLine("Hello");
            }
        }    
}
"@

Add-Type -TypeDefinition $code

[DemoApp.MyDemo]::Hello()
