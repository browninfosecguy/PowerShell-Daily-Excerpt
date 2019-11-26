#PowerShell Secure String

"Enter Super Secure Password"
$securePassword = Read-Host -AsSecureString
"`nSuper Secure Password was:"
$securePassword
