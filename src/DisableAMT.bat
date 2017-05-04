Title Intel AMT disabler
REM Made by @bartblaze
REM Use at your own risk
del /f /q %TEMP%\UnAMT.log
Echo Intel AMT disabler>>"%TEMP%\UnAMT.log"
Echo This logfile can also be found in %TEMP% as UnAMT.log>>"%TEMP%\UnAMT.log"
cls
Echo.>>"%TEMP%\UnAMT.log"
Echo Executed on: %date% @ %time%>>"%TEMP%\UnAMT.log"
Echo.>>"%TEMP%\UnAMT.log"
Echo Unconfiguring Intel AMT, please hold...
%MYFILES%\ACUconfig.exe Unconfigure
for /f "delims=" %%a in ('dir %TEMP% /ad /b /s ^| find /i "qb"') do (
    TYPE "%%a\*.log" >> "%TEMP%\UnAMT.log"
	)
cls
Echo.>>"%TEMP%\UnAMT.log"
Echo Stopping LMS service, please hold...
sc config LMS start=disabled>>"%TEMP%\UnAMT.log"
cls
Echo Deleting LMS service, please hold...
sc delete LMS>>"%TEMP%\UnAMT.log"
cls
@echo off
SET /P Choice=Do you also want to disable the LMS.exe binary? This will rename the file. (Y/N)
if "%Choice%"=="Y" GOTO ItemY
if "%Choice%"=="y" GOTO ItemY
if "%Choice%"=="Yes" GOTO ItemY
if "%Choice%"=="yes" GOTO ItemY
if "%Choice%"=="N" GOTO ItemN
if "%Choice%"=="n" GOTO ItemN
if "%Choice%"=="No" GOTO ItemN
if "%Choice%"=="no" GOTO ItemN
ECHO "%Choice%" is not valid. Please try again.

:ItemY
if exist "C:\Program Files\Intel\Intel(R) Management Engine Components\LMS\LMS.exe" (
ren "C:\Program Files\Intel\Intel(R) Management Engine Components\LMS\LMS.exe" LMS.exe_
echo LMS.exe renamed>>"%TEMP%\UnAMT.log"
)

if exist "C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\LMS\LMS.exe" (
ren "C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\LMS\LMS.exe" LMS.exe_
echo LMS.exe renamed>>"%TEMP%\UnAMT.log"
)
@echo off
cls
Echo.>>"%TEMP%\UnAMT.log"
Echo Local Intel AMT listening ports:>>"%TEMP%\UnAMT.log"
netstat -na | findstr /i "16993 16992 16994 16995 623 664">>"%TEMP%\UnAMT.log"
cls
Echo.>>"%TEMP%\UnAMT.log"
Echo We are all done... REBOOT your machine at this point.
Echo We are all done... REBOOT your machine at this point.>>"%TEMP%\UnAMT.log"
Echo.>>"%TEMP%\UnAMT.log"
Echo Finished at: %time%>>"%TEMP%\UnAMT.log"
Echo.>>"%TEMP%\UnAMT.log"
Echo Made by @bartblaze>>"%TEMP%\UnAMT.log"
Echo Use at your own risk>>"%TEMP%\UnAMT.log"
start %TEMP%\UnAMT.log
exit



:ItemN
@echo off
cls
Echo.>>"%TEMP%\UnAMT.log"
Echo Local Intel AMT listening ports:>>"%TEMP%\UnAMT.log"
netstat -na | findstr /i ":16993 :16992 :16994 :16995 :623 :664">>"%TEMP%\UnAMT.log"
cls
Echo.>>"%TEMP%\UnAMT.log"
Echo We are all done... REBOOT your machine at this point.
Echo We are all done... REBOOT your machine at this point.>>"%TEMP%\UnAMT.log"
Echo.>>"%TEMP%\UnAMT.log"
Echo Finished at: %time%>>"%TEMP%\UnAMT.log"
Echo Made by @bartblaze>>"%TEMP%\UnAMT.log"
Echo Use at your own risk>>"%TEMP%\UnAMT.log"
start %TEMP%\UnAMT.log
exit