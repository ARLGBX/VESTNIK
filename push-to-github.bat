@echo off
echo ========================================
echo GitHub Repository Setup
echo ========================================
echo.
echo This script will help you push your project to GitHub
echo.
echo BEFORE RUNNING THIS SCRIPT:
echo 1. Create a new repository on GitHub.com
echo 2. Copy the repository URL
echo.
set /p REPO_URL="Enter your GitHub repository URL (e.g., https://github.com/username/news-portal-kg.git): "

if "%REPO_URL%"=="" (
    echo Error: Repository URL is required!
    pause
    exit /b 1
)

echo.
echo Setting up remote repository...
git remote add origin %REPO_URL%

echo.
echo Renaming branch to main...
git branch -M main

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo Done! Your project is now on GitHub!
echo ========================================
pause

