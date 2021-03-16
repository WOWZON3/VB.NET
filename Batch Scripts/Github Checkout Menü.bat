@echo off
Title Auswahlmenu Skript
Color 0B
echo.
echo Start-Skript für alle auf diesem liegenden Server
pause

:Auswahlmenu
cls
echo.
echo Auswahlmenu
echo ==========
echo.
echo [1] MaNGOS Zero (Server)
echo.
echo [2] MaNGOS Zero (Database)
echo.
echo [3] MaNGOS Zero (Eluna)
echo.
echo [4] TrinityCore (Branch 3.3.5)
echo.
echo [5] FusionCMS (Installer)
echo.
echo [6] FusionCMS (Module & Themes)
echo.
echo Um das Skript zu beenden: ende
echo.
set asw=0
set /p asw="Bitte ein Auswahl treffen: "

if %asw%==1 goto Option1
if %asw%==2 goto Option2
if %asw%==3 goto Option3
if %asw%==4 goto Option4
if %asw%==5 goto Option5
if %asw%==6 goto Option6
if %asw%==ende goto END
goto END

:Option1
cls
echo.
echo CheckOut SourceCode MaNGOS Zero (Server)
git clone https://github.com/mangoszero/server.git --recursive
echo.
pause
goto Auswahlmenu

:Option2
cls
echo.
echo CheckOut SourceCode MaNGOS Zero (Database)
git clone https://github.com/mangoszero/database.git --recursive
echo.
pause
goto Auswahlmenu

:Option3
cls
echo.
echo CheckOut SourceCode MaNGOS Zero (Eluna)
git clone https://github.com/mangoszero/LuaScripts.git --recursive
echo.
pause
goto Auswahlmenu

:Option4
cls
echo.
echo CheckOut SourceCode TrinityCore (Branch 3.3.5)
git clone https://github.com/TrinityCore/TrinityCore.git --recursive --branch 3.3.5
echo.
pause
goto Auswahlmenu

:Option5
cls
echo.
echo CheckOut SourceCode FusionCMS (Installer)
git clone https://github.com/EmuZONE/wow_web_FusionCMS.git --recursive
echo.
pause
goto Auswahlmenu

:Option6
cls
echo.
echo CheckOut SourceCode FusionCMS (Module & Themes)
git clone https://github.com/EmuZONE/wow_web_FusionCMS_Themes.git --recursive
echo.
pause
goto END

:END
echo.
echo Alle Aufgaben wurden erfolgreich abgearbeitet.
pause
