@echo off
Title DEVELOPMENT BUILDING STUDIO
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
echo [1] Checkout: TrinityCore (3.3.5 Standard)
echo.
echo [2] Checkout: TrinityCore (3.3.5 Transmog. Vendor)
echo.
echo [3] Pull Rochet2 TC Transmog. Vendor
echo.
echo [4] Pull Rochet2 TC Reforging Items
echo.
echo [5] Checkout MaNGOS ZERO Server
echo.
echo [6] Checkout MaNGOS ZERO Database
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
echo Beginne Checkout...
git clone https://github.com/TrinityCore/TrinityCore.git --recursive --branch 3.3.5
echo.
pause
goto Auswahlmenu

:Option2
cls
echo.
echo Beginne Checkout...
git clone https://github.com/Rochet2/TrinityCore.git --recursive --branch transmogvendor_3.3.5
pause
goto Auswahlmenu

:Option3
cls
echo.
echo Pull Requested Sourcecode and Merge...
cd TrinityCore
git pull rochet2 transmogvendor_3.3.5
echo.
pause
goto Auswahlmenu

:Option4
cls
echo.
echo Pull Requested Sourcecode and Merge...
cd TrinityCore
git pull rochet2 reforging_3.3.5
echo.
pause
goto Auswahlmenu

:Option5
cls
echo.
echo Beginne Checkout...
git clone https://github.com/mangoszero/server.git --recursive
echo.
pause
goto Auswahlmenu

:Option6
cls
echo.
echo Du hast den sechsten Server gewählt!
echo.
pause
goto END

:END
echo.
echo Alle Aufgaben wurden Erfolgreich abgeschlossen
pause
