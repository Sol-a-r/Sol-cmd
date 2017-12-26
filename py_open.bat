@echo off
:top
echo.
echo Input path to py file to be opened.
set /p pyfile=
Python %pyfile% 
goto top