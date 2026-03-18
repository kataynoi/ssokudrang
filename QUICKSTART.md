# Quick Start Guide

## เริ่มใช้งานเพียง 3 ขั้นตอน

### 1. Build Docker Images
```cmd
docker-compose up -d --build
```

### 2. รอ 30-60 วินาที (ให้ MySQL import database เสร็จ)

### 3. เปิดเบราว์เซอร์
```
http://localhost:8085
```

## ✅ เช็คว่าทำงานหรือยัง

```cmd
docker-compose ps
```

ถ้าเห็น 4 services เป็น "Up" = สำเร็จ! 🎉

## 🔗 ลิงค์ที่ใช้งาน

- เว็บไซต์: http://localhost:8085
- phpMyAdmin: http://localhost:8086

---

**ดูรายละเอียดเพิ่มเติมที่:** README.md
