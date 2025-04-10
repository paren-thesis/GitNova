@echo off
setlocal enabledelayedexpansion

:: Source the utility files
call utils\utils.bat

:: Version and configuration
set "__version__=2.3.6"
set "HOST=127.0.0.1"
set "PORT=8080"

:: Banner display
:banner_g
echo %CY% <<--NoVa-->> %__version__%
exit /b 0

:: About information
:about
echo %GG%About this script:
echo %GG%Version: %__version__%
echo %GG%This script provides various utility functions for repo management.
echo %GG%This repo was created by paren-thesis on github
echo.
echo %CY%This is a list this of available commands
exit /b 0

:: Exit script
:exit_script
echo %GG%Exiting script...
cls
exit /b 0

:: Main Menu
:main_menu
:menu_loop
cls
call :banner_g
echo.
echo %RE%[%WH%1%RE%]%OG% Configuration and Setup --^> %GG% n-config
echo %RE%[%WH%2%RE%]%OG% Branch Management --^> %GG% n-branch
echo %RE%[%WH%3%RE%]%OG% Staging and Stash --^> %GG% n-stage
echo %RE%[%WH%4%RE%]%OG% Commit Changes --^> %GG% n-commit
echo %RE%[%WH%5%RE%]%OG% Undoing Changes --^> %GG% n-undo
echo %RE%[%WH%6%RE%]%OG% Remote Repositories --^> %GG% n-remote
echo %RE%[%WH%7%RE%]%OG% Logs and History --^> %GG% n-logs
echo %RE%[%WH%8%RE%]%OG% Working with Submodules --^> %GG% n-subm
echo %RE%[%WH%9%RE%]%OG% Advanced Commands --^> %GG% n-adv
echo %RE%[%WH%10%RE%]%OG% Clean Up  --^> %GG% n-clean
echo %RE%[%WH%11%RE%]%OG% Tagging --^> %GG% n-tag
echo %RE%[%WH%12%RE%]%OG% Backup and Restore --^> %GG% n-backup
echo %RE%[%WH%99%RE%]%OG% About  --^> %GG% about
echo %RE%[%WH%0%RE%]%OG% Exit
echo.
set /p "selected=%RE%[%WH%-%RE%]%GG% Select an option: %BB%"

if "%selected%"=="1" (
    call n-config.bat
) else if "%selected%"=="2" (
    call n-branch.bat
) else if "%selected%"=="3" (
    call n-stage.bat
) else if "%selected%"=="4" (
    call n-commit.bat
) else if "%selected%"=="5" (
    call n-undo.bat
) else if "%selected%"=="6" (
    call n-remote.bat
) else if "%selected%"=="7" (
    call n-logs.bat
) else if "%selected%"=="8" (
    call n-subm.bat
) else if "%selected%"=="9" (
    call n-adv.bat
) else if "%selected%"=="10" (
    call n-clean.bat
) else if "%selected%"=="11" (
    call n-tag.bat
) else if "%selected%"=="12" (
    call n-backup.bat
) else if "%selected%"=="99" (
    call :about
) else if "%selected%"=="0" (
    call :exit_script
) else (
    echo %RE%Invalid option! Please try again.
)

echo.
set /p "dummy=%GG%Press [Enter] to continue...%RT%"
goto menu_loop

:: Start the script
call :check_git_repo
call :main_menu 