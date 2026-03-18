#!/bin/bash
# Test Script for Docker Environment

echo "================================"
echo "SSO Kudrang - Docker Test Script"
echo "================================"
echo ""

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "1. Testing Docker Compose status..."
docker-compose ps

echo ""
echo "2. Testing Nginx (Port 8085)..."
curl -I http://localhost:8085 2>/dev/null | head -n 1

echo ""
echo "3. Testing MySQL (Port 3310)..."
docker exec ssokudrang_mysql mysql -uroot -pdd0648282939DD -e "SELECT 'MySQL Connection OK' as Status;"

echo ""
echo "4. Testing PHP Version..."
docker exec ssokudrang_php php -v | head -n 1

echo ""
echo "5. Testing Database Connection from PHP..."
docker exec ssokudrang_php php -r "try { \$conn = new mysqli('mysql', 'dechachit', 'dd0648282939DD', 'ssokudrang'); if(\$conn->connect_error) { echo 'Failed: ' . \$conn->connect_error; } else { echo 'PHP-MySQL Connection OK'; \$conn->close(); }} catch(Exception \$e) { echo 'Error: ' . \$e->getMessage(); }"

echo ""
echo ""
echo "================================"
echo "If all tests pass, visit:"
echo "${GREEN}http://localhost:8085${NC}"
echo "================================"
