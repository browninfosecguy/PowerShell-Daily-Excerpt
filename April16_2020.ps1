#ConvertTo-HTML Cmdlet

$style = "th {
  background-color: #4CAF50;
  color: white;
}"

$cssLocation = "C:\Users\browninfosecguy\style.css"

$htmlLocation = "C:\Users\browninfosecguy\Process.html"


$style | Out-File -FilePath $cssLocation

Get-Process |Select-Object -Property Id,Name,Company,ProductVersion,Description | ConvertTo-Html -CssUri $cssLocation | Out-File -FilePath $htmlLocation