git push origin master# SSO Kudrang - Docker Setup

ระบบ SSO สำนักงานสาธารณสุขอำเภอกุดรัง
พัฒนาด้วย CodeIgniter 3 + PHP 7.4 + MySQL 5.7

## 📋 สิ่งที่ต้องมี (Prerequisites)

- Docker Desktop (สำหรับ Windows)
- ไฟล์ฐานข้อมูล `ssokudrang.sql`

## 🚀 การติดตั้งและรันระบบ

### 1. เตรียม Environment

```cmd
cd e:\docker\sso_kudrang
```

### 2. Build และรัน Docker Containers

```cmd
docker-compose up -d --build
```

### 3. ตรวจสอบสถานะ Containers

```cmd
docker-compose ps
```

คุณควรเห็น 4 services ทำงาน:
- ✅ ssokudrang_nginx (port 8085)
- ✅ ssokudrang_php
- ✅ ssokudrang_mysql (port 3310)
- ✅ ssokudrang_phpmyadmin (port 8086)

## 🌐 การเข้าถึงระบบ

| Service | URL | หมายเหตุ |
|---------|-----|----------|
| **เว็บไซต์หลัก** | http://localhost:8085 | ระบบ SSO |
| **phpMyAdmin** | http://localhost:8086 | จัดการฐานข้อมูล |
| **MySQL** | localhost:3310 | เชื่อมต่อจากภายนอก |

## 🔐 ข้อมูลการเข้าสู่ระบบ


## 📁 โครงสร้างโปรเจกต์

```
sso_kudrang/
├── docker-compose.yml          # การตั้งค่า Docker services
├── Dockerfile                  # PHP-FPM image
├── .env.example               # ตัวอย่างการตั้งค่า environment
├── ssokudrang.sql             # ไฟล์ฐานข้อมูล (import อัตโนมัติ)
├── nginx/
│   └── default.conf           # Nginx configuration
└── ssokudrang/                # CodeIgniter application
    ├── application/
    ├── system/
    ├── assets/
    └── index.php
```

## 🔧 คำสั่งที่ใช้บ่อย

### เริ่มระบบ
```cmd
docker-compose up -d
```

### หยุดระบบ
```cmd
docker-compose down
```

### หยุดและลบข้อมูลทั้งหมด (รวม database)
```cmd
docker-compose down -v
```

### ดู Logs
```cmd
:: ดู logs ทั้งหมด
docker-compose logs -f

:: ดู logs เฉพาะ service
docker-compose logs -f nginx
docker-compose logs -f php
docker-compose logs -f mysql
```

### เข้าไปใน Container
```cmd
:: เข้า PHP container
docker exec -it ssokudrang_php bash

:: เข้า MySQL container
docker exec -it ssokudrang_mysql bash

:: เข้า Nginx container
docker exec -it ssokudrang_nginx sh
```

### Restart Services
```cmd
:: Restart ทั้งหมด
docker-compose restart

:: Restart เฉพาะ service
docker-compose restart php
docker-compose restart nginx
docker-compose restart mysql
```

### Import Database ใหม่
```cmd
docker exec -i ssokudrang_mysql mysql -uroot -pdd0648282939DD ssokudrang < ssokudrang.sql
```

### Backup Database
```cmd
docker exec ssokudrang_mysql mysqldump -uroot -pdd0648282939DD ssokudrang > backup_ssokudrang_%date:~-4,4%%date:~-7,2%%date:~-10,2%.sql
```

## ⚙️ การปรับแต่งที่ทำไว้

### 1. Database Configuration
- ✅ เปลี่ยน hostname จาก `localhost` เป็น `mysql` (Docker service name)
- ✅ เปลี่ยน character set เป็น `utf8mb4` (รองรับภาษาไทยดีกว่า)
- ✅ อัปเดต password ให้ตรงกับ Docker environment

### 2. Base URL Configuration
- ✅ เปลี่ยน base_url เป็น `http://localhost:8085/`
- ✅ เหมาะสำหรับการพัฒนาบน Docker

### 3. File Permissions
- ✅ ตั้งค่า permissions สำหรับ cache และ logs folder
- ✅ ตั้งค่า permissions สำหรับ uploads folder

## 🐛 การแก้ปัญหา

### ปัญหา: Port ถูกใช้งานอยู่แล้ว
```cmd
:: เช็ค process ที่ใช้ port
netstat -ano | findstr :8085
netstat -ano | findstr :3310

:: หยุด process ที่ใช้ port (ใช้ PID จากคำสั่งข้างบน)
taskkill /PID <PID> /F
```

### ปัญหา: Database ไม่ import อัตโนมัติ
```cmd
:: Import manual

```

### ปัญหา: Permission denied ใน cache/logs
```cmd
docker exec -it ssokudrang_php bash
chmod -R 777 /var/www/html/application/cache
chmod -R 777 /var/www/html/application/logs
chmod -R 777 /var/www/html/assets/uploads
```

### ปัญหา: เห็น PHP code แทนที่จะ execute
```cmd
:: ตรวจสอบ PHP-FPM
docker-compose logs php

:: Restart nginx
docker-compose restart nginx
```

### ปัญหา: Database connection failed
```cmd
:: ตรวจสอบว่า MySQL พร้อมใช้งาน


:: ตรวจสอบ config
docker exec -it ssokudrang_php cat /var/www/html/application/config/database.php
```

## 📝 หมายเหตุสำคัญ

1. **Database Import:** ฐานข้อมูลจะ import อัตโนมัติจาก `ssokudrang.sql` ครั้งแรกที่สร้าง container เท่านั้น
   - ถ้าต้องการ re-import ให้ลบ volume: `docker-compose down -v`

2. **Code Changes:** การแก้ไขโค้ดใน folder `ssokudrang/` จะมีผลทันที (ไม่ต้อง restart)

3. **Config Changes:** การแก้ไข nginx config ต้อง restart: `docker-compose restart nginx`

4. **Production Deployment:** 
   - เปลี่ยน environment เป็น production ใน `application/config/config.php`
   - เปลี่ยน password ที่แข็งแรงขึ้น
   - ปิด phpMyAdmin (comment out ใน docker-compose.yml)

## 🔄 การอัปเกรดในอนาคต

เมื่อพร้อมอัปเกรดเป็น CodeIgniter 4 + PHP 8:
1. สร้าง branch ใหม่ใน git
2. ทดสอบ migration บน development environment
3. ปรับแต่ง Dockerfile ให้ใช้ PHP 8.x
4. Refactor code ตาม CI4 standards

## 📞 การขอความช่วยเหลือ

หากพบปัญหาหรือต้องการความช่วยเหลือ:
1. ตรวจสอบ logs: `docker-compose logs -f`
2. ตรวจสอบสถานะ: `docker-compose ps`
3. ดู error logs ใน `ssokudrang/application/logs/`

---

**Version:** 1.0.0
**Last Updated:** March 17, 2026
**Tech Stack:** CodeIgniter 3.1.x + PHP 7.4 + MySQL 5.7 + Nginx + Docker
