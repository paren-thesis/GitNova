@echo off
setlocal enabledelayedexpansion

:: Color definitions
set "CY=[36m"
set "GG=[32m"
set "OG=[33m"
set "BB=[34m"
set "RE=[31m"
set "RT=[0m"
set "WH=[37m"

:: Check if current directory is a Git repository
:check_git_repo
git rev-parse --is-inside-work-tree >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo %RE%Error: This is not a Git repository.%RT%
    exit /b 1
)
exit /b 0

:: Confirmation prompt
:confirm
set /p "choice=%RE%Are you sure? (y/n): %RT%"
if /i "%choice%"=="y" (
    exit /b 0
) else if /i "%choice%"=="n" (
    echo %OG%Operation canceled.%RT%
    exit /b 1
) else (
    echo %RE%Invalid input. Operation canceled.%RT%
    exit /b 1
)

:: Show Git status
:git_status
echo %BB%Current Git Status:%RT%
git status -s
exit /b 0 