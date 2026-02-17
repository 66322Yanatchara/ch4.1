@echo off
echo Installing dependencies...
call npm install
if %errorlevel% neq 0 exit /b %errorlevel%

echo Generating Prisma Client...
call npx prisma generate
if %errorlevel% neq 0 exit /b %errorlevel%

echo Pushing schema to database...
call npx prisma db push
if %errorlevel% neq 0 exit /b %errorlevel%

echo Seeding database...
call npx prisma db seed
if %errorlevel% neq 0 exit /b %errorlevel%

echo Database setup complete!
