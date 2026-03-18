# Production Deployment Checklist

## 🚨 สิ่งที่ต้องทำก่อน Deploy Production

### 1. Security Configuration

#### ✅ เปลี่ยน Passwords
```yaml
# ใน docker-compose.yml
MYSQL_ROOT_PASSWORD: [เปลี่ยนเป็นรหัสผ่านแข็งแรง]
MYSQL_PASSWORD: [เปลี่ยนเป็นรหัสผ่านแข็งแรง]
```

#### ✅ อัปเดต database.php
```php
// ssokudrang/application/config/database.php
'password' => '[รหัสผ่านใหม่ที่ตรงกับ docker-compose.yml]'
```

#### ✅ เปลี่ยน Environment เป็น Production
```php
// ssokudrang/index.php
define('ENVIRONMENT', 'production'); // เปลี่ยนจาก 'development'
```

#### ✅ ปิด phpMyAdmin
```yaml
# ใน docker-compose.yml
# Comment out หรือลบ service phpmyadmin ทั้งหมด
# phpmyadmin:
#   image: phpmyadmin/phpmyadmin
#   ...
```

#### ✅ ตั้งค่า Base URL
```php
// ssokudrang/application/config/config.php
$config['base_url'] = 'https://yourdomain.com/'; // เปลี่ยนเป็น domain จริง
```

### 2. File Permissions

```bash
# เข้าไปใน PHP container
docker exec -it ssokudrang_php bash

# ตั้งค่า permissions ที่ปลอดภัย
chmod -R 755 /var/www/html
chmod -R 750 /var/www/html/application/config
chmod -R 777 /var/www/html/application/cache
chmod -R 777 /var/www/html/application/logs
chmod -R 755 /var/www/html/assets/uploads

# ลบไฟล์ที่ไม่จำเป็น
rm /var/www/html/info.php
```

### 3. Database Backup

```cmd
:: Backup database ก่อน deploy
docker exec ssokudrang_mysql mysqldump -uroot -p[PASSWORD] ssokudrang > backup_production_YYYYMMDD.sql

:: หรือใช้ script อัตโนมัติ
create-backup.bat
```

### 4. SSL/HTTPS Setup

#### Option 1: ใช้ Nginx Proxy (Recommended)
```yaml
# ใช้ nginx-proxy + letsencrypt companion
# ดู: https://github.com/nginx-proxy/nginx-proxy
```

#### Option 2: แก้ไข nginx/default.conf
```nginx
server {
    listen 443 ssl http2;
    server_name yourdomain.com;

    ssl_certificate /etc/nginx/ssl/cert.pem;
    ssl_certificate_key /etc/nginx/ssl/key.pem;
    
    # SSL configuration
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;
    
    # ... rest of config
}

# Redirect HTTP to HTTPS
server {
    listen 80;
    server_name yourdomain.com;
    return 301 https://$server_name$request_uri;
}
```

### 5. Performance Optimization

#### ✅ Enable OPcache
```dockerfile
# เพิ่มใน Dockerfile
RUN docker-php-ext-install opcache

# สร้างไฟล์ php.ini
COPY php.ini /usr/local/etc/php/conf.d/custom.ini
```

#### ✅ php.ini สำหรับ Production
```ini
; php.ini
opcache.enable=1
opcache.memory_consumption=128
opcache.max_accelerated_files=10000
opcache.revalidate_freq=60

upload_max_filesize = 50M
post_max_size = 50M
max_execution_time = 300
memory_limit = 256M

display_errors = Off
log_errors = On
error_log = /var/log/php_errors.log
```

### 6. Monitoring & Logging

#### ✅ Log Rotation
```yaml
# ใน docker-compose.yml เพิ่ม logging config
services:
  nginx:
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
```

#### ✅ Health Checks
```yaml
# ใน docker-compose.yml
services:
  nginx:
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost"]
      interval: 30s
      timeout: 10s
      retries: 3
```

### 7. Firewall & Network

