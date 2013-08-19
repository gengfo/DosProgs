::CheckReadFileWithFor.bat
@echo on

IF not exist backup mkdir backup

IF EXIST out.sql del out.sql
IF not EXIST blNos.txt echo blNos.txt文件不存在！

for /F %%i in (blNos.txt) do echo insert a into b %%i where e=f >>out.sql

rem type blNos.txt

rem for /d %%i in (c:\*) do echo %%i

pause