@echo off

echo Install applications.
./apps/install.bat %*

echo Uninstall unnecessary applications.
./apps/uninstall.bat

echo Optimizing settings.
@REM ./settings/context-menu.bat