```cmd
:: เปิดเฉพาะ port ที่จำเป็น
:: Port 80 (HTTP)
:: Port 443 (HTTPS)
:: ปิด Port 3310 (MySQL) - ให้เข้าได้เฉพาะจากภายใน Docker network

:: ใน docker-compose.yml ลบ ports ของ mysql
# mysql:
#   ports:
#     - "3310:3306"  # ลบบรรทัดนี้ออก
```

### 8. Backup Strategy

#### ✅ สร้าง Automated Backup Script
```batch
@echo off
REM backup-schedule.bat
set BACKUP_DIR=E:\backups\ssokudrang
set DATE=%date:~-4,4%%date:~-7,2%%date:~-10,2%
set TIME=%time:~0,2%%time:~3,2%

mkdir %BACKUP_DIR%\%DATE% 2>nul

REM Backup Database
docker exec ssokudrang_mysql mysqldump -uroot -p[PASSWORD] ssokudrang > %BACKUP_DIR%\%DATE%\db_%TIME%.sql

REM Backup Uploads
xcopy /E /I /Y E:\docker\sso_kudrang\ssokudrang\assets\uploads %BACKUP_DIR%\%DATE%\uploads_%TIME%

echo Backup completed: %DATE%_%TIME%
```

#### ✅ ตั้งค่า Windows Task Scheduler
```cmd
:: รัน backup ทุกวันเวลา 02:00
schtasks /create /tn "SSO Kudrang Backup" /tr "E:\docker\sso_kudrang\backup-schedule.bat" /sc daily /st 02:00
```

### 9. Updates & Maintenance

```cmd
:: Update Docker Images
docker-compose pull

:: Rebuild with new images
docker-compose up -d --build

:: Clean up old images
docker image prune -a
```

### 10. Disaster Recovery Plan

#### ✅ เตรียม Restore Script
```batch
@echo off
REM restore-backup.bat
set BACKUP_FILE=%1

if "%BACKUP_FILE%"=="" (
    echo Usage: restore-backup.bat path\to\backup.sql
    exit /b
)

echo Restoring database from %BACKUP_FILE%...
docker exec -i ssokudrang_mysql mysql -uroot -p[PASSWORD] ssokudrang < %BACKUP_FILE%
echo Restore completed!
```

---

## 📋 Production Deployment Checklist

- [ ] เปลี่ยนรหัสผ่าน MySQL ทั้งหมด
- [ ] ตั้งค่า ENVIRONMENT เป็น 'production'
- [ ] ปิด phpMyAdmin service
- [ ] ตั้งค่า Base URL เป็น domain จริง
- [ ] ลบไฟล์ info.php และไฟล์ test อื่นๆ
- [ ] ตั้งค่า File Permissions ที่เหมาะสม
- [ ] Backup database ล่าสุด
- [ ] ตั้งค่า SSL/HTTPS
- [ ] Enable OPcache
- [ ] กำหนดค่า PHP.ini สำหรับ production
- [ ] ตั้งค่า Log Rotation
- [ ] เพิ่ม Health Checks
- [ ] ปิด MySQL port จากภายนอก
- [ ] ตั้งค่า Automated Backup
- [ ] ทดสอบ Restore Process
- [ ] ตั้งค่า Monitoring/Alert
- [ ] เตรียม Disaster Recovery Plan
- [ ] Document การ deploy

---

## 🚀 Production Deployment Command

```cmd
:: 1. Update configuration files
:: 2. Backup current data
docker exec ssokudrang_mysql mysqldump -uroot -p[OLD_PASSWORD] ssokudrang > backup_before_production.sql

:: 3. Stop containers
docker-compose down

:: 4. Update docker-compose.yml with production settings
:: 5. Deploy
docker-compose up -d --build

:: 6. Verify
docker-compose ps
curl -I https://yourdomain.com

:: 7. Monitor logs
docker-compose logs -f
```

---

**สำคัญ:** ทดสอบการ deploy บน staging environment ก่อนนำขึ้น production เสมอ!
