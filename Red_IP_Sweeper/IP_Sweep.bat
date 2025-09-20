@echo off
setlocal enabledelayedexpansion
color a

type banner.txt

echo.
echo.
echo.

echo Welcome to Red IP Scanner^^! Enter network ID:
set /p ip=""
echo.
echo.
echo Pinging all IPs in !ip!.x range...
echo.
echo.

FOR /L %%i IN (1,1,254) DO (
	echo !ip!.%%i
	ping -n 1 !ip!.%%i | find "TTL" > nul
	if !errorlevel! equ 0 (
		echo.
		echo ----------------------------------- UP
	) else (
		echo DOWN
	)
	echo.
			
)

pause