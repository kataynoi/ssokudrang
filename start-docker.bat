@echo off
REM Start SSO Kudrang Docker Environment

echo ================================================
echo Starting SSO Kudrang Docker Environment
echo ================================================
echo.
echo This will start:
echo - Nginx Web Server (Port 8085)
echo - PHP 7.4 FPM
echo - MySQL 5.7 (Port 3310)
echo - phpMyAdmin (Port 8086)
echo.
echo ================================================

docker-compose up -d --build

echo.
echo ================================================
echo Waiting for services to be ready...
echo ================================================
timeout /t 10 /nobreak > nul

echo.
echo Checking services status...
docker-compose ps

echo.
echo ================================================
echo Services are starting!
echo ================================================
echo.
echo Access your application at:
echo   Web:        http://localhost:8085
echo   phpMyAdmin: http://localhost:8086
echo.
echo Database connection:
echo   Host:     localhost
echo   Port:     3310
echo   Database: ssokudrang
echo   Username: dechachit
echo   Password: dd0648282939DD
echo.
echo ================================================
echo To view logs, run: docker-compose logs -f
echo To stop, run: stop-docker.bat
echo ================================================
echo.
pause
