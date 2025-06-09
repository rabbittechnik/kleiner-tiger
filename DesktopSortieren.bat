@echo off
setlocal enabledelayedexpansion

REM Desktop Pfad fest definieren
set "DESKTOP=C:\Users\rabbi\OneDrive\Desktop"

REM === Ordnerstruktur anlegen ===
mkdir "%DESKTOP%\3D & CAD"
mkdir "%DESKTOP%\3D & CAD\3D-Drucker-Programme"
mkdir "%DESKTOP%\Spiele"
mkdir "%DESKTOP%\Streaming & Kommunikation"
mkdir "%DESKTOP%\Programme & Tools"
mkdir "%DESKTOP%\Eigene Projekte"
mkdir "%DESKTOP%\Sonstiges"

REM === 3D & CAD ===
move "%DESKTOP%\SW 2018" "%DESKTOP%\3D & CAD" >nul 2>&1
move "%DESKTOP%\Autodesk Fusion.lnk" "%DESKTOP%\3D & CAD" >nul 2>&1
move "%DESKTOP%\Inkscape.lnk" "%DESKTOP%\3D & CAD" >nul 2>&1
move "%DESKTOP%\GIMP 3.0.2-1.lnk" "%DESKTOP%\3D & CAD" >nul 2>&1
move "%DESKTOP%\LabyMod_3.9.62_mc1.8.9.lnk" "%DESKTOP%\3D & CAD" >nul 2>&1
move "%DESKTOP%\Baumfarm 1.8.9.schematic" "%DESKTOP%\3D & CAD" >nul 2>&1
move "%DESKTOP%\Rastergrafik.lnk" "%DESKTOP%\3D & CAD" >nul 2>&1

REM === 3D-Drucker-Programme (Beispiel) ===
move "%DESKTOP%\Bambu Studio*" "%DESKTOP%\3D & CAD\3D-Drucker-Programme" >nul 2>&1

REM === Spiele ===
move "%DESKTOP%\Farming Simulator 25.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\Goodgame Empire.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\LabyMod_3.9.62_mc1.8.9.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\Netflix.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\Ostriv.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\Roblox Player.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\Roblox Studio.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\Supermarket Together.lnk" "%DESKTOP%\Spiele" >nul 2>&1
move "%DESKTOP%\Viking Frontiers.lnk" "%DESKTOP%\Spiele" >nul 2>&1

REM === Streaming & Kommunikation ===
move "%DESKTOP%\Discord.lnk" "%DESKTOP%\Streaming & Kommunikation" >nul 2>&1
move "%DESKTOP%\Stream Start" "%DESKTOP%\Streaming & Kommunikation" >nul 2>&1
move "%DESKTOP%\Streamer.bot-x64-0.2.3" "%DESKTOP%\Streaming & Kommunikation" >nul 2>&1
move "%DESKTOP%\Streamer.bot - Verknüpfung.lnk" "%DESKTOP%\Streaming & Kommunikation" >nul 2>&1
move "%DESKTOP%\streamplan_bot2" "%DESKTOP%\Streaming & Kommunikation" >nul 2>&1
move "%DESKTOP%\discord-streamplan-bot" "%DESKTOP%\Streaming & Kommunikation" >nul 2>&1

REM === Programme & Tools ===
move "%DESKTOP%\Better Mart.lnk" "%DESKTOP%\Programme & Tools" >nul 2>&1
move "%DESKTOP%\Browser Opera GX.lnk" "%DESKTOP%\Programme & Tools" >nul 2>&1
move "%DESKTOP%\Cheat Engine.lnk" "%DESKTOP%\Programme & Tools" >nul 2>&1
move "%DESKTOP%\Core Temp.lnk" "%DESKTOP%\Programme & Tools" >nul 2>&1
move "%DESKTOP%\Movavi Video Editor Plus 2021.lnk" "%DESKTOP%\Programme & Tools" >nul 2>&1
move "%DESKTOP%\WeMod.lnk" "%DESKTOP%\Programme & Tools" >nul 2>&1
move "%DESKTOP%\Visual Studio Code.lnk" "%DESKTOP%\Programme & Tools" >nul 2>&1
move "%DESKTOP%\MultiMC" "%DESKTOP%\Programme & Tools" >nul 2>&1

REM === Eigene Projekte ===
move "%DESKTOP%\Deine Dateien" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\Projekt" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\projekt home" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\main.lnk" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\main" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\Textdokument (neu).txt" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\Textdokument (neu).lnk" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\Launcher" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\ordnerstruktur_2025.lnk" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\ordnerstruktur_2025" "%DESKTOP%\Eigene Projekte" >nul 2>&1
move "%DESKTOP%\tablet" "%DESKTOP%\Eigene Projekte" >nul 2>&1

REM === Sonstiges ===
move "%DESKTOP%\Breitbandmessung_06_05_2025_07_07_52.png" "%DESKTOP%\Sonstiges" >nul 2>&1
move "%DESKTOP%\!DOCTYPE html" "%DESKTOP%\Sonstiges" >nul 2>&1
move "%DESKTOP%\!DOCTYPE" "%DESKTOP%\Sonstiges" >nul 2>&1

REM === Sonstiges (Ordner die sonst übrig bleiben) ===
move "%DESKTOP%\Spiele" "%DESKTOP%\Spiele" >nul 2>&1

echo.
echo Desktop wurde automatisch sortiert!
timeout /t 2 >nul
exit
