@echo off
title Batchpad - By ThatGuyVR
color 0a

:menu
cls
echo =====================================
echo         Batchpad - By ThatGuyVR
echo =====================================
echo.
set /p filename=Enter filename to save (Add .txt): 

if exist "%filename%" (
    echo File already exists.
    choice /c YN /m "Overwrite?"
    if errorlevel 2 goto menu
)

echo Type your text. Type SAVE on a new line to finish.
echo. > "%filename%"

:write
set /p input=
if /i "%input%"=="SAVE" goto done
echo %input% >> "%filename%"
goto write

:done
echo.
echo File saved as "%filename%"
pause
exit
