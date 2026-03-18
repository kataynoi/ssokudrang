@echo off
REM View Docker Logs

echo ================================================
echo SSO Kudrang - Docker Logs
echo ================================================
echo.
echo Choose which logs to view:
echo 1. All services
echo 2. Nginx only
echo 3. PHP only
echo 4. MySQL only
echo 5. Exit
echo.
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" (
    echo.
    echo Showing all logs (Press Ctrl+C to stop)...
    docker-compose logs -f
) else if "%choice%"=="2" (
    echo.
    echo Showing Nginx logs (Press Ctrl+C to stop)...
    docker-compose logs -f nginx
) else if "%choice%"=="3" (
    echo.
    echo Showing PHP logs (Press Ctrl+C to stop)...
    docker-compose logs -f php
) else if "%choice%"=="4" (
    echo.
    echo Showing MySQL logs (Press Ctrl+C to stop)...
    docker-compose logs -f mysql
) else (
    echo Exiting...
    exit /b
)
