@echo off
echo Initializing Git...
git init
if %errorlevel% neq 0 exit /b %errorlevel%

echo Adding README content...
echo # ch4.1 >> README.md

echo Adding files...
git add .
if %errorlevel% neq 0 exit /b %errorlevel%

echo Committing...
git commit -m "first commit"
if %errorlevel% neq 0 exit /b %errorlevel%

echo Setting branch...
git branch -M main
if %errorlevel% neq 0 exit /b %errorlevel%

echo Adding remote...
git remote add origin https://github.com/66322Yanatchara/ch4.1.git
:: Ignore error if remote already exists
if %errorlevel% neq 0 echo Remote might already exist, continuing...

echo Pushing...
git push -u origin main
if %errorlevel% neq 0 exit /b %errorlevel%

echo Done!
