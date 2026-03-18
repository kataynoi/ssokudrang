@echo off
REM Restart SSO Kudrang Docker Services

echo ================================================
echo Restarting SSO Kudrang Docker Services
echo ================================================
echo.
echo Choose what to restart:
echo 1. All services
echo 2. Nginx only
echo 3. PHP only
echo 4. MySQL only
echo 5. Cancel
echo.
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" (
    echo.
    echo Restarting all services...
    docker-compose restart
) else if "%choice%"=="2" (
    echo.
    echo Restarting Nginx...
    docker-compose restart nginx
) else if "%choice%"=="3" (
    echo.
    echo Restarting PHP...
    docker-compose restart php
) else if "%choice%"=="4" (
    echo.
    echo Restarting MySQL...
    docker-compose restart mysql
) else (
    echo Cancelled.
    goto :end
)

echo.
echo ================================================
echo Checking services status...
docker-compose ps
echo ================================================

:end
echo.
pause
