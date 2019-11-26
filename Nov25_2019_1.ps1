#PowerShell Add-Type cmdlet

$code = @"
[DllImport("user32.dll")]public static extern int MessageBox(IntPtr hWnd, string lpText, string lpCaption,uint uType);
"@

$MyObject = Add-Type -MemberDefinition $code -Name "DemoClasss" -Namespace "DemoNamespace"  -PassThru


$MyObject::MessageBox(0,"Hello","Hello",0)