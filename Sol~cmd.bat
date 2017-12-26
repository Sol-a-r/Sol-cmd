@echo off
cls
color 0a
title Sol.a.r~CMDLine
::startup header
echo.
echo	 H	W
echo	 E 	O
echo	 L 	R
echo	 L 	L
echo	 O 	D
echo.
echo [==========================]
echo  %date% %time%
echo [==========================]
echo.
echo 'Commands: cmd, exit, git, py, openpy, tb'

::Commands
:top
set /p var=$
if %var% == py (start Python) else (

	if %var% == git ('C:\Program Files\Git\git-bash.exe' --cd-to-home) else (

		if %var% == cmd (
			cd \Users\Solar\Desktop
			start) else (

				if %var% == tb (
					echo 'Select path for tensorboard to parse'
					set /p tb_path=$$
					start tensorboard --logdir=%tb_path%) else (

						if %var% == exit (exit) else (

							if %var% == openpy (start py_open.bat) else (

				echo invaild command
				goto top

))))))
