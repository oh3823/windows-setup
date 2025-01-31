@echo off
setlocal enabledelayedexpansion

for %%A in (%*) do (
	if "!INSTALL_FILENAME_LIST!"=="" (
			set INSTALL_FILENAME_LIST=%%A
	) else (
			set INSTALL_FILENAME_LIST=!INSTALL_FILENAME_LIST! %%A
	)
)

if "%INSTALL_FILENAME_LIST%"=="" (
	set INSTALL_FILENAME_LIST=default
)

echo INSTALL_FILENAME_LIST=!INSTALL_FILENAME_LIST!

for %%F in (%INSTALL_FILENAME_LIST%) do (
	if exist "%~dp0\install-appid\%%F" (
		for /f "tokens=*" %%A in (%~dp0\install-appid\%%F) do (
			echo "%%A" is being installed...
			winget install --id %%A -s winget
		)
	) else (
		echo File not found: %%F
	)
)
