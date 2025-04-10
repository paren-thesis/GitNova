@echo off
setlocal enabledelayedexpansion

:: Generic menu function
:generic_menu
set "title=%~1"
shift
:menu_loop
cls
echo %RE%%title%%RT%
echo %*
echo.
set /p "selected=%RE%[%WH%-%RE%]%GG% Select an option: %BB%"
if "%selected%"=="0" (
    exit /b 0
) else (
    call :option_%selected% 2>nul
    if %ERRORLEVEL% NEQ 0 (
        echo %RE%Invalid option! Please try again.%RT%
    )
)
echo.
set /p "dummy=%GG%Press [Enter] to continue...%RT%"
goto menu_loop
exit /b 0 