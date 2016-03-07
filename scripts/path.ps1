$VarCheck = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment" -Name PATH).Path | select-string -pattern "%SSH_BIN%"
If ($VarCheck) { "Got It" } else { [Environment]::SetEnvironmentVariable("Path",$Env:Path + ";%SSH_BIN%", "Machine") }
