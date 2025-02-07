@echo off
cls
color -help
set /p opcionL= "¿Que color desea para la letra?"
set /p opcionT= "¿Que color quiere de fondo?"

color %opcionT%%opcionL% 