@echo off
date /t 
time /t

SETLOCAL
set DateStr=%~2&if "%~2"=="" set DateStr=%date%


REM echo %time:~0,2%
REM echo %time:-2%

REM set /A myMonth=%date /t:~0,2%
REM rem set /A myDate=%date:~3,2%

REM echo %myMonth%
rem echo %myDate%

rem if "%date:~6,4%"=="2013" (
rem 	set /A dt=%date:~6,4%%date:~5,2%-1
rem ) else (
rem 	set /A dt=%date:~0,4%%date:~5,2%%date:~8,2%-1
rem )

rem echo %dt%

pause