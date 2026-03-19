# Environment Configuration Guide

## การใช้งาน .env file

ระบบนี้ใช้ `.env` file สำหรับเก็บ configuration ที่เป็น sensitive data และ environment-specific settings

### การตั้งค่าครั้งแรก

1. **Copy ไฟล์ `.env.example` เป็น `.env`**
   ```cmd
   copy .env.example .env
   ```

2. **แก้ไขค่าใน `.env`** ให้ตรงกับ environment ของคุณ

### ตัวอย่าง .env file

```bash
# Database Configuration
DB_HOST=mysql                    # สำหรับ Docker ใช้ 'mysql', สำหรับ local ใช้ 'localhost'
DB_PORT=3306
DB_DATABASE=ssokudrang
DB_USERNAME=your_username
DB_PASSWORD=your_password
DB_ROOT_PASSWORD=your_root_password

# Application Configuration
APP_ENV=development              # development, testing, production
APP_DEBUG=true                   # true หรือ false
APP_URL=http://localhost:8085    # URL ของระบบ (ต้องมี trailing slash)
APP_SITE_NAME=ชื่อหน่วยงาน
APP_BOSS_ID=1
APP_BOSS_NAME=ชื่อผู้บริหาร
APP_BOSS_POSITION=ตำแหน่ง

# Server Ports (สำหรับ Docker)
NGINX_PORT=8085
MYSQL_PORT=3310
PHPMYADMIN_PORT=8086
```

### Configuration Files ที่ใช้ .env

#### 1. database.php
อ่านค่าจาก:
- `DB_HOST` - Hostname ของฐานข้อมูล
- `DB_USERNAME` - Username สำหรับเชื่อมต่อ
- `DB_PASSWORD` - Password สำหรับเชื่อมต่อ
- `DB_DATABASE` - ชื่อฐานข้อมูล

#### 2. config.php
อ่านค่าจาก:
- `APP_URL` - Base URL ของระบบ
- `APP_SITE_NAME` - ชื่อหน่วยงาน
- `APP_BOSS_ID` - ID ผู้บริหาร
- `APP_BOSS_NAME` - ชื่อผู้บริหาร
- `APP_BOSS_POSITION` - ตำแหน่งผู้บริหาร

#### 3. index.php
อ่านค่าจาก:
- `APP_ENV` - Environment (development, testing, production)

### การใช้งาน env() function

ใน PHP code คุณสามารถอ่านค่าจาก .env ได้โดยใช้ function `env()`:

```php
// อ่านค่าโดยไม่มี default
$dbHost = env('DB_HOST');

// อ่านค่าพร้อม default value
$dbHost = env('DB_HOST', 'localhost');

// ตัวอย่างการใช้งาน
$debug = env('APP_DEBUG', false);  // จะคืนค่า boolean
$url = env('APP_URL', 'http://localhost/');
```

### สำหรับแต่ละ Environment

#### Development (Local)
```bash
APP_ENV=development
APP_DEBUG=true
APP_URL=http://localhost:8085/
DB_HOST=localhost
```

#### Docker
```bash
APP_ENV=development
APP_DEBUG=true
APP_URL=http://localhost:8085/
DB_HOST=mysql
```

#### Production
```bash
APP_ENV=production
APP_DEBUG=false
APP_URL=https://yourdomain.com/
DB_HOST=your-production-host
```

### ข้อควรระวัง

1. **ไม่ควร commit ไฟล์ `.env`** ลง Git (ถูก ignore อยู่แล้วใน `.gitignore`)
2. **ควร backup ไฟล์ `.env`** ไว้ในที่ปลอดภัย
3. **แต่ละ environment ควรมี `.env` เป็นของตัวเอง**
4. **Production ต้องใช้ password ที่แข็งแรง**
5. **ตรวจสอบ permissions ของไฟล์ `.env`** ไม่ควรให้คนอื่นอ่านได้

### Troubleshooting

#### ปัญหา: env() function not found
- ตรวจสอบว่าไฟล์ `dotenv_helper.php` ถูก load ใน `index.php` แล้ว

#### ปัญหา: ค่าที่อ่านได้ไม่ถูกต้อง
- ตรวจสอบว่าไฟล์ `.env` อยู่ที่ root ของ project
- ตรวจสอบว่าไม่มีเครื่องหมาย space หรือ quote ที่ไม่จำเป็น
- ลอง clear cache และ restart web server

#### ปัญหา: Database connection failed
- ตรวจสอบค่า `DB_HOST`, `DB_USERNAME`, `DB_PASSWORD`, `DB_DATABASE` ใน `.env`
- สำหรับ Docker ต้องใช้ `DB_HOST=mysql`
- สำหรับ Local ต้องใช้ `DB_HOST=localhost`

---

**Note:** ไฟล์ `.env` ถูก ignore โดย Git เพื่อความปลอดภัย ทุกคนที่ clone project มาจะต้องสร้างไฟล์ `.env` เองจาก `.env.example`
