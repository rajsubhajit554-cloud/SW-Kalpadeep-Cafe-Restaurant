@echo off
setlocal enabledelayedexpansion
title Git Update - Kalpadeep Cafe & Restaurant

echo =========================================================
echo    Kalpadeep Cafe & Restaurant - Git Repository Update
echo =========================================================
echo.

echo [Step 1] Checking status...
git status -s
echo.

set /p commit_msg="Enter commit message (or press ENTER for default): "

if "!commit_msg!"=="" (
    set commit_msg=Update website content - %date% %time%
)

echo.
echo [Step 2] Staging changes (git add .)...
git add .

echo.
echo [Step 3] Committing changes...
git commit -m "!commit_msg!"

echo.
echo [Step 4] Pushing to GitHub...
git push origin main

echo.
if %ERRORLEVEL% equ 0 (
    echo =========================================================
    echo   SUCCESS: Changes pushed to GitHub successfully!
    echo =========================================================
) else (
    echo =========================================================
    echo   NOTE: If push failed, check your network or GitHub login.
    echo =========================================================
)

echo.
pause
