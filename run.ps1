$appname = $args[0]

Set-Location .\build
Invoke-Expression $appname
Set-Location ..

