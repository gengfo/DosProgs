SETLOCAL
for /f "skip=1 tokens=2-4 delims=(-)" %%a in ('"echo.|date"') do (
    for /f "tokens=1-3 delims=/.- " %%A in ("%date:* =%") do (
        set %%a=%%A&set %%b=%%B&set %%c=%%C))
set /a "yy=10000%yy% %%10000,mm=100%mm% %% 100,dd=100%dd% %% 100"
for /f "tokens=1-4 delims=:. " %%A in ("%time: =0%") do @set UNIQUE=%yy%%mm%%dd%%%A%%B%%C%%D
ENDLOCAL & IF "%~1" NEQ "" (SET %~1=%UNIQUE%) ELSE echo.%UNIQUE%
pause
exit
