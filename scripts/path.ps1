$VarCheck = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment" -Name PATH).Path | select-string -pattern "C:\\Program Files\\Git\\usr\\bin"
If ($VarCheck) { "Got It" } else { [Environment]::SetEnvironmentVariable("Path",$Env:Path + "C:\Program Files\Git\usr\bin", "Machine") }
