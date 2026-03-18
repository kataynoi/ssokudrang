@echo off
REM Stop SSO Kudrang Docker Environment

echo ================================================
echo Stopping SSO Kudrang Docker Environment
echo ================================================
echo.

docker-compose down

echo.
echo ================================================
echo All services have been stopped
echo ================================================
echo.
echo To start again, run: start-docker.bat
echo.
pause
