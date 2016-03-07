@ECHO OFF

REM ## Set SSH Bin Dir
SET SSH_BIN="C:\Program Files\Git\usr\bin"

REM
REM ##
REM

PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ".\scripts\path.ps1"' -Verb RunAs}"
PAUSE
CALL .\scripts\resetvars.bat
PAUSE
