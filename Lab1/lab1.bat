
@echo off
cls
:start
echo vvedite rasshirenie
set /p r1=""

For /R "C:\Bat" %%i In ("%r1%") Do (
	If Exist %%i (
		copy %%i "C:\Bat1"
	)
)
start WinRAR A "C:\arhiv.rar" "C:\Bat1"


