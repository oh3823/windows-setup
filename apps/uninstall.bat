@echo off
chcp 65001 >nul
set UNINSTALL_FILENAME_LIST=default

for %%F in (%UNINSTALL_FILENAME_LIST%) do (
	for /f "tokens=*" %%A in (%~dp0\uninstall-appname\%%F) do (
		echo "%%A" is being uninstalled...
		winget uninstall "%%A"
	)
)
