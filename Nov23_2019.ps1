#PowerShell excerpt to load a DLL and call method

<#
Sample Code used to create the Demo DLL

using System;

namespace Demo
{
    public class MyDemo
    {
        public MyDemo()
        {
        }
        public static void Hello()
        {
            Console.WriteLine("This is a Demo");
        }
       
    }
}

#>

[System.Reflection.Assembly]::LoadFile("C:\Users\Public\Demo.dll")

[Demo.MyDemo]::Hello()