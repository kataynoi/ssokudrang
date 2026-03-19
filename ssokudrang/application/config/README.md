# Configuration Files

## Important: Sensitive Configuration Files

ไฟล์ต่อไปนี้มีข้อมูล sensitive จึง**ไม่ถูก commit ลง Git**:
- `database.php` - มี username, password ฐานข้อมูล
- `config.php` - มี site_name, boss_name, base_url

### การตั้งค่าครั้งแรก

#### 1. Database Configuration

Copy ไฟล์ตัวอย่าง:
```cmd
copy database.php.example database.php
```

แก้ไขค่าใน `database.php`:
```php
'hostname' => 'mysql',              // หรือ 'localhost' ถ้าไม่ใช้ Docker
'username' => 'your_username',      // เปลี่ยนเป็น username จริง
'password' => 'your_password',      // เปลี่ยนเป็น password จริง
'database' => 'your_database_name', // เปลี่ยนเป็นชื่อ database จริง
```

#### 2. Site Configuration

Copy ไฟล์ตัวอย่าง:
```cmd
copy config.php.example config.php
```

แก้ไขค่าใน `config.php`:
```php
$config['site_name'] = 'ชื่อหน่วยงานของคุณ';
$config['boss_name'] = 'ชื่อผู้บริหาร';
$config['boss_position'] = 'ตำแหน่ง';
$config['base_url'] = 'http://your-domain.com/';
```

### สำหรับ Docker Environment

```php
'hostname' => 'mysql',           // Docker service name
'username' => 'dechachit',       // ดูใน docker-compose.yml
'password' => 'your_password',   // ดูใน docker-compose.yml
'database' => 'ssokudrang',      // ดูใน docker-compose.yml
```

### สำหรับ Production

อย่าลืม:
1. ✅ ใช้รหัสผ่านที่แข็งแรง
2. ✅ ไม่ commit ไฟล์ `database.php` ลง Git
3. ✅ เก็บรหัสผ่านไว้ในที่ปลอดภัย
4. ✅ Backup configuration ก่อน deploy

---

**Note:** ไฟล์ `database.php` ถูก ignore โดย `.gitignore` เพื่อความปลอดภัย
