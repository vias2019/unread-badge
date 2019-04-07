@rem Wraper around running build.ps1. By default, Windows forbids execution of
@rem powershell scripts directly unless you change the exeuction policy globally,
@rem or you can set it on the powershell command-line. This does the latter.
@echo off
set WD=%~dp0
powershell.exe -nologo -executionpolicy remotesigned -File %WD%build.ps1
