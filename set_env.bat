@ECHO OFF
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ".\scripts\path.ps1"' -Verb RunAs}"
PAUSE
CALL .\scripts\resetvars.bat
PAUSE
