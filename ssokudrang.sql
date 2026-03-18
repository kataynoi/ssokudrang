/*
 Navicat Premium Data Transfer

 Source Server         : 203.157.185.28
 Source Server Type    : MySQL
 Source Server Version : 80042
 Source Host           : 192.168.10.38:3306
 Source Schema         : ssokudrang

 Target Server Type    : MySQL
 Target Server Version : 80042
 File Encoding         : 65001

 Date: 17/03/2026 09:55:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _chospital
-- ----------------------------
DROP TABLE IF EXISTS `_chospital`;
CREATE TABLE `_chospital`  (
  `id` char(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'รหัสหน่วยบริการ',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่อหน่วยบริหาร',
  `hostype` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ประเภทหน่วยบริการ',
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ที่อยู่',
  `subdistcode` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ตำบล',
  `tel` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'เบอร์โทร',
  `boss` char(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ผู้บริหาร',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `zipcode`(`tel`) USING BTREE,
  INDEX `changwatcode`(`subdistcode`, `id`) USING BTREE,
  INDEX `hoscode`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _chospital
-- ----------------------------
INSERT INTO `_chospital` VALUES ('00452', 'สำนักงานสาธารณสุขอำเภอพยัคฆภูมิพิสัย', '02', '-', '01', '-', '1');
INSERT INTO `_chospital` VALUES ('05013', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านดอนติ้ว', '18', '-', '02', '-', '000501300');
INSERT INTO `_chospital` VALUES ('05014', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านดงยางน้อย', '18', '-', '03', '-', '000501400');
INSERT INTO `_chospital` VALUES ('05015', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านดอนหมี', '18', '-', '03', '-', '000501500');
INSERT INTO `_chospital` VALUES ('05016', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านเม็กคำ', '18', '-', '04', '-', '000501600');
INSERT INTO `_chospital` VALUES ('05017', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านแก่นท้าว', '18', '-', '04', '-', '000501700');
INSERT INTO `_chospital` VALUES ('05018', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านสำโรง', '18', '-', '04', '-', '000501800');
INSERT INTO `_chospital` VALUES ('05019', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านนาสีนวล', '18', '-', '05', '-', '000501900');
INSERT INTO `_chospital` VALUES ('05020', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหนองบะ', '18', '-', '05', '-', '000502000');
INSERT INTO `_chospital` VALUES ('05021', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านโนนม่วง', '18', '-', '09', '-', '000502100');
INSERT INTO `_chospital` VALUES ('05022', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านดอนหลี่', '18', '-', '10', '-', '000502200');
INSERT INTO `_chospital` VALUES ('05023', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านโนนจาน', '18', '-', '12', '-', '000502300');
INSERT INTO `_chospital` VALUES ('05024', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านเมืองเตา', '18', '-', '12', '-', '000502400');
INSERT INTO `_chospital` VALUES ('05025', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหนองแก', '18', '-', '15', '-', '000502500');
INSERT INTO `_chospital` VALUES ('05026', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านมะโบ่', '18', '-', '15', '-', '000502600');
INSERT INTO `_chospital` VALUES ('05027', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหนองระเวียง', '18', '-', '16', '-', '000502700');
INSERT INTO `_chospital` VALUES ('05028', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหนองหว้าเฒ่า', '18', '-', '17', '-', '000502800');
INSERT INTO `_chospital` VALUES ('05029', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านสระแคน', '18', '-', '18', '-', '000502900');
INSERT INTO `_chospital` VALUES ('05030', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านสระบาก', '18', '-', '18', '-', '000503000');
INSERT INTO `_chospital` VALUES ('05031', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านเมืองเสือ', '18', '-', '19', '-', '000503100');
INSERT INTO `_chospital` VALUES ('11057', 'โรงพยาบาลพยัคฆภูมิพิสัย', '07', '693  ถ.นุตจรัส ', '01', '-', '001105700');
INSERT INTO `_chospital` VALUES ('13937', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านเขวาทุ่ง', '18', '-', '20', '-', '001393700');

-- ----------------------------
-- Table structure for _ita_ebit
-- ----------------------------
DROP TABLE IF EXISTS `_ita_ebit`;
CREATE TABLE `_ita_ebit`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ชื่อ EBIT',
  `ita_index` int NULL DEFAULT NULL COMMENT 'ดัชนี',
  `n_year` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ปีงบประมาณ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _ita_ebit
-- ----------------------------
INSERT INTO `_ita_ebit` VALUES (1, 'EB 1 หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (2, 'EB 2 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการดำเนินการเพื่อส่งเสริม ความโปร่งใสในการจัดซื้อจัดจ้าง', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (3, 'EB 3 หน่วยงานมีการเผยแพร่แผนการจัดซื้อจัดจ้างประจำปี', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (4, 'EB 4 หน่วยงานมีการเผยแพร่บันทึกรายละเอียดวิธีการและขั้นตอนการจัดซื้อจัดจ้างอย่างเป็นระบบ', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (5, 'EB 5 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงาน ตามภารกิจหลักของหน่วยงานอย่างไร', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (6, 'EB 6 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการจัดทำแผนงาน/โครงการ ตามภารกิจหลักของหน่วยงาน หรือไม่', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (7, 'EB 7 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการดำเนินการโครงการตามภารกิจหลักของหน่วยงานหรือไม่', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (8, 'EB 8 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (9, 'EB 9 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 1, '2563');
INSERT INTO `_ita_ebit` VALUES (10, 'EB 10 หน่วยงานมีการเผยแพร่แผนปฏิบัติการประจำปี', 2, '2563');
INSERT INTO `_ita_ebit` VALUES (11, 'EB 11 หน่วยงานมีการเผยแพร่รายงานการประเมินผลการปฏิบัติงานตามแผนปฏิบัติการประจำปี (ที่ผ่านมา)', 2, '2563');
INSERT INTO `_ita_ebit` VALUES (12, 'EB 12 หน่วยงานมีการเผยแพร่การกำกับติดตามการดำเนินงานตามแผนปฏิบัติการประจำปี', 2, '2563');
INSERT INTO `_ita_ebit` VALUES (13, 'EB 13 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการบริหารผลการปฏิบัติงาน และการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 2, '2563');
INSERT INTO `_ita_ebit` VALUES (14, 'EB 14 หน่วยงานมีการรายงานการประเมินผลเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปี ของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการอยู่ในระดับดีเด่นและดีมากในที่เปิดเผย ให้ทราบ ในรอบปีงบประมาณ', 2, '2563');
INSERT INTO `_ita_ebit` VALUES (15, 'EB 15 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 2, '2563');
INSERT INTO `_ita_ebit` VALUES (16, 'EB 16 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการจัดการเรื่องร้องเรียน ของหน่วยงาน', 2, '2563');
INSERT INTO `_ita_ebit` VALUES (17, 'EB 17 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันการรับสินบน', 3, '2563');
INSERT INTO `_ita_ebit` VALUES (18, 'EB 18 หน่วยงานมีการเสริมสร้างวัฒนธรรมและค่านิยมสุจริตและการต่อต้านการทุจริตในหน่วยงาน', 4, '2563');
INSERT INTO `_ita_ebit` VALUES (19, 'EB 19 หน่วยงานมีการรวมกลุ่มของเจ้าหน้าที่เพื่อการบริหารงานที่โปร่งใสหรือไม่ และกลุ่มดังกล่าว มีกิจกรรมที่แสดงถึงความพยายามที่จะปรับปรุงการบริหารงานของหน่วยงานให้มีความโปร่งใสยิ่งขึ้น หรือไม่', 4, '2563');
INSERT INTO `_ita_ebit` VALUES (20, 'EB 20 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2563');
INSERT INTO `_ita_ebit` VALUES (21, 'EB 21 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อน โดยการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2563');
INSERT INTO `_ita_ebit` VALUES (22, 'EB 22 หน่วยงานมีการประชุม หรืออบรม/สัมมนา หรือแลกเปลี่ยนความรู้ภายในหน่วยงานในการ ให้ความรู้เรื่องการป้องกันผลประโยชน์ทับซ้อน จิตพอเพียงต้านทุจริต แก่เจ้าหน้าที่ในหน่วยงานหรือไม่', 4, '2563');
INSERT INTO `_ita_ebit` VALUES (23, 'EB 23 หน่วยงานมีการจัดทำแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปี ของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณของหน่วยงาน', 4, '2563');
INSERT INTO `_ita_ebit` VALUES (24, 'EB 24 หน่วยงานมีการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริต และประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปี งบประมาณของหน่วยงาน', 4, '2563');
INSERT INTO `_ita_ebit` VALUES (25, 'EB 25 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการตรวจสอบการปฏิบัติงาน ของเจ้าหน้าที่ตามคู่มือหรือมาตรฐานการปฏิบัติงาน', 5, '2563');
INSERT INTO `_ita_ebit` VALUES (26, 'EB 26 หน่วยงานมีการเผยแพร่กระบวนการอำนวยความสะดวก หรือการให้บริการประชาชน ด้วยการแสดงขั้นตอน ระยะเวลาที่ใช้', 5, '2563');
INSERT INTO `_ita_ebit` VALUES (27, 'EB 1 หน่วยงานมีการกำหนดมาตรการและวางระบบการเผยแพร่ข้อมูลต่อสาธารณะผ่านเวปไซด์ของหน่วยงาน', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (28, 'EB 2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (29, 'EB 3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ.2563', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (30, 'EB 4 หน่วยงานมีมาตรการและวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ปีงบประมาณ พ.ศ.2564', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (31, 'EB 5 หน่วยงานมีการสรุปผลการดำเนินการจัดซื้อจัดจ้างในรอบเดือน ประจำปีงบประมาณ พ.ศ.2564', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (32, 'EB 6 ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคคล', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (33, 'EB 7 หน่วยงานมีการกำหนดมาตรการและระบบการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (34, 'EB 8 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปีของบุคคลากรในหน่วยงานและเปิดเผยผลการปฏิบัติราชการระดับดีเด่น และระดับดีมากในที่เปิดเผยให้ทราบรอบปีงบประมาณที่ผ่านมาและรอบปีงบประมาณ', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (35, 'EB 9 หน่วยงานมีการอบรมให้ความรู้แก่เจ้าหน้าที่ภายในหน่วยงานเกี่ยวกับการเสริมสร้างและพัฒนาทางด้านจริยธรรมและการรักษาวินัยรวมทั้งการป้องกันมิให้กระทำผิดวินัย', 1, '2564');
INSERT INTO `_ita_ebit` VALUES (36, 'EB 10 หน่วยงานมีแนวปฎิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 2, '2564');
INSERT INTO `_ita_ebit` VALUES (37, 'EB 11 หน่วยงานมีข้อมูลเชิงสถิติเรื่องร้องเรียน', 2, '2564');
INSERT INTO `_ita_ebit` VALUES (38, 'EB 12 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจของหน่วยงาน', 2, '2564');
INSERT INTO `_ita_ebit` VALUES (39, 'EB 13 หน่วยงานมีการกำหนดมาตรการและระบบในการป้องกันการรับสินบน', 2, '2564');
INSERT INTO `_ita_ebit` VALUES (40, 'EB 14 หน่วยงานมีการจัดทำแนวทางปฏิบัติเกี่ยวกับการใช้ทรัพย์สินของราชการที่ถูกต้อง', 2, '2564');
INSERT INTO `_ita_ebit` VALUES (41, 'EB 15 หน่วยงานมีขั้นตอนการขออนุญาตเพื่อยืมทรัพย์สินของราชการไปใช้ปฏิบัติในหน่วยงาน', 2, '2564');
INSERT INTO `_ita_ebit` VALUES (42, 'EB 16 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 2, '2564');
INSERT INTO `_ita_ebit` VALUES (43, 'EB 17 หน่วยงานมีแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบและแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 3, '2564');
INSERT INTO `_ita_ebit` VALUES (44, 'EB 18 หน่วยงานมีการรายงานกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกันปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีของหน่วยงานและแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 4, '2564');
INSERT INTO `_ita_ebit` VALUES (45, 'EB 19 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน', 4, '2564');
INSERT INTO `_ita_ebit` VALUES (46, 'EB 20 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนโดยการกำหนดมาตรการและวางระบบเพื่อจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน', 4, '2564');
INSERT INTO `_ita_ebit` VALUES (47, 'EB 21 หน่วยงานมีการอบรมให้ความรู้ภายในหน่วยงานเรื่องการป้องกันผลประโยชน์ทับซ้อน', 4, '2564');
INSERT INTO `_ita_ebit` VALUES (48, 'EB 22 หน่วยงานมีการเสริมสร้างวัฒนธรรมสุจริตและต่อต้านการทุจริตภายใต้แนวคิด จิตพอเพียงต้านทุจริต', 4, '2564');
INSERT INTO `_ita_ebit` VALUES (49, 'EB 23 หน่วยงานมีการมีการรวมกลุ่มของบุคลากรในหน่วยงานในนาม ชมรม STRONG', 4, '2564');
INSERT INTO `_ita_ebit` VALUES (50, 'EB 24 หน่วยงานมีนโยบายและมีแนวทางปฏิบัติที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงาน มาาตรการในการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน', 4, '2564');

-- ----------------------------
-- Table structure for _ita_ebit_items
-- ----------------------------
DROP TABLE IF EXISTS `_ita_ebit_items`;
CREATE TABLE `_ita_ebit_items`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ชื่อ EBIT',
  `ita_ebit` int NULL DEFAULT NULL COMMENT 'Ebit',
  `n_year` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Link',
  `file` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ไฟล์',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _ita_ebit_items
-- ----------------------------

-- ----------------------------
-- Table structure for _ita_index
-- ----------------------------
DROP TABLE IF EXISTS `_ita_index`;
CREATE TABLE `_ita_index`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่อดัชนี',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _ita_index
-- ----------------------------
INSERT INTO `_ita_index` VALUES (6, 'การเปิดเผยข้อมูล');

-- ----------------------------
-- Table structure for admin_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `admin_dashboard`;
CREATE TABLE `admin_dashboard`  (
  `id` int NULL DEFAULT NULL COMMENT 'ID',
  `equipment_id` int NULL DEFAULT NULL COMMENT 'อุปกรณ์',
  `total` int NULL DEFAULT NULL COMMENT 'จำนวนทั้งหมด',
  `status1` int NULL DEFAULT NULL COMMENT ' ใช้งานไม่ได้',
  `status2` int NULL DEFAULT NULL COMMENT 'ใช้งานได้ควรเปลี่ยนเครื่องใหม่',
  `status3` int NULL DEFAULT NULL COMMENT 'ใช้งานได้แต่ควร Upgrate',
  `status4` int NULL DEFAULT NULL COMMENT 'ใช้งานได้',
  `status5` int NULL DEFAULT NULL COMMENT 'ใช้งานได้ดีปกติ',
  `status6` int NULL DEFAULT NULL COMMENT 'รอจำหน่าย'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ข้อความ',
  `file` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'รูปภาพ',
  `last_update` datetime(0) NULL DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `user_id` int NULL DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (1, '', '1_20200601152349.jpg', '2020-06-01 15:06:49', 1);

-- ----------------------------
-- Table structure for boss
-- ----------------------------
DROP TABLE IF EXISTS `boss`;
CREATE TABLE `boss`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ข้อความ',
  `file` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'รูปภาพ',
  `last_update` datetime(0) NULL DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `user_id` int NULL DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boss
-- ----------------------------
INSERT INTO `boss` VALUES (1, '', '1_20201215143854.jpg', '2020-12-15 14:12:54', 1);

-- ----------------------------
-- Table structure for boss_list
-- ----------------------------
DROP TABLE IF EXISTS `boss_list`;
CREATE TABLE `boss_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ข้อความ',
  `file` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'รูปภาพ',
  `last_update` datetime(0) NULL DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `user_id` int NULL DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of boss_list
-- ----------------------------
INSERT INTO `boss_list` VALUES (1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cactive
-- ----------------------------
DROP TABLE IF EXISTS `cactive`;
CREATE TABLE `cactive`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cactive
-- ----------------------------
INSERT INTO `cactive` VALUES (1, 'ระงับการใช้งาน');
INSERT INTO `cactive` VALUES (2, 'ใช้งาน');

-- ----------------------------
-- Table structure for cemployee_type
-- ----------------------------
DROP TABLE IF EXISTS `cemployee_type`;
CREATE TABLE `cemployee_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT 'ชื่อประเภท',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cemployee_type
-- ----------------------------
INSERT INTO `cemployee_type` VALUES (1, 'ข้าราชการ');
INSERT INTO `cemployee_type` VALUES (2, 'พนักงานราชการ');
INSERT INTO `cemployee_type` VALUES (3, 'ลูกจ้างประจำ');
INSERT INTO `cemployee_type` VALUES (4, 'พนักงานกระทรวงสาธารณสุข');
INSERT INTO `cemployee_type` VALUES (5, 'ลูกจ้างชั่วคราว');
INSERT INTO `cemployee_type` VALUES (6, 'ลูกจ้างเหมาบริการ');
INSERT INTO `cemployee_type` VALUES (7, 'ลูกจ้างโครงการ');

-- ----------------------------
-- Table structure for cequipment
-- ----------------------------
DROP TABLE IF EXISTS `cequipment`;
CREATE TABLE `cequipment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่ออุปกรณ์',
  `note` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cequipment
-- ----------------------------

-- ----------------------------
-- Table structure for chospital
-- ----------------------------
DROP TABLE IF EXISTS `chospital`;
CREATE TABLE `chospital`  (
  `id` char(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `hostype` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `subdistcode` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tel` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `boss` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `changwatcode`(`id`) USING BTREE,
  INDEX `hoscode`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chospital
-- ----------------------------
INSERT INTO `chospital` VALUES ('00456', 'สำนักงานสาธารณสุขอำเภอกุดรัง', '02', '-', '01', NULL, NULL);
INSERT INTO `chospital` VALUES ('05071', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านกุดรัง', '18', '-', '01', NULL, NULL);
INSERT INTO `chospital` VALUES ('05072', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านนาโพธิ์', '18', '-', '02', NULL, NULL);
INSERT INTO `chospital` VALUES ('05073', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหนองแหน', '18', '-', '02', NULL, NULL);
INSERT INTO `chospital` VALUES ('05074', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านเลิงแฝก', '18', '-', '03', NULL, NULL);
INSERT INTO `chospital` VALUES ('05075', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหนองแวง', '18', '-', '04', NULL, NULL);
INSERT INTO `chospital` VALUES ('05076', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านห้วยแคน', '18', '-', '04', NULL, NULL);
INSERT INTO `chospital` VALUES ('05077', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหนองแสง', '18', '-', '05', NULL, NULL);
INSERT INTO `chospital` VALUES ('05078', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านหัวนา', '18', '-', '05', NULL, NULL);

-- ----------------------------
-- Table structure for chostype
-- ----------------------------
DROP TABLE IF EXISTS `chostype`;
CREATE TABLE `chostype`  (
  `id` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'รหัสประเภทสถานบริการ',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ขื่อประเภทสถานบริการ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chostype
-- ----------------------------
INSERT INTO `chostype` VALUES ('01', 'สำนักงานสาธารณสุขจังหวัด');
INSERT INTO `chostype` VALUES ('02', ' สำนักงานสาธารณสุขอำเภอ');
INSERT INTO `chostype` VALUES ('03', 'สถานีอนามัย ');
INSERT INTO `chostype` VALUES ('04', 'สถานบริการสาธารณสุขชุมชน');
INSERT INTO `chostype` VALUES ('05', 'โรงพยาบาลศูนย์');
INSERT INTO `chostype` VALUES ('06', 'โรงพยาบาลทั่วไป');
INSERT INTO `chostype` VALUES ('07', 'โรงพยาบาลชุมชน');
INSERT INTO `chostype` VALUES ('08', 'ศูนย์สุขภาพชุมชน ของ รพ.');
INSERT INTO `chostype` VALUES ('09', 'ศูนย์สุขภาพชุมชน สธ. ');
INSERT INTO `chostype` VALUES ('10', 'ศูนย์วิชาการ ');
INSERT INTO `chostype` VALUES ('11', 'โรงพยาบาล นอก สป.สธ. ');
INSERT INTO `chostype` VALUES ('12', 'โรงพยาบาล นอก สธ. ');
INSERT INTO `chostype` VALUES ('13', 'ศูนย์บริการสาธารณสุข');
INSERT INTO `chostype` VALUES ('14', 'ศูนย์สุขภาพชุมชน นอก สธ. ');
INSERT INTO `chostype` VALUES ('15', 'โรงพยาบาลเอกชน');
INSERT INTO `chostype` VALUES ('16', 'คลินิกเอกชน');
INSERT INTO `chostype` VALUES ('17', 'โรงพยาบาล/ศูนย์บริการสาธารณสุข สาขา ');
INSERT INTO `chostype` VALUES ('18', 'โรงพยาบาลส่งเสริมสุขภาพตำบล ');

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ci_sessions_timestamp`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('00kv893bv4lmcditpfd5o7pr0vtpfft2', '182.232.103.73', 1757404215, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373430343231333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('065g0f3duvber8st8umoe01vmeg0g09m', '159.192.194.77', 1757317890, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331373533323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('081gq39nbbjiiels273fraqeeece3eno', '110.164.19.68', 1754146272, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343134363237323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('093v262rcdlnph73cht2susp361qjcmm', '1.46.197.30', 1749170934, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393137303734313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0arq7vh8r6pmbqg7jqqge1uvbb19fnqb', '192.168.10.254', 1743080783, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303738333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0d5vecjlvf8c6lou70go9220t0p3ijnd', '192.168.10.254', 1742962356, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323936323239393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('0d9k7oq53voug5cqvlfbj4acl44142uf', '192.168.10.254', 1736717456, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363731373430323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0flpe54tamh9j1v2q8suc69adcbl0cq9', '192.168.10.254', 1734926378, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932363035383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('0hrn1tl0tlehojailm22r3cp1n6ujddk', '110.164.18.197', 1747489553, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373438393535333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0igv15kr5qgbtutfhoi6nt2c2mkb4eci', '192.168.10.254', 1735181661, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138313635393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0jb82bfe126ecmn7m9kgc3poflrotpa5', '118.172.143.216', 1756801901, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363830313930313B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0mcd3o56hj67lgjgk67finah2rpur3if', '52.23.112.144', 1743330768, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333333303736383B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0mlahohdpoqffh67f43rgmd25l619o02', '110.77.176.33', 1746496439, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363439363433383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0na8bfb7jjppef4h7q3k75bgkabgmbt3', '192.168.10.254', 1736835284, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363833353236353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0ogtcqlcutvbsenmdtbjvod3u6eh48ro', '61.90.179.200', 1747315077, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373331353037373B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0oibg49fetkr506l2o59bb11sgb3rh52', '192.168.10.254', 1734334922, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343333343630373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('0qf6lf0tsuuvacd165t4hlc860h8kmlo', '192.168.10.254', 1742805799, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830353738343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0tj2ioskl0octum8tpetj1bjhmm83prc', '192.168.10.254', 1735030730, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353033303237373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0vacpui8bc5r3lmfv16a7gtuo241shhm', '192.168.10.254', 1742804537, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343533373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('0vid5jssl8nq1krc5hp55k0cm79h266a', '192.168.10.254', 1734670401, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343637303235373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('102aj80nl2iuuo5orerfce0mci19up1q', '192.168.10.254', 1735012771, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031323035383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('10vi9rvnjse5ck6v9v8flpqfg1q8jpsd', '223.206.250.50', 1756179829, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363137393830373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('18gtao78ig44tk973id0f4iee7b7pupg', '192.168.10.254', 1743003391, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030333036353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('18nlceouumu5ha792m10vrm3id53s7cf', '192.168.10.254', 1736753399, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735333339393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('1dkh2669hga9t9b6h1jbel3kbp4ibag4', '192.168.10.254', 1743056342, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333035363231343B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('1ibccprhtfr9jjm3iecnuv7opn8p82d8', '192.168.10.254', 1734927091, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932363738303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('1oofk08q3b53bvp91kcft410cm55epjl', '192.168.10.254', 1735118647, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353131383539353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('1q8fcp9nhf5s5cdfrm9k03e7ob68fqbj', '58.11.94.20', 1756722079, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363732323037383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('1s79jn6l6c96nlck8gkj2tvn9ne8l20e', '58.11.96.10', 1749299692, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393239393639313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('1sbr3j6ekoicsvm3pfhplkgp84ckg8rj', '192.168.10.254', 1742980779, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323938303731333B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('1vnk5bhrb2ok17do3t9kl1uhiqkmqpvs', '223.206.233.250', 1748575910, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383537353838343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('22dje6l1rq7rvjl9u5uc6hnhh3cg4qfs', '192.168.10.254', 1743229599, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333232393539393B);
INSERT INTO `ci_sessions` VALUES ('22hr0g0qevf39el380jcvtlkafcp1u45', '192.168.10.254', 1743177553, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333137373535333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('28rr4rin0f2orq113uutfdpe99fta8o0', '110.77.176.151', 1749432486, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393433323438353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('2955qd6uaj7g80iug8eljegdehk3fm18', '61.90.179.6', 1750726240, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303732363234303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('2e0q32dvg65nsuf9t4bfqt84t3jtdps0', '61.90.179.139', 1752907246, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323930373234363B);
INSERT INTO `ci_sessions` VALUES ('2etoikc1ia69volbj33s4jtqtskjfeid', '192.168.10.254', 1742802998, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830323938333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('2gkrg118vihnmofj0vkuvrgipjriqlmq', '223.24.196.0', 1754013540, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343031333533393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('2iefija2bsqfjmd4hqpv1ok887mbje2r', '192.168.10.254', 1742914204, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323931343230343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('2n0dap3drh59kqit8q2rlqf8d292mf91', '110.77.176.112', 1757486533, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373438363231323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('2tojpgme0rifq73mb9dhn3pl1glta7rv', '192.168.10.254', 1743069314, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036393237383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('30gemd5khnpikp3t44fs91v66o16sauh', '192.168.10.254', 1733714028, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733333731343030363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('30rhj62r2i6lqmf3dthe09qjtnvclgi1', '192.168.10.254', 1725866070, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732353836353935393B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('32og1719roa071je4fp0pchh3caolt44', '43.245.144.203', 1745955563, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353935353536333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('339se4ce9se9a1g76eqdrpc8lspjnbhu', '49.237.46.33', 1750834123, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303833343132323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('33i43u92jj7vgesg277147blolj0fls8', '192.168.10.254', 1735024165, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353032333737303B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('376cbdoaebhl2kebht87e6amvfhsn5lf', '110.164.22.199', 1747521570, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373532313537303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('38njv122i70qa9ho6pemmn9hi8qrsfiv', '192.168.10.254', 1734925416, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932353431363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('39c1lj41274j3uegvrmmf0kdgmf6esvf', '192.168.10.254', 1735010207, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353030383237353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('3b35te55spp0q0f2q3bse0759a45es29', '110.77.158.238', 1763091848, 0x5F5F63695F6C6173745F726567656E65726174657C693A313736333039313834383B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('3d52g6gvouc38kf4rngci56rgi00pkhp', '1.2.227.30', 1765608662, 0x5F5F63695F6C6173745F726567656E65726174657C693A313736353630383636313B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('3ene46clp58agn3v46elod5ecgav2sb9', '192.168.10.254', 1743088610, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038383630393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('3fqpvq1rmokg7pcf8gmqeu5mb4akjv8v', '159.192.194.77', 1757315729, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331353732393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('3gdd7j33nql61vluepjs3jucpf4a1bb3', '223.24.207.13', 1754307364, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343330373336333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('3ikouql8opno83ec4dfbdjjq7ml5ugd3', '192.168.10.254', 1742964374, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323936343333363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('3lcsknc9ro7b6cj0uiplq5jav89gakja', '192.168.10.254', 1724742056, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343734313031313B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('3litsir3jkpkgo420k2v5d4u88amft5l', '192.168.10.254', 1735181715, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138313637343B69647C733A313A2239223B6E616D657C733A35323A22E0B8A3E0B8B1E0B895E0B899E0B8B2E0B8A0E0B8A3E0B893E0B98C20E0B980E0B889E0B8A5E0B8B4E0B8A1E0B8A8E0B8A3E0B8B5223B656D61696C7C733A31393A2261746F6D6B6B7540686F746D61696C2E636F6D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A35323A22E0B8A3E0B8B1E0B895E0B899E0B8B2E0B8A0E0B8A3E0B893E0B98C20E0B980E0B889E0B8A5E0B8B4E0B8A1E0B8A8E0B8A3E0B8B5223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('3pc7qp6d00kcg0tpm9ut024o5flh94ur', '192.168.10.254', 1725948263, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732353934383232333B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('3rfb6i23itq2oktpp6much9na320e4aa', '134.236.50.164', 1758708826, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735383730383832353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('3rlroeir0bsp3dokmqehvmtd08piuven', '43.245.145.9', 1748686913, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383638363931333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('3un6ub0gg3b0ddnrr3640fjck7irj7g5', '110.164.19.73', 1759065466, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735393036353436363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('43b74ppbag3kjntc8rip2q4s3dh4rieb', '192.168.10.254', 1742997384, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323939373338333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('4782m3c6kbnl5sikv2fqnj1q9ca05n2s', '110.77.176.123', 1753330400, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735333333303339393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('4813ujqkiqc8gqo49tmqlik0oo19ccef', '61.90.189.203', 1759099506, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735393039393439313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('4g5av9ufpjj9tnu54u57un4gu9kjicp9', '192.168.10.254', 1736496794, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363439363739343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('4k7h83td2a2rng0olf1nrp0bojchm9ac', '192.168.10.254', 1743050378, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333035303337383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('4losq2es80s5c121jp5pkn4kf9fc2190', '223.24.157.48', 1755354063, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735353335343036323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('4lt0pqhuior0lbi82qaq72oscsonl8v0', '110.164.22.135', 1749392030, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393339323033303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('4p8h89ribpi3pg1sk7nl1lnlu3ue34mj', '110.77.158.238', 1763092167, 0x5F5F63695F6C6173745F726567656E65726174657C693A313736333039323136373B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('4s1r4h8estacmr7gvau86a2pvteht5id', '61.91.193.5', 1757728636, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373732383633363B);
INSERT INTO `ci_sessions` VALUES ('4tgi2deg53om0cdukqqosjnklknm36ob', '110.77.176.204', 1749537475, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393533373437343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('55k423an0rps23msud4qtrfmtb87gv44', '1.1.245.103', 1751427212, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313432373135373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('55r46m00sjdgn3l76i92olm6vc2n7tjs', '192.168.10.254', 1735008275, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353030373031383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('59avhg6eq4p610mahqqjos1bqn37oo42', '192.168.10.254', 1738656559, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733383635363535393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('59b199dfd1f3b2us6o03v8vprr3be374', '1.1.245.103', 1751430443, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313433303434313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('5adihcvqjknok60msgpn6los1rkh7s6p', '58.10.242.178', 1746026998, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363032363939373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('5agufd995n0ltq0h36vcm9qg60si883p', '192.168.10.254', 1743080782, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303738323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('5cjqkdot94koe6ro0o8s1nvio2njoi4o', '192.168.10.254', 1736753290, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735333239303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('5cu5c8j1ff603ke5lesifdn6an90npbc', '49.230.187.51', 1749645390, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393634353332353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('5dpit4g7ovk7jf1v0v87d5g24d9iufbb', '192.168.10.254', 1731643198, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634333135393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('5e9d4bu5t28dn1f7inr5bvflt7q3p88d', '110.164.28.132', 1751267042, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313236373034323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('5fk67715eugrkb6kmhbk4ro42i192l4i', '192.168.10.254', 1742954097, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323935343038323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('5fv9pjlrlsbgihs4fqem4n7cru6ikcv2', '192.168.10.254', 1741659128, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734313635393130383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('5kg18v457jjsf6qumcq969jlaosf1jmk', '192.168.10.254', 1735010756, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031303230373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('5megsos5qtj2rvcg481s0hl4r32nr9fv', '40.77.167.230', 1743469554, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333436393535343B);
INSERT INTO `ci_sessions` VALUES ('67c92e6q6nf60tqgav8v14pm40kvpjuf', '192.168.10.254', 1736754789, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735343736353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('69hnc0t3jg8ol181o2kaihjqb9ot5tvr', '192.168.10.254', 1724731251, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343733303935343B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('6a82j2kpji8usspvp1q43s3k24b7grep', '192.168.10.254', 1735026089, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353032343533333B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('6aamae8vlumnj2isrthf1kv2br7kl59r', '147.92.179.111', 1743668752, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333636383735323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('6e7bcska8sj8unpnkb5bnga82bso9gg8', '192.168.10.254', 1734427475, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343432373437343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('6hee9a9pp7fh5pt648nc0bc4ekdtrea3', '192.168.10.254', 1734925267, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932353035303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('6q475s3boq8d0tqcjgdo0ohvbrngo03p', '159.192.194.77', 1757320317, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373332303037353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('6s3rfdsg5cvfr2utbrmhuo6uq5qtgi03', '49.230.127.54', 1751957742, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313935373734323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('73bc7m4af4f2d1bhsk3kj0jh53i1ose5', '192.168.10.254', 1742963452, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323936333430353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7906p15hv2mp9r6kqqt2k0455impt6jb', '192.168.10.254', 1735181601, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138313539353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7d4cumv9c88vqebhgq0sc04ku27l6i2e', '110.77.176.96', 1750136144, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303133353833353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7gj5o1t2utspv0ta681ug9ohcfp3bm01', '192.168.10.254', 1742980491, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323938303430323B6E5F796561727C693A323536383B7C4E3B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7i81kkfomb7tadvfn5ua22usttktt6fn', '192.168.10.254', 1725948223, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732353934373931323B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7m6oah66ht7coum68p8tuptadduir1oe', '159.192.194.77', 1757318687, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331383331353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7nnua8go68vcnq6l5ftarnkutm8a2skv', '49.237.83.219', 1756284920, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363238343931393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('7o20uo5cfe4m853ai0okqm52m1f9ksn3', '192.168.10.254', 1743004842, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030343436353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7o58mj4nbi28q0o6iu1tds50ggudpt6q', '192.168.10.254', 1742892167, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323839323134303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('7oq8hsse2slm52efu3m2ftogfev6pami', '192.168.10.254', 1733888295, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733333838383234333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('7p6q76ps7bmo1oeonhd4qrht0ikc3u6l', '192.168.10.254', 1742869093, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323836393037343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('7p7sqo4kq6vskb95dsvmugjofeeds3c9', '192.168.10.254', 1736784237, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363732323335313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('7t6logp8s7gr84t6mtsk8rec556cgg5v', '192.168.10.254', 1741664014, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734313636343031343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('7v59npu85q04s7oq20u0ouc3gi3u3ikh', '49.231.113.4', 1760761751, 0x5F5F63695F6C6173745F726567656E65726174657C693A313736303735383036313B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('7vothscdg5atu9kmkeq739qbo84iouel', '3.229.2.217', 1743552073, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333535323037333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('83aks664a2n09ae30qnun7itdn9h1epv', '122.155.57.21', 1751579185, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313537393030343B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('87lvl4jtb3sbs9ea4713a0gogbmbgv8d', '192.168.10.254', 1734921844, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932313739393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('8ahemmoqfava0h2s9gtehf86984b248e', '192.168.10.254', 1735179952, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353137393935313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('8aodvtu964k3k4o76g14u0rira1oom0o', '10.31.4.5', 1743562621, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333536323632303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('8bqp08fbk717pe40c4p8l29360u23s1m', '192.168.10.254', 1731643129, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634323738393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('8ikb6493c5q0ugiqa89h7lflct6j9f13', '159.192.194.77', 1757320075, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331393632393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('8lk6g1jfjsp4nurglqi35qs08ir2qr74', '192.168.10.254', 1736717398, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363731373339383B);
INSERT INTO `ci_sessions` VALUES ('8ncj374unqs63pmf5m08i9dl6maei0r4', '49.48.106.184', 1746234794, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363233343739343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('8o87lqmlnn9sgb33oc8t2c5empo2m353', '192.168.10.254', 1743058854, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333035383532393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('8rs445g5o5uqfkht9dom9duk6uq43dtd', '1.1.226.233', 1757045534, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373034353233383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('8vefhe8uji9hgqvdqaujoqng487slhps', '192.168.10.254', 1743049831, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333034393637333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('8vp2aeh8bdghdauv501o5edlum5bkdhq', '66.249.68.8', 1743674461, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333637343436313B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('90fnso510dctsafdoru7bdarknnto300', '110.77.176.47', 1748494809, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383439343830393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('90l0spv03e5gueahnhd9ui9d2uvopnfq', '110.164.12.198', 1747525092, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373532353039323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('913qg9bsdonjjeg48c1jkhab67tgobop', '192.168.10.254', 1736753386, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735333239333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('92603vcq4mkq67ltpc29pesd4utf9igt', '192.168.10.254', 1734924323, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932343235333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('93k5diqt3gi2j0ohbv93opo5u5qk0vjs', '110.164.22.70', 1758091749, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735383039313734393B);
INSERT INTO `ci_sessions` VALUES ('9484pv4h7gejm480ljeqlqeoflmcr4vo', '192.168.10.254', 1742804674, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343637343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9491ibtm41obgvr4l7ai1ghahg43dl94', '192.168.10.254', 1735180659, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138303533373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('94sim75e1kedpeufmhnh2e3dnobfi5ag', '110.164.18.71', 1760499691, 0x5F5F63695F6C6173745F726567656E65726174657C693A313736303439393639313B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('94uj03n4647n80trpnddmu9no3qqco33', '192.168.10.254', 1743056644, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333035363634333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('96sbtqmkpd3fjhu0fb4f2h7r0stl50t5', '192.168.10.254', 1724732119, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343733313738363B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536373B);
INSERT INTO `ci_sessions` VALUES ('97oa4vhpu6hk87vrc23kfe4tnsbvndk4', '122.154.130.253', 1770086109, 0x5F5F63695F6C6173745F726567656E65726174657C693A313737303038363130383B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('984asbf6oidkfm0k0mh9f5612ein8rmb', '192.168.10.254', 1743003743, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030333339313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('9b4bg0o5vqt38a64q5qb00p4g0u7l5hn', '192.168.10.254', 1743062887, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036323636353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('9bq3le6gbno0tstq90ql89qlp47pb998', '66.249.68.7', 1743605561, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333630353536313B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9c6sfcb7soeap6atdmn64co9d9frpu9f', '192.168.10.254', 1735013314, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031323737323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('9gjp2j6pus4vteaoi6uq0o32c0njho8n', '192.168.10.254', 1731652051, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313635323035313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9k7gv7fb5b86o8snfcld0d1ko706brjq', '192.168.10.254', 1742804547, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343534373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9k8k58ulh8bgh0lkid4bqpoctev4af2j', '192.168.10.254', 1736754866, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735343539333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9khi2isq3dedk8rijhgkrb8pjtjlrgbt', '192.168.10.254', 1731645562, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634353534353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9md0bi7694l0tc9cp4soumfutr0iv8q5', '192.168.10.254', 1743073213, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333037333031363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('9oefnb8s3euprr5gijsvmpc57eaah75e', '192.168.10.254', 1731644385, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634343332323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('9por5ffb1bu62b1gtjmbte1h7g9klrpr', '1.2.227.5', 1743743869, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333734333831343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9ppnabs0go3rpv2955h8l7n6u63teotv', '134.236.55.253', 1751514099, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313531343039393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('9q7iuk3dequpmb8itcgoc83jomrjai8h', '192.168.10.254', 1735110142, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353131303130323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('9tp6lfd8i14hq9nhkeln4f0donii06vp', '66.249.68.7', 1743624570, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333632343537303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('a2duddds3dp3sv276ea4rg26pn170tf6', '118.175.45.5', 1744981957, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734343938313935373B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('a2mku2vdfke3d8v8nchve683uvcnu90u', '192.168.10.254', 1742804263, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343236333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('a7g6vhdi3gl1769qee5fagjoism7mf9g', '192.168.10.254', 1724742859, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343734323831383B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ag29t2feptjqdga35rhbm4ucmimr16ju', '192.168.10.254', 1734935974, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343933353338353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ahj5ks6i34d35lo1boo7k7s7orcvgjp9', '192.168.10.254', 1743064786, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036343731353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('akspv21gqmid2uim4gd2u42mi88h9pv5', '192.168.10.254', 1743186995, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333138363939353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('aq4f5m53acutjt0cdtp6uv6v2bugcoq0', '110.164.22.6', 1752873953, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323837333935333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('aqpr9shrlt12dgp05up28f0cnjj9rq46', '192.168.10.254', 1742974592, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323937343236393B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('aretrsammf9lnv0ji4o0gq0kch3g6g8t', '54.83.56.1', 1743370343, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333337303334333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('avemp7h02llofqsm602hk8r512r57vf1', '192.168.10.254', 1724731452, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343733313231303B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536373B);
INSERT INTO `ci_sessions` VALUES ('b0nj0j8hf70mh1jo0hvtlk2bf4865fro', '159.192.194.77', 1757316195, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331353733303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('b4khotct89n8q500mcgd9e6l64vq11u5', '49.230.148.122', 1751842456, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313834323435343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ba7qgti6u9sp3h7bf5ulncofri6t2bdk', '110.77.176.71', 1752738164, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323733383136333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('bc5furq2fv4k5t7n4aaqepuvufnu6vru', '34.194.226.74', 1743360244, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333336303234343B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('bfdaf2ipqab4kkf7974irf8ts0980hbn', '66.249.68.7', 1743668655, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333636383635353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('bfmellndmpoij5ap2r677c9crsbuleac', '192.168.10.254', 1743177349, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333137373334393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('binns5pea67q5q1v11lbvkobd7oirq7p', '61.90.74.196', 1756865517, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363836353436333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('bl7q712vo8lpdcqp421q4iedgq1ul3gf', '203.146.98.70', 1757918284, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373931383236303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('bmuqmi41803qbedv49ijlpu9bifgd8cu', '49.48.106.184', 1746283024, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363238333032333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('bmvgdiqkpbavg16dg9d7438rhvgha1g6', '192.168.10.254', 1743059041, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333035383835343B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('bquapcfd8ea1ptp6i8o6ev8bfuaumkh4', '203.157.30.7', 1759483191, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735393438333139303B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('bv441f5liquf17mgobr3qhufo99jdu6i', '192.168.10.254', 1743080785, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303738353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('bvvcebpfmscbb49gvpmp7ubilna6ioc0', '159.192.57.9', 1756351666, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363335313636353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('c1egq58k07g8lps0qhokstf1n7jcp209', '192.168.10.254', 1734926780, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932363337383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('c54ht6uob27ggtb7ou3uik545prmc8ss', '61.90.189.69', 1759110291, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735393131303239313B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('c6jgo9nb320pfqcbhqob6jge6t08cri8', '192.168.10.254', 1735108715, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353130383731343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('c9fmga92ci06fj866hv4rl981ipe5n19', '110.169.9.59', 1752459296, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323435383939373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ca530694glr1elt0aa3hfjn14tdfgjgu', '192.168.10.254', 1736717364, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363731373336343B);
INSERT INTO `ci_sessions` VALUES ('cbdt6adf3u26vkllk1n9n2l8m9cc9ub7', '159.192.194.77', 1757319130, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331383638373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('cbegf733m68dg90teurs7r57anf39eg9', '192.168.10.254', 1742981351, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323938313335303B6E5F796561727C693A323536383B7C4E3B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('cgfb6433n4critspvr3qjn4obgdodhqq', '192.168.10.254', 1734965728, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343936353635323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ci03bab5kioas9rpu8o12241l21mbn0f', '147.92.179.114', 1743670634, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333637303633343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('cibtuhreuibdlr6ie0doojaktvlfrhcd', '159.192.194.77', 1757319629, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331393133303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('cie1j397bnbgml48oand6doqclodn2dd', '192.168.10.254', 1735029983, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353032393937363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ciei8j19up12v70bvo8tr84nr8fdvl7e', '49.231.55.73', 1745065749, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353036353734393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('cjllrbm6tictalusni7qjfstsgci2abe', '61.19.1.203', 1758157989, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735383135373938393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('cl3566fbhbpifp95npg38bf44egc892r', '192.168.10.254', 1735016121, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031343531393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('cmt2cf44rb844o9ulsof06dthcnh65hm', '110.164.22.68', 1757906853, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373930363835333B);
INSERT INTO `ci_sessions` VALUES ('cnj8eq11q0b76h5uq1tnhcto33gfgqjb', '192.168.10.254', 1724732303, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343733323131393B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536373B);
INSERT INTO `ci_sessions` VALUES ('cnstmqi1qjc38dkguh9t7oufofleiv6k', '58.10.230.218', 1747295239, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373239353233393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('cobpkm7v97a4067oa6sed00gdnl3unej', '192.168.10.254', 1731646971, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634363637393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('cqc5e18gmsq2fnt4fno86oi6tpok2rdm', '159.192.56.47', 1743387097, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333338373039363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('cuubgupu2rkevsdlt9lhvg8giirlrj76', '58.64.62.101', 1750465192, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303436353139323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('cvb3tmapj1gd26a0ssq822o7pvvmbct0', '192.168.10.254', 1742964906, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323936343836363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('cvb7acvekn63tr85ns6frikhpd34959n', '192.168.10.254', 1731647133, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634363933363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('d2t3mns62mrrq2227pjak0o7o3ovn9mh', '49.49.216.72', 1745489602, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353438393630323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('d3caed89qke39rvjnv322utjfvrpnbsa', '180.180.61.140', 1743519182, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333531393039333B);
INSERT INTO `ci_sessions` VALUES ('d40rnip2gdd6ou92g0cutc3j7gthlqo3', '192.168.10.254', 1736496874, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363439363837343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('d44o821sagctmp26412hjnohrrefu807', '203.146.98.71', 1756078905, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363037383930353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('d9midsesqadna3lm4vlncgdfof9s2mrk', '159.192.194.77', 1757318315, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331373839303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('dcqeotq1apb1dc2slffi4pnparrp1gia', '192.168.10.254', 1743117287, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333131373238373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('de67fgdj1vpknpvsdo4a1ikdrvrsfc03', '192.168.10.254', 1725870770, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732353837303630373B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('dhdjoicbrjilm4se62vhc8413ai53jir', '192.168.10.254', 1743046230, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333034353939323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('dlrbqc0j8iq5ns7v2474s15em0a0hv2s', '192.168.10.254', 1735013816, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031333331353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('dmlql0r4rqf7j1p4q9eq04b9o1l20857', '192.168.10.254', 1735181304, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138313138383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('dnv9l6njt13unfmec52np9sqokpqemkr', '192.168.10.254', 1734927547, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932373039313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('dpab00p5ab45jbogqu47mt347gq594qt', '192.168.10.254', 1734683371, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343638333137383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('dq904ucsdc6gn74h7uaqjf24uo3r9rsh', '192.168.10.254', 1734680032, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343638303033323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('e07jrk7sr0vldl4l9bt7lnorr7cq99kc', '66.249.68.1', 1743644502, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333634323439323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('e0v7apg97e8bi3tteqntrpfl5o5f1fbv', '192.168.10.254', 1735030277, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353032393930333B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('e1jf2sakjan1mc71ij3fei36klm29a35', '66.249.72.8', 1743569987, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333536393938373B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('e6md0e9dajksfghqgqonatn3egphs4a2', '192.168.10.254', 1733733038, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733333733333033383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('e9un7p01ktpjrunvdn1joag2h4hjmp2j', '182.52.134.22', 1756800001, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363739393933343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('efkrtoescuottd937gh6qvf86ru64u0v', '61.90.189.69', 1750732439, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303733323433393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ej8e3vrqmlhpiorqdbi0n5dhkul8hlhl', '1.47.151.46', 1748579274, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383537393237343B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ekvdirrkc526n7at4uo7v1s269olr8m5', '23.23.99.55', 1743381076, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333338313037363B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('elfp9pc1ohtbqsiptqjto2nep36faprn', '66.249.68.7', 1743629200, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333632393230303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('emltkidgnn0ijjsduglv5edat1n4va1i', '192.168.10.254', 1743041760, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333034313530323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('eplc5lf2fgruhe2os8pg84eat826r0si', '110.164.29.7', 1748618665, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383631383636353B);
INSERT INTO `ci_sessions` VALUES ('equkganrtfbaklvfofkn40um8cmtrnhv', '110.77.176.74', 1744096563, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734343039363536323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('esdg8q0teaa1nfrhanfvirhg118ij8q0', '1.1.245.103', 1751429978, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313432393937383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('esfm2unclgf0ig4aac0i5ut27ev7m89h', '192.168.10.254', 1742805200, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343939383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ess0q9cm1n8hbaoj6i6m9dv4r3hhrk2k', '49.237.76.171', 1756303394, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363330333339343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('euf63kc16vap91dat4djie3acliko5o5', '192.168.10.254', 1735012058, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031313734393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('f2r56gskk2oqa1qmctmqimg5kq459vub', '49.231.55.8', 1748711369, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383731313137363B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('f4b0618deuta58a57c385klh25hrj965', '192.168.10.254', 1743257407, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333235373430373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('f5k2mk9a7r40ncq752grb04r12i45211', '182.232.91.114', 1748570001, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383536393936343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('f7epmk5rhj2dtijmm854eoridmefgung', '192.168.10.254', 1731646364, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634363334333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('fbnu51c0ofl94k745vhs33a7o2he1h2u', '49.48.120.171', 1745757140, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353735373133393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('fhe34eb1ceg63a9s0cqjm2s3jnmk15rp', '192.168.10.254', 1742806298, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830363239373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('fod9v9mbru70cos4iman8lbe166g46nn', '49.0.84.117', 1751016570, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313031363330343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('fp767mhejtp458eegv57urf4uqck3f24', '192.168.10.254', 1735110039, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353130393738313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('fph2nhragivk863fqrdi8j43s3q8h966', '192.168.10.254', 1743080835, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303737393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('fu6qca4gl7k47lc5mo0rpiffmu7d1l6p', '182.232.97.4', 1757433993, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373433333730373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('fvl6qg9ufbi2nut05giavtg35t831qel', '192.168.10.254', 1742805324, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830353132313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('g22s5nucg1s9q978bkr5pco4tfj705pq', '192.168.10.254', 1724902209, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343930323230323B7C4E3B6E5F796561727C693A323536373B);
INSERT INTO `ci_sessions` VALUES ('g2mi9s8bgvk9fgfjvasq5fv8snnu32nj', '192.168.10.254', 1735032801, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353033303733303B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('g3uif2lm3c8hg6ab5vosetl6g6j573pj', '61.19.1.202', 1751353606, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313335333630363B);
INSERT INTO `ci_sessions` VALUES ('g9q4atq0bn71lktuhbk0fcr4h8u6lugf', '43.245.145.200', 1753453968, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735333435333936383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('gd70ua0up9cjqrp1geicfmf7t967rbfu', '172.16.13.152', 1757494592, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373439343539303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('gdtni4n6qvbm5cng0ddfndjmh793obfa', '192.168.10.254', 1742982528, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323938323532373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ggfrp6q2ue9qdtfsotkuci3h4ceitu73', '49.230.127.54', 1751948652, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313934383635323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('girr2u36c64nmq0567t1ul7f2pjecedp', '192.168.10.254', 1734927886, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932373838363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('gjok0l2qvuvd9t82ivgftm1sdonq01ig', '203.146.98.5', 1747458468, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373435383436383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('glq2i9sr5693amkcl33sq5o3o8p27ksa', '192.168.10.254', 1735183052, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138333030323B69647C733A313A2239223B6E616D657C733A35323A22E0B8A3E0B8B1E0B895E0B899E0B8B2E0B8A0E0B8A3E0B893E0B98C20E0B980E0B889E0B8A5E0B8B4E0B8A1E0B8A8E0B8A3E0B8B5223B656D61696C7C733A31393A2261746F6D6B6B7540686F746D61696C2E636F6D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A35323A22E0B8A3E0B8B1E0B895E0B899E0B8B2E0B8A0E0B8A3E0B893E0B98C20E0B980E0B889E0B8A5E0B8B4E0B8A1E0B8A8E0B8A3E0B8B5223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('gt6p1crf90revijmb119etnji5bfdoe9', '110.164.22.68', 1758556517, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735383535363531373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('gtm9dlp69tfgl503p3lc6aka9oulliao', '49.0.84.117', 1755232200, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735353233323134313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('gvevkuad88vu3f65ulb9f63c0h7ijqin', '1.4.199.95', 1750836024, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303833353839333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('gvs5hde0gol657dg19ca45qi2nn4imvt', '192.168.10.254', 1743068323, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036383233313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('h39im30cer76n8garrgmo5l9ebfgbnel', '192.168.10.254', 1731645367, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634353333343B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('h5f1ie8iivrbhmed0ik1unvatqbuoapk', '1.1.243.159', 1745290300, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353239303239393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('h64psslhdmo8kps4ka30damh6fpplj62', '192.168.10.254', 1742913803, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323931333830323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('h7mlmcvkktsf1vl76qbblp5uep7mf76l', '192.168.10.254', 1724737935, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343733373735343B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('hdf851lcp84qp1crr64882bkn50bhldb', '192.168.10.254', 1743050792, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333035303639323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('hff7l22p3tnu3bdl4l7nklnflal58vdg', '49.231.55.137', 1752365936, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323336353933363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('hmm3ebii2tbvrnemv2pvdoo6265eooo9', '1.4.199.95', 1750829625, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303832393632343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('hnerpgqvmheu3m169j4vagqpi69rcl7c', '192.168.10.254', 1735014519, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031333831363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('hpcc5e9s4c4aq07p02mlb8lkm87cg188', '192.168.10.254', 1743067789, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036363939373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('htbv1i0qkthhooh16i8nhisku31bclag', '192.168.10.254', 1742958216, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323935373939373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('hu0rc14iud6ueq350tfj2ba156q2dbdh', '100.29.107.38', 1743355682, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333335353638323B);
INSERT INTO `ci_sessions` VALUES ('i07hm5psoh5k866hc2gor4k9g6sa1sg0', '49.237.9.80', 1748621895, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383632313831363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('i24nqgt94raptlepr12co5g335qsmo4m', '192.168.10.254', 1735024502, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353032343136353B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('i3481hdamgh88dgavd23pms1nvm21aum', '110.77.176.96', 1750132838, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303133323633393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('i8rfce2cmmai58p25g5881kusu2atrku', '192.168.10.254', 1742958570, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323935383537303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('i8tp1epqhinqimm8nuj7pburrjn5jkj0', '192.168.10.254', 1735029903, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353032363038393B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('iac638hg8ag7hhg84r3k5mve2au4u267', '203.146.98.68', 1757499277, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373439393237373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ibf4dd44t8lqnr62gkosmo4vtlnkbus1', '192.168.10.254', 1736717316, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363731373331363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('id09dn797185ps8nu58i141eilogkp5p', '192.168.10.254', 1743068231, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036373738393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('idmc4ldiocnddnviv3u4hk0g6hdj92j3', '192.168.10.254', 1734682279, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343638313936333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('igmkdf4fc1qujsg0fm2fc0stb5v2eo5i', '110.77.176.112', 1757486602, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373438363533333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ihg4s7a6irki224rfsp8jta5j6q1cteq', '192.168.10.254', 1743080785, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303738353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ihmr6mps6847g4qvqgl8i6688bf3udfl', '43.245.145.138', 1750756166, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303735363136363B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('iq5m1psi34chj8165v3p6d1k6u1t68eh', '192.168.10.254', 1742809041, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830393034313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('iqnv4m1mjqpn4ekv26h68lll5ig45b8t', '192.168.10.254', 1743069278, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036383630313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ir4tsg4fpgpe6kc0ht55kdv0n6sg5ldh', '192.168.10.254', 1742882678, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323838323637383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('j0li7spbgd3cd5uq0nu7ingttmhss1a8', '192.168.10.254', 1743004998, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030343834323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('j5cskftvrbcnhs3bcevjv80lqvmv0jr8', '180.180.145.91', 1744202802, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734343230323830323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('j5s2i04qps07gdef4pru293cn867aeeq', '134.236.55.253', 1751512870, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313531323837303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('j7q5vjg9kl65jh056smjm6m9hhm359ot', '1.1.244.24', 1745996962, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353939363936313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('jf0r9bmpbqqtjeq2ue6ci8jr3ggsku1s', '192.168.10.254', 1733381972, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733333338313735363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('jgc7d7njf5bj5btbv8c2kffbtn5r1eun', '49.48.138.73', 1757564086, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373536343038363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('jgrdmni6smnkrv1fl4iouuu2je6hm31s', '101.108.209.38', 1752026512, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323032363431363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('jj3tdb4fcffmv9mttbre9bb8suturui0', '43.245.145.8', 1758483990, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735383438333939303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('jjgno8uhjgfm9j5pbmpjhcdjgafc72fk', '192.168.10.254', 1735016204, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031363132313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('jl0bqs1sg36hcbmebfbniheavdtkb705', '1.46.20.115', 1752645745, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323634353734343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('jln6j2mlk0rq6h7v95ptq952rtr7sqoq', '192.168.10.254', 1736218364, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363231383336343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('jnusr0rl1vdeh02a7n9gkjpbbm3co1k1', '192.168.10.254', 1743125910, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333132353930333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('jp22s9nsdbhcvu34emjc5i2bnvls8beo', '159.192.194.17', 1756194955, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363139343935353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('k2l4tgg2upapj0rv70di1j1cqnfkbom0', '192.168.10.254', 1734335887, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343333353637303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('k6qeaefiuioaqtab6t5nt2b0s3eoo6o6', '49.237.76.171', 1756304311, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363330343331313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('k71336hfuhsac20oaau3rdoca9buoko2', '223.206.250.63', 1756439755, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363433393733333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('k8qcugj86720a4nqrcfqu65alk842sp7', '192.168.10.254', 1734936306, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343933353937353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('kejuprupobl6i0i1f72rubkj7p18ph9u', '66.249.72.1', 1743558789, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333535383736383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kerh569l2t5dcud74uhdr14lie9s59ha', '3.221.50.71', 1743474842, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333437343834323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kfq7e8g15plp8m4fpfobe7akj1sac6ds', '159.192.194.77', 1757316956, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331363539383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('kg9oqjk107dqj9nk4mnjohsn5u3vkm9u', '159.192.56.191', 1755163537, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735353136333533343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kivjdnag9g8f712ult5kq909m7dof7od', '192.168.10.254', 1736753518, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735333234363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kk44idevs2u868j232va10b751r178it', '192.168.10.254', 1731646983, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634363938333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('kkhs6vo9cnmsdmg8v4vgdgdhmp6vguuq', '1.1.240.242', 1754457992, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343435373939323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kovic79ne6bhkkklcfg0srpnf2o73t1l', '49.0.84.117', 1750231685, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303233313435383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kp1itunf3fp2l6rh4qochvi2lohnbu0e', '192.168.10.254', 1742807427, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830373430333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kpm740hakktm7v4b8plekfrsbi7p418v', '192.168.10.254', 1734935167, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343933343931323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('kqjvijrq721p2ta97bahtl8g6ej7osus', '192.168.10.254', 1736755157, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735353130363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('kt9gtt5i9ktbmqlc9skepqqp2ktnln1u', '66.249.68.7', 1743600769, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333539363935333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('l0ondlvhog3290lshne3cp9ife7cdn61', '192.168.10.254', 1734965652, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343936353233383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('l597vos11b5of5jqc0n8nqthueg2dulh', '27.55.70.195', 1749172959, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393137323935383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('l5n3vl53h41s76o8ht7lt5jnv24cij52', '192.168.10.254', 1743245983, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333234353938333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('l5n98l1l81vjkkglppr4b9o0eh4k36ro', '66.249.68.7', 1743650800, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333635303830303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('laiujl5hbatv28pbom58v3a4bv2gqc6c', '192.168.10.254', 1734924043, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932333737373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('laqv12kh6hvm4jfj0a35i28pgqo239r2', '192.168.10.254', 1731646222, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634363231333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ld6ejusnosvb091qml25lkfvap9hlctf', '192.168.10.254', 1743080778, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303737383B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('lhbqt3cj22n326apcjsvruvqnc8ctp45', '192.168.10.254', 1734926019, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932353732313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ll6u1l5sitsdf860li5mvqvkd7t7kmt0', '66.249.68.7', 1743603422, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333630333432323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('lln4i7jtn3274tchuavc3gng5unscv6a', '192.168.10.254', 1742961852, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323936313835323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('lo86j0vr40g8afda8nj1kcmoi8cuppk2', '192.168.10.254', 1735189263, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138393030363B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('lr7qrl2uvlf3i4fuf3bquo8dug4pk1mn', '192.168.10.254', 1736739010, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363733393030393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ls7a787b19cih2dankt2gnbiir3s6ebg', '49.48.106.184', 1745923082, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353932333038323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('luhm9g2ft2aq3kqgu0v0mf1cbhjs8dop', '110.77.176.64', 1750218755, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303231383533383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('lumf7vh8ttsei49knhlta4f8inp3lgfm', '1.1.224.221', 1752062782, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323036323738323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('m2168r3udm3ag9q0r3qnvnfi0ckk8aj0', '192.168.10.254', 1735181757, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138313537373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('m4k578g72039id4qctdlbn66c97d2s3d', '192.168.10.254', 1742804924, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343638373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('m5mtter3ib7b5vln5i1h2eimv82u7o97', '66.249.66.19', 1743681790, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333638313739303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('m6kpr2vv6pbvh6g0trhg2m257gpkvlr5', '192.168.10.254', 1742958576, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323935383537333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('m7g8tjpgrh6e3rkbt2rpck49q9qquhn4', '192.168.10.254', 1742804803, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343830323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('m9pmgddfiuoh5u733ue5t6kgeit0ovso', '66.249.72.7', 1743582515, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333538323531353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('maias85vuoa1sfoqgrn5asvl7sllpl07', '66.249.72.7', 1743576527, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333537363532373B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('mbike0ig4938c7i2na9hsd3psngvs4in', '61.19.1.198', 1750565783, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303536353738333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('mcf8pkeo6iv86g1sa4172gq2sqf8ghsl', '192.168.10.254', 1724742198, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732343734323035363B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('md6u7uvteeo8a6dntvhk4k6khsu7coqo', '118.172.143.216', 1756800945, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363830303934353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('mglfm0rhnuh7ske1f0eogtbuts305vbu', '192.168.10.254', 1743004050, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030333734343B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('mh7a4m9bn7eo1oaiifrr246gu2obs47b', '192.168.10.254', 1742805092, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343735353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ml7s4lp6moqeubau4b7fbb7g0iir1mh9', '192.168.10.254', 1735029975, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353032393435323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('mnqf162p5tp26e6p2usqh8hoirbe0d00', '1.0.215.239', 1748227416, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383232373137353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('mqtigua1iek8n3la98f4dmjkamqu4m6r', '192.168.10.254', 1743003065, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030323735333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('n0ngi8gpdh809rpt5mc5aaq0q78s2r28', '66.249.68.7', 1743638339, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333633383333393B);
INSERT INTO `ci_sessions` VALUES ('n1i3b4cqskp9og6m0qoojspqlllmn11n', '184.73.239.35', 1743329502, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333332393530323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('n1n2rdn4jnop09mgmlcbfgmbqad80k2i', '159.192.194.77', 1757317531, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331363935363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('n1s9vb5420m57q968r8abd68thihjlfm', '34.225.138.57', 1743324348, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333332343334383B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('n3pfqvb2be4q49bb6th3s6362qjo1ai4', '110.164.18.68', 1756212180, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363231323138303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('n466ggba10et9gpbv73cnqi87s03t1mv', '183.89.219.55', 1754278031, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343237373939323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('n8563m5pn0b8veof85hvv1si3n8ducqa', '192.168.10.254', 1742914278, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323931343237383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ncejluiva5p4a3toh2044t2870qd6sf6', '192.168.10.254', 1743080784, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303738343B);
INSERT INTO `ci_sessions` VALUES ('nd8ftnge2sa7r0htjsuvbr3d1hansp12', '192.168.10.254', 1742956376, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323935363231303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ne2h4jh9ildis7d5jjs11pbrbh71q701', '192.168.10.254', 1742805879, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830353638323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ne73hvqo9i45u1r1kl2p9s3se1af6aup', '1.47.151.239', 1747645333, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373634353134313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('nhak3qh5l4n4qhcr8u2o2k2o5vnounl7', '192.168.10.254', 1735285942, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353238353934323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('nhft3aa4eqdb9uirn2juv2a6sm1gkm80', '1.1.243.138', 1759732024, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735393733323032333B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('nl91mk68j66dm7osl9kcsnsrsoeptd51', '192.168.10.254', 1742957157, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323935363931383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('nrveqsbeblpe4cd68dr9lie6fn43la7v', '66.249.68.8', 1743626368, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333632363336383B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('nt97a7eh709k7tp448hgs295hisrc9dr', '192.168.10.254', 1735181261, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353138313236303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('o4sb8c8gv10pe50safu5hu85r7nf3fm7', '58.64.62.101', 1751379912, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313337393838393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('o5v61smdt0vl3b8q6ce9g0kpk42gjvhk', '192.168.10.254', 1742913345, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323931333334343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('o6mqum6pd96e5t82f9l3lieetblsd3pj', '159.192.194.77', 1757316475, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373331363139353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('o7ls53nab2niqt63ruvpl4ahedk2os6c', '192.168.10.254', 1742804264, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343236343B);
INSERT INTO `ci_sessions` VALUES ('o8q00o863st9c93vcasgbjppnt7puhkj', '43.245.145.201', 1745923944, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353932333934343B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('oca56sbvs97aajso9lt3fvglfflu7vc9', '192.168.10.254', 1731644285, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634343030373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ofvjfrdts45j6g9qioqs9qiansj7b4mr', '192.168.10.254', 1742964336, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323936343031353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('oh5gfm6udssqhpebqf245vpn1miod53k', '223.27.237.5', 1750754426, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303735343432363B);
INSERT INTO `ci_sessions` VALUES ('ohjlqbvqkq26nneti31nvp70o4n3k839', '192.168.10.254', 1731644738, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634343731373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('om1qkk0ncfd43rej1pvjjac68k17sg52', '192.168.10.254', 1743080783, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303738333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('om942jlr4dfa4gkbb5mol9fo28b0fndm', '192.168.10.254', 1743174706, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303339323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('omd740q5k0tng5lfo1b6oe4r63d2iroi', '110.77.176.112', 1757486212, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373438353536383B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('omn5hep4i6t8hq6k089hm57j2pset312', '192.168.10.254', 1734682944, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343638323636343B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('on4icsrkkf6j8dv2oka0mfi7lentsp6h', '1.1.231.90', 1752826873, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323832363835363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('on4mv3054q9klob8lrhs9l2q76cgsmtc', '43.245.145.10', 1750731774, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303733313737343B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('oqbv2sb8sbhe2hubhe7eqlft1pqpicg1', '192.168.10.254', 1731568404, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313536383332343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ots754sd8slgl41m4itab7id8b7ojn9i', '1.0.215.48', 1751526965, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313532363936343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ovve02o6632gt025rtagseer6r8tv497', '182.232.66.141', 1748234795, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383233343739343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('p10tfn6oblfcb139ncm8foemtg1br1jg', '192.168.10.254', 1734927885, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932373534373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('p45gqph8cklp9hvnhe7uprpphc6bfbbt', '49.231.113.74', 1744285572, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734343238353537323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('pe2fgjdptjqoqvuk8pr7s5cbl7jdvt7i', '110.77.158.19', 1757667777, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373636373737373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('pfmeto53g5drb8c3d8akcdg0iqa492jp', '110.77.158.19', 1757667782, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373636373737383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('pg9dr6eibftbef4jvl3r11ptcnbfp3rb', '49.231.58.199', 1755580732, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735353538303733323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('pgqrpr75pln61bhijiirknl9sta8grgv', '20.26.44.173', 1743440258, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333434303235383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('pi7r1l3clj38vej6fnbie1r1b4h3t8j5', '192.168.10.254', 1742974601, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323937343539323B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('pn14vq16crnti1u0oefnc1kpgq65dob0', '1.1.245.103', 1751425250, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313432353235303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('prll3ns5e6q3mcg2or3g7jj319ud4u0s', '192.168.10.254', 1743040839, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333034303833393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('pvgrel5dmfd4n2lc6c7024obj3abfat0', '192.168.10.254', 1735111551, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353131313535303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q1jielu8timgt9jbe0jtcs0phk7ul6um', '159.192.56.26', 1743740458, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333734303435373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q1sjd7fsc746k8euo8tcq4mor737vf25', '66.249.68.7', 1743671222, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333637313232323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q204n24v1dechtte30bsauv8b8mmi4lj', '192.168.10.254', 1743174742, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333137343734323B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q2v2e266tv094ivrvv68r3mi7925lfk8', '180.180.220.241', 1754060616, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343036303631313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q4eealmlet8s9q6bk978sssa4kch65fj', '110.77.176.81', 1749000600, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393030303630303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q54m6c44lo3suk1a2bikrcdpe0j39ofj', '49.237.74.71', 1756257592, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363235373539303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q5f1dng7pno66rcn43s4uduo690o1vph', '159.192.56.172', 1751874907, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313837343930363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q7f2u8pne1k82661vsfdhrp7vtim2b6q', '110.164.4.148', 1756560846, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363536303834363B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('q7sddkqt9ugfh36647qegh8sp4f8cfdc', '192.168.10.254', 1742980464, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323938303239363B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qasnfqti868jerg6slfga64l4bvmpjvk', '66.249.68.7', 1743618400, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333631383430303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qbb901nd4i35d7crdv0gh320heiul3p6', '110.77.176.198', 1747111750, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373131313733393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qco6jc96oul75j88fdc2vh7qsmr451sk', '182.232.103.59', 1757478841, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373437383834313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qg2imi8q9ponari2u279g2p5vu1euvth', '1.2.230.168', 1755489326, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735353438393332353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qis5t6rs0cgvdf3ff8s4guc0u1kqafbi', '192.168.10.254', 1725865958, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732353836353631383B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('qqfu75k9h4hp2pe6m6oqbl2heobk6ogg', '110.77.176.81', 1749000600, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734393030303630303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qs5mk63u3icpe2nm7nod81qaqhm1q4p0', '66.249.68.8', 1743676650, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333637363635303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qs68mdcppf4jgsi3f321g4ms3gea4jqn', '110.164.22.133', 1750428927, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303432383932373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qta1nuv9d39o96ff39rd2975i2mo3bi3', '110.164.22.70', 1751313185, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313331333138353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('qtcgbgqcihkrk13ptc3gepvc6d82f2hi', '192.168.10.254', 1743065575, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333036353337393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('r1059hg3jomt3hiha9hi0bcgo01k3m7j', '192.168.10.254', 1742805966, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830353839363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('r1o38drop8q9fq8gbtogp92di1rnug9b', '58.10.48.181', 1751958773, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313935383733303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('r4ml1ga99tb28dbu03ld2iggdmee8k51', '18.215.77.19', 1743512800, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333531323830303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('r8pkjh445uq720ugcfu201no3p3rg3up', '192.168.10.254', 1742808905, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830383930343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rfgk6dp50qia2hphkf58djeep5iuquv5', '192.168.10.254', 1735118627, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353131383632323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rid0lq2jgs0gqhbhfcnpjvl0ibgclmic', '192.168.10.254', 1732079001, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733323037383939303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('rk3g34eaiqbe95jqvpval15e4rlv4v80', '110.164.22.9', 1755741405, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735353734313430353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rkj2fqttjnhmg0vsuvp66a26d7q8trg4', '61.90.189.70', 1757640373, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373634303335363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rl11fm4r6ui5fe809v3hg5rof34qvn09', '66.249.72.1', 1743558461, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333535383436313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rlg1r02dunignsr13mgn2ri5r7qpifll', '110.77.176.236', 1753838487, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735333833383438363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rm6lkm4rk7tf6nmpcugsk6va3qt8e4ue', '192.168.10.254', 1743002753, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030323430373B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('rmqr8sln4di7j0ijpbhvr5n4q85kj3v4', '192.168.10.254', 1736753344, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735333132313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rqafo8tudjeeu9v4es1ep2cafoqftli9', '192.168.10.254', 1734682371, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343638323237393B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('rqdg7e310u4eaj9n3u04mkedefla42s7', '192.168.10.254', 1725863544, 0x5F5F63695F6C6173745F726567656E65726174657C693A313732353836333431323B7C4E3B6E5F796561727C693A323536373B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('rr6kt35966ja02p4c0q494o388k3oq09', '192.168.10.254', 1742804549, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343534393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rrnuj7dnf8sg3h32i8dj1h7ja8dtd7io', '49.237.14.212', 1755767035, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735353736373033353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rt1g2h8kf8ci0h63cemr286kiarpe5oh', '61.90.189.203', 1750500305, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303530303330353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('rttgvmhcekfbrrss9sdk91c50blvi3b5', '110.77.176.96', 1750132946, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303133323934343B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('s1u59arh1744mrgra3t05rupdj3hs6pt', '61.90.179.196', 1746619509, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363631393530393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('s3akitag884t6jisbtbmatrckprhu1vh', '192.168.10.254', 1742871669, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323837313632383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('s4f1hn4ffuor7b5kdva2gk84h8277ou3', '110.77.176.96', 1750136172, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303133363134353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('s54683pk0l81n7pmlqsavqsebd29d9au', '183.88.239.226', 1757663858, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735373636333835373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('s65ov1c2avl01394pse1v30oj7brulh2', '192.168.10.254', 1736753644, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735333433323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('s8a1ft4qdh6sddj01j0569r7l8hik7lv', '192.168.10.254', 1742818767, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323831383736373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('sb083a4npg7uaov5v1sil44q4ko875th', '192.168.10.254', 1736303109, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363330333130383B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('sbs5vn5gd9jt4blifpfd15sghr63sgfs', '66.249.72.7', 1743572146, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333537323134363B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('sdd2onqi9i3b8epsi3rrui71vnal9fte', '172.16.12.103', 1758773397, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735383737333339363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('sdo8iv2gpmh6u03rihlvtetfvnb6aov0', '192.168.10.254', 1734929630, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343932393431313B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('sifadnt6aorg30f02mfb7rouhs23ot1u', '192.168.10.254', 1736717398, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363731373339383B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('sls2evv4d7qe4mbpeo1isbaa5ldvuqa1', '223.206.233.250', 1748577687, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734383537373636323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('snhvb3qo779aflgi6c2lf4069vuu2qee', '192.168.10.254', 1742956210, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323935343932333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('sqmr4oqcq4c8fb14tq40s193fefh6bhb', '183.88.215.176', 1754388898, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343338383839383B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('srvclhis5mffi066np5trepltnd27blr', '192.168.10.254', 1734334968, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343333343932323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('ssnua5j1l86qgu1oir6sop0ulimt8gad', '192.168.10.254', 1743131698, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333133313431353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('t46g83s01rp44hn9cm5liar76cl1umru', '192.168.10.254', 1743070377, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333037303334323B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('t6s9mkmsqb8jc488frkp8npi6r71d5hs', '223.206.217.128', 1750778016, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303737383031353B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('t761noe30m55h7hcvrmtepi2m8ao0aik', '192.168.10.254', 1735011692, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353031303735363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('t7psjghe1mn8hpgm5fhvl21d7hmqbk53', '192.168.10.254', 1734936512, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733343933363330363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('t9nl0luge8t07qfhn1nm6re1qa3pp1iq', '192.168.10.254', 1736753281, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735333238313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('tce6j30hap54ltr0g7l6t9m9821ofdnf', '192.168.10.254', 1736754777, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733363735343735323B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('td6l0b30tg4m4pm6d3oi4v8rq8fdk5eo', '192.168.10.254', 1743050593, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333035303332353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('te4cmdqt8dsfmn1dkkp3igvnq6jv5to5', '43.245.145.136', 1747990621, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373939303632313B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('tenoautskrmnaufchsfg998ledqsotjq', '159.192.56.95', 1746761037, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363736313033363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('tirbnfmq3o4nj7bmn2udj8308tgj89h4', '192.168.10.254', 1742887171, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323838373133363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('toofn079fn2c5n4d52e6747c0r2hg50d', '34.239.197.197', 1743523251, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333532333235313B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('tpb4o6pf6i7kjet9cp3pnmmiffe0v447', '192.168.10.254', 1742914200, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323931333937343B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('u3llt0v7r2d9pjrtshm66eo7l8tce81s', '110.164.23.7', 1747501130, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734373530313133303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('u70mpkhe8paffkseq17ssjlihk90454m', '192.168.10.254', 1742805745, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830353734343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('u74175lg3s7425q0alc5q9mmr5ect4kt', '192.168.10.254', 1743134938, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333133343636333B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('u93kgmenhgjeavi49fn0tndts4p51b5c', '1.2.227.30', 1765588078, 0x5F5F63695F6C6173745F726567656E65726174657C693A313736353538383037373B7C4E3B6E5F796561727C693A323536393B);
INSERT INTO `ci_sessions` VALUES ('ua8rnjt4vfviqh1vtij15g2u2ihibi5p', '61.90.179.199', 1754725886, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735343732353838363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('uaks4vdrqldumcp9ivcu2id9brsjkcuk', '34.195.248.30', 1743366499, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333336363439393B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('ubdnde34t1uf3o3444u48e7olhe8pqhm', '192.168.10.254', 1742853690, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323835333639303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('uc3453h78drs0g96ans6fdaa6nvpdfem', '192.168.10.254', 1742808201, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830383138363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('uhmf2bsi2474s524eqd6vr2qefi07cjj', '223.204.15.215', 1752206690, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735323230363639303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('uncod8l08o1l9s6tg7a399d9umm23jsa', '192.168.10.254', 1743134966, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333133343936353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('uq121r11juhaud716d3k650jfrji9l89', '110.77.176.64', 1750211450, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735303231313434393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('uspcml5lo88p5cubh4518fd1o62e7r92', '1.2.224.195', 1744268150, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734343236383135303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('uvc0nqh2dcktnmk0gvl4hlo4vse20obi', '1.2.224.195', 1744267972, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734343236373832373B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('v06s0cd9ff000guaaeq8pjcncthu9v52', '192.168.10.254', 1731644003, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733313634333730363B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('v0904h24mssqq91o3pqjvpbq2jvip23c', '192.168.10.254', 1735118480, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733353131383238333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('v0lqde8bdn4gihpbi8oljjss8391ughg', '183.88.215.176', 1746692486, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363639323338343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('v2f8sj7lua7af1fitv2sk09iqvd9ilel', '192.168.10.254', 1733382276, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733333338323237353B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('v60l2ai9lbi0crrapod4ps6b32vneac7', '192.168.10.254', 1742804566, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734323830343536363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('v8v17mdhhcu0ngsokg2qmnkmgl9h1num', '192.168.10.254', 1743004465, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333030343035303B7C4E3B6E5F796561727C693A323536383B69647C733A313A2237223B6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B656D61696C7C733A313A222D223B757365725F747970657C733A313A2231223B6C6F67696E7C623A313B66756C6C6E616D657C733A34333A22E0B8A3E0B8B1E0B895E0B8B4E0B8A2E0B8B220E0B896E0B8B4E0B988E0B899E0B982E0B8AAE0B8A0E0B8B2223B);
INSERT INTO `ci_sessions` VALUES ('v9mt91l0b6putk2fbombedoofi811g0k', '49.230.46.98', 1756362835, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735363336323833353B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vbcbiki2ifgvi8rugisu83jtec58abl5', '49.48.120.171', 1745749051, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353734393035313B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vbml4tr6ik3lr7cpvlsaulohhske7hf4', '192.168.10.254', 1743080780, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333038303738303B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vc9pgt7otbbhkg81hnmfc8h840emfp8u', '18.214.238.178', 1743547464, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333534373436343B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vd17lsuqe9bp2s8er41veocvnbi8gpf9', '66.249.68.7', 1743679983, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333637393938333B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vg598otj71s6pdav9dl415vhef6bplri', '1.1.245.103', 1751424377, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313432343234303B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vji84cmbeogoolav0brqacss3bqrpl56', '66.249.72.8', 1743573826, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333537333832363B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('voscfonhiumrreuciae7vm3sm92mcvo3', '49.237.10.87', 1745916164, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734353931363136333B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vq9rhg2eu4d71jo3o1svtffhi9haa8lb', '192.168.10.254', 1733967085, 0x5F5F63695F6C6173745F726567656E65726174657C693A313733333936373038343B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vru9j114gldgq9jmlosasncpmfe0knpg', '1.1.245.103', 1751445221, 0x5F5F63695F6C6173745F726567656E65726174657C693A313735313434353231393B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vv6em9efb7plipclg5k2c2s7mor9dsre', '119.42.72.45', 1746089997, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734363038393939363B7C4E3B6E5F796561727C693A323536383B);
INSERT INTO `ci_sessions` VALUES ('vvve4466a9p6o2v3hla34ac877ja1fhv', '34.197.28.78', 1743543558, 0x5F5F63695F6C6173745F726567656E65726174657C693A313734333534333535383B6E5F796561727C693A323536383B);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `office_id` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `office_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tel` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `n_year` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for cuse_status
-- ----------------------------
DROP TABLE IF EXISTS `cuse_status`;
CREATE TABLE `cuse_status`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่อสถานะการใช้งาน',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuse_status
-- ----------------------------
INSERT INTO `cuse_status` VALUES (1, '1 : ใช้งานไม่ได้');
INSERT INTO `cuse_status` VALUES (2, '2 : ใช้งานได้ควรเปลี่ยนเครื่องใหม่');
INSERT INTO `cuse_status` VALUES (3, '3 : ใช้งานได้แต่ควร Upgrate');
INSERT INTO `cuse_status` VALUES (4, '4 : ใช้งานได้');
INSERT INTO `cuse_status` VALUES (5, '5 : ใช้งานได้ดีปกติ');
INSERT INTO `cuse_status` VALUES (6, '6 : รอจำหน่าย');
INSERT INTO `cuse_status` VALUES (7, '7 : จำหน่าย');

-- ----------------------------
-- Table structure for cuser_type
-- ----------------------------
DROP TABLE IF EXISTS `cuser_type`;
CREATE TABLE `cuser_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'User Type',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuser_type
-- ----------------------------
INSERT INTO `cuser_type` VALUES (1, 'Administrators');
INSERT INTO `cuser_type` VALUES (2, 'User');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `prename` char(20) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL COMMENT 'คำนำหน้า',
  `name` varchar(50) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT '' COMMENT 'ชื่อสกุล',
  `sex` varchar(10) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL COMMENT 'เพศ',
  `cid` varchar(13) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL DEFAULT '' COMMENT 'เลขประจำตัวประชาชน',
  `position` varchar(60) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL COMMENT 'ตำแหน่ง',
  `employee_type` int NULL DEFAULT NULL COMMENT 'ประเภทพนักงาน',
  `hospcode` varchar(5) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL COMMENT 'หน่วยงาน',
  `tel` varchar(10) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL COMMENT 'เบอร์โทร',
  `line` varchar(30) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL COMMENT 'LineID',
  `facebook` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL COMMENT 'Facebook',
  `active` int NULL DEFAULT 1 COMMENT 'สถานะการใช้งาน',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'นาย', 'ทรงวิทย์ ศรีคำ', 'ชาย', '1111111111111', 'สาธารณสุขอำเภอเมือง', 1, '00445', '00000', 'sso', 'https://www.facebook.com/profile.php?id=100025558188821', 2);
INSERT INTO `employee` VALUES (8, 'นายเสรี', 'ชะโน', 'ชาย', '1111', 'นักวิชาการสาธารณสุขชำนาญการ', 1, '00445', '-', '-', '-', 2);

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `filetype` varchar(5) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `filesize` int NOT NULL,
  `keyword` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `created_by` tinyint NOT NULL,
  `access` tinyint(1) NOT NULL,
  `catid` tinyint NOT NULL,
  `sectionid` tinyint NULL DEFAULT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `hits` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `file_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES (1, '', '880c9c07b81e58c368044e9ec7d09b4d.jpg');
INSERT INTO `gallery` VALUES (2, '', '1e4e5e9e69595c8582adaeb3c5ca64fb.jpg');
INSERT INTO `gallery` VALUES (3, '', '31b7b2975848db8fe5ded4d1958cbddf.jpg');
INSERT INTO `gallery` VALUES (4, '', '0d560516b819862e8c94f7e5a9e3a6dd.jpg');
INSERT INTO `gallery` VALUES (5, '', '958e98038a15d1866612c1be0a86472b.jpg');
INSERT INTO `gallery` VALUES (6, '', '1.jpg');
INSERT INTO `gallery` VALUES (7, '', '1.jpg');

-- ----------------------------
-- Table structure for ita_ebit
-- ----------------------------
DROP TABLE IF EXISTS `ita_ebit`;
CREATE TABLE `ita_ebit`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ชื่อ EBIT',
  `ita_index` int NULL DEFAULT NULL COMMENT 'ดัชนี',
  `n_year` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ปีงบประมาณ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ita_ebit
-- ----------------------------
INSERT INTO `ita_ebit` VALUES (1, 'EB 1 หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', 1, '2563');
INSERT INTO `ita_ebit` VALUES (2, 'EB 2 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการดำเนินการเพื่อส่งเสริม ความโปร่งใสในการจัดซื้อจัดจ้าง', 1, '2563');
INSERT INTO `ita_ebit` VALUES (3, 'EB 3 หน่วยงานมีการเผยแพร่แผนการจัดซื้อจัดจ้างประจำปี', 1, '2563');
INSERT INTO `ita_ebit` VALUES (4, 'EB 4 หน่วยงานมีการเผยแพร่บันทึกรายละเอียดวิธีการและขั้นตอนการจัดซื้อจัดจ้างอย่างเป็นระบบ', 1, '2563');
INSERT INTO `ita_ebit` VALUES (5, 'EB 5 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงาน ตามภารกิจหลักของหน่วยงานอย่างไร', 1, '2563');
INSERT INTO `ita_ebit` VALUES (6, 'EB 6 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการจัดทำแผนงาน/โครงการ ตามภารกิจหลักของหน่วยงาน หรือไม่', 1, '2563');
INSERT INTO `ita_ebit` VALUES (7, 'EB 7 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการดำเนินการโครงการตามภารกิจหลักของหน่วยงานหรือไม่', 1, '2563');
INSERT INTO `ita_ebit` VALUES (8, 'EB 8 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', 1, '2563');
INSERT INTO `ita_ebit` VALUES (9, 'EB 9 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 1, '2563');
INSERT INTO `ita_ebit` VALUES (10, 'EB 10 หน่วยงานมีการเผยแพร่แผนปฏิบัติการประจำปี', 2, '2563');
INSERT INTO `ita_ebit` VALUES (11, 'EB 11 หน่วยงานมีการเผยแพร่รายงานการประเมินผลการปฏิบัติงานตามแผนปฏิบัติการประจำปี (ที่ผ่านมา)', 2, '2563');
INSERT INTO `ita_ebit` VALUES (12, 'EB 12 หน่วยงานมีการเผยแพร่การกำกับติดตามการดำเนินงานตามแผนปฏิบัติการประจำปี', 2, '2563');
INSERT INTO `ita_ebit` VALUES (13, 'EB 13 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการบริหารผลการปฏิบัติงาน และการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 2, '2563');
INSERT INTO `ita_ebit` VALUES (14, 'EB 14 หน่วยงานมีการรายงานการประเมินผลเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปี ของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการอยู่ในระดับดีเด่นและดีมากในที่เปิดเผย ให้ทราบ ในรอบปีงบประมาณ', 2, '2563');
INSERT INTO `ita_ebit` VALUES (15, 'EB 15 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 2, '2563');
INSERT INTO `ita_ebit` VALUES (16, 'EB 16 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการจัดการเรื่องร้องเรียน ของหน่วยงาน', 2, '2563');
INSERT INTO `ita_ebit` VALUES (17, 'EB 17 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันการรับสินบน', 3, '2563');
INSERT INTO `ita_ebit` VALUES (18, 'EB 18 หน่วยงานมีการเสริมสร้างวัฒนธรรมและค่านิยมสุจริตและการต่อต้านการทุจริตในหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit` VALUES (19, 'EB 19 หน่วยงานมีการรวมกลุ่มของเจ้าหน้าที่เพื่อการบริหารงานที่โปร่งใสหรือไม่ และกลุ่มดังกล่าว มีกิจกรรมที่แสดงถึงความพยายามที่จะปรับปรุงการบริหารงานของหน่วยงานให้มีความโปร่งใสยิ่งขึ้น หรือไม่', 4, '2563');
INSERT INTO `ita_ebit` VALUES (20, 'EB 20 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit` VALUES (21, 'EB 21 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อน โดยการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit` VALUES (22, 'EB 22 หน่วยงานมีการประชุม หรืออบรม/สัมมนา หรือแลกเปลี่ยนความรู้ภายในหน่วยงานในการ ให้ความรู้เรื่องการป้องกันผลประโยชน์ทับซ้อน จิตพอเพียงต้านทุจริต แก่เจ้าหน้าที่ในหน่วยงานหรือไม่', 4, '2563');
INSERT INTO `ita_ebit` VALUES (23, 'EB 23 หน่วยงานมีการจัดทำแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปี ของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณของหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit` VALUES (24, 'EB 24 หน่วยงานมีการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริต และประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปี งบประมาณของหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit` VALUES (25, 'EB 25 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการตรวจสอบการปฏิบัติงาน ของเจ้าหน้าที่ตามคู่มือหรือมาตรฐานการปฏิบัติงาน', 5, '2563');
INSERT INTO `ita_ebit` VALUES (26, 'EB 26 หน่วยงานมีการเผยแพร่กระบวนการอำนวยความสะดวก หรือการให้บริการประชาชน ด้วยการแสดงขั้นตอน ระยะเวลาที่ใช้', 5, '2563');
INSERT INTO `ita_ebit` VALUES (27, 'EB 1 หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', 1, '2564');
INSERT INTO `ita_ebit` VALUES (28, 'EB 2 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการดำเนินการเพื่อส่งเสริม ความโปร่งใสในการจัดซื้อจัดจ้าง', 1, '2564');
INSERT INTO `ita_ebit` VALUES (29, 'EB 3 หน่วยงานมีการเผยแพร่แผนการจัดซื้อจัดจ้างประจำปี', 1, '2564');
INSERT INTO `ita_ebit` VALUES (30, 'EB 4 หน่วยงานมีการเผยแพร่บันทึกรายละเอียดวิธีการและขั้นตอนการจัดซื้อจัดจ้างอย่างเป็นระบบ', 1, '2564');
INSERT INTO `ita_ebit` VALUES (31, 'EB 5 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงาน ตามภารกิจหลักของหน่วยงานอย่างไร', 1, '2564');
INSERT INTO `ita_ebit` VALUES (32, 'EB 6 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการจัดทำแผนงาน/โครงการ ตามภารกิจหลักของหน่วยงาน หรือไม่', 1, '2564');
INSERT INTO `ita_ebit` VALUES (33, 'EB 7 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการดำเนินการโครงการตามภารกิจหลักของหน่วยงานหรือไม่', 1, '2564');
INSERT INTO `ita_ebit` VALUES (34, 'EB 8 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', 1, '2564');
INSERT INTO `ita_ebit` VALUES (35, 'EB 9 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 1, '2564');
INSERT INTO `ita_ebit` VALUES (36, 'EB 10 หน่วยงานมีการเผยแพร่แผนปฏิบัติการประจำปี', 2, '2564');
INSERT INTO `ita_ebit` VALUES (37, 'EB 11 หน่วยงานมีการเผยแพร่รายงานการประเมินผลการปฏิบัติงานตามแผนปฏิบัติการประจำปี (ที่ผ่านมา)', 2, '2564');
INSERT INTO `ita_ebit` VALUES (38, 'EB 12 หน่วยงานมีการเผยแพร่การกำกับติดตามการดำเนินงานตามแผนปฏิบัติการประจำปี', 2, '2564');
INSERT INTO `ita_ebit` VALUES (39, 'EB 13 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการบริหารผลการปฏิบัติงาน และการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 2, '2564');
INSERT INTO `ita_ebit` VALUES (40, 'EB 14 หน่วยงานมีการรายงานการประเมินผลเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปี ของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการอยู่ในระดับดีเด่นและดีมากในที่เปิดเผย ให้ทราบ ในรอบปีงบประมาณ', 2, '2564');
INSERT INTO `ita_ebit` VALUES (41, 'EB 15 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 2, '2564');
INSERT INTO `ita_ebit` VALUES (42, 'EB 16 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการจัดการเรื่องร้องเรียน ของหน่วยงาน', 2, '2564');
INSERT INTO `ita_ebit` VALUES (43, 'EB 17 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันการรับสินบน', 3, '2564');
INSERT INTO `ita_ebit` VALUES (44, 'EB 18 หน่วยงานมีการเสริมสร้างวัฒนธรรมและค่านิยมสุจริตและการต่อต้านการทุจริตในหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit` VALUES (45, 'EB 19 หน่วยงานมีการรวมกลุ่มของเจ้าหน้าที่เพื่อการบริหารงานที่โปร่งใสหรือไม่ และกลุ่มดังกล่าว มีกิจกรรมที่แสดงถึงความพยายามที่จะปรับปรุงการบริหารงานของหน่วยงานให้มีความโปร่งใสยิ่งขึ้น หรือไม่', 4, '2564');
INSERT INTO `ita_ebit` VALUES (46, 'EB 20 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit` VALUES (47, 'EB 21 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อน โดยการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit` VALUES (48, 'EB 22 หน่วยงานมีการประชุม หรืออบรม/สัมมนา หรือแลกเปลี่ยนความรู้ภายในหน่วยงานในการ ให้ความรู้เรื่องการป้องกันผลประโยชน์ทับซ้อน จิตพอเพียงต้านทุจริต แก่เจ้าหน้าที่ในหน่วยงานหรือไม่', 4, '2564');
INSERT INTO `ita_ebit` VALUES (49, 'EB 23 หน่วยงานมีการจัดทำแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปี ของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณของหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit` VALUES (50, 'EB 24 หน่วยงานมีการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริต และประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปี งบประมาณของหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit` VALUES (51, 'EB 25 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการตรวจสอบการปฏิบัติงาน ของเจ้าหน้าที่ตามคู่มือหรือมาตรฐานการปฏิบัติงาน', 5, '2564');
INSERT INTO `ita_ebit` VALUES (52, 'MOIT 1 หน่วยงานมีการกำหนดมาตรการ กลไก และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 6, '2565');
INSERT INTO `ita_ebit` VALUES (53, 'MOIT 2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 6, '2565');
INSERT INTO `ita_ebit` VALUES (54, 'MOIT3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2564', 7, '2565');
INSERT INTO `ita_ebit` VALUES (55, 'MOIT4 หน่วยงานวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2565', 7, '2565');
INSERT INTO `ita_ebit` VALUES (56, 'MOIT5 หน่วยงานมีการสรุปผลการจัดซื้อจัดจ้างและการจัดหาพัสดุรายเดือน ประจำปีงบประมาณ พ.ศ. 2565', 7, '2565');
INSERT INTO `ita_ebit` VALUES (57, 'MOIT6 ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคล', 8, '2565');
INSERT INTO `ita_ebit` VALUES (58, 'MOIT7 หลักเกณฑ์การบริหารและพัฒนาบุคลากร', 8, '2565');
INSERT INTO `ita_ebit` VALUES (59, 'MOIT8 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการ ระดับดีเด่น และระดับดีมาก ในที่เปิดเผยให้ทราบ รอบปีงบประมาณ พ.ศ.2564 และรอบปีงบประมาณ พ.ศ.2565', 8, '2565');
INSERT INTO `ita_ebit` VALUES (60, 'MOIT9 หน่วยงานมีการอบรมให้ความรู้แก่เจ้าหน้าที่ภายในหน่วยงานเกี่ยวกับการเสริมสร้างและพัฒนาทางด้าน', 8, '2565');
INSERT INTO `ita_ebit` VALUES (61, 'MOIT10 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 9, '2565');
INSERT INTO `ita_ebit` VALUES (62, 'MOIT11 หน่วยงานมีการตอบสนองต่อเรื่องร้องเรียนและข้อมูลเชิงสถิติเรื่องร้องเรียน', 9, '2565');
INSERT INTO `ita_ebit` VALUES (63, 'MOIT12 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจของหน่วยงาน', 9, '2565');
INSERT INTO `ita_ebit` VALUES (64, 'MOIT13 หน่วยงานมีการกำหนดมาตรการและระบบในการป้องกันการรับสินบน', 10, '2565');
INSERT INTO `ita_ebit` VALUES (65, 'MOIT14 หน่วยงานมีการกำหนดมาตรการ และระบบในการป้องกันการรับสินบนในกระบวนการเบิกจ่ายยาตามสิทธิสวัสดิการรักษาพยาบาลข้าราชการ', 10, '2565');
INSERT INTO `ita_ebit` VALUES (66, 'MOIT15 หน่วยงานมีการจัดทำแนวทางปฏิบัติเกี่ยวกับการใช้ทรัพย์สินของราชการที่ถูกต้อง และมีขั้นตอนการขออนุญาตเพื่อยืมทรัพย์สินของราชการไปใช้ปฏิบัติในหน่วยงาน', 11, '2565');
INSERT INTO `ita_ebit` VALUES (67, 'MOIT16 หน่วยงานมีแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 12, '2565');
INSERT INTO `ita_ebit` VALUES (68, 'MOIT17 หน่วยงานมีรายงานการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 12, '2565');
INSERT INTO `ita_ebit` VALUES (69, 'MOIT18 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนประจำปีของหน่วยงาน', 13, '2565');
INSERT INTO `ita_ebit` VALUES (70, 'MOIT19 หน่วยงานมีการกำหนดมาตรการเพื่อจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน และมีการรวมกลุ่มในนามชมรม STRONG', 13, '2565');
INSERT INTO `ita_ebit` VALUES (71, 'MOIT20 หน่วยงานมีการรายงานผลการส่งเสริมการปฏิบัติตามประมวลจริยธรรมข้าราชการพลเรือน : กรณีการเรี่ยไรและกรณีการให้หรือรับของขวัญหรือประโยชน์อื่นใดประจำปีงบประมาณ พ.ศ.2565', 13, '2565');
INSERT INTO `ita_ebit` VALUES (72, 'MOIT21 หน่วยงานมีการอบรมให้ความรู้ภายในหน่วยงาน เรื่อง การป้องกันผลประโยชน์ทับซ้อน โดยใช้หลักสูตรต้านทุจริตศึกษา', 13, '2565');
INSERT INTO `ita_ebit` VALUES (73, 'MOIT22 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 14, '2565');
INSERT INTO `ita_ebit` VALUES (74, 'MOIT23หน่วยงานมีนโยบายและมีแนวปฏิบัติที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงาน มาตรการในการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน', 14, '2565');
INSERT INTO `ita_ebit` VALUES (75, 'MOIT 1 หน่วยงานมีการกำหนดมาตรการ กลไก และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 6, '2566');
INSERT INTO `ita_ebit` VALUES (76, 'MOIT 2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 6, '2566');
INSERT INTO `ita_ebit` VALUES (77, 'MOIT3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2564', 7, '2566');
INSERT INTO `ita_ebit` VALUES (78, 'MOIT4 หน่วยงานวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2566', 7, '2566');
INSERT INTO `ita_ebit` VALUES (79, 'MOIT5 หน่วยงานมีการสรุปผลการจัดซื้อจัดจ้างและการจัดหาพัสดุรายเดือน ประจำปีงบประมาณ พ.ศ. 2566', 7, '2566');
INSERT INTO `ita_ebit` VALUES (80, 'MOIT6 ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคล', 8, '2566');
INSERT INTO `ita_ebit` VALUES (81, 'MOIT7 หลักเกณฑ์การบริหารและพัฒนาบุคลากร', 8, '2566');
INSERT INTO `ita_ebit` VALUES (82, 'MOIT8 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการ ระดับดีเด่น และระดับดีมาก ในที่เปิดเผยให้ทราบ รอบปีงบประมาณ พ.ศ.2564 และรอบปีงบประมาณ พ.ศ.2566', 8, '2566');
INSERT INTO `ita_ebit` VALUES (83, 'MOIT9 หน่วยงานมีการอบรมให้ความรู้แก่เจ้าหน้าที่ภายในหน่วยงานเกี่ยวกับการเสริมสร้างและพัฒนาทางด้าน', 8, '2566');
INSERT INTO `ita_ebit` VALUES (84, 'MOIT10 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 9, '2566');
INSERT INTO `ita_ebit` VALUES (85, 'MOIT11 หน่วยงานมีการตอบสนองต่อเรื่องร้องเรียนและข้อมูลเชิงสถิติเรื่องร้องเรียน', 9, '2566');
INSERT INTO `ita_ebit` VALUES (86, 'MOIT12 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจของหน่วยงาน', 9, '2566');
INSERT INTO `ita_ebit` VALUES (87, 'MOIT13 หน่วยงานมีการกำหนดมาตรการและระบบในการป้องกันการรับสินบน', 10, '2566');
INSERT INTO `ita_ebit` VALUES (88, 'MOIT14 หน่วยงานมีการกำหนดมาตรการ และระบบในการป้องกันการรับสินบนในกระบวนการเบิกจ่ายยาตามสิทธิสวัสดิการรักษาพยาบาลข้าราชการ', 10, '2566');
INSERT INTO `ita_ebit` VALUES (89, 'MOIT15 หน่วยงานมีการจัดทำแนวทางปฏิบัติเกี่ยวกับการใช้ทรัพย์สินของราชการที่ถูกต้อง และมีขั้นตอนการขออนุญาตเพื่อยืมทรัพย์สินของราชการไปใช้ปฏิบัติในหน่วยงาน', 11, '2566');
INSERT INTO `ita_ebit` VALUES (90, 'MOIT16 หน่วยงานมีแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 12, '2566');
INSERT INTO `ita_ebit` VALUES (91, 'MOIT17 หน่วยงานมีรายงานการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 12, '2566');
INSERT INTO `ita_ebit` VALUES (92, 'MOIT18 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนประจำปีของหน่วยงาน', 13, '2566');
INSERT INTO `ita_ebit` VALUES (93, 'MOIT19 หน่วยงานมีการกำหนดมาตรการเพื่อจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน และมีการรวมกลุ่มในนามชมรม STRONG', 13, '2566');
INSERT INTO `ita_ebit` VALUES (94, 'MOIT20 หน่วยงานมีการรายงานผลการส่งเสริมการปฏิบัติตามประมวลจริยธรรมข้าราชการพลเรือน : กรณีการเรี่ยไรและกรณีการให้หรือรับของขวัญหรือประโยชน์อื่นใดประจำปีงบประมาณ พ.ศ.2566', 13, '2566');
INSERT INTO `ita_ebit` VALUES (95, 'MOIT21 หน่วยงานมีการอบรมให้ความรู้ภายในหน่วยงาน เรื่อง การป้องกันผลประโยชน์ทับซ้อน โดยใช้หลักสูตรต้านทุจริตศึกษา', 13, '2566');
INSERT INTO `ita_ebit` VALUES (96, 'MOIT22 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 14, '2566');
INSERT INTO `ita_ebit` VALUES (97, 'MOIT23หน่วยงานมีนโยบายและมีแนวปฏิบัติที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงาน มาตรการในการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน', 14, '2566');
INSERT INTO `ita_ebit` VALUES (98, 'MOIT1 หน่วยงานมีการกำหนดมาตรการ กลไก และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 6, '2567');
INSERT INTO `ita_ebit` VALUES (99, 'MOIT2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 6, '2567');
INSERT INTO `ita_ebit` VALUES (100, 'MOIT3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2566', 7, '2567');
INSERT INTO `ita_ebit` VALUES (101, 'MOIT4 หน่วยงานวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2567', 7, '2567');
INSERT INTO `ita_ebit` VALUES (102, 'MOIT5 หน่วยงานมีการสรุปผลการจัดซื้อจัดจ้างและการจัดหาพัสดุรายเดือน ประจำปีงบประมาณ พ.ศ. 2566', 7, '2567');
INSERT INTO `ita_ebit` VALUES (103, 'MOIT6 ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคล', 8, '2567');
INSERT INTO `ita_ebit` VALUES (104, 'MOIT7 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการ ระดับดีเด่น และระดับดีมาก ในที่เปิดเผยให้ทราบ รอบปีงบประมาณ พ.ศ.2566 และรอบปีงบประมาณ พ.ศ.2567', 8, '2567');
INSERT INTO `ita_ebit` VALUES (105, 'MOIT8 หน่วยงานมีการอบรมให้ความรู้แก่เจ้าหน้าที่ภายในหน่วยงานเกี่ยวกับการเสริมสร้าง และพัฒนาทางด้านจริยธรรมและการรักษาวินัย รวมทั้งการป้องกันมิให้กระทำผิดวินัย ปีงบประมาณ พ.ศ. 2567', 8, '2567');
INSERT INTO `ita_ebit` VALUES (106, 'MOIT9 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 9, '2567');
INSERT INTO `ita_ebit` VALUES (107, 'MOIT10 หน่วยงานมีสรุปผลการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน และเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 9, '2567');
INSERT INTO `ita_ebit` VALUES (108, 'MOIT11 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจของหน่วยงาน', 9, '2567');
INSERT INTO `ita_ebit` VALUES (109, 'MOIT12 หน่วยงานมีมาตรการ “การป้องกันการรับสินบน” ที่เป็นระบบ', 10, '2567');
INSERT INTO `ita_ebit` VALUES (110, 'MOIT13 หน่วยงานประเมินการดำเนินการตามแนวทางปฏิบัติของหน่วยงาน ในปีงบประมาณ พ.ศ. 2566-2567 ตามประกาศกระทรวงสาธารณสุข เรื่อง เกณฑ์จริยธรรมการจัดซื้อจัดหาและการส่งเสริมการขายยาและเวชภัณฑ์ที่มิใช่ยาของกระทรวงสาธารณสุข พ.ศ. 2564', 10, '2567');
INSERT INTO `ita_ebit` VALUES (111, 'MOIT14 หน่วยงานมีแนวทางปฏิบัติเกี่ยวกับการใช้ทรัพย์สินของราชการ และมีขั้นตอนการขออนุญาต เพื่อยืมทรัพย์สินของราชการไปใช้ปฏิบัติในหน่วยงานที่', 11, '2567');
INSERT INTO `ita_ebit` VALUES (112, 'MOIT15 หน่วยงานมีแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณ พ.ศ. 2567', 12, '2567');
INSERT INTO `ita_ebit` VALUES (113, 'MOIT16 หน่วยงานมีรายงานผลการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2567 และรายงานผลการดำเนินงานตามแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงาน ประจำปีงบประมาณ พ.ศ. 2567', 12, '2567');
INSERT INTO `ita_ebit` VALUES (114, 'MOIT17 หน่วยงานมีการประเมินความเสี่ยงการทุจริต ประจำปีงบประมาณ พ.ศ. 2567 อย่างเป็นระบบ', 13, '2567');
INSERT INTO `ita_ebit` VALUES (115, 'MOIT18 หน่วยงานมีการปฏิบัติตามมาตรการป้องกันการทุจริต (การควบคุมความเสี่ยงการทุจริต)', 13, '2567');
INSERT INTO `ita_ebit` VALUES (116, 'MOIT19 หน่วยงานมีการรายงานผลการส่งเสริมการปฏิบัติตามประมวลจริยธรรมข้าราชการพลเรือน : กรณีการเรี่ยไรและกรณีการให้หรือรับของขวัญหรือประโยชน์อื่นใด ประจำปีงบประมาณ พ.ศ. 2567', 13, '2567');
INSERT INTO `ita_ebit` VALUES (117, 'MOIT20 หน่วยงานเรื่องผลประโยชน์ทับซ้อน โดยใช้หลักสูตรต้านทุจริตศึกษา (Anti-Corruption Education) กระทรวงสาธารณสุข (ฉบับปรับปรุง) พ.ศ.2565', 13, '2567');
INSERT INTO `ita_ebit` VALUES (118, 'MOIT21 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของการปฏิบัติหน้าที่ราชการ และนโยบายที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงานและของผู้บริหารต่อสาธารณชน', 14, '2567');
INSERT INTO `ita_ebit` VALUES (119, 'MOIT22 หน่วยงานมีแนวปฏิบัติที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงาน และรายงานการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน ประจำปีงบประมาณ พ.ศ. 2567 ', 14, '2567');
INSERT INTO `ita_ebit` VALUES (121, 'MOIT1 หน่วยงานมีการกำหนดมาตรการ กลไก และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 6, '2568');
INSERT INTO `ita_ebit` VALUES (122, 'MOIT2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 6, '2568');
INSERT INTO `ita_ebit` VALUES (123, 'MOIT3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2566', 7, '2568');
INSERT INTO `ita_ebit` VALUES (124, 'MOIT4 หน่วยงานวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2568', 7, '2568');
INSERT INTO `ita_ebit` VALUES (125, 'MOIT5 หน่วยงานมีการสรุปผลการจัดซื้อจัดจ้างและการจัดหาพัสดุรายเดือน ประจำปีงบประมาณ พ.ศ. 2566', 7, '2568');
INSERT INTO `ita_ebit` VALUES (126, 'MOIT6 ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคล', 8, '2568');
INSERT INTO `ita_ebit` VALUES (127, 'MOIT7 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการ ระดับดีเด่น และระดับดีมาก ในที่เปิดเผยให้ทราบ รอบปีงบประมาณ พ.ศ.2566 และรอบปีงบประมาณ พ.ศ.2568', 8, '2568');
INSERT INTO `ita_ebit` VALUES (128, 'MOIT8 หน่วยงานมีการอบรมให้ความรู้แก่เจ้าหน้าที่ภายในหน่วยงานเกี่ยวกับการเสริมสร้าง และพัฒนาทางด้านจริยธรรมและการรักษาวินัย รวมทั้งการป้องกันมิให้กระทำผิดวินัย ปีงบประมาณ พ.ศ. 2568', 8, '2568');
INSERT INTO `ita_ebit` VALUES (129, 'MOIT9 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 9, '2568');
INSERT INTO `ita_ebit` VALUES (130, 'MOIT10 หน่วยงานมีสรุปผลการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน และเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 9, '2568');
INSERT INTO `ita_ebit` VALUES (131, 'MOIT11 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจของหน่วยงาน', 9, '2568');
INSERT INTO `ita_ebit` VALUES (132, 'MOIT12 หน่วยงานมีมาตรการ “การป้องกันการรับสินบน” ที่เป็นระบบ', 10, '2568');
INSERT INTO `ita_ebit` VALUES (133, 'MOIT13 หน่วยงานประเมินการดำเนินการตามแนวทางปฏิบัติของหน่วยงาน ในปีงบประมาณ พ.ศ. 2566-2568 ตามประกาศกระทรวงสาธารณสุข เรื่อง เกณฑ์จริยธรรมการจัดซื้อจัดหาและการส่งเสริมการขายยาและเวชภัณฑ์ที่มิใช่ยาของกระทรวงสาธารณสุข พ.ศ. 2564', 10, '2568');
INSERT INTO `ita_ebit` VALUES (134, 'MOIT14 หน่วยงานมีแนวทางปฏิบัติเกี่ยวกับการใช้ทรัพย์สินของราชการ และมีขั้นตอนการขออนุญาต เพื่อยืมทรัพย์สินของราชการไปใช้ปฏิบัติในหน่วยงานที่', 11, '2568');
INSERT INTO `ita_ebit` VALUES (135, 'MOIT15 หน่วยงานมีแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณ พ.ศ. 2568', 12, '2568');
INSERT INTO `ita_ebit` VALUES (136, 'MOIT16 หน่วยงานมีรายงานผลการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2568 และรายงานผลการดำเนินงานตามแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงาน ประจำปีงบประมาณ พ.ศ. 2568', 12, '2568');
INSERT INTO `ita_ebit` VALUES (137, 'MOIT17 หน่วยงานมีการประเมินความเสี่ยงการทุจริต ประจำปีงบประมาณ พ.ศ. 2568 อย่างเป็นระบบ', 13, '2568');
INSERT INTO `ita_ebit` VALUES (138, 'MOIT18 หน่วยงานมีการปฏิบัติตามมาตรการป้องกันการทุจริต (การควบคุมความเสี่ยงการทุจริต)', 13, '2568');
INSERT INTO `ita_ebit` VALUES (139, 'MOIT19 หน่วยงานมีการรายงานผลการส่งเสริมการปฏิบัติตามประมวลจริยธรรมข้าราชการพลเรือน : กรณีการเรี่ยไรและกรณีการให้หรือรับของขวัญหรือประโยชน์อื่นใด ประจำปีงบประมาณ พ.ศ. 2568', 13, '2568');
INSERT INTO `ita_ebit` VALUES (140, 'MOIT20 หน่วยงานเรื่องผลประโยชน์ทับซ้อน โดยใช้หลักสูตรต้านทุจริตศึกษา (Anti-Corruption Education) กระทรวงสาธารณสุข (ฉบับปรับปรุง) พ.ศ.2565', 13, '2568');
INSERT INTO `ita_ebit` VALUES (141, 'MOIT21 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของการปฏิบัติหน้าที่ราชการ และนโยบายที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงานและของผู้บริหารต่อสาธารณชน', 14, '2568');
INSERT INTO `ita_ebit` VALUES (142, 'MOIT22 หน่วยงานมีแนวปฏิบัติที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงาน และรายงานการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน ประจำปีงบประมาณ พ.ศ. 2568 ', 14, '2568');

-- ----------------------------
-- Table structure for ita_ebit_copy
-- ----------------------------
DROP TABLE IF EXISTS `ita_ebit_copy`;
CREATE TABLE `ita_ebit_copy`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ชื่อ EBIT',
  `ita_index` int NULL DEFAULT NULL COMMENT 'ดัชนี',
  `n_year` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ปีงบประมาณ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ita_ebit_copy
-- ----------------------------
INSERT INTO `ita_ebit_copy` VALUES (1, 'EB 1 หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (2, 'EB 2 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการดำเนินการเพื่อส่งเสริม ความโปร่งใสในการจัดซื้อจัดจ้าง', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (3, 'EB 3 หน่วยงานมีการเผยแพร่แผนการจัดซื้อจัดจ้างประจำปี', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (4, 'EB 4 หน่วยงานมีการเผยแพร่บันทึกรายละเอียดวิธีการและขั้นตอนการจัดซื้อจัดจ้างอย่างเป็นระบบ', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (5, 'EB 5 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงาน ตามภารกิจหลักของหน่วยงานอย่างไร', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (6, 'EB 6 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการจัดทำแผนงาน/โครงการ ตามภารกิจหลักของหน่วยงาน หรือไม่', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (7, 'EB 7 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการดำเนินการโครงการตามภารกิจหลักของหน่วยงานหรือไม่', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (8, 'EB 8 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (9, 'EB 9 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 1, '2563');
INSERT INTO `ita_ebit_copy` VALUES (10, 'EB 10 หน่วยงานมีการเผยแพร่แผนปฏิบัติการประจำปี', 2, '2563');
INSERT INTO `ita_ebit_copy` VALUES (11, 'EB 11 หน่วยงานมีการเผยแพร่รายงานการประเมินผลการปฏิบัติงานตามแผนปฏิบัติการประจำปี (ที่ผ่านมา)', 2, '2563');
INSERT INTO `ita_ebit_copy` VALUES (12, 'EB 12 หน่วยงานมีการเผยแพร่การกำกับติดตามการดำเนินงานตามแผนปฏิบัติการประจำปี', 2, '2563');
INSERT INTO `ita_ebit_copy` VALUES (13, 'EB 13 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการบริหารผลการปฏิบัติงาน และการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 2, '2563');
INSERT INTO `ita_ebit_copy` VALUES (14, 'EB 14 หน่วยงานมีการรายงานการประเมินผลเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปี ของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการอยู่ในระดับดีเด่นและดีมากในที่เปิดเผย ให้ทราบ ในรอบปีงบประมาณ', 2, '2563');
INSERT INTO `ita_ebit_copy` VALUES (15, 'EB 15 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 2, '2563');
INSERT INTO `ita_ebit_copy` VALUES (16, 'EB 16 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการจัดการเรื่องร้องเรียน ของหน่วยงาน', 2, '2563');
INSERT INTO `ita_ebit_copy` VALUES (17, 'EB 17 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันการรับสินบน', 3, '2563');
INSERT INTO `ita_ebit_copy` VALUES (18, 'EB 18 หน่วยงานมีการเสริมสร้างวัฒนธรรมและค่านิยมสุจริตและการต่อต้านการทุจริตในหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit_copy` VALUES (19, 'EB 19 หน่วยงานมีการรวมกลุ่มของเจ้าหน้าที่เพื่อการบริหารงานที่โปร่งใสหรือไม่ และกลุ่มดังกล่าว มีกิจกรรมที่แสดงถึงความพยายามที่จะปรับปรุงการบริหารงานของหน่วยงานให้มีความโปร่งใสยิ่งขึ้น หรือไม่', 4, '2563');
INSERT INTO `ita_ebit_copy` VALUES (20, 'EB 20 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit_copy` VALUES (21, 'EB 21 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อน โดยการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit_copy` VALUES (22, 'EB 22 หน่วยงานมีการประชุม หรืออบรม/สัมมนา หรือแลกเปลี่ยนความรู้ภายในหน่วยงานในการ ให้ความรู้เรื่องการป้องกันผลประโยชน์ทับซ้อน จิตพอเพียงต้านทุจริต แก่เจ้าหน้าที่ในหน่วยงานหรือไม่', 4, '2563');
INSERT INTO `ita_ebit_copy` VALUES (23, 'EB 23 หน่วยงานมีการจัดทำแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปี ของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณของหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit_copy` VALUES (24, 'EB 24 หน่วยงานมีการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริต และประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปี งบประมาณของหน่วยงาน', 4, '2563');
INSERT INTO `ita_ebit_copy` VALUES (25, 'EB 25 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการตรวจสอบการปฏิบัติงาน ของเจ้าหน้าที่ตามคู่มือหรือมาตรฐานการปฏิบัติงาน', 5, '2563');
INSERT INTO `ita_ebit_copy` VALUES (26, 'EB 26 หน่วยงานมีการเผยแพร่กระบวนการอำนวยความสะดวก หรือการให้บริการประชาชน ด้วยการแสดงขั้นตอน ระยะเวลาที่ใช้', 5, '2563');
INSERT INTO `ita_ebit_copy` VALUES (27, 'EB 1 หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (28, 'EB 2 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการดำเนินการเพื่อส่งเสริม ความโปร่งใสในการจัดซื้อจัดจ้าง', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (29, 'EB 3 หน่วยงานมีการเผยแพร่แผนการจัดซื้อจัดจ้างประจำปี', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (30, 'EB 4 หน่วยงานมีการเผยแพร่บันทึกรายละเอียดวิธีการและขั้นตอนการจัดซื้อจัดจ้างอย่างเป็นระบบ', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (31, 'EB 5 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงาน ตามภารกิจหลักของหน่วยงานอย่างไร', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (32, 'EB 6 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการจัดทำแผนงาน/โครงการ ตามภารกิจหลักของหน่วยงาน หรือไม่', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (33, 'EB 7 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการดำเนินการโครงการตามภารกิจหลักของหน่วยงานหรือไม่', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (34, 'EB 8 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (35, 'EB 9 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 1, '2564');
INSERT INTO `ita_ebit_copy` VALUES (36, 'EB 10 หน่วยงานมีการเผยแพร่แผนปฏิบัติการประจำปี', 2, '2564');
INSERT INTO `ita_ebit_copy` VALUES (37, 'EB 11 หน่วยงานมีการเผยแพร่รายงานการประเมินผลการปฏิบัติงานตามแผนปฏิบัติการประจำปี (ที่ผ่านมา)', 2, '2564');
INSERT INTO `ita_ebit_copy` VALUES (38, 'EB 12 หน่วยงานมีการเผยแพร่การกำกับติดตามการดำเนินงานตามแผนปฏิบัติการประจำปี', 2, '2564');
INSERT INTO `ita_ebit_copy` VALUES (39, 'EB 13 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการบริหารผลการปฏิบัติงาน และการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 2, '2564');
INSERT INTO `ita_ebit_copy` VALUES (40, 'EB 14 หน่วยงานมีการรายงานการประเมินผลเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปี ของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการอยู่ในระดับดีเด่นและดีมากในที่เปิดเผย ให้ทราบ ในรอบปีงบประมาณ', 2, '2564');
INSERT INTO `ita_ebit_copy` VALUES (41, 'EB 15 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 2, '2564');
INSERT INTO `ita_ebit_copy` VALUES (42, 'EB 16 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการจัดการเรื่องร้องเรียน ของหน่วยงาน', 2, '2564');
INSERT INTO `ita_ebit_copy` VALUES (43, 'EB 17 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันการรับสินบน', 3, '2564');
INSERT INTO `ita_ebit_copy` VALUES (44, 'EB 18 หน่วยงานมีการเสริมสร้างวัฒนธรรมและค่านิยมสุจริตและการต่อต้านการทุจริตในหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit_copy` VALUES (45, 'EB 19 หน่วยงานมีการรวมกลุ่มของเจ้าหน้าที่เพื่อการบริหารงานที่โปร่งใสหรือไม่ และกลุ่มดังกล่าว มีกิจกรรมที่แสดงถึงความพยายามที่จะปรับปรุงการบริหารงานของหน่วยงานให้มีความโปร่งใสยิ่งขึ้น หรือไม่', 4, '2564');
INSERT INTO `ita_ebit_copy` VALUES (46, 'EB 20 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit_copy` VALUES (47, 'EB 21 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อน โดยการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันผลประโยชน์ทับซ้อนในหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit_copy` VALUES (48, 'EB 22 หน่วยงานมีการประชุม หรืออบรม/สัมมนา หรือแลกเปลี่ยนความรู้ภายในหน่วยงานในการ ให้ความรู้เรื่องการป้องกันผลประโยชน์ทับซ้อน จิตพอเพียงต้านทุจริต แก่เจ้าหน้าที่ในหน่วยงานหรือไม่', 4, '2564');
INSERT INTO `ita_ebit_copy` VALUES (49, 'EB 23 หน่วยงานมีการจัดทำแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปี ของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณของหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit_copy` VALUES (50, 'EB 24 หน่วยงานมีการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริต และประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปี งบประมาณของหน่วยงาน', 4, '2564');
INSERT INTO `ita_ebit_copy` VALUES (51, 'EB 25 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการตรวจสอบการปฏิบัติงาน ของเจ้าหน้าที่ตามคู่มือหรือมาตรฐานการปฏิบัติงาน', 5, '2564');
INSERT INTO `ita_ebit_copy` VALUES (52, 'MOIT 1 หน่วยงานมีการกำหนดมาตรการ กลไก และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 6, '2566');
INSERT INTO `ita_ebit_copy` VALUES (53, 'MOIT 2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', 6, '2566');
INSERT INTO `ita_ebit_copy` VALUES (54, 'MOIT3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2564', 7, '2566');
INSERT INTO `ita_ebit_copy` VALUES (55, 'MOIT4 หน่วยงานวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2565', 7, '2566');
INSERT INTO `ita_ebit_copy` VALUES (56, 'MOIT5 หน่วยงานมีการสรุปผลการจัดซื้อจัดจ้างและการจัดหาพัสดุรายเดือน ประจำปีงบประมาณ พ.ศ. 2565', 7, '2566');
INSERT INTO `ita_ebit_copy` VALUES (57, 'MOIT6 ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคล', 8, '2566');
INSERT INTO `ita_ebit_copy` VALUES (58, 'MOIT7 หลักเกณฑ์การบริหารและพัฒนาบุคลากร', 8, '2566');
INSERT INTO `ita_ebit_copy` VALUES (59, 'MOIT8 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการ ระดับดีเด่น และระดับดีมาก ในที่เปิดเผยให้ทราบ รอบปีงบประมาณ พ.ศ.2564 และรอบปีงบประมาณ พ.ศ.2565', 8, '2565');
INSERT INTO `ita_ebit_copy` VALUES (60, 'MOIT9 หน่วยงานมีการอบรมให้ความรู้แก่เจ้าหน้าที่ภายในหน่วยงานเกี่ยวกับการเสริมสร้างและพัฒนาทางด้าน', 8, '2565');
INSERT INTO `ita_ebit_copy` VALUES (61, 'MOIT10 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 9, '2565');
INSERT INTO `ita_ebit_copy` VALUES (62, 'MOIT11 หน่วยงานมีการตอบสนองต่อเรื่องร้องเรียนและข้อมูลเชิงสถิติเรื่องร้องเรียน', 9, '2565');
INSERT INTO `ita_ebit_copy` VALUES (63, 'MOIT12 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสียมีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจของหน่วยงาน', 9, '2565');
INSERT INTO `ita_ebit_copy` VALUES (64, 'MOIT13 หน่วยงานมีการกำหนดมาตรการและระบบในการป้องกันการรับสินบน', 10, '2565');
INSERT INTO `ita_ebit_copy` VALUES (65, 'MOIT14 หน่วยงานมีการกำหนดมาตรการ และระบบในการป้องกันการรับสินบนในกระบวนการเบิกจ่ายยาตามสิทธิสวัสดิการรักษาพยาบาลข้าราชการ', 10, '2565');
INSERT INTO `ita_ebit_copy` VALUES (66, 'MOIT15 หน่วยงานมีการจัดทำแนวทางปฏิบัติเกี่ยวกับการใช้ทรัพย์สินของราชการที่ถูกต้อง และมีขั้นตอนการขออนุญาตเพื่อยืมทรัพย์สินของราชการไปใช้ปฏิบัติในหน่วยงาน', 11, '2565');
INSERT INTO `ita_ebit_copy` VALUES (67, 'MOIT16 หน่วยงานมีแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 12, '2565');
INSERT INTO `ita_ebit_copy` VALUES (68, 'MOIT17 หน่วยงานมีรายงานการกำกับติดตามการดำเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีของหน่วยงาน และแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีของหน่วยงาน', 12, '2565');
INSERT INTO `ita_ebit_copy` VALUES (69, 'MOIT18 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนประจำปีของหน่วยงาน', 13, '2565');
INSERT INTO `ita_ebit_copy` VALUES (70, 'MOIT19 หน่วยงานมีการกำหนดมาตรการเพื่อจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน และมีการรวมกลุ่มในนามชมรม STRONG', 13, '2565');
INSERT INTO `ita_ebit_copy` VALUES (71, 'MOIT20 หน่วยงานมีการรายงานผลการส่งเสริมการปฏิบัติตามประมวลจริยธรรมข้าราชการพลเรือน : กรณีการเรี่ยไรและกรณีการให้หรือรับของขวัญหรือประโยชน์อื่นใดประจำปีงบประมาณ พ.ศ.2565', 13, '2565');
INSERT INTO `ita_ebit_copy` VALUES (72, 'MOIT21 หน่วยงานมีการอบรมให้ความรู้ภายในหน่วยงาน เรื่อง การป้องกันผลประโยชน์ทับซ้อน โดยใช้หลักสูตรต้านทุจริตศึกษา', 13, '2565');
INSERT INTO `ita_ebit_copy` VALUES (73, 'MOIT22 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', 14, '2565');
INSERT INTO `ita_ebit_copy` VALUES (74, 'MOIT23หน่วยงานมีนโยบายและมีแนวปฏิบัติที่เคารพสิทธิมนุษยชนและศักดิ์ศรีของผู้ปฏิบัติงาน มาตรการในการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน', 14, '2566');

-- ----------------------------
-- Table structure for ita_ebit_items
-- ----------------------------
DROP TABLE IF EXISTS `ita_ebit_items`;
CREATE TABLE `ita_ebit_items`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ชื่อ EBIT',
  `ita_ebit` int NULL DEFAULT NULL COMMENT 'Ebit',
  `n_year` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Link',
  `file` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ไฟล์',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1482 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ita_ebit_items
-- ----------------------------
INSERT INTO `ita_ebit_items` VALUES (3, 'สรุปผลการดำเนินการจัดซื้อจัดจ้างและวิเคราะห์ผลการจัดซื้อจัดจ้าง ปีงบประมาณ พ.ศ. ๒๕๖๒', 1, '2563', '', '9_20200305103850.pdf');
INSERT INTO `ita_ebit_items` VALUES (4, 'รายงานสรุปผลวิเคราะห์ผลการจัดซื้อจัดจ้าง ประจำปีงบประมาณ พ.ศ. ๒๕๖๒', 1, '2563', '', '9_20200305104037.pdf');
INSERT INTO `ita_ebit_items` VALUES (6, 'บันทึกข้อความ ข้อสั่งการ กรอบแนวทางการดำเนินการเพื่อส่งเสริมความโปร่งใส', 2, '2563', '', '9_20200305111119.pdf');
INSERT INTO `ita_ebit_items` VALUES (7, 'ประกาศเผยแพร่แผนการจัดซื้อจัดจ้าง งบประมาณรายจ่ายประจำปีงบประมาณ พ.ศ. ๒๕๖๓', 2, '2563', '', '9_20200305112438.pdf');
INSERT INTO `ita_ebit_items` VALUES (8, 'คำสั่งแต่งตั้งเจ้าหน้าที่ปิด-ปลดประกาศ', 2, '2563', '', '9_20200305201526.pdf');
INSERT INTO `ita_ebit_items` VALUES (9, 'รายงานผลการดำเนินการตามแผนการจัดซื้อจัดจ้าง  ประจำปีงบประมาณ  256๓', 2, '2563', '', '9_20200305201722.pdf');
INSERT INTO `ita_ebit_items` VALUES (10, 'กำหนดแนวทางปฏิบัติงานเพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง', 2, '2563', '', '9_20200305201842.pdf');
INSERT INTO `ita_ebit_items` VALUES (11, 'หลักฐานที่แสดงถึงการเผยแพร่ในช่องทางระบบเครือข่ายสารสนเทศของกรมบัญชีกลาง', 3, '2563', '', '9_20200305202845.pdf');
INSERT INTO `ita_ebit_items` VALUES (12, 'ประกาศเผยแพร่แผนการจัดซื้อจัดจ้าง งบประมาณรายจ่ายประจำปีงบประมาณ พ.ศ. ๒๕๖๓', 3, '2563', '', '9_20200305203201.pdf');
INSERT INTO `ita_ebit_items` VALUES (13, 'คำสั่งแต่งตั้งเจ้าหน้าที่ปิด-ปลดประกาศ', 3, '2563', '', '9_20200305203330.pdf');
INSERT INTO `ita_ebit_items` VALUES (15, 'ภาพถ่ายการเผยแพร่ ณ สถานที่ปิดประกาศของหน่วยงาน', 4, '2563', '', '9_20200305203701.pdf');
INSERT INTO `ita_ebit_items` VALUES (16, 'บันทึกข้อความ ลงนามคำสั่ง ข้อสั่งการ การเผยแพร่ข้อมูลผ่านเว็ปไซต์', 8, '2563', '', '9_20200305204719.pdf');
INSERT INTO `ita_ebit_items` VALUES (17, 'คำสั่ง ข้อสั่งการ การดำเนินการเผยแพร่ข้อมูลผ่านเว็ปไซต์', 8, '2563', '', '9_20200305204815.pdf');
INSERT INTO `ita_ebit_items` VALUES (18, 'รายละเอียดคำสั่งแนบท้ายประกาศ', 8, '2563', '', '9_20200305210147.pdf');
INSERT INTO `ita_ebit_items` VALUES (19, 'รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูล', 8, '2563', '', '9_20200305210223.pdf');
INSERT INTO `ita_ebit_items` VALUES (20, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 8, '2563', '', '9_20200305210248.pdf');
INSERT INTO `ita_ebit_items` VALUES (21, 'บันทึกข้อความแผนปฏิบัติการ ประจำปีงบประมาณ 2563', 10, '2563', 'https://drive.google.com/open?id=1MyE9FCY2bsxR6aGy8ex8ZWaSeqHGzGod', '9_20200305212622.pdf');
INSERT INTO `ita_ebit_items` VALUES (22, '1บันทึกข้อความลงนามคำสั่ง', 13, '2563', '', '9_20200305223210.pdf');
INSERT INTO `ita_ebit_items` VALUES (23, '2ประกาศ สสอ.เรื่องมาตรการเจ้าหน้าที่มีผลปฏิบัติราชการต่ำ', 13, '2563', '', '9_20200305223234.pdf');
INSERT INTO `ita_ebit_items` VALUES (24, '3เชิญประชุม ขอลงนาม', 13, '2563', '', '9_20200305223255.pdf');
INSERT INTO `ita_ebit_items` VALUES (25, '4ภาพกิจกรรมประชุมชี้แจง', 13, '2563', '', '9_20200305223315.pdf');
INSERT INTO `ita_ebit_items` VALUES (26, 'บันทึกลงนามประกาศการประเมินผลปฏิบัติราชการ', 14, '2563', '', '9_20200305223914.pdf');
INSERT INTO `ita_ebit_items` VALUES (28, 'บันทึกข้อความลงนาม ประกาศเจตจำนงสุจริตของผู้บริหารสูงสุด', 15, '2563', '', '9_20200305225642.pdf');
INSERT INTO `ita_ebit_items` VALUES (29, 'ภาพถ่ายประกอบการประชุม', 15, '2563', '', '9_20200305225713.pdf');
INSERT INTO `ita_ebit_items` VALUES (30, 'คำสั่งประจำศูนย์ รับเรื่องร้องเรียน สสอ.เมือง', 16, '2563', '', '9_20200305231921.pdf');
INSERT INTO `ita_ebit_items` VALUES (31, 'ศูนย์รับเรื่องราวร้องทุกข์', 16, '2563', '', '9_20200305231947.pdf');
INSERT INTO `ita_ebit_items` VALUES (32, 'คู่มือศูนย์จัดการเรื่องราวร้องทุกข์', 16, '2563', '', '9_20200305232013.pdf');
INSERT INTO `ita_ebit_items` VALUES (33, 'กระบวนงานจัดการเรื่องราวร้องทุกข์', 16, '2563', '', '9_20200305232041.pdf');
INSERT INTO `ita_ebit_items` VALUES (34, 'บันทึกข้อความนำส่งเรื่องร้องเรียน1', 16, '2563', '', '9_20200305232124.pdf');
INSERT INTO `ita_ebit_items` VALUES (35, 'บันทึกข้อความนำส่งเรื่องร้องเรียน2', 16, '2563', '', '9_20200305232147.pdf');
INSERT INTO `ita_ebit_items` VALUES (36, 'แบบรายงานการจัดการเรื่องร้องรอบ 16,2 เดือน', 16, '2563', '', '9_20200305232218.pdf');
INSERT INTO `ita_ebit_items` VALUES (37, 'บันทึกข้อความเผยแพร่', 16, '2563', '', '9_20200305232242.pdf');
INSERT INTO `ita_ebit_items` VALUES (38, 'บันทึกข้อความลงนามข้อสั่งการ มาตรการการป้องกันการรับสินบน', 17, '2563', '', '9_20200306093445.pdf');
INSERT INTO `ita_ebit_items` VALUES (39, 'ประกาศมาตรการการป้องกันการรับสินบนทุกรูปแบบตามที่หน่วยงานกำหนด', 17, '2563', '', '9_20200306093541.pdf');
INSERT INTO `ita_ebit_items` VALUES (40, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 17, '2563', '', '9_20200306093613.pdf');
INSERT INTO `ita_ebit_items` VALUES (41, 'หนังสือเชิญเข้าร่วมการประชุมการป้องกันผลประโยชน์ทับซ้อนในหน่วยงาน และประกาศเจตนารมณ์การต่อต้านการทุจริต', 18, '2563', '', '9_20200306095627.pdf');
INSERT INTO `ita_ebit_items` VALUES (42, 'รายงานผลการดำเนินงานกิจกรรมการพัฒนาองค์กรคุณธรรมคนเมืองจิตพอเพียงต้านทุจริต ปี 256๓', 18, '2563', '', '9_20200306100231.pdf');
INSERT INTO `ita_ebit_items` VALUES (44, 'การดำเนินงานชมรมสตรองรักษ์โปร่งใส เมืองมหาสารคาม', 19, '2563', '', '9_20200306110020.pdf');
INSERT INTO `ita_ebit_items` VALUES (45, 'ขอเชิญประชุมวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', 20, '2563', '', '9_20200306120927.pdf');
INSERT INTO `ita_ebit_items` VALUES (46, 'รายงานการประชุมวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ในหน่วยงาน', 20, '2563', '', '9_20200306121011.pdf');
INSERT INTO `ita_ebit_items` VALUES (47, 'รายงานการวิเคราะห์ความเสี่ยงเกี่ยวกับการปฏิบัติงานที่อาจเกิดผลประโยชน์ทับซ้อน', 20, '2563', '', '9_20200306121043.pdf');
INSERT INTO `ita_ebit_items` VALUES (48, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 20, '2563', '', '9_20200306121106.pdf');
INSERT INTO `ita_ebit_items` VALUES (49, 'คำสั่งมอบหมายการปิดประกาศ /ปลดประกาศ', 3, '2563', '', '9_20200310133102.pdf');
INSERT INTO `ita_ebit_items` VALUES (50, 'บันทึกข้อความจัดทำแผนการจัดซื้อจัดจ้างให้ผู้บริหารรับทราบ และขออนุมัติประกาศเผยแพร่บนเว็บไซต์หน่วยงาน', 3, '2563', '', '9_20200310133448.pdf');
INSERT INTO `ita_ebit_items` VALUES (51, 'ภาพถ่ายการเผยแพร่ ณ สถานที่ปิดประกาศของหน่วยงาน', 3, '2563', '', '9_20200310133812.pdf');
INSERT INTO `ita_ebit_items` VALUES (52, 'หลักฐานที่แสดงถึงการเผยแพร่ในช่องทางระบบเครือข่ายสารสนเทศของกรมบัญชีกลาง', 3, '2563', '', '9_20200310134041.pdf');
INSERT INTO `ita_ebit_items` VALUES (53, 'ประกาศรายชื่อข้าราชการที่มีผลการประเมินผลการปฏิบัติราชการระดับดีเด่นและดีมาก', 14, '2563', '', '9_20200312104646.pdf');
INSERT INTO `ita_ebit_items` VALUES (54, 'ภาพการติดประกาศ เผยแพร่ผลการประเมินการปฏิบัติราชการประจำปี ของหน่วยงาน', 14, '2563', '', '9_20200312105730.pdf');
INSERT INTO `ita_ebit_items` VALUES (55, 'ภาพถ่าย ปิดประกาศแนวทางจัดการเรื่องร้องเรียน', 16, '2563', '', '9_20200312111058.pdf');
INSERT INTO `ita_ebit_items` VALUES (56, 'หนังสือเชิญประชุม', 21, '2563', '', '9_20200312113012.pdf');
INSERT INTO `ita_ebit_items` VALUES (57, 'คู่มือ การบริหารจัดการผลประโยชน์ทับซ้อน สสอ.เมือง2563', 21, '2563', '', '9_20200312113033.pdf');
INSERT INTO `ita_ebit_items` VALUES (58, 'คู่มือผลประโยชน์ทับซ้อน สสอ.เมือง ปี 63', 21, '2563', '', '9_20200312113051.pdf');
INSERT INTO `ita_ebit_items` VALUES (59, 'ประกาศ มาตรการป้องกันการทุจริต', 21, '2563', '', '9_20200312113109.pdf');
INSERT INTO `ita_ebit_items` VALUES (60, 'รายงานประชุม-สสอ.เมืองผลประโยชน์ทับซ้อน', 21, '2563', '', '9_20200312113145.pdf');
INSERT INTO `ita_ebit_items` VALUES (61, 'เสนอรายงานสรุปผลการจัดประชุม', 21, '2563', '', '9_20200312113418.pdf');
INSERT INTO `ita_ebit_items` VALUES (62, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน', 21, '2563', '', '9_20200312113634.pdf');
INSERT INTO `ita_ebit_items` VALUES (63, 'หนังสือเชิญ', 22, '2563', '', '9_20200312115106.pdf');
INSERT INTO `ita_ebit_items` VALUES (64, 'รายงานประชุม-สสอ.เมืองผลประโยชน์ทับซ้อน', 22, '2563', '', '9_20200312115127.pdf');
INSERT INTO `ita_ebit_items` VALUES (65, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน', 22, '2563', '', '9_20200312115145.pdf');
INSERT INTO `ita_ebit_items` VALUES (66, 'เสนอรายงานสรุปผลการจัดประชุม', 22, '2563', '', '9_20200312115203.pdf');
INSERT INTO `ita_ebit_items` VALUES (67, 'ภาพกิจกรรมประกาศเจตนารมณ์', 22, '2563', '', '9_20200312115222.pdf');
INSERT INTO `ita_ebit_items` VALUES (68, 'บันทึกเสนอประกาศ', 8, '2563', '', '9_20200312133310.pdf');
INSERT INTO `ita_ebit_items` VALUES (69, 'คำสั่ง กำหนดผู้รับผิดชอบในการดำเนินงานเผยแพร่ข้อมูล', 8, '2563', '', '9_20200312133326.pdf');
INSERT INTO `ita_ebit_items` VALUES (70, 'พรบ.ข้อมูลข่าวสาร พ.ศ.2540', 8, '2563', 'https://drive.google.com/open?id=1eOC1qr8DIzP-O8-A-grNFsFQkXnFB-fG', '');
INSERT INTO `ita_ebit_items` VALUES (71, 'รายละเอียดแนบท้ายคำสั่ง ประกาศ', 8, '2563', '', '9_20200312133550.pdf');
INSERT INTO `ita_ebit_items` VALUES (72, 'รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูล', 8, '2563', '', '9_20200312133608.pdf');
INSERT INTO `ita_ebit_items` VALUES (73, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 8, '2563', '', '9_20200312133624.pdf');
INSERT INTO `ita_ebit_items` VALUES (74, 'คู่มือบริการประชาชน', 26, '2563', '', '9_20200316110917.pdf');
INSERT INTO `ita_ebit_items` VALUES (75, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 26, '2563', '', '9_20200316110938.pdf');
INSERT INTO `ita_ebit_items` VALUES (76, 'รายงานการประเมินผลการปฏิบัติตามแผนปฏิบัติการ ปี 62', 11, '2563', '', '9_20200316115307.pdf');
INSERT INTO `ita_ebit_items` VALUES (77, 'สรุปผลการดำเนินงาน PA 5 เรื่อง', 11, '2563', '', '9_20200316124750.pdf');
INSERT INTO `ita_ebit_items` VALUES (79, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 1, '2563', '', '9_20200514115206.pdf');
INSERT INTO `ita_ebit_items` VALUES (80, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   ตุลาคม  ๒๕62 – พฤศจิกายน  ๒๕๖๒', 4, '2563', '', '9_20200518113930.pdf');
INSERT INTO `ita_ebit_items` VALUES (81, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   ธันวาคม  ๒๕๖๒', 4, '2563', '', '9_20200518114012.pdf');
INSERT INTO `ita_ebit_items` VALUES (82, 'http://203.157.185.28/ssomuang/index.php/admin_ita_ebit_items', 4, '2563', '', '9_20200518114446.pdf');
INSERT INTO `ita_ebit_items` VALUES (83, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   กุมภาพันธ์ 2563', 4, '2563', '', '9_20200518114539.pdf');
INSERT INTO `ita_ebit_items` VALUES (84, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   มีนาคม 2563', 4, '2563', '', '9_20200518114600.pdf');
INSERT INTO `ita_ebit_items` VALUES (85, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   เมษายน 2563', 4, '2563', '', '9_20200518114623.pdf');
INSERT INTO `ita_ebit_items` VALUES (86, 'รายงานสรุปผลการกำกับ ติดตาม ผลการดำเนินงานตามแผนปฏิบัติการเครือข่ายบริการสุขภาพอำเภอเมืองมหาสารคาม ประจำปี 2563', 12, '2563', '', '9_20200519120222.pdf');
INSERT INTO `ita_ebit_items` VALUES (87, 'ขออนุมติแผนปฏบิตัการป้องกัน ปราบปรามการทุจริตและขออนุญาตเผยแพร่ผ่านเว็ปไซต์', 23, '2563', '', '9_20200521144054.pdf');
INSERT INTO `ita_ebit_items` VALUES (88, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำงบปี 2563', 23, '2563', '', '9_20200521144148.pdf');
INSERT INTO `ita_ebit_items` VALUES (89, 'อนุมัติแผนปฏิบัติการชมรมจริยธรรม และเผยแพร่ขึ้นเว็ป', 23, '2563', '', '9_20200521144234.pdf');
INSERT INTO `ita_ebit_items` VALUES (90, 'แผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณ 2563', 23, '2563', '', '9_20200521144335.pdf');
INSERT INTO `ita_ebit_items` VALUES (91, 'โครงการส่งเสริมและสนับสนุนการประเมินคุณธรรมและความโปร่งใสในการดำเนินงานของหน่วยงาน', 23, '2563', '', '9_20200521144553.pdf');
INSERT INTO `ita_ebit_items` VALUES (92, '1.บันทึกข้อความขออนุมัติดำเนินโครงการ', 5, '2563', '', '9_20200602151212.pdf');
INSERT INTO `ita_ebit_items` VALUES (93, '2.โครงการ พชอ. ปี 2563', 5, '2563', '', '9_20200602151354.pdf');
INSERT INTO `ita_ebit_items` VALUES (94, '3.รายงานการประชุมพชอ.ครั้งที่1-63', 5, '2563', '', '9_20200602151415.pdf');
INSERT INTO `ita_ebit_items` VALUES (95, '3.1เซนชื่อ ประชุม พชอ. ครั้งที่ 1', 5, '2563', '', '9_20200602151510.pdf');
INSERT INTO `ita_ebit_items` VALUES (96, '4.ภาพการประชุมคณะกรรมการ พชอ', 5, '2563', '', '9_20200602151534.pdf');
INSERT INTO `ita_ebit_items` VALUES (97, '5.ขออนุมัติจัดประชุม', 5, '2563', '', '9_20200602151552.pdf');
INSERT INTO `ita_ebit_items` VALUES (98, '6.ขออนุมัติเผยแพร่สรุปผลการประชุม', 5, '2563', '', '9_20200602151609.pdf');
INSERT INTO `ita_ebit_items` VALUES (99, 'แจ้งโอนเงิน โครงการ พชอ.63', 5, '2563', '', '9_20200602162147.pdf');
INSERT INTO `ita_ebit_items` VALUES (100, 'คำสั่ง พชอ.63', 5, '2563', '', '9_20200602162330.pdf');
INSERT INTO `ita_ebit_items` VALUES (101, 'ผู้บริหารหน่วยงาน', 9, '2563', 'http://203.157.185.28/ssomuang/index.php/base_data/boss', '');
INSERT INTO `ita_ebit_items` VALUES (102, 'นโยบายผู้บริหาร', 9, '2563', 'http://203.157.185.28/ssomuang/index.php/base_data/policy', '');
INSERT INTO `ita_ebit_items` VALUES (103, '1.บันทึกข้อความขออนุมัติดำเนินโครงการ', 6, '2563', '', '9_20200608153517.pdf');
INSERT INTO `ita_ebit_items` VALUES (104, '2.โครงการ พชอ. ปี 2563', 6, '2563', '', '9_20200608153617.pdf');
INSERT INTO `ita_ebit_items` VALUES (105, '3.รายงานการประชุมพชอ.ครั้งที่1-63', 6, '2563', '', '9_20200608153638.pdf');
INSERT INTO `ita_ebit_items` VALUES (106, '3.1เซนชื่อ ประชุม พชอ. ครั้งที่ 1', 6, '2563', '', '9_20200608153658.pdf');
INSERT INTO `ita_ebit_items` VALUES (107, '4.ภาพการประชุมคณะกรรมการ พชอ', 6, '2563', '', '9_20200608154024.pdf');
INSERT INTO `ita_ebit_items` VALUES (108, '5.ขออนุมัติจัดประชุม', 6, '2563', '', '9_20200608154042.pdf');
INSERT INTO `ita_ebit_items` VALUES (109, '6.ขออนุมัติเผยแพร่สรุปผลการประชุม', 6, '2563', '', '9_20200608154103.pdf');
INSERT INTO `ita_ebit_items` VALUES (110, 'คำสั่ง พชอ.63', 6, '2563', '', '9_20200608154127.pdf');
INSERT INTO `ita_ebit_items` VALUES (111, 'คำสั่งแต่งตั้งคณะกรรมการ จิตอาสา', 6, '2563', '', '9_20200608154145.pdf');
INSERT INTO `ita_ebit_items` VALUES (112, 'แจ้งโอนเงิน โครงการ พชอ.63', 6, '2563', '', '9_20200608154223.pdf');
INSERT INTO `ita_ebit_items` VALUES (113, 'แผนปฏิบัติงาน', 6, '2563', '', '9_20200608154238.pdf');
INSERT INTO `ita_ebit_items` VALUES (114, '1.บันทึกข้อความขออนุมัติดำเนินโครงการ', 7, '2563', '', '9_20200608154304.pdf');
INSERT INTO `ita_ebit_items` VALUES (115, '2.โครงการ พชอ. ปี 2563', 7, '2563', '', '9_20200608154322.pdf');
INSERT INTO `ita_ebit_items` VALUES (116, '3.หนังสือขอประชุม', 7, '2563', '', '9_20200608154337.pdf');
INSERT INTO `ita_ebit_items` VALUES (117, '4.รายงานการประชุมพชอ.ครั้งที่263', 7, '2563', '', '9_20200608154352.pdf');
INSERT INTO `ita_ebit_items` VALUES (118, '5.เซนชื่อ ประชุม พชอ. ครั้งที่ 2', 7, '2563', '', '9_20200608154409.pdf');
INSERT INTO `ita_ebit_items` VALUES (119, '6.ขออนุมัติเผยแพร่สรุปผลการประชุม', 7, '2563', '', '9_20200608154427.pdf');
INSERT INTO `ita_ebit_items` VALUES (120, '7.แผนปฏิบัติงานจิตอาสา เอื้ออาทร', 7, '2563', '', '9_20200608154458.pdf');
INSERT INTO `ita_ebit_items` VALUES (121, '8.สรุปผลงาน จิตอาสาเอื้ออาทร  3 มิย 63', 7, '2563', '', '9_20200608154613.pdf');
INSERT INTO `ita_ebit_items` VALUES (122, 'รายงานผลการกำกับติดตาม แผนปฏิบัติการดำเนินการใน 2 ไตรมาส', 24, '2563', '', '9_20200609140631.pdf');
INSERT INTO `ita_ebit_items` VALUES (123, 'รายงานผลการกำกับติดตามการดำเนินงานของชมรมจริยธรรม', 24, '2563', '', '9_20200609140753.pdf');
INSERT INTO `ita_ebit_items` VALUES (124, '1.กลไกการตรวจสอบการปฏิบัติงาน', 25, '2563', '', '9_20200609150641.pdf');
INSERT INTO `ita_ebit_items` VALUES (125, '2.รายงานประชุม ปจด1-63 ประเด็นชี้แจงวาระงานITA', 25, '2563', '', '9_20200609150704.pdf');
INSERT INTO `ita_ebit_items` VALUES (126, '3.รายงานผลการดำเนินงานตามกรอบ', 25, '2563', '', '9_20200609150720.pdf');
INSERT INTO `ita_ebit_items` VALUES (127, 'แบบแสดง Link หลักฐาน', 9, '2563', '', '9_20200610134029.docx');
INSERT INTO `ita_ebit_items` VALUES (133, 'บันทึกข้อความเสนอผู้บริหาร และขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 29, '2564', '', '7_20210312102613.pdf');
INSERT INTO `ita_ebit_items` VALUES (258, 'รายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2563', 29, '2564', '', '7_20210312103040.pdf');
INSERT INTO `ita_ebit_items` VALUES (259, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 31, '2564', '', '7_20210312131832.pdf');
INSERT INTO `ita_ebit_items` VALUES (260, 'แบบ สขร.1 ตค.63', 31, '2564', '', '7_20210312131938.pdf');
INSERT INTO `ita_ebit_items` VALUES (261, 'แบบ สขร.1 พย.63', 31, '2564', '', '7_20210312132016.pdf');
INSERT INTO `ita_ebit_items` VALUES (262, 'แบบ สขร.1 ธค..63', 31, '2564', '', '7_20210312132043.pdf');
INSERT INTO `ita_ebit_items` VALUES (265, 'แบบ สขร.1 มีค..64', 31, '2564', '', '7_20210312132217.pdf');
INSERT INTO `ita_ebit_items` VALUES (266, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 30, '2564', '', '7_20210312153732.pdf');
INSERT INTO `ita_ebit_items` VALUES (267, 'หนังสือแจ้งจัดสรรงบประมาณ', 30, '2564', '', '7_20210312153834.pdf');
INSERT INTO `ita_ebit_items` VALUES (268, 'แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุของหน่วยงาน ประจำปีงบประมาณ พ.ศ. 2564', 30, '2564', '', '7_20210312153958.pdf');
INSERT INTO `ita_ebit_items` VALUES (269, 'คำสั่งมอบหมายการปิดประกาศ หรือปลดประกาศ', 30, '2564', '', '7_20210312154046.pdf');
INSERT INTO `ita_ebit_items` VALUES (270, 'หนังสือรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 30, '2564', '', '7_20210312160406.pdf');
INSERT INTO `ita_ebit_items` VALUES (271, 'รายงานผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ..ศ. 2564', 30, '2564', '', '7_20210312160452.pdf');
INSERT INTO `ita_ebit_items` VALUES (272, 'หนังสือแจ้งเวียนประกาศกระทรวง', 30, '2564', '', '7_20210312161633.pdf');
INSERT INTO `ita_ebit_items` VALUES (273, 'ประกาศกระทรวง', 30, '2564', '', '7_20210312161716.pdf');
INSERT INTO `ita_ebit_items` VALUES (274, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 30, '2564', '', '7_20210312161803.pdf');
INSERT INTO `ita_ebit_items` VALUES (275, 'แบบ สขร.1 มค..64', 31, '2564', '', '7_20210312181857.pdf');
INSERT INTO `ita_ebit_items` VALUES (276, 'แบบ สขร.1 กพ..64', 31, '2564', '', '7_20210312181926.pdf');
INSERT INTO `ita_ebit_items` VALUES (277, 'รายงานจัดซื้อจัดจ้าง ตค.63-มีค.64', 30, '2564', '', '7_20210312183513.pdf');
INSERT INTO `ita_ebit_items` VALUES (278, 'บันทึกข้อความลงนามคำสั่ง หรือประกาศมาตรการการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำและขออนุญาตเผยแพร่', 33, '2564', '', '7_20210312203622.pdf');
INSERT INTO `ita_ebit_items` VALUES (279, 'ประกาศมาตรการการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 33, '2564', '', '7_20210312203745.pdf');
INSERT INTO `ita_ebit_items` VALUES (280, 'หนังสือแจ้งเวียนเชิญประชุม', 33, '2564', '', '7_20210312203915.pdf');
INSERT INTO `ita_ebit_items` VALUES (281, '1. บันทึกข้อความลงนามคำสั่ง และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 27, '2564', '', '9_20210313113757.pdf');
INSERT INTO `ita_ebit_items` VALUES (282, 'บันทึกข้อความลงนามในประกาศผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก และปรากฎการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 34, '2564', '', '7_20210313124716.pdf');
INSERT INTO `ita_ebit_items` VALUES (283, 'ประกาศรายงานการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก', 34, '2564', '', '7_20210313124758.pdf');
INSERT INTO `ita_ebit_items` VALUES (284, 'กรอบแนวทางการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 33, '2564', '', '7_20210313142553.pdf');
INSERT INTO `ita_ebit_items` VALUES (285, 'หลักฐานการประชุมชี้แจงทำความเข้าใจให้ทราบทั่วทั้งองค์กรของปีงบประมาณ พ.ศ. 2564', 33, '2564', '', '7_20210313143215.pdf');
INSERT INTO `ita_ebit_items` VALUES (286, 'ภาพการติดประกาศรายงานการประเมินผล ฯ - รอบ 2 ปีงบประมาณ พ.ศ. 2563 (เมษายน 2563 - กันยายน 2563)', 34, '2564', '', '7_20210313145738.pdf');
INSERT INTO `ita_ebit_items` VALUES (288, 'แผนงาน', 35, '2564', '', '7_20210313155623.pdf');
INSERT INTO `ita_ebit_items` VALUES (289, 'บันทึกข้อความรายงานผลการดำเนินงาน', 35, '2564', '', '7_20210313160108.pdf');
INSERT INTO `ita_ebit_items` VALUES (290, 'บันทึกข้อความลงนามคำสั่ง ประกาศ หรือข้อสั่งการ และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 39, '2564', '', '7_20210313170029.pdf');
INSERT INTO `ita_ebit_items` VALUES (291, 'ประกาศ มาตรการการป้องกันการรับสินบน', 39, '2564', '', '7_20210313170121.pdf');
INSERT INTO `ita_ebit_items` VALUES (292, 'หนังสือแจ้งเวียน', 39, '2564', '', '7_20210313170202.pdf');
INSERT INTO `ita_ebit_items` VALUES (293, 'บันทึกข้อความรายงานผลการดำเนินงาน', 39, '2564', '', '7_20210313170237.pdf');
INSERT INTO `ita_ebit_items` VALUES (295, '2. คำสั่ง มาตรการ กลไก หรือระบบในการดำเนินการกำหนดให้มีการเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน', 27, '2564', '', '9_20210313171212.pdf');
INSERT INTO `ita_ebit_items` VALUES (296, '3. กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน รายละเอียดเนื้อหาในข้อ 2) ข้อ 2.1 ถึงข้อ 2.3', 27, '2564', '', '9_20210313172805.pdf');
INSERT INTO `ita_ebit_items` VALUES (297, '4. รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน ต้องเป็นรายงานของปีงบประมาณ พ.ศ. 2563', 27, '2564', '', '9_20210313173608.pdf');
INSERT INTO `ita_ebit_items` VALUES (298, '1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย ชื่อ-นามสกุล ตำแหน่ง รูปถ่าย หมายเลขโทรศัพท์', 28, '2564', '', '9_20210313174536.pdf');
INSERT INTO `ita_ebit_items` VALUES (303, '1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', 28, '2564', '', '9_20210313174859.pdf');
INSERT INTO `ita_ebit_items` VALUES (304, '1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', 28, '2564', '', '9_20210313175013.pdf');
INSERT INTO `ita_ebit_items` VALUES (305, '1.7 ข้อมูลการติดต่อ ประกอบด้วย ที่อยู่หน่วยงาน หมายเลขโทรศัพท์ หมายเลขโทรสาร ที่อยู่ไปรษณีย์อิเล็กทรอนิกส์ แผนที่ตั้งหน่วยงาน', 28, '2564', '', '9_20210313182644.pdf');
INSERT INTO `ita_ebit_items` VALUES (306, '1.10 ยุทธศาสตร์ของประเทศ โดยรวม', 28, '2564', '', '9_20210313183403.pdf');
INSERT INTO `ita_ebit_items` VALUES (307, '1.11 พระราชบัญญัติมาตรฐานทางจริยธรรม พ.ศ. 2562', 28, '2564', '', '9_20210313183705.pdf');
INSERT INTO `ita_ebit_items` VALUES (308, '1.12 ประมวลจริยธรรมข้าราชการพลเรือน พ.ศ. 2552', 28, '2564', '', '9_20210313183830.pdf');
INSERT INTO `ita_ebit_items` VALUES (310, '	1.13 ข้อบังคับสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยจรรยาข้าราชการสำนักงานปลัดกระทรวงสาธารณสุข พ.ศ. 2560', 28, '2564', '', '9_20210313184048.pdf');
INSERT INTO `ita_ebit_items` VALUES (312, '1.14 อินโฟกราฟฟิกคณะกรรมการจริยธรรม ประจำสำนักงานปลัดกระทรวงสาธารณสุข ชุดปัจจุบัน', 28, '2564', '', '9_20210313184503.png');
INSERT INTO `ita_ebit_items` VALUES (313, '1.15 จรรยาบรรณกระทรวงสาธารณสุข (MOPH Code of Conduct)', 28, '2564', '', '9_20210313185216.pdf');
INSERT INTO `ita_ebit_items` VALUES (314, '3. แผนปฏิบัติการประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนปฏิบัติการประจำปีของหน่วยงาน (แผนปฏิบัติการประจำปีของหน่วยงาน ทุกแผน)', 28, '2564', '', '9_20210313190333.pdf');
INSERT INTO `ita_ebit_items` VALUES (315, '4. แผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน', 28, '2564', '', '9_20210313190724.pdf');
INSERT INTO `ita_ebit_items` VALUES (316, '5. หลักเกณฑ์ / ขั้นตอนการแก้ไขปัญหาในกรณีที่มีการร้องเรียนเรื่องการปฏิบัติงาน หรือการให้บริการของเจ้าหน้าที่', 28, '2564', '', '9_20210313190914.pdf');
INSERT INTO `ita_ebit_items` VALUES (317, '7. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ', 28, '2564', '', '9_20210313191259.pdf');
INSERT INTO `ita_ebit_items` VALUES (318, '9.1 การวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีที่ผ่านมา (ปีงบประมาณ พ.ศ. 2563)', 28, '2564', '', '9_20210313191458.pdf');
INSERT INTO `ita_ebit_items` VALUES (319, '9.2 แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปี', 28, '2564', '', '9_20210313191615.pdf');
INSERT INTO `ita_ebit_items` VALUES (320, '9.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีประจำปีตามรอบระยะเวลาที่กำหนดในกรอบแนวทาง', 28, '2564', '', '9_20210313191918.pdf');
INSERT INTO `ita_ebit_items` VALUES (321, '9.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีประจำปีตามรอบระยะเวลาที่กำหนดในกรอบแนวทาง', 28, '2564', '', '9_20210313191941.pdf');
INSERT INTO `ita_ebit_items` VALUES (322, '9.4 ประกาศสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยแนวทางปฏิบัติงานเพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง พ.ศ. 2560', 28, '2564', '', '9_20210313192155.pdf');
INSERT INTO `ita_ebit_items` VALUES (323, '9.5 แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน ปีงบประมาณ พ.ศ. 2564 (แบบ สขร. 1)', 28, '2564', '', '9_20210313192352.pdf');
INSERT INTO `ita_ebit_items` VALUES (324, '10. คู่มือการปฏิบัติงานตามภารกิจหลักและภารกิจสนับสนุนของหน่วยงาน', 28, '2564', '', '9_20210313193315.pdf');
INSERT INTO `ita_ebit_items` VALUES (325, '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจ และภารกิจของหน่วยงาน และเป็นข้อมูลข่าวสารที่เกิดขึ้นในปีงบประมาณ พ.ศ. 2564', 28, '2564', '', '9_20210313194148.jpg');
INSERT INTO `ita_ebit_items` VALUES (326, '1.16 ข่าวประชาสัมพันธ์', 28, '2564', '', '9_20210313194424.jpg');
INSERT INTO `ita_ebit_items` VALUES (327, 'หนังสือเชิญประชุม', 45, '2564', '', '7_20210313195938.pdf');
INSERT INTO `ita_ebit_items` VALUES (328, 'สรุปผลการประชุมวิเคราะห์ความเสี่ยง', 45, '2564', '', '7_20210313200031.pdf');
INSERT INTO `ita_ebit_items` VALUES (329, 'รายงานวิเคราะห์ความเสี่ยง', 45, '2564', '', '7_20210313200106.pdf');
INSERT INTO `ita_ebit_items` VALUES (330, 'หนังสือเสนอผู้บริหารเพื่อทราบ และสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 45, '2564', '', '7_20210313200146.pdf');
INSERT INTO `ita_ebit_items` VALUES (331, 'บันทึกข้อความลงนามและขออนุญาตเผยแพร่', 46, '2564', '', '7_20210314112934.pdf');
INSERT INTO `ita_ebit_items` VALUES (332, 'แนวการปฏิบัติเพื่อป้องกันผลประโยชน์ทับซ้อนของหน่วยงานที่มีความสอดคล้องตามบทวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน', 46, '2564', '', '7_20210314113029.pdf');
INSERT INTO `ita_ebit_items` VALUES (333, 'หนังสือแจ้งเวียน', 46, '2564', '', '7_20210314113104.pdf');
INSERT INTO `ita_ebit_items` VALUES (334, 'บันทึกข้อความรับทราบการกำกับติดตาม และรายงานผลการดำเนินงานตามแนวการปฏิบัติเพื่อป้องกันผลประโยชน์ทับซ้อนของหน่วยงาน', 46, '2564', '', '7_20210314113214.pdf');
INSERT INTO `ita_ebit_items` VALUES (335, 'บันทึกข้อความรายงานผลการดำเนินงาน', 47, '2564', '', '7_20210314122255.pdf');
INSERT INTO `ita_ebit_items` VALUES (336, 'แผนงาน', 47, '2564', '', '7_20210314122318.pdf');
INSERT INTO `ita_ebit_items` VALUES (337, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2564', 43, '2564', '', '7_20210314141451.pdf');
INSERT INTO `ita_ebit_items` VALUES (338, 'แผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงานในสังกัดสำนักงานปลัดกระทรวงสาธารณสุข ราชการบริหารส่วนภูมิภาค ประจำปีงบประมาณ พ.ศ. 2564', 43, '2564', '', '7_20210314141530.pdf');
INSERT INTO `ita_ebit_items` VALUES (339, 'รายงานผลการกำกับติดตามการดำเนินการ รอบ 6 เดือน', 44, '2564', '', '7_20210314150027.pdf');
INSERT INTO `ita_ebit_items` VALUES (340, 'หนังสือเสนอผู้บริหารเพื่อทราบ และสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 44, '2564', '', '7_20210314150104.pdf');
INSERT INTO `ita_ebit_items` VALUES (341, 'รายงานผลการกำกับติดตามการดำเนินการตามข้อกำหนดของคู่มือการขับเคลื่อนชมรมจริยธรรมของหน่วยงาน', 44, '2564', '', '7_20210314150207.pdf');
INSERT INTO `ita_ebit_items` VALUES (342, 'แบบรายงานผลการดำเนินงานตามแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงาน', 44, '2564', '', '7_20210314150328.pdf');
INSERT INTO `ita_ebit_items` VALUES (343, '1. คู่มือการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 36, '2564', '', '9_20210314163627.pdf');
INSERT INTO `ita_ebit_items` VALUES (344, 'บันทึกข้อความ', 32, '2564', '', '7_20210314164400.pdf');
INSERT INTO `ita_ebit_items` VALUES (345, '2. คู่มือปฏิบัติงานการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 36, '2564', '', '9_20210314164435.pdf');
INSERT INTO `ita_ebit_items` VALUES (346, 'นโยบายผู้บริหารด้านการบริหารงานบุคคล', 32, '2564', '', '7_20210314164440.pdf');
INSERT INTO `ita_ebit_items` VALUES (347, '3.1 รอบ 6 เดือน หลักฐานการรายงานผล ฯ ให้ผู้ร้องเรียนทราบ ภายใน 15 วัน (เดือนตุลาคม 2563 - มีนาคม 2564)', 36, '2564', '', '9_20210314170418.pdf');
INSERT INTO `ita_ebit_items` VALUES (348, '4. หลักฐานที่แสดงถึงช่องทางการร้องเรียน อาทิ ผ่านระบบหมายเลขโทรศัพท์ผ่านระบบอินเตอร์เน็ต ผ่านระบบไปรษณีย์ ผ่าน Application หรือช่องทางอื่น ๆ ที่หน่วยงานกำหนดตามความเหมาะสม', 36, '2564', '', '9_20210314171830.pdf');
INSERT INTO `ita_ebit_items` VALUES (349, 'รายงานสรุปผลการดำเนินการเรื่องร้องเรียน', 37, '2564', '', '9_20210314172620.pdf');
INSERT INTO `ita_ebit_items` VALUES (350, 'บันทึกข้อความลงนามประกาศเจตนารมณ์การป้องกันและแก้ไขปัญหาการล่วงละเมิด หรือคุกคามทางเพศในการทำงาน', 50, '2564', '', '7_20210315095319.pdf');
INSERT INTO `ita_ebit_items` VALUES (351, 'ประกาศเจตนารมณ์การป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน', 50, '2564', '', '7_20210315095352.pdf');
INSERT INTO `ita_ebit_items` VALUES (352, 'คู่มือแนวปฏิบัติการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงานของหน่วยงาน', 50, '2564', '', '7_20210315095433.pdf');
INSERT INTO `ita_ebit_items` VALUES (355, 'หนังสือแจ้งเวียน', 50, '2564', '', '7_20210315102833.pdf');
INSERT INTO `ita_ebit_items` VALUES (356, 'แบบรายงาน', 50, '2564', '', '7_20210315102908.pdf');
INSERT INTO `ita_ebit_items` VALUES (363, 'หนังสือขออนุมัติ', 43, '2564', '', '7_20210315105836.pdf');
INSERT INTO `ita_ebit_items` VALUES (365, 'หนังสือขออนุญาตเผยแพร่', 43, '2564', '', '7_20210315110107.pdf');
INSERT INTO `ita_ebit_items` VALUES (366, 'บันทึกข้อความรายงานผลการดำเนินงาน', 48, '2564', '', '7_20210315114111.pdf');
INSERT INTO `ita_ebit_items` VALUES (367, 'แผนงาน', 48, '2564', '', '7_20210315114130.pdf');
INSERT INTO `ita_ebit_items` VALUES (368, '1.2 โครงการ / กิจกรรม', 38, '2564', '', '9_20210315130636.pdf');
INSERT INTO `ita_ebit_items` VALUES (369, 'ขอเผยแพร่วัตถุประสงค์', 49, '2564', '', '7_20210315141641.pdf');
INSERT INTO `ita_ebit_items` VALUES (370, 'แนวทางการดำเนินงาน', 49, '2564', '', '7_20210315141709.pdf');
INSERT INTO `ita_ebit_items` VALUES (371, 'รายชื่อสมาชิก', 49, '2564', '', '7_20210315141734.pdf');
INSERT INTO `ita_ebit_items` VALUES (372, 'บันทึกข้อความรายงานผลการดำเนินงาน', 49, '2564', '', '7_20210315141758.pdf');
INSERT INTO `ita_ebit_items` VALUES (373, 'บันทึกข้อความรายงานผลการดำเนินงาน', 39, '2564', '', '7_20210315143924.pdf');
INSERT INTO `ita_ebit_items` VALUES (374, 'รายงานประชุมโครงการ / กิจกรรมที่แสดงชื่อผู้ใช้บริการ ผู้มีส่วนได้ส่วนเสีย มาร่วมในการดำเนินการ ตามภารกิจที่เลือก ที่ผู้บริหารรับทราบ', 38, '2564', '', '9_20210315153735.pdf');
INSERT INTO `ita_ebit_items` VALUES (375, '5. ภาพกิจกรรม ที่ระบุวัน เวลา สถานที่จัดกิจกรรมที่ชัดเจน', 38, '2564', '', '9_20210315154326.pdf');
INSERT INTO `ita_ebit_items` VALUES (376, 'บันทึกข้อความลงนามและขอเผยแพร่', 40, '2564', '', '7_20210315155252.pdf');
INSERT INTO `ita_ebit_items` VALUES (377, 'หนังสือแจ้งเวียน', 40, '2564', '', '7_20210315155310.pdf');
INSERT INTO `ita_ebit_items` VALUES (378, 'แนวปฏิบัติเกี่ยวกับการยืมพัสดุ', 40, '2564', '', '7_20210315162124.pdf');
INSERT INTO `ita_ebit_items` VALUES (379, 'หนังสือแจ้งเวียน', 40, '2564', '', '7_20210315163319.pdf');
INSERT INTO `ita_ebit_items` VALUES (380, '1.1 บันทึกข้อความขออนุมัติดำเนินโครงการ และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 38, '2564', '', '9_20210315165213.pdf');
INSERT INTO `ita_ebit_items` VALUES (381, '6. บันทึกข้อความรายงานผู้บริหารรับทราบ สั่งการ และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 38, '2564', '', '9_20210315165342.pdf');
INSERT INTO `ita_ebit_items` VALUES (382, 'ข้อสั่งการ', 41, '2564', '', '7_20210315170724.pdf');
INSERT INTO `ita_ebit_items` VALUES (383, 'แบบฟอร์มใบยืม', 41, '2564', '', '7_20210315170759.pdf');
INSERT INTO `ita_ebit_items` VALUES (384, 'หนังสือแจ้งเวียน', 41, '2564', '', '7_20210315170816.pdf');
INSERT INTO `ita_ebit_items` VALUES (385, 'บันทึกข้อความลงนามประกาศ', 42, '2564', '', '7_20210315182247.docx');
INSERT INTO `ita_ebit_items` VALUES (386, 'ประกาศ', 42, '2564', '', '7_20210315182309.pdf');
INSERT INTO `ita_ebit_items` VALUES (387, 'ภาพกิจกรรม', 42, '2564', '', '7_20210315182340.pdf');
INSERT INTO `ita_ebit_items` VALUES (388, 'ลงนาประกาศ', 42, '2564', '', '7_20210315182612.pdf');
INSERT INTO `ita_ebit_items` VALUES (389, 'บันทึกข้อความเสนอแผนจริยธรรม', 43, '2564', '', '7_20210405114400.pdf');
INSERT INTO `ita_ebit_items` VALUES (390, 'ขอเผยแพร่แผนส่งเสริมจริยธรรม', 43, '2564', '', '7_20210405114453.pdf');
INSERT INTO `ita_ebit_items` VALUES (393, 'แบบฟอร์มที่ 1 แผนส่งเสริมจริยธรรม', 43, '2564', '', '7_20210405120744.pdf');
INSERT INTO `ita_ebit_items` VALUES (394, 'แบบฟอร์ม 2 และ 3', 44, '2564', '', '7_20210405144504.pdf');
INSERT INTO `ita_ebit_items` VALUES (395, 'บันทึกข้อความรายงานผลการดำเนินงานและขอเผยแพร่', 44, '2564', '', '7_20210405144611.pdf');
INSERT INTO `ita_ebit_items` VALUES (396, 'รายงานและขอเผยแพ่', 45, '2564', '', '7_20210405160758.pdf');
INSERT INTO `ita_ebit_items` VALUES (397, 'รายงานการประชุม', 45, '2564', '', '7_20210405160826.pdf');
INSERT INTO `ita_ebit_items` VALUES (398, 'บันทึกข้อความประกาศ', 46, '2564', '', '7_20210405194530.pdf');
INSERT INTO `ita_ebit_items` VALUES (399, 'บันทึกข้อความรายงานผลการดำเนินงานตามประกาศ', 46, '2564', '', '7_20210405194607.pdf');
INSERT INTO `ita_ebit_items` VALUES (400, 'บันทึกข้อความขออนุมัติโครงการ', 35, '2564', '', '7_20210610095151.pdf');
INSERT INTO `ita_ebit_items` VALUES (401, 'บันทึกข้อความขออนุมัติโครงการ', 35, '2564', '', '7_20210610095158.pdf');
INSERT INTO `ita_ebit_items` VALUES (402, 'บันทึกข้อความขออนุมัติโครงการ', 35, '2564', '', '7_20210610095205.pdf');
INSERT INTO `ita_ebit_items` VALUES (403, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 35, '2564', '', '7_20210610095450.pdf');
INSERT INTO `ita_ebit_items` VALUES (404, 'โครงการ', 35, '2564', '', '7_20210610095527.pdf');
INSERT INTO `ita_ebit_items` VALUES (405, 'รายชื่อผู้เข้าร่วมอบรม', 35, '2564', '', '7_20210610095619.pdf');
INSERT INTO `ita_ebit_items` VALUES (406, 'บันทึกข้อความเสนอผู้บริหาร', 35, '2564', '', '7_20210610095834.pdf');
INSERT INTO `ita_ebit_items` VALUES (407, 'บันทึกข้อความเสนอผู้บริหาร', 35, '2564', '', '7_20210610095947.pdf');
INSERT INTO `ita_ebit_items` VALUES (408, 'บันทึกข้อความเสนอผู้บริหาร', 35, '2564', '', '7_20210610100126.pdf');
INSERT INTO `ita_ebit_items` VALUES (409, 'บันทึกข้อความรายงานผลการดำเนินงาน', 35, '2564', '', '7_20210610103348.pdf');
INSERT INTO `ita_ebit_items` VALUES (410, 'ภาพกิจกรรม', 35, '2564', '', '7_20210610103804.pdf');
INSERT INTO `ita_ebit_items` VALUES (411, 'บันทึกข้อความลงนามประกาศ', 39, '2564', '', '7_20210610151537.pdf');
INSERT INTO `ita_ebit_items` VALUES (412, 'ประกาศ', 39, '2564', '', '7_20210610151617.pdf');
INSERT INTO `ita_ebit_items` VALUES (413, 'หนังสือแจ้งเวียน', 39, '2564', '', '7_20210610151640.pdf');
INSERT INTO `ita_ebit_items` VALUES (414, 'บันทึกข้อความรายงานผล', 39, '2564', '', '7_20210610151723.pdf');
INSERT INTO `ita_ebit_items` VALUES (415, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 47, '2564', '', '7_20210611150400.pdf');
INSERT INTO `ita_ebit_items` VALUES (416, 'โครงการ', 47, '2564', '', '7_20210611150430.pdf');
INSERT INTO `ita_ebit_items` VALUES (417, 'รายชื่อผู้เข้าร่วมอบรม', 47, '2564', '', '7_20210611150519.pdf');
INSERT INTO `ita_ebit_items` VALUES (418, 'บันทึกเสนอผู้บริหาาร', 47, '2564', '', '7_20210611150609.pdf');
INSERT INTO `ita_ebit_items` VALUES (419, 'รายงานการดำเนินงาน', 47, '2564', '', '7_20210611150700.pdf');
INSERT INTO `ita_ebit_items` VALUES (420, 'ภาพกิจกรรม', 47, '2564', '', '7_20210611150721.pdf');
INSERT INTO `ita_ebit_items` VALUES (421, 'บันทึกข้อความขออนุมัติโครงการ', 48, '2564', '', '7_20210611183134.pdf');
INSERT INTO `ita_ebit_items` VALUES (422, 'โครงการ', 47, '2564', '', '7_20210611183158.pdf');
INSERT INTO `ita_ebit_items` VALUES (423, 'รายชื่อผู้เข้าร่วมโครงการ', 47, '2564', '', '7_20210611183252.pdf');
INSERT INTO `ita_ebit_items` VALUES (424, 'บันทึกข้อความรายงานผลการดำเนินงาน', 47, '2564', '', '7_20210611183318.pdf');
INSERT INTO `ita_ebit_items` VALUES (425, 'บันทึกข้อความรายงานผลการดำเนินงาน', 47, '2564', '', '7_20210611183350.pdf');
INSERT INTO `ita_ebit_items` VALUES (426, 'ภาพกิจกรรม', 47, '2564', '', '7_20210611183417.pdf');
INSERT INTO `ita_ebit_items` VALUES (427, 'รายงานผู้บริหาร', 47, '2564', '', '7_20210611183521.pdf');
INSERT INTO `ita_ebit_items` VALUES (428, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 48, '2564', '', '7_20210613191554.pdf');
INSERT INTO `ita_ebit_items` VALUES (429, 'โครงการ', 48, '2564', '', '7_20210613191621.pdf');
INSERT INTO `ita_ebit_items` VALUES (430, 'รายชื่อผู้เข้าร่วมโครงการ', 48, '2564', '', '7_20210613191707.pdf');
INSERT INTO `ita_ebit_items` VALUES (431, 'บันทึกข้อความรายงานผลการดำเนินงานต่อผู้บริหาร', 48, '2564', '', '7_20210613191809.pdf');
INSERT INTO `ita_ebit_items` VALUES (432, 'บันทึกข้อความรายงานผลการดำเนินงาน', 48, '2564', '', '7_20210613191836.pdf');
INSERT INTO `ita_ebit_items` VALUES (433, 'ภาพกิจกรรม', 48, '2564', '', '7_20210613191900.pdf');
INSERT INTO `ita_ebit_items` VALUES (434, 'แบบ สขร.1 เมย..64', 31, '2564', '', '7_20210613194923.pdf');
INSERT INTO `ita_ebit_items` VALUES (435, 'แบบ สขร.1 พค.64', 31, '2564', '', '7_20210613195010.pdf');
INSERT INTO `ita_ebit_items` VALUES (436, 'แบบ สขร.1 มิย.64', 31, '2564', '', '7_20210613195041.pdf');
INSERT INTO `ita_ebit_items` VALUES (437, 'เอกสารการจัดซื้อจัดจ้าง', 30, '2564', '', '7_20210613212919.pdf');
INSERT INTO `ita_ebit_items` VALUES (438, 'แบบ สขร 1 เดือน ก.ค.64', 31, '2564', '', '7_20210901093949.pdf');
INSERT INTO `ita_ebit_items` VALUES (439, 'แบบ สขร 1  สค.64', 31, '2564', '', '7_20210901094203.pdf');
INSERT INTO `ita_ebit_items` VALUES (440, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 36, '2564', '', '7_20210901110738.pdf');
INSERT INTO `ita_ebit_items` VALUES (441, 'หน่วยงานมีข้อมูลเชิงสถิติเรื่องร้องเรียนรอบ 12 เดือน', 37, '2564', '', '7_20210901111607.pdf');
INSERT INTO `ita_ebit_items` VALUES (442, 'แบบ สขร 1  กย.64', 31, '2564', '', '7_20210901113134.pdf');
INSERT INTO `ita_ebit_items` VALUES (443, 'บันทึกข้อความลงนามในคำสั่ง', 52, '2565', 'http://203.157.185.28/ssokudrang/assets/uploads/9_20211229121352.pdf', '9_20211229121750.pdf');
INSERT INTO `ita_ebit_items` VALUES (450, 'คำสั่ง มาตรการ', 52, '2565', '', '9_20211229125912.pdf');
INSERT INTO `ita_ebit_items` VALUES (452, 'กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซด์', 52, '2565', '', '9_20211229130914.pdf');
INSERT INTO `ita_ebit_items` VALUES (453, 'แบบฟอร์มการเผยแพร่ข้อมูล', 52, '2565', '', '9_20211229131343.pdf');
INSERT INTO `ita_ebit_items` VALUES (454, 'บันทึกลงนามรับทราบ การติดตามการเผยแพร่ข้อมูล', 52, '2565', '', '9_20211229142145.PDF');
INSERT INTO `ita_ebit_items` VALUES (455, 'รายงานผลการติดตามการเผยแพร่ข้อมูล', 52, '2565', '', '9_20211229142227.pdf');
INSERT INTO `ita_ebit_items` VALUES (456, 'แบบฟอร์มการเผยแพร่ข้อมูล 2.3', 52, '2565', '', '9_20211229142455.PDF');
INSERT INTO `ita_ebit_items` VALUES (457, '	1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย (1) รูปถ่าย (2) ชื่อ-นามสกุล (3) ตำแหน่ง และ (4) หมายเลขโทรศัพท์ (มีครบ 4 รายการ)', 53, '2565', '', '9_20211229220834.pdf');
INSERT INTO `ita_ebit_items` VALUES (458, '1.2 นโยบายของผู้บริหาร', 53, '2565', '', '9_20211229221753.pdf');
INSERT INTO `ita_ebit_items` VALUES (459, 'โครงสร้างหน่วยงาน', 53, '2565', '', '9_20211230095049.pdf');
INSERT INTO `ita_ebit_items` VALUES (460, '1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', 53, '2565', '', '9_20211230095616.pdf');
INSERT INTO `ita_ebit_items` VALUES (461, '1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', 53, '2565', '', '9_20211230095911.pdf');
INSERT INTO `ita_ebit_items` VALUES (463, '1.7 ข้อมูลการติดต่อ ประกอบด้วย ที่อยู่หน่วยงาน หมายเลขโทรศัพท์ หมายเลขโทรสาร ที่อยู่ไปรษณีย์อิเล็กทรอนิกส์ แผนที่ตั้งหน่วยงาน', 53, '2565', '', '9_20211230102027.pdf');
INSERT INTO `ita_ebit_items` VALUES (465, '2. วิสัยทัศน์ พันธกิจ ค่านิยม', 53, '2565', '', '9_20211230103052.pdf');
INSERT INTO `ita_ebit_items` VALUES (466, '3.พระราชบัญญัติมาตรฐานทางจริยธรรม 2562', 53, '2565', '', '9_20211230103624.pdf');
INSERT INTO `ita_ebit_items` VALUES (467, '4.ประมวลจริยธรรมข้าราชการพลเรือน', 53, '2565', '', '9_20211230105923.PDF');
INSERT INTO `ita_ebit_items` VALUES (468, '5.ข้อกำหนดจริยธรรมเจ้าหน้าที่ของรัฐ สนง ปลัดกระทรวงสาสุข 2564', 53, '2565', '', '9_20211230111009.pdf');
INSERT INTO `ita_ebit_items` VALUES (469, 'อินโฟกราฟฟิก', 53, '2565', '', '9_20211230111204.png');
INSERT INTO `ita_ebit_items` VALUES (470, 'ึ7.ยุทธศาสตร์ของประเทศโดยรวม', 53, '2565', '', '9_20211230111337.PDF');
INSERT INTO `ita_ebit_items` VALUES (471, '8.นโยบายและยุทธศาสตร์ของหน่วยงาน', 53, '2565', '', '9_20211230111519.pdf');
INSERT INTO `ita_ebit_items` VALUES (472, 'บันทึกข้อความรายงานผู้บริหารรับทราบและขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 54, '2565', '', '7_20211230114841.pdf');
INSERT INTO `ita_ebit_items` VALUES (473, 'รายงานการวิเคราะห์จัดซื้อจัดจ้างในปีที่ผ่านมา', 54, '2565', '', '7_20211230114945.pdf');
INSERT INTO `ita_ebit_items` VALUES (474, 'ฟอร์มขอเผยแพร่', 54, '2565', '', '7_20211230115028.pdf');
INSERT INTO `ita_ebit_items` VALUES (475, 'บันทึกข้อความขออนุมัติผู้บริหารและขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 55, '2565', '', '7_20211230121007.pdf');
INSERT INTO `ita_ebit_items` VALUES (476, 'หนังสิอแจ้งจัดสรรงบประมาณ', 55, '2565', '', '7_20211230121219.pdf');
INSERT INTO `ita_ebit_items` VALUES (477, 'แผนงาน', 55, '2565', '', '7_20211230121302.pdf');
INSERT INTO `ita_ebit_items` VALUES (478, 'คำสั่งมอบหมายการปิดประกาศ หรือปลดประกาศ', 55, '2565', '', '7_20211230121355.pdf');
INSERT INTO `ita_ebit_items` VALUES (479, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20211230121419.pdf');
INSERT INTO `ita_ebit_items` VALUES (480, 'บันทึกข้อความรายงานผลการดำเนินงาน', 55, '2565', '', '7_20211230121614.pdf');
INSERT INTO `ita_ebit_items` VALUES (481, 'รายงานจัดซื้อจัดจ้าง ตค.64-ธค.64', 55, '2565', '', '7_20211230121732.pdf');
INSERT INTO `ita_ebit_items` VALUES (482, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20211230121752.pdf');
INSERT INTO `ita_ebit_items` VALUES (483, 'หนังสือแจ้งเวียน', 55, '2565', '', '7_20211230121847.pdf');
INSERT INTO `ita_ebit_items` VALUES (484, 'ประกาศกระทรวง', 55, '2565', '', '7_20211230121929.pdf');
INSERT INTO `ita_ebit_items` VALUES (485, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20211230121947.pdf');
INSERT INTO `ita_ebit_items` VALUES (486, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 56, '2565', '', '7_20211230124831.pdf');
INSERT INTO `ita_ebit_items` VALUES (487, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 56, '2565', '', '7_20211230124832.pdf');
INSERT INTO `ita_ebit_items` VALUES (488, 'แบบ สขร.1 ตค..64', 56, '2565', '', '7_20211230124922.pdf');
INSERT INTO `ita_ebit_items` VALUES (489, 'แบบ สขร.1 พย..64', 56, '2565', '', '7_20211230124953.pdf');
INSERT INTO `ita_ebit_items` VALUES (490, 'แบบ สขร.1 ธค..64', 56, '2565', '', '7_20211230125034.pdf');
INSERT INTO `ita_ebit_items` VALUES (491, 'ฟอร์มขอเผยแพร่', 56, '2565', '', '7_20211230130256.pdf');
INSERT INTO `ita_ebit_items` VALUES (492, 'ภาพติดประกาศ', 55, '2565', '', '7_20211230143752.pdf');
INSERT INTO `ita_ebit_items` VALUES (493, '9.แผนปฏิบัติการประจำปีของหน่วยงาน ', 53, '2565', '', '9_20211230144500.pdf');
INSERT INTO `ita_ebit_items` VALUES (494, '11.คู่มือปฏิบัติงานการร้องเรียนการปฏิบัติงาน', 53, '2565', '', '9_20211230145355.pdf');
INSERT INTO `ita_ebit_items` VALUES (495, '12.คู่มือปฏิบัติงาน และประพฤติมิชอบ', 53, '2565', '', '9_20211230145425.pdf');
INSERT INTO `ita_ebit_items` VALUES (496, '15 รายงานผลการดำเนินการเกี่ยวกับการร้องเรียน', 53, '2565', '', '9_20211230152157.pdf');
INSERT INTO `ita_ebit_items` VALUES (497, '16 รายงานผลการดำเนินการเกี่ยวกับการประพฤติมิชอบ', 53, '2565', '', '9_20211230152714.pdf');
INSERT INTO `ita_ebit_items` VALUES (498, '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจ และภารกิจของหน่วยงาน และเป็นข้อมูลข่าวสารที่เกิดขึ้นในปีงบประมาณ พ.ศ. 2564', 53, '2565', '', '9_20211230153038.jpg');
INSERT INTO `ita_ebit_items` VALUES (499, '17.4', 53, '2565', '', '9_20211230154144.pdf');
INSERT INTO `ita_ebit_items` VALUES (500, 'แบบฟอร์มการเผยแพร่ข้อมูล ข้อมูลพื้นที่เป็นปัจจุบัน 1.1-1.8', 52, '2565', '', '9_20220111140945.pdf');
INSERT INTO `ita_ebit_items` VALUES (501, 'แบบฟอร์มการเผยแพร่ข้อมูล 2.', 53, '2565', '', '9_20220111141045.pdf');
INSERT INTO `ita_ebit_items` VALUES (502, 'แบบฟอร์มการเผยแพร่ข้อมูล 1.1-1.8', 53, '2565', '', '9_20220111141244.pdf');
INSERT INTO `ita_ebit_items` VALUES (503, 'แบบฟอร์มการเผยแพร่ข้อมูล 3.', 53, '2565', '', '9_20220111141906.pdf');
INSERT INTO `ita_ebit_items` VALUES (504, 'แบบฟอร์มการเผยแพร่ข้อมูล 4.', 53, '2565', '', '9_20220111141928.pdf');
INSERT INTO `ita_ebit_items` VALUES (505, 'แบบฟอร์มการเผยแพร่ข้อมูล 5.', 53, '2565', '', '9_20220111141954.pdf');
INSERT INTO `ita_ebit_items` VALUES (506, 'แบบฟอร์มการเผยแพร่ข้อมูล 7.', 53, '2565', '', '9_20220111142030.pdf');
INSERT INTO `ita_ebit_items` VALUES (507, 'แบบฟอร์มการเผยแพร่ข้อมูล 8.', 53, '2565', '', '9_20220111142054.pdf');
INSERT INTO `ita_ebit_items` VALUES (508, 'แบบฟอร์มการเผยแพร่ข้อมูล 9.', 53, '2565', '', '9_20220111142657.pdf');
INSERT INTO `ita_ebit_items` VALUES (509, 'แบบฟอร์มการเผยแพร่ข้อมูล 9.', 53, '2565', '', '9_20220111142702.pdf');
INSERT INTO `ita_ebit_items` VALUES (510, 'แบบฟอร์มการเผยแพร่ข้อมูล 10.', 53, '2565', '', '9_20220111142901.pdf');
INSERT INTO `ita_ebit_items` VALUES (511, 'แบบฟอร์มการเผยแพร่ข้อมูล 11.', 53, '2565', '', '9_20220111142923.pdf');
INSERT INTO `ita_ebit_items` VALUES (512, 'แบบฟอร์มการเผยแพร่ข้อมูล 12.', 53, '2565', '', '9_20220111142948.pdf');
INSERT INTO `ita_ebit_items` VALUES (513, 'แบบฟอร์มการเผยแพร่ข้อมูล 13.', 53, '2565', '', '9_20220111143014.pdf');
INSERT INTO `ita_ebit_items` VALUES (514, 'แบบฟอร์มการเผยแพร่ข้อมูล 14.', 53, '2565', '', '9_20220111143031.pdf');
INSERT INTO `ita_ebit_items` VALUES (515, 'แบบฟอร์มการเผยแพร่ข้อมูล 15-16', 53, '2565', '', '9_20220111143056.pdf');
INSERT INTO `ita_ebit_items` VALUES (516, 'แบบฟอร์มการเผยแพร่ข้อมูล 17.', 53, '2565', '', '9_20220111143124.pdf');
INSERT INTO `ita_ebit_items` VALUES (517, 'บันทึกข้อความรายงานผลการจัดซื้อจัดจ้าง', 55, '2565', '', '7_20220327123521.pdf');
INSERT INTO `ita_ebit_items` VALUES (518, 'แบบ สขร.1  มค.65-มีค.65', 55, '2565', '', '7_20220327123626.pdf');
INSERT INTO `ita_ebit_items` VALUES (519, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20220327123654.pdf');
INSERT INTO `ita_ebit_items` VALUES (520, 'บันทึกข้อความรายงานผลการจัดซื้อจัดจ้างและขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 56, '2565', '', '7_20220327135848.pdf');
INSERT INTO `ita_ebit_items` VALUES (521, 'แบบ สขร.1 มค..65', 56, '2565', '', '7_20220327135931.pdf');
INSERT INTO `ita_ebit_items` VALUES (522, 'แบบ สขร.1 กพ.65', 56, '2565', '', '7_20220327140019.pdf');
INSERT INTO `ita_ebit_items` VALUES (523, 'แบบ สขร.1 มีค..65', 56, '2565', '', '7_20220327140101.pdf');
INSERT INTO `ita_ebit_items` VALUES (524, 'ฟอร์มขอเผยแพร่', 56, '2565', '', '7_20220327140128.pdf');
INSERT INTO `ita_ebit_items` VALUES (525, 'บันทึกข้อความลงนามนโยบายการบริหารงานบุคคล', 57, '2565', '', '7_20220328131441.pdf');
INSERT INTO `ita_ebit_items` VALUES (526, 'นโยบายผู้บริหารด้านการบริหารงานบุคคล', 57, '2565', '', '7_20220328131509.pdf');
INSERT INTO `ita_ebit_items` VALUES (527, 'ฟอร์มขอเผยแพร่', 57, '2565', '', '7_20220328131532.pdf');
INSERT INTO `ita_ebit_items` VALUES (528, 'บันทึกข้อความลงนามแผนการบริหารงานบุคคล', 57, '2565', '', '7_20220328144242.pdf');
INSERT INTO `ita_ebit_items` VALUES (529, 'แผนการบริหารงานบุคคล', 57, '2565', '', '7_20220328144359.pdf');
INSERT INTO `ita_ebit_items` VALUES (530, 'ฟอร์มขอเผยแพร่แผน', 57, '2565', '', '7_20220328144429.pdf');
INSERT INTO `ita_ebit_items` VALUES (531, 'หนังสือแจ้งเวียนประกาศ', 58, '2565', '', '7_20220328163840.pdf');
INSERT INTO `ita_ebit_items` VALUES (532, 'ประกาศนโยบาย', 58, '2565', '', '7_20220328163917.pdf');
INSERT INTO `ita_ebit_items` VALUES (533, 'ฟอร์มขอเผยแพร่', 58, '2565', '', '7_20220328163937.pdf');
INSERT INTO `ita_ebit_items` VALUES (534, 'หนังสือแจ้งเวียนทำความเข้าใจ', 58, '2565', '', '7_20220329102143.pdf');
INSERT INTO `ita_ebit_items` VALUES (535, 'ประกาศ สสอ.กุดรัง', 58, '2565', '', '7_20220329111409.pdf');
INSERT INTO `ita_ebit_items` VALUES (536, 'ประกาศ สสอ.กุดรัง', 58, '2565', '', '7_20220329111412.pdf');
INSERT INTO `ita_ebit_items` VALUES (537, 'กรอบแนวทางการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 58, '2565', '', '7_20220329112551.pdf');
INSERT INTO `ita_ebit_items` VALUES (538, 'บันทึกข้อลงนามและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 58, '2565', '', '7_20220329113046.pdf');
INSERT INTO `ita_ebit_items` VALUES (539, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113708.pdf');
INSERT INTO `ita_ebit_items` VALUES (540, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113711.pdf');
INSERT INTO `ita_ebit_items` VALUES (541, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113717.pdf');
INSERT INTO `ita_ebit_items` VALUES (542, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113721.pdf');
INSERT INTO `ita_ebit_items` VALUES (543, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113725.pdf');
INSERT INTO `ita_ebit_items` VALUES (544, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113729.pdf');
INSERT INTO `ita_ebit_items` VALUES (545, 'บันทึกข้อความลงนามประกาศ', 59, '2565', '', '7_20220329150131.pdf');
INSERT INTO `ita_ebit_items` VALUES (546, 'ฟอร์มขอเผยแพร่', 59, '2565', '', '7_20220329153242.pdf');
INSERT INTO `ita_ebit_items` VALUES (547, 'ประกาศ', 59, '2565', '', '7_20220329155321.pdf');
INSERT INTO `ita_ebit_items` VALUES (548, 'หลักฐาน', 59, '2565', '', '7_20220329155348.pdf');
INSERT INTO `ita_ebit_items` VALUES (549, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 60, '2565', '', '7_20220329171936.pdf');
INSERT INTO `ita_ebit_items` VALUES (550, 'โครงการ', 60, '2565', '', '7_20220329171957.pdf');
INSERT INTO `ita_ebit_items` VALUES (551, 'รายชื่อผู้เข้าร่วมโครงการ', 60, '2565', '', '7_20220329172031.pdf');
INSERT INTO `ita_ebit_items` VALUES (552, 'บันทึกข้อความเสนอผู้บริหาร', 60, '2565', '', '7_20220329172120.pdf');
INSERT INTO `ita_ebit_items` VALUES (553, 'รายงานการดำเนินงาน', 60, '2565', '', '7_20220329172157.pdf');
INSERT INTO `ita_ebit_items` VALUES (554, 'ภาพกิจกรรม', 60, '2565', '', '7_20220329172224.pdf');
INSERT INTO `ita_ebit_items` VALUES (555, 'ฟอร์มขอเผยแพร่', 60, '2565', '', '7_20220329172242.pdf');
INSERT INTO `ita_ebit_items` VALUES (556, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 64, '2565', '', '7_20220330140726.pdf');
INSERT INTO `ita_ebit_items` VALUES (557, 'ประกาศ', 64, '2565', '', '7_20220330141013.pdf');
INSERT INTO `ita_ebit_items` VALUES (558, 'หนังสือแจ้งเวียน', 64, '2565', '', '7_20220330141140.pdf');
INSERT INTO `ita_ebit_items` VALUES (559, 'ฟอร์มขอเผยแพร่', 64, '2565', '', '7_20220330141202.pdf');
INSERT INTO `ita_ebit_items` VALUES (560, 'บันทึกข้อความสั่งการและขอเผยแพร่', 66, '2565', '', '7_20220330154729.pdf');
INSERT INTO `ita_ebit_items` VALUES (561, 'แนวปฏิบัติเกี่ยวกับการยืมพัสดุ', 66, '2565', '', '7_20220330154814.pdf');
INSERT INTO `ita_ebit_items` VALUES (562, 'หนังสือแจ้งเวียน', 66, '2565', '', '7_20220330154921.pdf');
INSERT INTO `ita_ebit_items` VALUES (563, 'ฟอร์มขอเผยแพร่', 66, '2565', '', '7_20220330154941.pdf');
INSERT INTO `ita_ebit_items` VALUES (565, '1.1 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220124.pdf');
INSERT INTO `ita_ebit_items` VALUES (566, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220148.pdf');
INSERT INTO `ita_ebit_items` VALUES (567, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220255.pdf');
INSERT INTO `ita_ebit_items` VALUES (568, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220317.pdf');
INSERT INTO `ita_ebit_items` VALUES (569, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220535.pdf');
INSERT INTO `ita_ebit_items` VALUES (570, 'คู่มือปฏิบัติงานการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 61, '2565', '', '9_20220330221222.pdf');
INSERT INTO `ita_ebit_items` VALUES (571, 'คู่มือปฏิบัติงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่', 61, '2565', '', '9_20220330221332.pdf');
INSERT INTO `ita_ebit_items` VALUES (572, 'หลักฐานการรับเรื่องร้องเรียน', 61, '2565', '', '9_20220330221401.pdf');
INSERT INTO `ita_ebit_items` VALUES (573, '1.1 บันทึกข้อความรายงาน', 62, '2565', '', '9_20220330231116.pdf');
INSERT INTO `ita_ebit_items` VALUES (574, '1.2 บันทึกข้อความรายงาน', 62, '2565', '', '9_20220330231514.pdf');
INSERT INTO `ita_ebit_items` VALUES (575, '1.3 รอบ 6 เดือน', 62, '2565', '', '9_20220330231538.pdf');
INSERT INTO `ita_ebit_items` VALUES (576, '1.4 แบบฟอร์มการเผยแพร่ข้อมูล', 62, '2565', '', '9_20220330231613.pdf');
INSERT INTO `ita_ebit_items` VALUES (577, '1 ขออนุมัติโครงการ', 63, '2565', '', '9_20220330235226.pdf');
INSERT INTO `ita_ebit_items` VALUES (578, '2 โครงการ', 63, '2565', '', '9_20220330235402.pdf');
INSERT INTO `ita_ebit_items` VALUES (579, 'บันทึกข้อความลงนามและขออนุญาตเผยแพร่', 65, '2565', '', '7_20220331102105.pdf');
INSERT INTO `ita_ebit_items` VALUES (580, 'ประกาศ', 65, '2565', '', '7_20220331102138.pdf');
INSERT INTO `ita_ebit_items` VALUES (581, 'หนังสือแจ้งเวียน', 65, '2565', '', '7_20220331102201.pdf');
INSERT INTO `ita_ebit_items` VALUES (582, 'ประกาศเจตจำนงสุจริต', 65, '2565', '', '7_20220331102240.pdf');
INSERT INTO `ita_ebit_items` VALUES (583, 'ภาพกิจกรรม', 65, '2565', '', '7_20220331102257.pdf');
INSERT INTO `ita_ebit_items` VALUES (584, 'ฟอร์มขอเผยแพร่', 65, '2565', '', '7_20220331102316.pdf');
INSERT INTO `ita_ebit_items` VALUES (585, 'บันทึกข้อความเสนอผู้บริหารและขอเผยแพร่', 67, '2565', '', '7_20220331133425.pdf');
INSERT INTO `ita_ebit_items` VALUES (586, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2565', 67, '2565', '', '7_20220331133506.pdf');
INSERT INTO `ita_ebit_items` VALUES (587, 'ฟอร์มขอเผยแพร่', 67, '2565', '', '7_20220331133545.pdf');
INSERT INTO `ita_ebit_items` VALUES (588, 'บันทึกข้อความลงนามและขออนุญาตเผยแพร่แผนส่งเสริมคุณธรรม', 67, '2565', '', '7_20220331133648.pdf');
INSERT INTO `ita_ebit_items` VALUES (589, 'แผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงาน ปีงบประมาณ พ.ศ. 2565', 67, '2565', '', '7_20220331133743.pdf');
INSERT INTO `ita_ebit_items` VALUES (590, 'ฟอร์มขอเผยแพร่', 67, '2565', '', '7_20220331133803.pdf');
INSERT INTO `ita_ebit_items` VALUES (591, 'บันทึกข้อความรายงานผลตามแผนคุณธรรมและขออนุญาตเผยแพร่', 68, '2565', '', '7_20220331141954.pdf');
INSERT INTO `ita_ebit_items` VALUES (592, 'แบบฟอร์มที่ 2 รายงานผลตาม แผนส่งเสริมจริยธรรม', 68, '2565', '', '7_20220331142042.pdf');
INSERT INTO `ita_ebit_items` VALUES (593, 'ฟอร์มขอเผยแพร่', 68, '2565', '', '7_20220331142105.pdf');
INSERT INTO `ita_ebit_items` VALUES (594, 'บันทึกข้อความรายงานผู้บริหารและขออนุญาตนำเผยแพร่ผลตามแผนป้องกันและปราบปรามการทุจริต', 68, '2565', '', '7_20220331143711.pdf');
INSERT INTO `ita_ebit_items` VALUES (595, 'ฟอร์มขอเผยแพร่', 68, '2565', '', '7_20220331143726.pdf');
INSERT INTO `ita_ebit_items` VALUES (596, 'หนังสือเชิญประชุม', 59, '2565', '', '7_20220331153355.pdf');
INSERT INTO `ita_ebit_items` VALUES (597, 'สรุปผลการประชุมวิเคราะห์ความเสี่ยง', 69, '2565', '', '7_20220331153455.pdf');
INSERT INTO `ita_ebit_items` VALUES (598, 'สรุปผลการประชุมวิเคราะห์ความเสี่ยง', 69, '2565', '', '7_20220331153458.pdf');
INSERT INTO `ita_ebit_items` VALUES (599, 'รายงานการประชุมวิเคราะห์ความเสี่ยง', 69, '2565', '', '7_20220331153619.pdf');
INSERT INTO `ita_ebit_items` VALUES (600, 'เสนอผู้บริหารและขอเผยแพร่', 69, '2565', '', '7_20220331153706.pdf');
INSERT INTO `ita_ebit_items` VALUES (601, 'ฟอร์มขอเผยแพร่', 69, '2565', '', '7_20220331153738.pdf');
INSERT INTO `ita_ebit_items` VALUES (602, 'หนังสือเชิญประชุม', 69, '2565', '', '7_20220331154013.pdf');
INSERT INTO `ita_ebit_items` VALUES (603, 'บันทึกข้อความอนุมัติโครงการ', 63, '2565', '', '9_20220331162220.pdf');
INSERT INTO `ita_ebit_items` VALUES (604, 'โครงการ PPA 65', 63, '2565', '', '9_20220331162307.pdf');
INSERT INTO `ita_ebit_items` VALUES (605, 'รายงานประชุม', 63, '2565', '', '9_20220331162343.pdf');
INSERT INTO `ita_ebit_items` VALUES (606, 'รายงานสรุปผลการดำเนินงาน', 63, '2565', '', '9_20220331163033.pdf');
INSERT INTO `ita_ebit_items` VALUES (607, 'ภาพการดำเนินงาน', 63, '2565', '', '9_20220331163102.pdf');
INSERT INTO `ita_ebit_items` VALUES (608, 'บันทึกขออนุญาตเผยแพร่', 63, '2565', '', '9_20220331163131.pdf');
INSERT INTO `ita_ebit_items` VALUES (609, 'แบบฟอร์มการเผยแพร่ข้อมูล', 63, '2565', '', '9_20220331163145.pdf');
INSERT INTO `ita_ebit_items` VALUES (610, 'รายงานผลตามแผนการป้องกันปราบปรามการทุจริต', 68, '2565', '', '7_20220331164630.pdf');
INSERT INTO `ita_ebit_items` VALUES (611, 'บันทึกข้อความรายงานผลการดำเนินงานและขอเผยแพร่', 71, '2565', '', '7_20220331180106.pdf');
INSERT INTO `ita_ebit_items` VALUES (612, 'รายงานการเรี่ยไร', 71, '2565', '', '7_20220331180136.pdf');
INSERT INTO `ita_ebit_items` VALUES (613, 'ฟอร์มขอเผยแพร่', 71, '2565', '', '7_20220331180152.pdf');
INSERT INTO `ita_ebit_items` VALUES (614, 'บันทึกข้อความรายงานผลการดำเนินงานและขอเผยแพร่', 55, '2565', '', '7_20220629085353.pdf');
INSERT INTO `ita_ebit_items` VALUES (615, 'แบบ สขร.1  เมย.65-มิย.65 (งบลงทุน)', 55, '2565', '', '7_20220629085530.pdf');
INSERT INTO `ita_ebit_items` VALUES (616, 'แบบ สขร.1  เมย.65-มิย.65(งบดำเนินการ)', 55, '2565', '', '7_20220629085623.pdf');
INSERT INTO `ita_ebit_items` VALUES (617, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20220629085644.pdf');
INSERT INTO `ita_ebit_items` VALUES (618, 'บันทึกข้อความรายงานผลการดำเนินงาน', 56, '2565', '', '7_20220629103330.pdf');
INSERT INTO `ita_ebit_items` VALUES (619, 'แบบ สขร.1  เมย.65 (งบลงทุน)', 56, '2565', '', '7_20220629103450.pdf');
INSERT INTO `ita_ebit_items` VALUES (620, 'แบบ สขร.1  พค.65(งบลงทุน)', 56, '2565', '', '7_20220629103556.pdf');
INSERT INTO `ita_ebit_items` VALUES (621, 'แบบ สขร.1  พค.65(งบลงทุน)', 56, '2565', '', '7_20220629103557.pdf');
INSERT INTO `ita_ebit_items` VALUES (622, 'แบบ สขร.1  มิย.65(งบลงทุน)', 56, '2565', '', '7_20220629103637.pdf');
INSERT INTO `ita_ebit_items` VALUES (623, 'แบบ สขร.1  เมย.65(งบดำเนินการ)', 56, '2565', '', '7_20220629103751.pdf');
INSERT INTO `ita_ebit_items` VALUES (624, 'แบบ สขร.1  พค.65(งบดำเนินการ)', 56, '2565', '', '7_20220629103826.pdf');
INSERT INTO `ita_ebit_items` VALUES (625, 'แบบ สขร.1  มิย.65(งบดำเนินการ)', 56, '2565', '', '7_20220629104058.pdf');
INSERT INTO `ita_ebit_items` VALUES (626, 'ฟอร์มขอเผยแพร่', 56, '2565', '', '7_20220629104119.pdf');
INSERT INTO `ita_ebit_items` VALUES (627, 'บันทึกข้อความลงนามประกาศ', 73, '2565', '', '7_20220629122140.pdf');
INSERT INTO `ita_ebit_items` VALUES (628, 'ประกาศ', 73, '2565', '', '7_20220629122219.pdf');
INSERT INTO `ita_ebit_items` VALUES (629, 'กิจกรรม', 73, '2565', '', '7_20220629122303.pdf');
INSERT INTO `ita_ebit_items` VALUES (630, 'กิจกรรม', 73, '2565', '', '7_20220629122304.pdf');
INSERT INTO `ita_ebit_items` VALUES (631, 'ภาพกิจกรรม', 73, '2565', '', '7_20220629122322.pdf');
INSERT INTO `ita_ebit_items` VALUES (632, 'ฟอร์มขอเผยแพร่', 73, '2565', '', '7_20220629122400.pdf');
INSERT INTO `ita_ebit_items` VALUES (633, 'ภาพกิจกรรม', 73, '2565', '', '7_20220629123146.pdf');
INSERT INTO `ita_ebit_items` VALUES (634, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 74, '2565', '', '7_20220629132128.pdf');
INSERT INTO `ita_ebit_items` VALUES (635, 'ประกาศ', 74, '2565', '', '7_20220629132152.pdf');
INSERT INTO `ita_ebit_items` VALUES (636, 'คู่มือแนวทางปฏิบัติ', 74, '2565', '', '7_20220629132243.pdf');
INSERT INTO `ita_ebit_items` VALUES (637, 'หนังสือแจ้งเวียน', 74, '2565', '', '7_20220629132305.pdf');
INSERT INTO `ita_ebit_items` VALUES (638, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 72, '2565', '', '7_20220629141425.pdf');
INSERT INTO `ita_ebit_items` VALUES (639, 'โครงการ', 72, '2565', '', '7_20220629141447.pdf');
INSERT INTO `ita_ebit_items` VALUES (640, 'รายชื่อผู้เข้าร่วมอบรม', 72, '2565', '', '7_20220629141518.pdf');
INSERT INTO `ita_ebit_items` VALUES (641, 'บันทึกข้อความรายงานผลการดำเนินงานต่อผู้บริหาร', 72, '2565', '', '7_20220629141606.pdf');
INSERT INTO `ita_ebit_items` VALUES (642, 'รายงานการดำเนินงาน', 72, '2565', '', '7_20220629141630.pdf');
INSERT INTO `ita_ebit_items` VALUES (643, 'ภาพกิจกรรม', 72, '2565', '', '7_20220629141651.pdf');
INSERT INTO `ita_ebit_items` VALUES (644, 'ฟอร์มขอเผยแพร่', 72, '2565', '', '7_20220629141718.pdf');
INSERT INTO `ita_ebit_items` VALUES (645, 'ฟอร์มขอเผยแพร่', 59, '2565', '', '7_20220629162214.pdf');
INSERT INTO `ita_ebit_items` VALUES (646, 'บันทึกข้อความรายงานผลและขอเผยแพร่', 59, '2565', '', '7_20220629162303.pdf');
INSERT INTO `ita_ebit_items` VALUES (647, 'ประกาศ', 59, '2565', '', '7_20220629162332.pdf');
INSERT INTO `ita_ebit_items` VALUES (648, 'บันทึกประกาศ', 59, '2565', '', '7_20220629162411.pdf');
INSERT INTO `ita_ebit_items` VALUES (649, 'ประกาศดีเด่นและดีมาก', 59, '2565', '', '7_20220629162724.pdf');
INSERT INTO `ita_ebit_items` VALUES (650, 'ฟอร์มขอเผยแพร่', 70, '2565', '', '7_20220630095550.pdf');
INSERT INTO `ita_ebit_items` VALUES (651, 'รายชื่อสมาชิก', 70, '2565', '', '7_20220630095640.pdf');
INSERT INTO `ita_ebit_items` VALUES (652, 'แนวทางการดำเนินงาน', 70, '2565', '', '7_20220630095715.pdf');
INSERT INTO `ita_ebit_items` VALUES (653, 'เผยแพร่ประชาสัมพันธ์', 59, '2565', '', '7_20220630104845.pdf');
INSERT INTO `ita_ebit_items` VALUES (654, 'บันทึกข้อความลงนามประกาศ', 70, '2565', '', '7_20220630132310.pdf');
INSERT INTO `ita_ebit_items` VALUES (655, 'หนังสือแจ้งเวียน', 70, '2565', '', '7_20220630132340.pdf');
INSERT INTO `ita_ebit_items` VALUES (656, 'หนังสือแจ้งเวียน', 70, '2565', '', '7_20220630132454.pdf');
INSERT INTO `ita_ebit_items` VALUES (657, 'ฟอร์มขอเผยแพร่', 70, '2565', '', '7_20220630132515.pdf');
INSERT INTO `ita_ebit_items` VALUES (658, 'ฟอร์มขอเผยแพร่', 70, '2565', '', '7_20220630132521.pdf');
INSERT INTO `ita_ebit_items` VALUES (659, 'บันทึกข้อความรายงานผลการดำเนินงาน', 70, '2565', '', '7_20220630133323.pdf');
INSERT INTO `ita_ebit_items` VALUES (660, 'กิจกรรมการดำเนินงาน', 70, '2565', '', '7_20220630135908.pdf');
INSERT INTO `ita_ebit_items` VALUES (661, 'ประกาศมาตรการ', 70, '2565', '', '7_20220630143007.pdf');
INSERT INTO `ita_ebit_items` VALUES (662, 'คู่มือผลประโยชน์ทับซ้อน', 70, '2565', '', '7_20220630143046.pdf');
INSERT INTO `ita_ebit_items` VALUES (663, 'บันทึกข้อความรายงานผู้บริหาร', 55, '2565', '', '7_20220913092620.pdf');
INSERT INTO `ita_ebit_items` VALUES (664, 'แบบ สขร.1  กค-กย 65(งบลงทุน)', 55, '2565', '', '7_20220913092738.pdf');
INSERT INTO `ita_ebit_items` VALUES (665, 'แบบ สขร.1  กค-กย 65(งบดำเนินการ)', 55, '2565', '', '7_20220913092822.pdf');
INSERT INTO `ita_ebit_items` VALUES (666, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20220913092843.pdf');
INSERT INTO `ita_ebit_items` VALUES (667, 'บันทึกข้อความรายงานผู้บริหารไตรมาส4', 56, '2565', '', '7_20220913103754.pdf');
INSERT INTO `ita_ebit_items` VALUES (668, 'แบบ สขร 1 เดือน ก.ค.65(งบลงทุน)', 56, '2565', '', '7_20220913103859.pdf');
INSERT INTO `ita_ebit_items` VALUES (669, 'แบบ สขร 1 เดือน ก.ค.65(งบดำเนินการ)', 56, '2565', '', '7_20220913103946.pdf');
INSERT INTO `ita_ebit_items` VALUES (670, 'แบบ สขร 1 เดือน ส.ค.65(งบลงทุน)', 56, '2565', '', '7_20220913104033.pdf');
INSERT INTO `ita_ebit_items` VALUES (671, 'แบบ สขร 1 เดือน ส.ค.65(งบดำเนินการ)', 56, '2565', '', '7_20220913104111.pdf');
INSERT INTO `ita_ebit_items` VALUES (672, 'แบบ สขร 1 เดือน ก.ย.65(งบลงทุน)', 56, '2565', '', '7_20220913104149.pdf');
INSERT INTO `ita_ebit_items` VALUES (673, 'แบบ สขร 1 เดือน ก.ย.65(งบดำเนินการ)', 56, '2565', '', '7_20220913104244.pdf');
INSERT INTO `ita_ebit_items` VALUES (674, 'ฟอร์มขอเผยแพร่ไตรมาส4', 56, '2565', '', '7_20220913104642.pdf');
INSERT INTO `ita_ebit_items` VALUES (675, 'ฟอร์มขอเผยแพร่ไตรมาส4', 56, '2565', '', '7_20220913110152.pdf');
INSERT INTO `ita_ebit_items` VALUES (676, 'ฟอร์มขอเผยแพร่ไตรมาส4', 56, '2565', '', '7_20220913112753.pdf');
INSERT INTO `ita_ebit_items` VALUES (677, 'มีการตอบสนองต่อเรื่องร้องเรียนและข้อมูลเชิงสถิติเรื่องร้องเรียน', 62, '2565', '', '9_20220914101200.pdf');
INSERT INTO `ita_ebit_items` VALUES (678, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 62, '2565', '', '9_20220914101456.pdf');
INSERT INTO `ita_ebit_items` VALUES (679, 'บันทึกข้อความรายงานสรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 2', 62, '2565', '', '9_20220914101809.pdf');
INSERT INTO `ita_ebit_items` VALUES (680, 'สรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 3', 62, '2565', '', '9_20220914102108.pdf');
INSERT INTO `ita_ebit_items` VALUES (681, 'สรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 4', 62, '2565', '', '9_20220914102249.pdf');
INSERT INTO `ita_ebit_items` VALUES (682, 'แบบฟอร์มการเผยแพร่ข้อมูล ข้อ 5', 62, '2565', '', '9_20220914102412.pdf');
INSERT INTO `ita_ebit_items` VALUES (683, 'บันทึกข้อความรายงานผลการดำเนินงาน', 64, '2565', '', '7_20220914105213.pdf');
INSERT INTO `ita_ebit_items` VALUES (684, 'รายงานผลการดำเนินงาน', 64, '2565', '', '7_20220914105249.pdf');
INSERT INTO `ita_ebit_items` VALUES (685, 'ฟอร์มขอเผยแพร่', 64, '2565', '', '7_20220914105309.pdf');
INSERT INTO `ita_ebit_items` VALUES (686, 'บันทึกข้อความรายงานผลการดำเนินงาน', 64, '2565', '', '7_20220914105527.pdf');
INSERT INTO `ita_ebit_items` VALUES (687, 'บันทึกข้อความรายงานผลการดำเนินงาน', 65, '2565', '', '7_20220914131201.pdf');
INSERT INTO `ita_ebit_items` VALUES (688, 'รายงานผลการดำเนินงาน', 65, '2565', '', '7_20220914131237.pdf');
INSERT INTO `ita_ebit_items` VALUES (689, 'ฟอร์มขอเผยแพร่', 65, '2565', '', '7_20220914131253.pdf');
INSERT INTO `ita_ebit_items` VALUES (690, 'บันทึกข้อความรายงานผลตามแผนจริยธรรม', 68, '2565', '', '7_20220914143153.pdf');
INSERT INTO `ita_ebit_items` VALUES (691, 'รายงานผลตามแผนจริยธรรม', 68, '2565', '', '7_20220914143238.pdf');
INSERT INTO `ita_ebit_items` VALUES (692, 'ฟอร์มขอเผยแพร่จริยธรรม', 68, '2565', '', '7_20220914143327.pdf');
INSERT INTO `ita_ebit_items` VALUES (693, 'บันทึกข้อความรายงานผลการดำเนินงานตามแผนป้องกันปราบปรามทุจริต', 68, '2565', '', '7_20220914143428.pdf');
INSERT INTO `ita_ebit_items` VALUES (694, 'รายงานผลการดำเนินงานตามแผนป้องกันปราบปราบการทุจริต', 68, '2565', '', '7_20220914143530.pdf');
INSERT INTO `ita_ebit_items` VALUES (695, 'ฟอร์มขอเผยแพร่ผลการป้องกันและปราบปรามการทุจริต', 68, '2565', '', '7_20220914143630.pdf');
INSERT INTO `ita_ebit_items` VALUES (696, 'บันทึกข้อความรายงานผลการดำเนินงาน', 71, '2565', '', '7_20220914152800.pdf');
INSERT INTO `ita_ebit_items` VALUES (697, 'รายงานเรี่ยไร', 71, '2565', '', '7_20220914152843.pdf');
INSERT INTO `ita_ebit_items` VALUES (698, 'รายงานเรี่ยไร', 71, '2565', '', '7_20220914152857.pdf');
INSERT INTO `ita_ebit_items` VALUES (699, 'ฟอร์มขอเผยแพร่', 71, '2565', '', '7_20220914152917.pdf');
INSERT INTO `ita_ebit_items` VALUES (700, 'บันทึกข้อความรายงานผลการดำเนินงาน', 74, '2565', '', '7_20220914160756.pdf');
INSERT INTO `ita_ebit_items` VALUES (701, 'รายงานการดำเนินงาน', 74, '2565', '', '7_20220914160841.pdf');
INSERT INTO `ita_ebit_items` VALUES (702, 'ฟอร์มขอเผยแพร่', 74, '2565', '', '7_20220914160900.pdf');
INSERT INTO `ita_ebit_items` VALUES (708, '1.1 บันทึกข้อความลงนามคำสั่ง และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 75, '2566', '', '9_20221223153501.pdf');
INSERT INTO `ita_ebit_items` VALUES (709, '1.2คำสั่งแต่งตั้งเจ้าหน้าที่เผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์', 75, '2566', '', '9_20221223153523.PDF');
INSERT INTO `ita_ebit_items` VALUES (710, '1.3 กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน รายละเอียดเนื้อหาในข้อ 2) ข้อ 2.1 ถึงข้อ 2.3', 75, '2566', '', '9_20221223153552.PDF');
INSERT INTO `ita_ebit_items` VALUES (711, '1.4 แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์.', 75, '2566', '', '9_20221223153638.pdf');
INSERT INTO `ita_ebit_items` VALUES (712, '2.1 บันทึกข้อความรับทราบ และมีการขออนุญาตเผย', 75, '2566', '', '9_20221223153812.PDF');
INSERT INTO `ita_ebit_items` VALUES (713, '2.2รายงานผลการกำกับติดตามการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ ปีงบประมาณ พ.ศ.2565', 75, '2566', '', '9_20221223153853.PDF');
INSERT INTO `ita_ebit_items` VALUES (714, '2.3แบบฟอร์มการขอเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์', 75, '2566', '', '9_20221223153921.PDF');
INSERT INTO `ita_ebit_items` VALUES (715, 'บันทึกข้อความรายงานผลการดำเนินงาน', 77, '2566', '', '7_20221226101822.pdf');
INSERT INTO `ita_ebit_items` VALUES (716, 'รายงานผลการดำเนินงาน', 77, '2566', '', '7_20221226101858.pdf');
INSERT INTO `ita_ebit_items` VALUES (717, 'ฟอร์มขอเผยแพร่', 77, '2566', '', '7_20221226101932.pdf');
INSERT INTO `ita_ebit_items` VALUES (718, 'บันทึกข้อความเสนอผู้บริหารและขอเผยแพร่', 78, '2566', '', '7_20221226104051.pdf');
INSERT INTO `ita_ebit_items` VALUES (719, 'หนังสือแจ้งจัดสรร', 78, '2566', '', '7_20221226104134.pdf');
INSERT INTO `ita_ebit_items` VALUES (720, 'แผนการจัดซื้อจัดจ้างปีงบ66', 78, '2566', '', '7_20221226104242.pdf');
INSERT INTO `ita_ebit_items` VALUES (721, 'ภาพติดประกาศ', 78, '2566', '', '7_20221226104317.pdf');
INSERT INTO `ita_ebit_items` VALUES (722, 'คำสั่งมอบหมายการปิดประกาศ หรือปลดประกาศ', 78, '2566', '', '7_20221226104401.pdf');
INSERT INTO `ita_ebit_items` VALUES (723, 'ฟอร์มขอเผยแพร่', 78, '2566', '', '7_20221226104423.pdf');
INSERT INTO `ita_ebit_items` VALUES (724, 'บันทึกข้อความรายงานผลการดำเนินงาน', 78, '2566', '', '7_20221226141232.pdf');
INSERT INTO `ita_ebit_items` VALUES (725, 'แบบ สขร1', 78, '2566', '', '7_20221226141359.pdf');
INSERT INTO `ita_ebit_items` VALUES (726, 'ฟอร์มขอเผยแพร่', 78, '2566', '', '7_20221226141412.pdf');
INSERT INTO `ita_ebit_items` VALUES (727, 'แบบสขร1 งบดำเนินการ', 78, '2566', '', '7_20221226144416.pdf');
INSERT INTO `ita_ebit_items` VALUES (728, 'แบบสขร1 งบลงทุน', 78, '2566', '', '7_20221226144451.pdf');
INSERT INTO `ita_ebit_items` VALUES (729, 'หนังสือแจ้งเวียน', 78, '2566', '', '7_20221226145110.pdf');
INSERT INTO `ita_ebit_items` VALUES (730, 'ประกาศกระทรวง', 78, '2566', '', '7_20221226145233.pdf');
INSERT INTO `ita_ebit_items` VALUES (731, 'ฟอร์มขอเผยแพร่', 78, '2566', '', '7_20221226145248.pdf');
INSERT INTO `ita_ebit_items` VALUES (732, 'บันทึกข้อความรายงานผลการดำเนินงาน', 79, '2566', '', '7_20221226150826.pdf');
INSERT INTO `ita_ebit_items` VALUES (733, 'แบบสขร1 ตค65', 79, '2566', '', '7_20221226150955.pdf');
INSERT INTO `ita_ebit_items` VALUES (734, 'แบบสขร1พย65', 79, '2566', '', '7_20221226151033.pdf');
INSERT INTO `ita_ebit_items` VALUES (735, 'แบบสขร1 ธค 65', 79, '2566', '', '7_20221226151115.pdf');
INSERT INTO `ita_ebit_items` VALUES (736, 'ฟอร์มขอเผยแพร่', 79, '2566', '', '7_20221226151139.pdf');
INSERT INTO `ita_ebit_items` VALUES (737, '1.1 ข้อมูลผู้บริหาร', 76, '2566', '', '9_20221228102107.pdf');
INSERT INTO `ita_ebit_items` VALUES (739, '1.2 นโยบายของผู้บริหาร', 76, '2566', '', '9_20221228103230.pdf');
INSERT INTO `ita_ebit_items` VALUES (741, '1.3โครงสร้างหน่วยงาน', 76, '2566', '', '9_20221228103407.pdf');
INSERT INTO `ita_ebit_items` VALUES (742, '1.4 หน้าที่และอำนาจของหน่วยงาน ตามกฎหมายจัดตั้งหรือกฎหมายอื่นที่เกี่ยวข้อง', 76, '2566', '', '9_20221228103531.pdf');
INSERT INTO `ita_ebit_items` VALUES (743, '1.5 กฏหมายที่เกี่ยวข้อง', 76, '2566', '', '9_20221228103640.pdf');
INSERT INTO `ita_ebit_items` VALUES (744, '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงาน', 76, '2566', '', '9_20221228103847.PDF');
INSERT INTO `ita_ebit_items` VALUES (745, '1.7ข้อมูลการติดต่อหน่วยงาน', 76, '2566', '', '9_20221228104104.pdf');
INSERT INTO `ita_ebit_items` VALUES (746, '1.8 ช่องทางการรับฟังความคิดเห็น ที่บุคคลภายนอกสามารถแสดงความคิดเห็นต่อการดำเนินงานตามหน้าที่และอำนาจ ตามภารกิจของหน่วยงาน', 76, '2566', '', '9_20221228104223.pdf');
INSERT INTO `ita_ebit_items` VALUES (747, '1.3โครงสร้างหน่วยงาน', 76, '2566', '', '9_20221229104552.pdf');
INSERT INTO `ita_ebit_items` VALUES (748, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221229105713.pdf');
INSERT INTO `ita_ebit_items` VALUES (749, '2.วิสัยทัศน์ พันธกิจ ค่านิยม MOPH', 76, '2566', '', '9_20221230080454.pdf');
INSERT INTO `ita_ebit_items` VALUES (750, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230080521.pdf');
INSERT INTO `ita_ebit_items` VALUES (751, '3.พระราชบัญญัติมาตรฐานทางจริยธรรม พ.ศ.2562', 76, '2566', '', '9_20221230080657.pdf');
INSERT INTO `ita_ebit_items` VALUES (752, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230080717.pdf');
INSERT INTO `ita_ebit_items` VALUES (753, '4.ประมวลจริยธรรมช้าราชการพลเรือน', 76, '2566', '', '9_20221230080846.pdf');
INSERT INTO `ita_ebit_items` VALUES (754, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230080907.pdf');
INSERT INTO `ita_ebit_items` VALUES (755, '5.ข้อกำหนดจริยธรรมเจ้าหน้าที่ของรัฐ สำนักงานปลัดกระทรวงสาธารณสุขพ.ศ.2564', 76, '2566', '', '9_20221230081037.pdf');
INSERT INTO `ita_ebit_items` VALUES (756, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230081057.pdf');
INSERT INTO `ita_ebit_items` VALUES (757, '6.อินโฟกราฟฟิกคณะกรรมการจริยธรรม ประจำสำนักงานปลัดกระทรวงสาธารณสุข', 76, '2566', '', '9_20221230081223.jpg');
INSERT INTO `ita_ebit_items` VALUES (758, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230081243.pdf');
INSERT INTO `ita_ebit_items` VALUES (759, '7. ยุทธศาสตร์ของประเทศ โดยรวม', 76, '2566', '', '9_20221230081628.PDF');
INSERT INTO `ita_ebit_items` VALUES (761, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230081749.pdf');
INSERT INTO `ita_ebit_items` VALUES (762, '8.นโยบายและยุทธศสาตร์ของหน่วยงาน', 76, '2566', '', '9_20221230082005.pdf');
INSERT INTO `ita_ebit_items` VALUES (763, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230082028.pdf');
INSERT INTO `ita_ebit_items` VALUES (764, '10.รายงานผลการดำเนินงานตามแผนปฏิบัติการประจำปีของหน่วยงาน', 76, '2566', '', '9_20221230083720.pdf');
INSERT INTO `ita_ebit_items` VALUES (765, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230083748.pdf');
INSERT INTO `ita_ebit_items` VALUES (766, '11.แผนการใช้จ่ายงบประมาณประจำปีหน่วยงาน และแผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน', 76, '2566', '', '9_20221230083917.pdf');
INSERT INTO `ita_ebit_items` VALUES (767, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230083935.pdf');
INSERT INTO `ita_ebit_items` VALUES (768, '12.คู่มือการปฏิบัติงานการร้องเรียนการปฏิบัติงานหรือให้บริการของเจ้าหน้าที่', 76, '2566', '', '9_20221230084058.pdf');
INSERT INTO `ita_ebit_items` VALUES (769, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230084115.pdf');
INSERT INTO `ita_ebit_items` VALUES (770, '13.คู่มือปฏิบัติงานการร้องเรียนเรื่องการทุจริตและประพฤติมิชอบ', 76, '2566', '', '9_20221230084349.pdf');
INSERT INTO `ita_ebit_items` VALUES (771, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230084428.pdf');
INSERT INTO `ita_ebit_items` VALUES (772, '14.คู่มือการปฏิบัติงานตามภาระกิจหลักและภารกิจสนับสนุนของหน่วยงาน', 76, '2566', '', '9_20221230084620.pdf');
INSERT INTO `ita_ebit_items` VALUES (773, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230084638.pdf');
INSERT INTO `ita_ebit_items` VALUES (774, '15.คู่มือขั้นตอนการให้บริการ', 76, '2566', '', '9_20221230084753.pdf');
INSERT INTO `ita_ebit_items` VALUES (775, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230084817.pdf');
INSERT INTO `ita_ebit_items` VALUES (776, '16.รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ', 76, '2566', '', '9_20221230085047.pdf');
INSERT INTO `ita_ebit_items` VALUES (777, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230085104.pdf');
INSERT INTO `ita_ebit_items` VALUES (778, '17. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 76, '2566', '', '9_20221230085221.pdf');
INSERT INTO `ita_ebit_items` VALUES (779, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230085240.pdf');
INSERT INTO `ita_ebit_items` VALUES (780, '18.1 การวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุ ของปีงบประมาณ พ.ศ. 2565', 76, '2566', '', '9_20221230085408.pdf');
INSERT INTO `ita_ebit_items` VALUES (781, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230085426.pdf');
INSERT INTO `ita_ebit_items` VALUES (782, '18.2 แผนดำเนินการและแผนการจัดซื้อจัดจ้าง(1)', 76, '2566', '', '9_20221230085535.pdf');
INSERT INTO `ita_ebit_items` VALUES (783, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230085553.pdf');
INSERT INTO `ita_ebit_items` VALUES (784, '18.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2566', 76, '2566', '', '9_20221230085709.PDF');
INSERT INTO `ita_ebit_items` VALUES (785, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230085759.pdf');
INSERT INTO `ita_ebit_items` VALUES (786, '18.4 ประกาศสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยแนวทางการปฏิบัติงานเพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง พ.ศ. 2560', 76, '2566', '', '9_20221230085930.PDF');
INSERT INTO `ita_ebit_items` VALUES (787, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230085942.pdf');
INSERT INTO `ita_ebit_items` VALUES (788, '18.5 แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน ปีงบประมาณ พ.ศ.2566', 76, '2566', '', '9_20221230090057.pdf');
INSERT INTO `ita_ebit_items` VALUES (789, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230090113.pdf');
INSERT INTO `ita_ebit_items` VALUES (790, '9.แผนปฏิบัติการประจำปีของหน่วยงาน ปีงบประมาณ พ.ศ.2566', 76, '2566', '', '9_20221230092731.pdf');
INSERT INTO `ita_ebit_items` VALUES (791, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 76, '2566', '', '9_20221230092747.pdf');
INSERT INTO `ita_ebit_items` VALUES (792, 'อินโฟกราฟิก นโยบายไม่รับของขวัญและของกำนัลทุกชนิด', 76, '2566', '', '9_20230124122748.pdf');
INSERT INTO `ita_ebit_items` VALUES (793, '1. คู่มือการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงานปี2566', 84, '2566', '', '9_20230208130803.PDF');
INSERT INTO `ita_ebit_items` VALUES (794, '2. คู่มือปฏิบัติงานการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงานปี 2566', 84, '2566', '', '9_20230208130838.PDF');
INSERT INTO `ita_ebit_items` VALUES (795, '3.หลักฐานที่แสดงถึงช่องทางการร้องเรียน', 84, '2566', '', '9_20230208130915.pdf');
INSERT INTO `ita_ebit_items` VALUES (796, '4.แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 84, '2566', '', '9_20230208130940.pdf');
INSERT INTO `ita_ebit_items` VALUES (797, 'หนังสือแจ้งจัดสรรงบประมาณ', 78, '2566', '', '7_20230303111947.pdf');
INSERT INTO `ita_ebit_items` VALUES (798, 'บันทึกข้อความรายงานผลการดำเนินงาน', 78, '2566', '', '7_20230313140055.pdf');
INSERT INTO `ita_ebit_items` VALUES (799, 'รายงานรายไตรมาส', 78, '2566', '', '7_20230313140145.pdf');
INSERT INTO `ita_ebit_items` VALUES (800, 'ฟอร์มขอเผยแพร่', 78, '2566', '', '7_20230313140203.pdf');
INSERT INTO `ita_ebit_items` VALUES (801, 'บันทึกข้อความรายงานผลการดำเนินงานงบลงทุน', 78, '2566', '', '7_20230313141457.pdf');
INSERT INTO `ita_ebit_items` VALUES (802, 'บันทึกข้อความรายงานผล มค66', 79, '2566', '', '7_20230313145114.pdf');
INSERT INTO `ita_ebit_items` VALUES (803, 'บันทึกข้อความรายงานผล กพ66', 79, '2566', '', '7_20230313145150.pdf');
INSERT INTO `ita_ebit_items` VALUES (804, 'บันทึกข้อความรายงานผล มีค66', 79, '2566', '', '7_20230313145226.pdf');
INSERT INTO `ita_ebit_items` VALUES (805, 'แบบ สขร 1 เดือน ม.ค.66', 79, '2566', '', '7_20230313145406.pdf');
INSERT INTO `ita_ebit_items` VALUES (806, 'แบบ สขร 1 เดือน กพ.66', 79, '2566', '', '7_20230313145513.pdf');
INSERT INTO `ita_ebit_items` VALUES (807, 'แบบ สขร 1 เดือน มี.ค.65', 79, '2566', '', '7_20230313145607.pdf');
INSERT INTO `ita_ebit_items` VALUES (808, 'ฟอร์มขอเผยแพร่', 79, '2566', '', '7_20230313145707.pdf');
INSERT INTO `ita_ebit_items` VALUES (809, 'บันทึกข้อความผู้บริหารลงนามและขอเผยแพร่', 80, '2566', '', '7_20230314105453.pdf');
INSERT INTO `ita_ebit_items` VALUES (810, 'นโยบายผู้บริหารด้านการบริหารงานบุคคล', 80, '2566', '', '7_20230314105524.pdf');
INSERT INTO `ita_ebit_items` VALUES (811, 'ฟอร์มขอเผยแพร่', 80, '2566', '', '7_20230314105552.pdf');
INSERT INTO `ita_ebit_items` VALUES (812, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 80, '2566', '', '7_20230314105634.pdf');
INSERT INTO `ita_ebit_items` VALUES (813, 'แผนบริหารทรัพยากรบุคคล', 80, '2566', '', '7_20230314105723.pdf');
INSERT INTO `ita_ebit_items` VALUES (814, 'ฟอร์มขอเผยแพร่', 80, '2566', '', '7_20230314105801.pdf');
INSERT INTO `ita_ebit_items` VALUES (815, 'บันทึกข้อความรายงานและขอเผยแพร่', 81, '2566', '', '7_20230314162545.pdf');
INSERT INTO `ita_ebit_items` VALUES (816, 'ประกาศดีเด่นและดีมาก', 81, '2566', '', '7_20230314163636.pdf');
INSERT INTO `ita_ebit_items` VALUES (817, 'หลักฐาน', 81, '2566', '', '7_20230314163659.pdf');
INSERT INTO `ita_ebit_items` VALUES (818, 'ฟอร์มขอเผยแพร่', 81, '2566', '', '7_20230314163715.pdf');
INSERT INTO `ita_ebit_items` VALUES (819, 'บันทึกข้อความรายงานผลการดำเนินงานและขอเผยแพร่', 86, '2566', '', '7_20230315150403.pdf');
INSERT INTO `ita_ebit_items` VALUES (820, 'ประกาศ', 86, '2566', '', '7_20230315150704.pdf');
INSERT INTO `ita_ebit_items` VALUES (821, 'หนังสือแจ้งเวียน', 86, '2566', '', '7_20230315150723.pdf');
INSERT INTO `ita_ebit_items` VALUES (822, 'ฟอร์มขอเผยแพร่', 86, '2566', '', '7_20230315150742.pdf');
INSERT INTO `ita_ebit_items` VALUES (823, 'บันทึกข้อความลงนามและขอเผยแพร่', 88, '2566', '', '7_20230316103944.pdf');
INSERT INTO `ita_ebit_items` VALUES (824, 'แนวทางการยืมพัสดุ', 88, '2566', '', '7_20230316104048.pdf');
INSERT INTO `ita_ebit_items` VALUES (825, 'แบบฟอร์มการยืมพัสดุ', 88, '2566', '', '7_20230316104140.pdf');
INSERT INTO `ita_ebit_items` VALUES (826, 'หนังสือแจ้งเวียน', 88, '2566', '', '7_20230316104200.pdf');
INSERT INTO `ita_ebit_items` VALUES (827, 'ฟอร์มขอเผยแพร่', 88, '2566', '', '7_20230316104217.pdf');
INSERT INTO `ita_ebit_items` VALUES (828, 'หนังสือชี้แจง', 86, '2566', '', '7_20230316105002.pdf');
INSERT INTO `ita_ebit_items` VALUES (829, '1. คู่มือการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงานปี2566', 83, '2566', '', '9_20230321100411.PDF');
INSERT INTO `ita_ebit_items` VALUES (830, '2. คู่มือปฏิบัติงานการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงานปี 2566', 83, '2566', '', '9_20230321100536.PDF');
INSERT INTO `ita_ebit_items` VALUES (831, '3.หลักฐานที่แสดงถึงช่องทางการร้องเรียน', 83, '2566', '', '9_20230321100648.pdf');
INSERT INTO `ita_ebit_items` VALUES (832, '4.แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 83, '2566', '', '9_20230321100803.pdf');
INSERT INTO `ita_ebit_items` VALUES (833, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 89, '2566', '', '7_20230321151259.pdf');
INSERT INTO `ita_ebit_items` VALUES (834, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2566', 89, '2566', '', '7_20230321151335.pdf');
INSERT INTO `ita_ebit_items` VALUES (835, 'ฟอร์มขอเผยแพร่', 89, '2566', '', '7_20230321151353.pdf');
INSERT INTO `ita_ebit_items` VALUES (836, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 89, '2566', '', '7_20230321151728.pdf');
INSERT INTO `ita_ebit_items` VALUES (837, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 89, '2566', '', '7_20230321151943.pdf');
INSERT INTO `ita_ebit_items` VALUES (838, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 89, '2566', '', '7_20230321154234.pdf');
INSERT INTO `ita_ebit_items` VALUES (839, 'แผนส่งเสริมคุณธรรมปี 66', 89, '2566', '', '7_20230321154341.pdf');
INSERT INTO `ita_ebit_items` VALUES (840, 'ฟอร์มขอเผยแพร่', 89, '2566', '', '7_20230321154413.pdf');
INSERT INTO `ita_ebit_items` VALUES (841, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 89, '2566', '', '7_20230321154826.pdf');
INSERT INTO `ita_ebit_items` VALUES (842, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 90, '2566', '', '7_20230322101908.pdf');
INSERT INTO `ita_ebit_items` VALUES (843, 'รายงานผลตามแผนการป้องกันปราบปรามการทุจริต', 90, '2566', '', '7_20230322101948.pdf');
INSERT INTO `ita_ebit_items` VALUES (844, 'ฟอร์มขอเผยแพร่', 90, '2566', '', '7_20230322102024.pdf');
INSERT INTO `ita_ebit_items` VALUES (845, 'บันทึกข้อความรายงานผลการดำเนินงาน', 90, '2566', '', '7_20230322113312.pdf');
INSERT INTO `ita_ebit_items` VALUES (846, 'รายงานผลตามแผนจริยธรรม', 90, '2566', '', '7_20230322113433.pdf');
INSERT INTO `ita_ebit_items` VALUES (847, 'ฟอร์มขอเผยแพร่', 90, '2566', '', '7_20230322113455.pdf');
INSERT INTO `ita_ebit_items` VALUES (848, '1. มีบันทึกข้อมความที่ผู้บริหารลงนามรับทราบรายงานสรุปผลการดำเนินงานเรื่องร้องเรียน', 84, '2566', '', '9_20230322123829.pdf');
INSERT INTO `ita_ebit_items` VALUES (849, '2.1 สรุปผลการดำเนินงานเรื่องร้องเรียนการปฏิบัติงาน', 84, '2566', '', '9_20230322124039.pdf');
INSERT INTO `ita_ebit_items` VALUES (850, '2.2 สรุปผลการดำเนินงานเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 84, '2566', '', '9_20230322124214.pdf');
INSERT INTO `ita_ebit_items` VALUES (851, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน', 84, '2566', '', '9_20230322124331.pdf');
INSERT INTO `ita_ebit_items` VALUES (852, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 96, '2566', '', '7_20230323144753.pdf');
INSERT INTO `ita_ebit_items` VALUES (853, 'คู่มือแนวทางปฏิบัติ', 96, '2566', '', '7_20230323144833.pdf');
INSERT INTO `ita_ebit_items` VALUES (854, 'ประกาศ', 96, '2566', '', '7_20230323144855.pdf');
INSERT INTO `ita_ebit_items` VALUES (855, 'ฟอร์มขอเผยแพร่คู่มือแนวปฏิบัติ', 96, '2566', '', '7_20230323144939.pdf');
INSERT INTO `ita_ebit_items` VALUES (856, 'หนังสือแจ้งเวียน', 96, '2566', '', '7_20230323145000.pdf');
INSERT INTO `ita_ebit_items` VALUES (857, 'ฟอร์มขอเผยแพร่หนังสือแจ้งเวียน', 96, '2566', '', '7_20230323145034.pdf');
INSERT INTO `ita_ebit_items` VALUES (858, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 93, '2566', '', '7_20230323162111.pdf');
INSERT INTO `ita_ebit_items` VALUES (859, 'รายงานการเรี่ยไร', 93, '2566', '', '7_20230323162158.pdf');
INSERT INTO `ita_ebit_items` VALUES (860, 'รายงานการเรี่ยไร', 93, '2566', '', '7_20230323162219.pdf');
INSERT INTO `ita_ebit_items` VALUES (861, 'ของขวัญ1', 93, '2566', '', '7_20230323162252.pdf');
INSERT INTO `ita_ebit_items` VALUES (862, 'ของขวัญ2', 93, '2566', '', '7_20230323162344.pdf');
INSERT INTO `ita_ebit_items` VALUES (863, 'ฟอร์มขอเผยแพร่', 93, '2566', '', '7_20230323162435.pdf');
INSERT INTO `ita_ebit_items` VALUES (864, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 87, '2566', '', '7_20230327101518.pdf');
INSERT INTO `ita_ebit_items` VALUES (865, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101548.pdf');
INSERT INTO `ita_ebit_items` VALUES (866, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101555.pdf');
INSERT INTO `ita_ebit_items` VALUES (867, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101602.pdf');
INSERT INTO `ita_ebit_items` VALUES (868, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101611.pdf');
INSERT INTO `ita_ebit_items` VALUES (869, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101619.pdf');
INSERT INTO `ita_ebit_items` VALUES (870, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101621.pdf');
INSERT INTO `ita_ebit_items` VALUES (871, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101627.pdf');
INSERT INTO `ita_ebit_items` VALUES (872, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101632.pdf');
INSERT INTO `ita_ebit_items` VALUES (873, 'รายงานการดำเนินงาน', 87, '2566', '', '7_20230327101640.pdf');
INSERT INTO `ita_ebit_items` VALUES (874, 'ฟอร์มขอเผยแพร่', 87, '2566', '', '7_20230327101755.pdf');
INSERT INTO `ita_ebit_items` VALUES (875, 'รายงานผลการดำเนินงาน', 90, '2566', '', '7_20230327103909.pdf');
INSERT INTO `ita_ebit_items` VALUES (876, 'มาตรการ', 86, '2566', '', '7_20230327135821.pdf');
INSERT INTO `ita_ebit_items` VALUES (877, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 95, '2566', '', '7_20230327142834.pdf');
INSERT INTO `ita_ebit_items` VALUES (878, 'ฟอร์มขอเผยแพร่', 95, '2566', '', '7_20230327142903.pdf');
INSERT INTO `ita_ebit_items` VALUES (879, 'ประกาศป้องกันการทุจริต', 95, '2566', '', '7_20230327143113.pdf');
INSERT INTO `ita_ebit_items` VALUES (880, 'การจัดซื้อยาและเวชภัณฑ์ไม่ใช่ยา', 95, '2566', '', '7_20230327143230.pdf');
INSERT INTO `ita_ebit_items` VALUES (881, 'มาตรการป้องกันการล่วงละเมิด', 95, '2566', '', '7_20230327143306.pdf');
INSERT INTO `ita_ebit_items` VALUES (882, 'มาตรการป้องกันการล่วงละเมิด2', 95, '2566', '', '7_20230327143342.pdf');
INSERT INTO `ita_ebit_items` VALUES (883, 'ภาพกิจกรรม', 95, '2566', '', '7_20230327152836.pdf');
INSERT INTO `ita_ebit_items` VALUES (884, 'กิจกรรมการดำเนินงาน', 95, '2566', '', '7_20230327154158.pdf');
INSERT INTO `ita_ebit_items` VALUES (885, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 94, '2566', '', '7_20230328110206.pdf');
INSERT INTO `ita_ebit_items` VALUES (886, 'โครงการ', 94, '2566', '', '7_20230328110228.pdf');
INSERT INTO `ita_ebit_items` VALUES (887, 'รายชื่อผู้เข้าร่วมโครงการ', 94, '2566', '', '7_20230328110304.pdf');
INSERT INTO `ita_ebit_items` VALUES (888, 'บันทึกข้อความรายงานผลการดำเนินงาน', 94, '2566', '', '7_20230328110352.pdf');
INSERT INTO `ita_ebit_items` VALUES (889, 'รายงานผลการดำเนินงาน', 94, '2566', '', '7_20230328110425.pdf');
INSERT INTO `ita_ebit_items` VALUES (890, 'ภาพกิจกรรม', 94, '2566', '', '7_20230328110450.pdf');
INSERT INTO `ita_ebit_items` VALUES (891, 'ฟอร์มขอเผยแพร่', 94, '2566', '', '7_20230328110511.pdf');
INSERT INTO `ita_ebit_items` VALUES (892, 'บันทึกข้อความขออนุมัติดำเนินการ', 91, '2566', '', '7_20230328142322.pdf');
INSERT INTO `ita_ebit_items` VALUES (893, 'รายงานการดำเนินงาน', 91, '2566', '', '7_20230328142359.pdf');
INSERT INTO `ita_ebit_items` VALUES (894, 'รายงานการดำเนินงาน', 91, '2566', '', '7_20230328142403.pdf');
INSERT INTO `ita_ebit_items` VALUES (895, 'รายงานการดำเนินงาน', 91, '2566', '', '7_20230328142441.pdf');
INSERT INTO `ita_ebit_items` VALUES (896, 'รายงานการดำเนินงาน', 91, '2566', '', '7_20230328142442.pdf');
INSERT INTO `ita_ebit_items` VALUES (897, 'บันทึกข้อความรายงานผลและขอเผยแพร่', 91, '2566', '', '7_20230328142532.pdf');
INSERT INTO `ita_ebit_items` VALUES (898, 'รายงานผลตามแผนการบริหารความเสี่ยง', 91, '2566', '', '7_20230328142633.pdf');
INSERT INTO `ita_ebit_items` VALUES (899, 'ฟอร์มขอเผยแพร่', 91, '2566', '', '7_20230328142654.pdf');
INSERT INTO `ita_ebit_items` VALUES (900, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 92, '2566', '', '7_20230328153440.pdf');
INSERT INTO `ita_ebit_items` VALUES (901, 'มาตรการ', 92, '2566', '', '7_20230328153534.pdf');
INSERT INTO `ita_ebit_items` VALUES (902, 'มาตรการ', 92, '2566', '', '7_20230328153601.pdf');
INSERT INTO `ita_ebit_items` VALUES (903, 'บันทึกข้อความรายงานผลการดำเนินงาน', 92, '2566', '', '7_20230328153626.pdf');
INSERT INTO `ita_ebit_items` VALUES (904, 'หนังสือแจ้งเวียน', 92, '2566', '', '7_20230328153651.pdf');
INSERT INTO `ita_ebit_items` VALUES (905, 'ฟอร์มขอเผยแพร่', 92, '2566', '', '7_20230328153708.pdf');
INSERT INTO `ita_ebit_items` VALUES (906, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 79, '2566', '', '7_20230629173027.pdf');
INSERT INTO `ita_ebit_items` VALUES (907, 'แบบ สขร 1 เดือน เม.ย.66(งบดำเนินการ)', 79, '2566', '', '7_20230629173213.pdf');
INSERT INTO `ita_ebit_items` VALUES (908, 'แบบ สขร 1 เดือน เมย.66 งบลงทุน', 79, '2566', '', '7_20230629173312.pdf');
INSERT INTO `ita_ebit_items` VALUES (909, 'แบบ สขร 1 เดือน พ.ค.6ุ(งบดำเนินการ)', 79, '2566', '', '7_20230629173407.pdf');
INSERT INTO `ita_ebit_items` VALUES (910, 'แบบ สขร 1 เดือน พ.ค.66(งบลงทุน)', 79, '2566', '', '7_20230629173442.pdf');
INSERT INTO `ita_ebit_items` VALUES (911, 'แบบ สขร 1 เดือน มิ.ย.66(งบดำเนินการ)', 79, '2566', '', '7_20230629173553.pdf');
INSERT INTO `ita_ebit_items` VALUES (912, 'แบบ สขร 1 เดือน มิ.ย.66(งบลงทุน)', 79, '2566', '', '7_20230629173645.pdf');
INSERT INTO `ita_ebit_items` VALUES (913, 'ฟอร์มขอเผยแพร่', 79, '2566', '', '7_20230629173802.pdf');
INSERT INTO `ita_ebit_items` VALUES (915, '1.1 บันทึกข้อความ ที่ผู้บริหารลงนามอนุมัติในโครงการ และมีการขออญ', 85, '2566', '', '9_20230629180847.PDF');
INSERT INTO `ita_ebit_items` VALUES (916, 'แบบฟอร์มการขอเผยแพร่อนุมัติโครงการ', 85, '2566', '', '9_20230629180958.PDF');
INSERT INTO `ita_ebit_items` VALUES (917, 'โครงการอสม.', 85, '2566', '', '9_20230629181311.pdf');
INSERT INTO `ita_ebit_items` VALUES (918, 'แบบฟอร์มการขอเผยแพร่โครงการอสม.', 85, '2566', '', '9_20230629181345.pdf');
INSERT INTO `ita_ebit_items` VALUES (919, '2.มีรายงานประชุมโครงการ กิจกรรมที่แสดงชื่อผู้ใช้บริการ หรือผู้มีส่วนได้ส่วนเสีย มาร่วมวางแผนและร่วมแลกเปลี่ยนความคิดเห็น ตามภารกิจที่เลือกที่ผู้บริหารทราบ', 85, '2566', '', '9_20230629181556.pdf');
INSERT INTO `ita_ebit_items` VALUES (920, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์รายงานการประชุมวางแผน', 85, '2566', '', '9_20230629181631.pdf');
INSERT INTO `ita_ebit_items` VALUES (921, '6.บันทึกขออนุญาตเผยแพร่ และแบบฟอร์มขออนุญาตเผยแพร่', 85, '2566', '', '9_20230629181908.pdf');
INSERT INTO `ita_ebit_items` VALUES (922, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 81, '2566', '', '7_20230629182727.pdf');
INSERT INTO `ita_ebit_items` VALUES (923, 'ฟอร์มขอเผยแพร่', 81, '2566', '', '7_20230629182747.pdf');
INSERT INTO `ita_ebit_items` VALUES (924, '4.รายงานสรุปผลการดำเนินโครงการ กิจกรรม ตามภารกิจที่เลือก', 85, '2566', '', '9_20230629183208.pdf');
INSERT INTO `ita_ebit_items` VALUES (925, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์4.รายงานสรุปผลการดำเนินโครงการ กิจกรรม ตามภารกิจที่เลือก', 85, '2566', '', '9_20230629183238.pdf');
INSERT INTO `ita_ebit_items` VALUES (926, '5.มีภาพกิจกรรม ที่ระบุวันเวลา สถานที่จัดกิจกรรมที่ชัดเจน', 85, '2566', '', '9_20230629183359.pdf');
INSERT INTO `ita_ebit_items` VALUES (927, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์5.มีภาพกิจกรรม ที่ระบุวันเวลา สถานที่จัดกิจกรรมที่ชัดเจน', 85, '2566', '', '9_20230629183426.pdf');
INSERT INTO `ita_ebit_items` VALUES (928, '7.แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 85, '2566', '', '9_20230629183559.pdf');
INSERT INTO `ita_ebit_items` VALUES (929, 'ประกาศดีเด่นและดีมาก', 81, '2566', '', '7_20230629183604.pdf');
INSERT INTO `ita_ebit_items` VALUES (930, 'รายงานการประชุมโครงการรพ.สต.กุดรัง', 85, '2566', '', '9_20230629204623.pdf');
INSERT INTO `ita_ebit_items` VALUES (931, 'รายงานการประชุมโครงการรพ.สต.นาโพธิ์', 85, '2566', '', '9_20230629204650.pdf');
INSERT INTO `ita_ebit_items` VALUES (932, 'รายงานการประชุมโครงการรพ.สต.เลิงแฝก', 85, '2566', '', '9_20230629204708.pdf');
INSERT INTO `ita_ebit_items` VALUES (933, 'รายงานการประชุมโครงการรพ.สต.หนองแวง', 85, '2566', '', '9_20230629204727.pdf');
INSERT INTO `ita_ebit_items` VALUES (934, 'รายงานการประชุมโครงการรพ.สต.หนองแสง', 85, '2566', '', '9_20230629204746.pdf');
INSERT INTO `ita_ebit_items` VALUES (935, 'รายงานการประชุมโครงการรพ.สต.หนองแหน', 85, '2566', '', '9_20230629204813.pdf');
INSERT INTO `ita_ebit_items` VALUES (936, 'รายงานการประชุมโครงการรพ.สต.ห้วยแคน', 85, '2566', '', '9_20230629204832.pdf');
INSERT INTO `ita_ebit_items` VALUES (937, 'รายงานการประชุมโครงการรพ.สต.หัวนา', 85, '2566', '', '9_20230629204904.pdf');
INSERT INTO `ita_ebit_items` VALUES (938, 'รายงานการประชุมโครงการศูนย์สุขภาพชุมชนกุดรัง', 85, '2566', '', '9_20230629204929.pdf');
INSERT INTO `ita_ebit_items` VALUES (939, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 85, '2566', '', '9_20230629204947.pdf');
INSERT INTO `ita_ebit_items` VALUES (940, 'ภาพติดประกาศ', 81, '2566', '', '7_20230630093300.pdf');
INSERT INTO `ita_ebit_items` VALUES (941, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 82, '2566', '', '7_20230630134850.pdf');
INSERT INTO `ita_ebit_items` VALUES (942, 'โครงการ', 82, '2566', '', '7_20230630134921.pdf');
INSERT INTO `ita_ebit_items` VALUES (943, 'รายชื่อผู้เข้าร่วมโครงการ', 82, '2566', '', '7_20230630135002.pdf');
INSERT INTO `ita_ebit_items` VALUES (944, 'รายชื่อผู้เข้าร่วมโครงการ', 82, '2566', '', '7_20230630135013.pdf');
INSERT INTO `ita_ebit_items` VALUES (945, 'รายชื่อผู้เข้าร่วมโครงการ', 82, '2566', '', '7_20230630135024.pdf');
INSERT INTO `ita_ebit_items` VALUES (946, 'บันทึกข้อความรายงานผลการดำเนินงาน', 82, '2566', '', '');
INSERT INTO `ita_ebit_items` VALUES (947, 'บันทึกข้อความรายงานผลการดำเนินงาน', 82, '2566', '', '7_20230630135333.pdf');
INSERT INTO `ita_ebit_items` VALUES (948, 'รายงานการอบรม', 82, '2566', '', '7_20230630135413.pdf');
INSERT INTO `ita_ebit_items` VALUES (949, 'ภาพกิจกรรม', 82, '2566', '', '7_20230630135435.pdf');
INSERT INTO `ita_ebit_items` VALUES (950, 'ฟอร์มขอเผยแพร่', 82, '2566', '', '7_20230630135450.pdf');
INSERT INTO `ita_ebit_items` VALUES (951, 'บันทึกข้อความรายงาน ข้อ 2', 84, '2566', '', '9_20230830110650.pdf');
INSERT INTO `ita_ebit_items` VALUES (952, 'บันทึกข้อความรายงานผลการดำเนินงานเรื่องการร้องเรียน รอบ 12 เดือน ข้อ 1', 84, '2566', '', '9_20230830110711.pdf');
INSERT INTO `ita_ebit_items` VALUES (953, 'สรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 3', 84, '2566', '', '9_20230830110846.pdf');
INSERT INTO `ita_ebit_items` VALUES (954, 'สรุปผลการดำเนินงานเรื่องรองเรียน ข้อ 4', 84, '2566', '', '9_20230830110920.pdf');
INSERT INTO `ita_ebit_items` VALUES (955, 'แบบฟอร์มเผยแพร่ข้อมูล ข้อ 5', 84, '2566', '', '9_20230830111102.pdf');
INSERT INTO `ita_ebit_items` VALUES (956, 'บีนทึกข้อความและขอเผยแพร่', 79, '2566', '', '7_20230911142046.pdf');
INSERT INTO `ita_ebit_items` VALUES (957, 'แบบ สขร 1 เดือน ก.ค.6ุ6(งบลงทุน)', 79, '2566', '', '7_20230911142228.pdf');
INSERT INTO `ita_ebit_items` VALUES (958, 'แบบ สขร 1 เดือน ก.ค.6ุุ6(งบดำเนินการ)', 79, '2566', '', '7_20230911142313.pdf');
INSERT INTO `ita_ebit_items` VALUES (959, 'แบบ สขร 1 เดือน ส.ค.6ุ6(งบลงทุน)', 79, '2566', '', '7_20230911142407.pdf');
INSERT INTO `ita_ebit_items` VALUES (960, 'แบบ สขร 1 เดือน ส.ค.6ุุ6(งบดำเนินการ)', 79, '2566', '', '7_20230911142443.pdf');
INSERT INTO `ita_ebit_items` VALUES (961, 'แบบ สขร 1 เดือน ก.ย.66(งบลงทุน)', 79, '2566', '', '7_20230911142529.pdf');
INSERT INTO `ita_ebit_items` VALUES (962, 'แบบ สขร 1 เดือน ก.ย.6ุ6(งบดำเนินการ)', 79, '2566', '', '7_20230911142621.pdf');
INSERT INTO `ita_ebit_items` VALUES (963, 'แบบ สขร 1 เดือน ก.ย.6ุ6(งบดำเนินการ)', 79, '2566', '', '7_202309111426211.pdf');
INSERT INTO `ita_ebit_items` VALUES (964, 'ฟอร์มขอเผยแพร่', 79, '2566', '', '7_20230911143343.pdf');
INSERT INTO `ita_ebit_items` VALUES (965, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 96, '2566', '', '7_20230911150303.pdf');
INSERT INTO `ita_ebit_items` VALUES (966, 'แบบรายงาน', 96, '2566', '', '7_20230911150334.pdf');
INSERT INTO `ita_ebit_items` VALUES (967, 'ฟอร์มขอเผยแพร่', 96, '2566', '', '7_20230911150521.pdf');
INSERT INTO `ita_ebit_items` VALUES (968, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 93, '2566', '', '7_20230913151947.pdf');
INSERT INTO `ita_ebit_items` VALUES (969, 'รายงานการดำเนินงาน', 93, '2566', '', '7_20230913152051.pdf');
INSERT INTO `ita_ebit_items` VALUES (970, 'รายงาน', 93, '2566', '', '7_20230913152141.pdf');
INSERT INTO `ita_ebit_items` VALUES (971, 'ฟอร์มขอเผยแพร่', 93, '2566', '', '7_20230913152207.pdf');
INSERT INTO `ita_ebit_items` VALUES (972, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 86, '2566', '', '7_20230914095711.pdf');
INSERT INTO `ita_ebit_items` VALUES (973, 'รายงานผลการดำเนินงาน', 86, '2566', '', '7_20230914095740.pdf');
INSERT INTO `ita_ebit_items` VALUES (974, 'รายงานผลการดำเนินงาน', 86, '2566', '', '7_20230914095812.pdf');
INSERT INTO `ita_ebit_items` VALUES (975, 'ฟอร์มขอเผยแพร่', 86, '2566', '', '7_20230914095925.pdf');
INSERT INTO `ita_ebit_items` VALUES (976, 'บันทึกข้อความรายงานผลการดำเนินงาน', 91, '2566', '', '7_20230914112032.pdf');
INSERT INTO `ita_ebit_items` VALUES (977, 'รายงานผลการดำเนินงาน', 91, '2566', '', '7_20230914112059.pdf');
INSERT INTO `ita_ebit_items` VALUES (978, 'ฟอร์มขอเผยแพร่', 91, '2566', '', '7_20230914112209.pdf');
INSERT INTO `ita_ebit_items` VALUES (979, 'บันทึกข้อความรายงานผลการดำเนินงาน', 90, '2566', '', '7_20230914140340.docx');
INSERT INTO `ita_ebit_items` VALUES (980, 'รายงานผลการดำเนินงาน', 90, '2566', '', '7_20230914140432.pdf');
INSERT INTO `ita_ebit_items` VALUES (981, 'ฟอร์มขอเผยแพร่', 90, '2566', '', '7_20230914140503.pdf');
INSERT INTO `ita_ebit_items` VALUES (982, 'บันทึกข้อความรายงานผลการดำเนินงาน', 90, '2566', '', '7_20230914140620.pdf');
INSERT INTO `ita_ebit_items` VALUES (983, 'รายงานผลการดำเนินงาน', 90, '2566', '', '7_20230914140709.pdf');
INSERT INTO `ita_ebit_items` VALUES (984, 'ฟอร์มขอเผยแพร่', 90, '2566', '', '7_20230914140730.pdf');
INSERT INTO `ita_ebit_items` VALUES (985, 'บันทึกข้อความรายงานผลการดำเนินงาน', 90, '2566', '', '7_20230914142725.pdf');
INSERT INTO `ita_ebit_items` VALUES (986, 'คำสั่งจริยธรรม', 91, '2566', '', '7_20230922103133.pdf');
INSERT INTO `ita_ebit_items` VALUES (987, '1.1 บันทึกข้อความลงนามคำสั่ง และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 98, '2567', '', '7_20231225120908.pdf');
INSERT INTO `ita_ebit_items` VALUES (988, '1.2 คำสั่ง มาตรการ กลไก หรือระบบในการดำเนินการกำหนดให้มีการเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน', 98, '2567', '', '7_20231225121109.pdf');
INSERT INTO `ita_ebit_items` VALUES (989, '1.3 กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 98, '2567', '', '7_20231225121159.pdf');
INSERT INTO `ita_ebit_items` VALUES (990, '1.4 แบบฟอร์มการเผยแพร่ข้อมูล', 98, '2567', '', '7_20231225121324.pdf');
INSERT INTO `ita_ebit_items` VALUES (991, '2.1 บันทึกข้อความรับทราบ และมีการขออนุญาตเผย', 98, '2567', '', '7_20231225121520.pdf');
INSERT INTO `ita_ebit_items` VALUES (992, '2.2 มีรายงานผลการกำกับติดตามการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ ของหน่วยงานในปีที่ผ่านมา (ของปีงบประมาณ พ.ศ. 2566)', 98, '2567', '', '7_20231225121601.pdf');
INSERT INTO `ita_ebit_items` VALUES (993, '2.3 มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 98, '2567', '', '7_20231225121712.pdf');
INSERT INTO `ita_ebit_items` VALUES (994, '1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย (1) รูปถ่าย (2) ชื่อ-นามสกุล (3) ตำแหน่ง และ (4) หมายเลขโทรศัพท์ (ต้องมีครบทั้ง 4 รายการ)', 99, '2567', '', '7_20231225123727.pdf');
INSERT INTO `ita_ebit_items` VALUES (995, '1.2 นโยบายของผู้บริหาร', 99, '2567', '', '7_20231225123817.pdf');
INSERT INTO `ita_ebit_items` VALUES (996, '1.3 โครงสร้างหน่วยงาน', 99, '2567', '', '7_20231225123855.pdf');
INSERT INTO `ita_ebit_items` VALUES (997, '1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', 99, '2567', '', '7_20231225123930.pdf');
INSERT INTO `ita_ebit_items` VALUES (998, '1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', 99, '2567', '', '7_20231225124007.pdf');
INSERT INTO `ita_ebit_items` VALUES (999, '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจ และภารกิจของหน่วยงาน และเป็นข้อมูลข่าวสารที่เกิดขึ้นในปีงบประมาณ พ.ศ. 2567', 99, '2567', '', '7_20231225124054.pdf');
INSERT INTO `ita_ebit_items` VALUES (1000, '1.7 ข้อมูลการติดต่อหน่วยงาน ประกอบด้วย (1) ที่อยู่หน่วยงาน (2) หมายเลขโทรศัพท์ของหน่วยงาน (3) หมายเลขโทรสารของหน่วยงาน (4) ที่อยู่ไปรษณีย์อิเล็กทรอนิกส์ของหน่วยงาน และ (5) แผนที่ที่ตั้งหน่วยงาน (ต้องมีครบทั้ง 5 รายการ)', 99, '2567', '', '7_20231225124131.pdf');
INSERT INTO `ita_ebit_items` VALUES (1001, '1.8 ช่องทางการรับฟังความคิดเห็นที่บุคคลภายนอกสามารถแสดงความคิดเห็นต่อการดำเนินงานตามหน้าที่และอำนาจและตามภารกิจของหน่วยงาน', 99, '2567', '', '7_20231225124215.pdf');
INSERT INTO `ita_ebit_items` VALUES (1002, '2. วิสัยทัศน์ พันธกิจ ค่านิยม MOPH	', 99, '2567', '', '7_20231225124301.pdf');
INSERT INTO `ita_ebit_items` VALUES (1003, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ วิสัยทัศน์ พันธกิจ ค่านิยม MOPH	', 99, '2567', '', '7_20231225124338.pdf');
INSERT INTO `ita_ebit_items` VALUES (1004, '3. พระราชบัญญัติมาตรฐานทางจริยธรรม พ.ศ. 2562', 99, '2567', '', '7_20231225124449.pdf');
INSERT INTO `ita_ebit_items` VALUES (1005, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์พระราชบัญญัติมาตรฐานทางจริยธรรม พ.ศ. 2562', 99, '2567', '', '7_20231225124519.pdf');
INSERT INTO `ita_ebit_items` VALUES (1006, '4. ประมวลจริยธรรมข้าราชการพลเรือน พ.ศ. 2564', 99, '2567', '', '7_20231225124618.pdf');
INSERT INTO `ita_ebit_items` VALUES (1007, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ ประมวลจริยธรรมข้าราชการพลเรือน พ.ศ. 2564', 99, '2567', '', '7_20231225124639.pdf');
INSERT INTO `ita_ebit_items` VALUES (1008, '5. ข้อกำหนดจริยธรรมเจ้าหน้าที่ของรัฐ สำนักงานปลัดกระทรวงสาธารณสุข พ.ศ. 2564', 99, '2567', '', '7_20231225124945.pdf');
INSERT INTO `ita_ebit_items` VALUES (1009, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ข้อกำหนดจริยธรรมเจ้าหน้าที่ของรัฐ สำนักงานปลัดกระทรวงสาธารณสุข พ.ศ. 2564', 99, '2567', '', '7_20231225125146.pdf');
INSERT INTO `ita_ebit_items` VALUES (1010, '6. อินโฟกราฟฟิกคณะกรรมการจริยธรรม ประจำสำนักงานปลัดกระทรวงสาธารณสุข ชุดปัจจุบัน ที่มีนายวินัย วิริยกิจจา เป็นประธานกรรมการ', 99, '2567', '', '7_20231225125225.pdf');
INSERT INTO `ita_ebit_items` VALUES (1011, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ อินโฟ', 99, '2567', '', '7_20231225125314.pdf');
INSERT INTO `ita_ebit_items` VALUES (1012, '7. ยุทธศาสตร์ฯ แผนแม่บทภายใต้ยุทธศาสตร์ชาติฯ แผนการปฎิรูปประเทศฯ แผนพัฒนาเศรษฐกิจและสังคมแห่งชาติฯ ของประเทศ', 99, '2567', '', '7_20231225125407.PDF');
INSERT INTO `ita_ebit_items` VALUES (1013, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ยุทธศาสตร์ฯ แผนแม่บทภายใต้ยุทธศาสตร์ชาติฯ แผนการปฎิรูปประเทศฯ แผนพัฒนาเศรษฐกิจและสังคมแห่งชาติฯ ของประเทศ', 99, '2567', '', '7_20231225125428.pdf');
INSERT INTO `ita_ebit_items` VALUES (1014, '8. นโยบายและยุทธศาสตร์ของหน่วยงาน', 99, '2567', '', '7_20231225125521.pdf');
INSERT INTO `ita_ebit_items` VALUES (1015, 'แบบเผยแพร่นโยบายและยุทธศาสตร์ของหน่วยงาน', 99, '2567', '', '7_20231225125541.pdf');
INSERT INTO `ita_ebit_items` VALUES (1016, '9. แผนปฏิบัติการประจำปีของหน่วยงาน (แผนปฏิบัติการประจำปีของหน่วยงานทุกแผน)', 99, '2567', '', '7_20231225125651.pdf');
INSERT INTO `ita_ebit_items` VALUES (1017, 'แบบเผยแพร่แผนปฏิบัติการประจำปีของหน่วยงาน (แผนปฏิบัติการประจำปีของหน่วยงานทุกแผน)', 99, '2567', '', '7_20231225125710.pdf');
INSERT INTO `ita_ebit_items` VALUES (1018, '12. คู่มือการปฏิบัติงานการร้องเรียนการปฏิบัติงานหรือให้บริการของเจ้าหน้าที่', 99, '2567', '', '7_20231225125907.pdf');
INSERT INTO `ita_ebit_items` VALUES (1019, 'แบบเผยแพร่ คู่มือการปฏิบัติงานการร้องเรียนการปฏิบัติงานหรือให้บริการของเจ้าหน้าที่', 99, '2567', '', '7_20231225125924.pdf');
INSERT INTO `ita_ebit_items` VALUES (1020, '13. คู่มือการปฏิบัติงานการร้องเรียนการทุจริตและประพฤติมิชอบ', 99, '2567', '', '7_20231225130018.pdf');
INSERT INTO `ita_ebit_items` VALUES (1021, 'แบบเผยแพร่คู่มือการปฏิบัติงานการร้องเรียนการทุจริตและประพฤติมิชอบ', 99, '2567', '', '7_20231225130034.pdf');
INSERT INTO `ita_ebit_items` VALUES (1022, '14. คู่มือการปฏิบัติงานตามภารกิจหลักและภารกิจสนับสนุนของหน่วยงาน', 99, '2567', '', '7_20231225130330.pdf');
INSERT INTO `ita_ebit_items` VALUES (1023, 'แบบเผยแพร่ คู่มือการปฏิบัติงานตามภารกิจหลักและภารกิจสนับสนุนของหน่วยงาน', 99, '2567', '', '7_20231225130347.pdf');
INSERT INTO `ita_ebit_items` VALUES (1024, '15. คู่มือขั้นตอนการให้บริการ (ภารกิจให้บริการประชาชนตามพระราชบัญญัติ การอำนวยความสะดวกในการพิจารณาอนุญาตของทางราชการ พ.ศ. 2558) (เฉพาะสำนักงานสาธารณสุขจังหวัด และสำนักงานสาธารณสุขอำเภอ)', 99, '2567', '', '7_20231225131634.pdf');
INSERT INTO `ita_ebit_items` VALUES (1025, 'แบบเผยแพร่ คู่มือขั้นตอนการให้บริการ ', 99, '2567', '', '7_20231225131700.pdf');
INSERT INTO `ita_ebit_items` VALUES (1026, '16. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ ประจำปีงบประมาณ พ.ศ. 2566 รอบ 12 เดือน ประจำปีงบประมาณ พ.ศ. 2566', 99, '2567', '', '7_20231225132128.pdf');
INSERT INTO `ita_ebit_items` VALUES (1027, 'แบบเผยแพร่รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ ประจำปีงบประมาณ พ.ศ. 2566 รอบ 12 เดือน ประจำปีงบประมาณ พ.ศ. 2566', 99, '2567', '', '7_20231225132151.pdf');
INSERT INTO `ita_ebit_items` VALUES (1028, '17. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2566 รอบ 12 เดือน ประจำปีงบประมาณ พ.ศ. 2566', 99, '2567', '', '7_20231225132422.pdf');
INSERT INTO `ita_ebit_items` VALUES (1029, 'แบบเผยแพร่รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2566 รอบ 12 เดือน ประจำปีงบประมาณ พ.ศ. 2566', 99, '2567', '', '7_20231225132448.pdf');
INSERT INTO `ita_ebit_items` VALUES (1030, 'บันทึกข้อความรายงานผลการดำเนินงาน', 100, '2567', '', '7_20231228105918.doc');
INSERT INTO `ita_ebit_items` VALUES (1031, 'ฟอร์มขอเผยแพร่', 100, '2567', '', '7_20231228105943.pdf');
INSERT INTO `ita_ebit_items` VALUES (1032, 'ฟอร์มขอเผยแพร่', 100, '2567', '', '7_20231228110344.pdf');
INSERT INTO `ita_ebit_items` VALUES (1033, 'บันทึกข้อความรายงานผลการดำเนินงาน', 100, '2567', '', '7_20231228110406.pdf');
INSERT INTO `ita_ebit_items` VALUES (1034, '1.2นโยบายของผู้บริหาร2567', 99, '2567', '', '7_20231228110651.pdf');
INSERT INTO `ita_ebit_items` VALUES (1035, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 101, '2567', '', '7_20231228135859.pdf');
INSERT INTO `ita_ebit_items` VALUES (1036, 'ะขออนุญาตประกาศแผน', 101, '2567', '', '7_20231228135952.pdf');
INSERT INTO `ita_ebit_items` VALUES (1037, 'หนังสือแจ้งจัดสรรงบประมาณ', 101, '2567', '', '7_20231228140040.pdf');
INSERT INTO `ita_ebit_items` VALUES (1038, 'แผนการจัดซื้อจัดจ้างและแผนดำเนินการ', 101, '2567', '', '7_20231228140152.pdf');
INSERT INTO `ita_ebit_items` VALUES (1039, 'แต่งตั้ง จนท.ปิดประกาศ', 101, '2567', '', '7_20231228140239.pdf');
INSERT INTO `ita_ebit_items` VALUES (1040, 'ภาพติดประกาศ', 101, '2567', '', '7_20231228140307.pdf');
INSERT INTO `ita_ebit_items` VALUES (1041, 'ฟอร์มขอเผยแพร่', 101, '2567', '', '7_20231228140327.pdf');
INSERT INTO `ita_ebit_items` VALUES (1042, 'รายงานสรุปการจัดหาพัสดุ', 101, '2567', '', '7_20231228141409.pdf');
INSERT INTO `ita_ebit_items` VALUES (1043, 'งบดำเนินการ', 101, '2567', '', '7_20231228141444.pdf');
INSERT INTO `ita_ebit_items` VALUES (1044, 'งบลงทุน', 101, '2567', '', '7_20231228141510.pdf');
INSERT INTO `ita_ebit_items` VALUES (1045, 'ฟอร์มขอเผยแพร่', 101, '2567', '', '7_20231228141529.pdf');
INSERT INTO `ita_ebit_items` VALUES (1046, 'หนังสือแจ้งเวียน', 101, '2567', '', '7_20231228141943.pdf');
INSERT INTO `ita_ebit_items` VALUES (1047, 'ประกาศ', 101, '2567', '', '7_20231228142003.pdf');
INSERT INTO `ita_ebit_items` VALUES (1048, 'ฟอร์มขอเผยแพร่', 101, '2567', '', '7_20231228142018.pdf');
INSERT INTO `ita_ebit_items` VALUES (1049, 'บันทึกข้อความรายงานผลการดำเนินงาน', 102, '2567', '', '7_20231228145320.pdf');
INSERT INTO `ita_ebit_items` VALUES (1050, 'ตค66', 102, '2567', '', '7_20231228145405.pdf');
INSERT INTO `ita_ebit_items` VALUES (1051, 'พย66', 102, '2567', '', '7_20231228145434.pdf');
INSERT INTO `ita_ebit_items` VALUES (1052, 'ธค66', 102, '2567', '', '7_20231228145503.docx');
INSERT INTO `ita_ebit_items` VALUES (1053, 'ฟอร์มขอเผยแพร่', 102, '2567', '', '7_20231228145524.pdf');
INSERT INTO `ita_ebit_items` VALUES (1054, 'ธค', 102, '2567', '', '7_20231228145919.pdf');
INSERT INTO `ita_ebit_items` VALUES (1055, 'บันทึกข้อความรายงานผลการดำเนินงาน', 99, '2567', '', '7_20231228153743.pdf');
INSERT INTO `ita_ebit_items` VALUES (1056, 'รายงานผลการดำเนินงาน', 99, '2567', '', '7_20231228153807.pdf');
INSERT INTO `ita_ebit_items` VALUES (1057, 'ฟอร์มขอเผยแพร่', 99, '2567', '', '7_20231228153826.pdf');
INSERT INTO `ita_ebit_items` VALUES (1058, 'บันทึกข้อความรายงานผลการดำเนินงาน', 99, '2567', '', '7_20231228183925.pdf');
INSERT INTO `ita_ebit_items` VALUES (1059, 'บันทึกข้อความลงนามและขออนุญาตประกาศ มค67', 102, '2567', '', '7_20240325103138.pdf');
INSERT INTO `ita_ebit_items` VALUES (1060, 'บันทึกข้อความลงนามและขออนุญาตประกาศ กพ67', 102, '2567', '', '7_20240325103212.pdf');
INSERT INTO `ita_ebit_items` VALUES (1061, 'บันทึกข้อความลงนามและขออนุญาตประกาศ มีค67', 102, '2567', '', '7_20240325103239.pdf');
INSERT INTO `ita_ebit_items` VALUES (1062, 'แบบ สขร 1 เดือน ม.ค.67', 102, '2567', '', '7_20240325103957.pdf');
INSERT INTO `ita_ebit_items` VALUES (1063, 'แบบ สขร 1 เดือน กพ.67', 102, '2567', '', '7_20240325104036.pdf');
INSERT INTO `ita_ebit_items` VALUES (1064, 'แบบ สขร 1 เดือน มี.ค.67', 102, '2567', '', '7_20240325104121.pdf');
INSERT INTO `ita_ebit_items` VALUES (1065, 'คู่มือการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงานปี2567', 106, '2567', '', '7_20240325104122.pdf');
INSERT INTO `ita_ebit_items` VALUES (1066, 'ฟอร์มขอเผยแพร่', 102, '2567', '', '7_20240325104157.pdf');
INSERT INTO `ita_ebit_items` VALUES (1067, 'คู่มือปฏิบัติงานการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงานปี 2567', 106, '2567', '', '7_20240325104201.pdf');
INSERT INTO `ita_ebit_items` VALUES (1068, 'หลักฐานที่แสดงถึงช่องทางการร้องเรียน', 106, '2567', '', '7_20240325104245.pdf');
INSERT INTO `ita_ebit_items` VALUES (1069, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 106, '2567', '', '7_20240325104312.pdf');
INSERT INTO `ita_ebit_items` VALUES (1070, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 103, '2567', '', '7_20240325111715.pdf');
INSERT INTO `ita_ebit_items` VALUES (1071, 'ประกาศนโยบาย', 103, '2567', '', '7_20240325111756.pdf');
INSERT INTO `ita_ebit_items` VALUES (1072, 'ฟอร์มขอเผยแพร่', 103, '2567', '', '7_20240325111815.pdf');
INSERT INTO `ita_ebit_items` VALUES (1073, 'บันทึกข้อมความที่ผู้บริหารลงนามรับทราบรายงานสรุปผลการดำเนินงานเรื่องร้องเรียน', 107, '2567', '', '7_20240325112258.pdf');
INSERT INTO `ita_ebit_items` VALUES (1074, 'สรุปผลการดำเนินงานเรื่องร้องเรียนการปฏิบัติงาน', 107, '2567', '', '7_20240325112521.pdf');
INSERT INTO `ita_ebit_items` VALUES (1075, 'สรุปผลการดำเนินงานเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 107, '2567', '', '7_20240325112704.pdf');
INSERT INTO `ita_ebit_items` VALUES (1076, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน', 107, '2567', '', '7_20240325112732.pdf');
INSERT INTO `ita_ebit_items` VALUES (1077, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 103, '2567', '', '7_20240325120223.pdf');
INSERT INTO `ita_ebit_items` VALUES (1078, 'แผน67', 103, '2567', '', '7_20240325120248.pdf');
INSERT INTO `ita_ebit_items` VALUES (1079, 'ฟอร์มขอเผยแพร่', 103, '2567', '', '7_20240325120306.pdf');
INSERT INTO `ita_ebit_items` VALUES (1080, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 104, '2567', '', '7_20240325134404.pdf');
INSERT INTO `ita_ebit_items` VALUES (1081, 'ฟอร์มขอเผยแพร่', 104, '2567', '', '7_20240325134540.pdf');
INSERT INTO `ita_ebit_items` VALUES (1082, 'ภาพติดประกาศ', 104, '2567', '', '7_20240325134559.pdf');
INSERT INTO `ita_ebit_items` VALUES (1083, 'ประกาศดีเด่นและดีมาก', 104, '2567', '', '7_20240325135851.pdf');
INSERT INTO `ita_ebit_items` VALUES (1084, 'บันทึกข้อความ ที่ผู้บริหารลงนามอนุมัติในโครงการ', 108, '2567', '', '7_20240325160307.pdf');
INSERT INTO `ita_ebit_items` VALUES (1085, '1.1.2 การขออนุญาต นำไปเผยแพร่บนเว็บไซต์ของหน่วยงาน', 108, '2567', '', '7_20240325160429.pdf');
INSERT INTO `ita_ebit_items` VALUES (1086, '1.2 โครงการ', 108, '2567', '', '7_20240325160524.pdf');
INSERT INTO `ita_ebit_items` VALUES (1087, '1.2.2 แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ โครงการ', 108, '2567', '', '7_20240325160604.pdf');
INSERT INTO `ita_ebit_items` VALUES (1088, '2. มีรายงานประชุมโครงการ / กิจกรรม ที่แสดงชื่อผู้ใช้บริการ หรือผู้มีส่วนได้ส่วนเสีย มาร่วมวางแผนและมีการแลกเปลี่ยนความคิดเห็น ตามภารกิจที่เลือก ที่ผู้บริหารรับทราบ', 108, '2567', '', '7_20240325162203.pdf');
INSERT INTO `ita_ebit_items` VALUES (1089, '2.1 แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 108, '2567', '', '7_20240325162246.pdf');
INSERT INTO `ita_ebit_items` VALUES (1090, 'ขออนุมัติดำเนินการตามโครงการ', 105, '2567', '', '7_20240325163145.pdf');
INSERT INTO `ita_ebit_items` VALUES (1091, 'โครงการ', 105, '2567', '', '7_20240325163203.pdf');
INSERT INTO `ita_ebit_items` VALUES (1092, '3.1 รายงานการประชุม', 108, '2567', '', '7_20240325163330.pdf');
INSERT INTO `ita_ebit_items` VALUES (1093, '3.2 แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 108, '2567', '', '7_20240325163441.pdf');
INSERT INTO `ita_ebit_items` VALUES (1094, 'บันทึกข้อความรายงานผลการดำเนินงาน', 105, '2567', '', '7_202403251634411.pdf');
INSERT INTO `ita_ebit_items` VALUES (1095, 'รายชื่อผู้เข้าร่วมโครงการ', 105, '2567', '', '7_20240325163531.pdf');
INSERT INTO `ita_ebit_items` VALUES (1096, 'ภาพกิจกรรม', 105, '2567', '', '7_20240325163549.pdf');
INSERT INTO `ita_ebit_items` VALUES (1097, 'ฟอร์มขอเผยแพร่', 105, '2567', '', '7_20240325163610.pdf');
INSERT INTO `ita_ebit_items` VALUES (1098, '4.1 รายงานสรุปผลการดำเนินโครงการ กิจกรรม ตามภารกิจที่เลือก', 108, '2567', '', '7_20240325163833.pdf');
INSERT INTO `ita_ebit_items` VALUES (1099, '4.2 แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 108, '2567', '', '7_20240325163852.pdf');
INSERT INTO `ita_ebit_items` VALUES (1100, '7. มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 108, '2567', '', '7_20240325170011.pdf');
INSERT INTO `ita_ebit_items` VALUES (1101, '6. บันทึกขออนุญาตเผยแพร่ และแบบฟอร์มขออนุญาตเผยแพร่', 108, '2567', '', '7_20240325170523.pdf');
INSERT INTO `ita_ebit_items` VALUES (1102, '5. มีภาพกิจกรรม ที่ระบุวัน เวลา สถานที่จัดกิจกรรมที่ชัดเจน', 108, '2567', '', '7_20240325174706.pdf');
INSERT INTO `ita_ebit_items` VALUES (1103, '5.2 แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 108, '2567', '', '7_20240325174731.pdf');
INSERT INTO `ita_ebit_items` VALUES (1104, 'มาตรการป้องกันรับสินบน', 109, '2567', '', '7_20240325181531.pdf');
INSERT INTO `ita_ebit_items` VALUES (1105, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 109, '2567', '', '7_20240325181957.pdf');
INSERT INTO `ita_ebit_items` VALUES (1106, 'ประกาศ', 109, '2567', '', '7_20240325182105.pdf');
INSERT INTO `ita_ebit_items` VALUES (1107, 'หนังสือแจ้งเวียน', 109, '2567', '', '7_20240325182133.pdf');
INSERT INTO `ita_ebit_items` VALUES (1108, 'ฟอร์มขอเผยแพร่', 109, '2567', '', '7_20240325182152.pdf');
INSERT INTO `ita_ebit_items` VALUES (1109, 'หนังสือชี้แจง', 109, '2567', '', '7_20240325182218.pdf');
INSERT INTO `ita_ebit_items` VALUES (1110, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 112, '2567', '', '7_20240326100652.pdf');
INSERT INTO `ita_ebit_items` VALUES (1111, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ', 112, '2567', '', '7_20240326100729.pdf');
INSERT INTO `ita_ebit_items` VALUES (1112, 'ฟอร์มขอเผยแพร่', 112, '2567', '', '7_20240326100747.pdf');
INSERT INTO `ita_ebit_items` VALUES (1113, '1. มีบันทึกข้อความ ที่ผู้บริหารลงนามข้อสั่งการอย่างเป็นทางการ และมีการขออนุญาตนำไปเผยแพร่บนเว็บไซต์ของหน่วยงาน', 111, '2567', '', '7_20240326102900.docx');
INSERT INTO `ita_ebit_items` VALUES (1114, '2. การยืมพัสดุ แผนผัง สสอ.กุดรัง', 111, '2567', '', '7_20240326103251.pdf');
INSERT INTO `ita_ebit_items` VALUES (1115, '3. ใบยืมพัสดุประเภทใช้คงรูป และพัสดุประเภทใช้สิ้นเปลือง', 111, '2567', '', '7_20240326103317.pdf');
INSERT INTO `ita_ebit_items` VALUES (1116, '4. หนังสือแจ้งเวียน', 111, '2567', '', '7_20240326103339.pdf');
INSERT INTO `ita_ebit_items` VALUES (1117, '5. ฟอร์มขอเผยแพร่', 111, '2567', '', '7_20240326103410.pdf');
INSERT INTO `ita_ebit_items` VALUES (1118, '1. บันทึกลงนามและขอเผยแพร่', 111, '2567', '', '7_20240326103505.pdf');
INSERT INTO `ita_ebit_items` VALUES (1119, 'ลงนามแผนจริยธรรม', 112, '2567', '', '7_20240326104610.pdf');
INSERT INTO `ita_ebit_items` VALUES (1120, 'แผนส่งเสริมคุณธรรม', 112, '2567', '', '7_20240326104655.pdf');
INSERT INTO `ita_ebit_items` VALUES (1121, 'คำสั่งชมรม', 112, '2567', '', '7_20240326104917.pdf');
INSERT INTO `ita_ebit_items` VALUES (1122, 'รายงานแผนจริยธรรม', 112, '2567', '', '7_20240326105010.pdf');
INSERT INTO `ita_ebit_items` VALUES (1123, 'รางาน', 112, '2567', '', '7_20240326105038.pdf');
INSERT INTO `ita_ebit_items` VALUES (1124, 'ฟอร์มขอเผยแพร่', 112, '2567', '', '7_20240326105105.pdf');
INSERT INTO `ita_ebit_items` VALUES (1125, '1. มีบันทึกข้อความรับทราบรายงานการดำเนินงานตามแนวทางปฏิบัติของหน่วยงานในปีงบประมาณ พ.ศ. 2566-2567 ตามประกาศกระทรวงสาธารณสุข', 110, '2567', '', '7_20240326113627.pdf');
INSERT INTO `ita_ebit_items` VALUES (1126, '1. มีบันทึกข้อความรับทราบรายงานการดำเนินงานตามแนวทางปฏิบัติของหน่วยงานในปีงบประมาณ พ.ศ. 2566-2567 ตามประกาศกระทรวงสาธารณสุข เรื่อง เกณฑ์จริยธรรมการจัดซื้อจัดหาและการส่งเสริมการขายยาและเวชภัณฑ์ที่มิใช่ยาของกระทรวงสาธารณสุข พ.ศ. 2564', 110, '2567', '', '7_20240326121054.pdf');
INSERT INTO `ita_ebit_items` VALUES (1127, '2. มีรายงานการประเมินฯ', 110, '2567', '', '7_20240326121138.pdf');
INSERT INTO `ita_ebit_items` VALUES (1128, '3. มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 110, '2567', '', '7_20240326121158.pdf');
INSERT INTO `ita_ebit_items` VALUES (1129, '1. มีบันทึกข้อความ แสดงถึงการขออนุมัติจัดการประชุมการจัดทำแผนบริหารความเสี่ยงการทุจริต ประจำปีงบประมาณ พ.ศ. 2567 ของหน่วยงาน', 114, '2567', '', '7_20240326152658.pdf');
INSERT INTO `ita_ebit_items` VALUES (1130, '2. มีรายงานการประชุมการจัดทำแผนบริหารความเสี่ยงการทุจริต ประจำปีงบประมาณ พ.ศ. 2567 ของหน่วยงาน', 114, '2567', '', '7_20240326152730.pdf');
INSERT INTO `ita_ebit_items` VALUES (1131, '3. มีบันทึกข้อความ ที่ผู้บริหารลงนามรับทราบรายงานแผนบริหารความเสี่ยงการทุจริต ประจำปีงบประมาณ พ.ศ. 2567', 114, '2567', '', '7_20240326152804.pdf');
INSERT INTO `ita_ebit_items` VALUES (1132, '5. มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 114, '2567', '', '7_20240326152903.pdf');
INSERT INTO `ita_ebit_items` VALUES (1133, 'หนังสือเชิญประชุม', 114, '2567', '', '7_20240326154403.pdf');
INSERT INTO `ita_ebit_items` VALUES (1134, '2. มีรายงานการประชุมการจัดทำแผนบริหารความเสี่ยงการทุจริต ประจำปีงบประมาณ พ.ศ. 2567 ของหน่วยงาน', 114, '2567', '', '7_20240326161014.pdf');
INSERT INTO `ita_ebit_items` VALUES (1135, '4. มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 115, '2567', '', '7_20240326163754.pdf');
INSERT INTO `ita_ebit_items` VALUES (1136, '3. มีหลักฐานหนังสือแจ้งเวียน', 115, '2567', '', '7_20240326163830.pdf');
INSERT INTO `ita_ebit_items` VALUES (1137, '1 บันทึกข้อความลงนาม คำสั่ง', 115, '2567', '', '7_20240326164109.pdf');
INSERT INTO `ita_ebit_items` VALUES (1138, '2.1 ประกาศมาตรการ', 115, '2567', '', '7_20240326164133.pdf');
INSERT INTO `ita_ebit_items` VALUES (1139, '4. มีรายงานแผนบริหารความเสี่ยงการทุจริต ประจำปีงบประมาณ พ.ศ. 2567', 114, '2567', '', '7_20240326170620.pdf');
INSERT INTO `ita_ebit_items` VALUES (1140, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 113, '2567', '', '7_20240326172415.pdf');
INSERT INTO `ita_ebit_items` VALUES (1141, 'รายงานผลการดำเนินงาน', 113, '2567', '', '7_20240326172444.pdf');
INSERT INTO `ita_ebit_items` VALUES (1142, 'ฟอร์มขอเผยแพร่', 113, '2567', '', '7_20240326172501.pdf');
INSERT INTO `ita_ebit_items` VALUES (1143, 'บันทึกข้อความรายงานผลการดำเนินงาน', 113, '2567', '', '7_20240326174038.pdf');
INSERT INTO `ita_ebit_items` VALUES (1144, 'รายงานการดำเนินงาน', 113, '2567', '', '7_20240326174104.pdf');
INSERT INTO `ita_ebit_items` VALUES (1145, 'ฟอร์มขอเผยแพร่', 113, '2567', '', '7_20240326174119.pdf');
INSERT INTO `ita_ebit_items` VALUES (1146, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 119, '2567', '', '7_20240327101723.pdf');
INSERT INTO `ita_ebit_items` VALUES (1147, 'ประกาศ', 119, '2567', '', '7_20240327101812.pdf');
INSERT INTO `ita_ebit_items` VALUES (1148, 'คู่มือแนวทางปฏิบัติ', 119, '2567', '', '7_20240327101846.pdf');
INSERT INTO `ita_ebit_items` VALUES (1149, 'แบบรายงานผล', 119, '2567', '', '7_20240327101918.pdf');
INSERT INTO `ita_ebit_items` VALUES (1150, 'ฟอร์มขอเผยแพร่', 119, '2567', '', '7_20240327101941.pdf');
INSERT INTO `ita_ebit_items` VALUES (1151, 'หนังสือแจ้งเวียน', 119, '2567', '', '7_20240327102003.pdf');
INSERT INTO `ita_ebit_items` VALUES (1152, 'ฟอร์มขอเผยแพร่', 119, '2567', '', '7_20240327102024.pdf');
INSERT INTO `ita_ebit_items` VALUES (1153, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 118, '2567', '', '7_20240327122650.pdf');
INSERT INTO `ita_ebit_items` VALUES (1154, 'ประกาศ1', 118, '2567', '', '7_20240327122728.pdf');
INSERT INTO `ita_ebit_items` VALUES (1155, 'ประกาศ2', 118, '2567', '', '7_20240327122752.pdf');
INSERT INTO `ita_ebit_items` VALUES (1156, 'ประกาศ3', 118, '2567', '', '7_20240327122811.pdf');
INSERT INTO `ita_ebit_items` VALUES (1157, 'บันทึกข้อความรายงานผลการดำเนินงาน', 118, '2567', '', '7_20240327122848.pdf');
INSERT INTO `ita_ebit_items` VALUES (1158, 'ภาพกิจกรรม', 118, '2567', '', '7_20240327122908.pdf');
INSERT INTO `ita_ebit_items` VALUES (1159, 'ฟอร์มขอเผยแพร่', 118, '2567', '', '7_20240327122930.pdf');
INSERT INTO `ita_ebit_items` VALUES (1160, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 116, '2567', '', '7_20240327133952.pdf');
INSERT INTO `ita_ebit_items` VALUES (1161, 'รายงานการเรี่ยไร1', 116, '2567', '', '7_20240327134102.pdf');
INSERT INTO `ita_ebit_items` VALUES (1162, 'รายงานการเรี่ยไร2', 116, '2567', '', '7_20240327134141.pdf');
INSERT INTO `ita_ebit_items` VALUES (1163, 'รายงานของขวัญ1', 116, '2567', '', '7_20240327134216.pdf');
INSERT INTO `ita_ebit_items` VALUES (1164, 'รายงานของขวัญ2', 116, '2567', '', '7_20240327134254.pdf');
INSERT INTO `ita_ebit_items` VALUES (1165, 'ฟอร์มขอเผยแพร่', 116, '2567', '', '7_20240327134311.pdf');
INSERT INTO `ita_ebit_items` VALUES (1166, 'ขออนุมัติดำเนินการตามโครงการ', 117, '2567', '', '7_20240327145528.pdf');
INSERT INTO `ita_ebit_items` VALUES (1167, 'โครงการ', 117, '2567', '', '7_20240327145605.pdf');
INSERT INTO `ita_ebit_items` VALUES (1168, 'ฟอร์มขอเผยแพร่', 117, '2567', '', '7_20240327145636.pdf');
INSERT INTO `ita_ebit_items` VALUES (1169, 'บันทึกข้อความรายงานผลการดำเนินงาน', 117, '2567', '', '7_20240327145710.pdf');
INSERT INTO `ita_ebit_items` VALUES (1170, 'รายงานผลการดำเนินงาน', 117, '2567', '', '7_20240327145754.pdf');
INSERT INTO `ita_ebit_items` VALUES (1171, 'ภาพกิจกรรม', 117, '2567', '', '7_20240327145829.pdf');
INSERT INTO `ita_ebit_items` VALUES (1172, 'ฟอร์มขอเผยแพร่', 117, '2567', '', '7_20240327145906.pdf');
INSERT INTO `ita_ebit_items` VALUES (1173, 'บันทึกข้อความรายงานผลการดำเนินงาน', 102, '2567', '', '7_20240625100911.pdf');
INSERT INTO `ita_ebit_items` VALUES (1174, 'แบบ สขร 1 เดือน เม.ย.67(งบดำเนินการ)', 102, '2567', '', '7_20240625101532.pdf');
INSERT INTO `ita_ebit_items` VALUES (1175, 'แบบ สขร 1 เดือน เมย.67 งบลงทุน', 102, '2567', '', '7_20240625101609.pdf');
INSERT INTO `ita_ebit_items` VALUES (1176, 'แบบ สขร 1 เดือน พ.ค.(งบดำเนินการ)', 102, '2567', '', '7_20240625101655.pdf');
INSERT INTO `ita_ebit_items` VALUES (1177, 'แบบ สขร 1 เดือน พ.ค.(งบลงทุน)', 102, '2567', '', '7_20240625101740.pdf');
INSERT INTO `ita_ebit_items` VALUES (1178, 'แบบ สขร 1 เดือน มิ.ย.(งบดำเนินการ)', 102, '2567', '', '7_20240625101813.pdf');
INSERT INTO `ita_ebit_items` VALUES (1179, 'แบบ สขร 1 เดือน มิ.ย.(งบลงทุน)', 102, '2567', '', '7_20240625101845.pdf');
INSERT INTO `ita_ebit_items` VALUES (1180, 'ฟอร์มขอเผยแพร่', 102, '2567', '', '7_20240625102608.pdf');
INSERT INTO `ita_ebit_items` VALUES (1181, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 104, '2567', '', '7_20240625112338.pdf');
INSERT INTO `ita_ebit_items` VALUES (1182, 'ประกาศ', 104, '2567', '', '7_20240625112409.pdf');
INSERT INTO `ita_ebit_items` VALUES (1183, 'ภาพกิจกรรม', 104, '2567', '', '7_20240625112428.pdf');
INSERT INTO `ita_ebit_items` VALUES (1184, 'ฟอร์มขอเผยแพร่', 104, '2567', '', '7_20240625112441.pdf');
INSERT INTO `ita_ebit_items` VALUES (1185, '1. มีบันทึกข้อความ ที่ผู้บริหารลงนามรับทราบรายงานสรุปผลการดำเนินงาน', 107, '2567', '', '7_20240827110351.pdf');
INSERT INTO `ita_ebit_items` VALUES (1186, '2.1 สรุปผลการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน', 107, '2567', '', '7_20240827111214.pdf');
INSERT INTO `ita_ebit_items` VALUES (1187, '2.2 สรุปผลการดำเนินงานเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 107, '2567', '', '7_20240827111519.pdf');
INSERT INTO `ita_ebit_items` VALUES (1188, '3. มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 107, '2567', '', '7_20240827111818.pdf');
INSERT INTO `ita_ebit_items` VALUES (1189, 'บันทึกข้อความรายงานผลการดำเนินงาน', 119, '2567', '', '7_20240827125033.pdf');
INSERT INTO `ita_ebit_items` VALUES (1190, 'รายงานผลการดำเนินงาน', 119, '2567', '', '7_20240827125106.pdf');
INSERT INTO `ita_ebit_items` VALUES (1191, 'ฟอร์มขอเผยแพร่', 119, '2567', '', '7_20240827125129.pdf');
INSERT INTO `ita_ebit_items` VALUES (1192, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 116, '2567', '', '7_20240827134423.pdf');
INSERT INTO `ita_ebit_items` VALUES (1193, 'ฟอร์มขอเผยแพร่', 116, '2567', '', '7_20240827134441.pdf');
INSERT INTO `ita_ebit_items` VALUES (1194, 'ของขวัญเกินสามพัน', 116, '2567', '', '7_20240827140056.pdf');
INSERT INTO `ita_ebit_items` VALUES (1195, 'ของขวัญไม่เกินสามพัน', 116, '2567', '', '7_20240827140127.pdf');
INSERT INTO `ita_ebit_items` VALUES (1196, 'หน่วยงานเรี่ยไร', 116, '2567', '', '7_20240827140201.pdf');
INSERT INTO `ita_ebit_items` VALUES (1197, 'มีส่วนเกี่ยวข้องเรี่ยไร', 116, '2567', '', '7_20240827140252.pdf');
INSERT INTO `ita_ebit_items` VALUES (1198, 'มีส่วนเกี่ยวข้องเรี่ยไร', 116, '2567', '', '7_20240827140304.pdf');
INSERT INTO `ita_ebit_items` VALUES (1199, 'ของขวัญเกินสามพัน', 116, '2567', '', '7_20240827141413.pdf');
INSERT INTO `ita_ebit_items` VALUES (1200, 'บันทึกข้อความรายงานผลการดำเนินงาน', 104, '2567', '', '7_20240909133113.pdf');
INSERT INTO `ita_ebit_items` VALUES (1201, 'บันทึกข้อความรายงานผลการดำเนินงาน', 114, '2567', '', '7_20240909133140.pdf');
INSERT INTO `ita_ebit_items` VALUES (1202, 'รายงานผลการดำเนินงาน', 114, '2567', '', '7_20240909133203.pdf');
INSERT INTO `ita_ebit_items` VALUES (1203, 'ฟอร์มขอเผยแพร่', 114, '2567', '', '7_20240909133219.pdf');
INSERT INTO `ita_ebit_items` VALUES (1204, 'บันทึกข้อความรายงานผลการดำเนินงานตามแผนจริยธรรม', 113, '2567', '', '7_20240909140823.pdf');
INSERT INTO `ita_ebit_items` VALUES (1205, 'บันทึกข้อความรายงานผลการดำเนินงานป้องกันและปราบปราม', 113, '2567', '', '7_20240909140900.pdf');
INSERT INTO `ita_ebit_items` VALUES (1206, 'รายงานแผนจริยธรรม', 113, '2567', '', '7_20240909141238.pdf');
INSERT INTO `ita_ebit_items` VALUES (1207, 'รายงานตามแผนป้องกันปราบปราม', 113, '2567', '', '7_20240909141324.pdf');
INSERT INTO `ita_ebit_items` VALUES (1208, 'ฟอร์มขอเผยแพร่จริยธรรม', 113, '2567', '', '7_20240909141349.pdf');
INSERT INTO `ita_ebit_items` VALUES (1209, 'ฟอร์มขอเผยแพร่ป้องกันปราบปราม', 113, '2567', '', '7_20240909141420.pdf');
INSERT INTO `ita_ebit_items` VALUES (1210, 'บันทึกข้อความรายงานผลการดำเนินงาน', 109, '2567', '', '7_20240909153111.pdf');
INSERT INTO `ita_ebit_items` VALUES (1211, 'ฟอร์มขอเผยแพร่', 109, '2567', '', '7_20240909153141.pdf');
INSERT INTO `ita_ebit_items` VALUES (1212, 'บันทึกข้อความชี้แจง', 109, '2567', '', '7_20240909153216.pdf');
INSERT INTO `ita_ebit_items` VALUES (1213, 'รายงานผลการดำเนินงาน', 109, '2567', '', '7_20240909153240.pdf');
INSERT INTO `ita_ebit_items` VALUES (1214, 'บันทึกข้อความรายงานผลการดำเนินงาน', 102, '2567', '', '7_20240910125945.pdf');
INSERT INTO `ita_ebit_items` VALUES (1215, 'ฟอร์มขอเผยแพร่', 102, '2567', '', '7_20240910130009.pdf');
INSERT INTO `ita_ebit_items` VALUES (1216, 'แบบ สขร 1 เดือน กค(งบดำเนินการ)', 102, '2567', '', '7_20240910130120.pdf');
INSERT INTO `ita_ebit_items` VALUES (1217, 'แบบ สขร 1 เดือน กค(งบลงทุน)', 102, '2567', '', '7_20240910130158.pdf');
INSERT INTO `ita_ebit_items` VALUES (1218, 'แบบ สขร 1 เดือน สค(งบดำเนินการ)', 102, '2567', '', '7_20240910130235.pdf');
INSERT INTO `ita_ebit_items` VALUES (1219, 'แบบ สขร 1 เดือน สค(งบลงทุน)', 102, '2567', '', '7_20240910130311.pdf');
INSERT INTO `ita_ebit_items` VALUES (1220, 'แบบ สขร 1 เดือน กย(งบดำเนินการ)', 102, '2567', '', '7_20240910130343.pdf');
INSERT INTO `ita_ebit_items` VALUES (1221, 'แบบ สขร 1 เดือน กย งบลงทุน', 102, '2567', '', '7_20240910130415.pdf');
INSERT INTO `ita_ebit_items` VALUES (1222, 'บันทึกข้อความรายงานผลการดำเนินงาน', 125, '2568', '', '7_20241216143949.pdf');
INSERT INTO `ita_ebit_items` VALUES (1224, 'แบบ สขร 1 เดือน พย.67', 125, '2568', '', '7_20241216144117.pdf');
INSERT INTO `ita_ebit_items` VALUES (1225, 'แบบ สขร 1 เดือน ธค.67', 125, '2568', '', '7_20241216144201.pdf');
INSERT INTO `ita_ebit_items` VALUES (1226, 'ฟอร์มขอเผยแพร่', 125, '2568', '', '7_20241216144222.pdf');
INSERT INTO `ita_ebit_items` VALUES (1227, 'แบบสขร ตค67', 125, '2568', '', '7_20241216145719.pdf');
INSERT INTO `ita_ebit_items` VALUES (1228, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 124, '2568', '', '7_20241220150900.pdf');
INSERT INTO `ita_ebit_items` VALUES (1229, 'หนังสือแจ้งจัดสรรงบประมาณ', 124, '2568', '', '7_20241220150933.pdf');
INSERT INTO `ita_ebit_items` VALUES (1230, 'แผนการจัดซื้อจัดจ้างและแผนดำเนินการ', 124, '2568', '', '7_20241220151025.pdf');
INSERT INTO `ita_ebit_items` VALUES (1231, 'คำสั่งปิดประกาศ', 124, '2568', '', '7_20241220151100.pdf');
INSERT INTO `ita_ebit_items` VALUES (1232, 'ฟอร์มขอเผยแพร่', 124, '2568', '', '7_20241220151119.pdf');
INSERT INTO `ita_ebit_items` VALUES (1233, 'ภาพติดประกาศ', 124, '2568', '', '7_20241220151140.pdf');
INSERT INTO `ita_ebit_items` VALUES (1234, 'บันทึกข้อความรายงานผลการดำเนินงาน', 124, '2568', '', '7_20241220151839.pdf');
INSERT INTO `ita_ebit_items` VALUES (1235, 'แบบสขร1 งบดำเนินการ', 124, '2568', '', '7_20241220151949.pdf');
INSERT INTO `ita_ebit_items` VALUES (1236, 'แบบสขร1 งบลงทุน', 124, '2568', '', '7_20241220152028.pdf');
INSERT INTO `ita_ebit_items` VALUES (1237, 'ฟอร์มขอเผยแพร่', 124, '2568', '', '7_20241220152102.pdf');
INSERT INTO `ita_ebit_items` VALUES (1238, 'บันทึกข้อความแจ้งเวียน', 124, '2568', '', '7_20241220152833.pdf');
INSERT INTO `ita_ebit_items` VALUES (1239, 'ประกาศ', 124, '2568', '', '7_20241220152903.pdf');
INSERT INTO `ita_ebit_items` VALUES (1240, 'ฟอร์มขอเผยแพร่', 124, '2568', '', '7_20241220152922.pdf');
INSERT INTO `ita_ebit_items` VALUES (1241, '1.1 มีบันทึกข้อความ ที่ผู้บริหารลงนามในคำสั่ง / ประกาศ และมีการขออนุญาตนำไปเผยแพร่บนเว็บไซต์ของหน่วยงาน', 121, '2568', '', '7_20241223102043.pdf');
INSERT INTO `ita_ebit_items` VALUES (1242, '1.2 มีคำสั่ง / ประกาศ โดยผู้บริหารสูงสุดของหน่วยงาน ', 121, '2568', '', '7_20241223102522.pdf');
INSERT INTO `ita_ebit_items` VALUES (1243, '1.3 มีกรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน รายละเอียด เนื้อหาในข้อมูลประกอบข้อคำถามข้อ 2. (ข้อ 2.1 มีลักษณะ / ประเภทข้อมูลที่หน่วยงาน ต้องเผยแพร่ต่อสาธารณะ และข้อ 2.2 มีการระบุวิธีการ ขั้นตอนการดำเนินงาน ระบุเวลา การดำเนินการและผู้มีหน้าที่รับผิดชอบ ในการเผยแพร่ข้อมูลต่อสาธารณะอย่างชัดเจน)', 121, '2568', '', '7_20241223103948.pdf');
INSERT INTO `ita_ebit_items` VALUES (1244, '1.4 มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 121, '2568', '', '7_20241223104107.pdf');
INSERT INTO `ita_ebit_items` VALUES (1245, '2.1 มีบันทึกข้อความ ที่ผู้บริหารลงนามรับทราบรายงานฯ และมีการขออนุญาตนำไปเผยแพร่บนเว็บไซต์ของหน่วยงาน', 121, '2568', '', '7_20241223105227.pdf');
INSERT INTO `ita_ebit_items` VALUES (1246, '2.2 มีรายงานผลการกำกับติดตามการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ ของหน่วยงานในปีที่ผ่านมา (ของปีงบประมาณ พ.ศ. 2567)', 121, '2568', '', '7_20241223105339.pdf');
INSERT INTO `ita_ebit_items` VALUES (1247, '2.3 มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 121, '2568', '', '7_20241223105938.pdf');
INSERT INTO `ita_ebit_items` VALUES (1248, '2.1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย (1) รูปถ่าย (2) ชื่อ-นามสกุล (3) ตำแหน่ง และ (4) หมายเลขโทรศัพท์ (มีครบ 4 รายการ) ', 122, '2568', '', '7_20241223110620.pdf');
INSERT INTO `ita_ebit_items` VALUES (1249, '2.1.2. นโยบายของผู้บริหาร', 122, '2568', '', '7_20241223110811.pdf');
INSERT INTO `ita_ebit_items` VALUES (1251, '2.1.3 โครงสร้างหน่วยงาน', 122, '2568', '', '7_20241223111131.pdf');
INSERT INTO `ita_ebit_items` VALUES (1252, '2.1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', 122, '2568', '', '7_20241223111339.pdf');
INSERT INTO `ita_ebit_items` VALUES (1253, '2.1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', 122, '2568', '', '7_20241223111525.pdf');
INSERT INTO `ita_ebit_items` VALUES (1254, '2.1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจและภารกิจของหนวยงาน', 122, '2568', '', '7_20241223111907.pdf');
INSERT INTO `ita_ebit_items` VALUES (1255, '2.1.7 ข้อมูลการติดต่อหน่วยงาน ประกอบด้วย 1. ที่อยู่หน่วยงาน 2.หมายเลขโทรศัพท์ของหน่วยงาน 3. หมายเลขโทรสารของหน่วยงาน 4.ที่อยู่ทางไปรษณีย์อิเล็กทรอนิกส์', 122, '2568', '', '7_20241223112208.pdf');
INSERT INTO `ita_ebit_items` VALUES (1256, '2.1.8 ช่องทางการรับฟังความคิดเห็นที่บุคคลภายนอกสามารถแสดงความคิดเห็นต่อการดำเนินงานตามหน้าที่และอำนาจและตามภารกิจของหน่วยงาน', 122, '2568', '', '7_20241223112445.pdf');
INSERT INTO `ita_ebit_items` VALUES (1257, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241223132606.pdf');
INSERT INTO `ita_ebit_items` VALUES (1258, '2.2 วิสัยทัศน์ พันธกิจ', 122, '2568', '', '7_20241223133021.pdf');
INSERT INTO `ita_ebit_items` VALUES (1259, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241223133140.pdf');
INSERT INTO `ita_ebit_items` VALUES (1260, '2.3 วัฒนธรรม ค่านิยมองค์กร', 122, '2568', '', '7_20241223133237.pdf');
INSERT INTO `ita_ebit_items` VALUES (1261, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241223133331.pdf');
INSERT INTO `ita_ebit_items` VALUES (1262, '2.4 ประมวลจริยธรรมข้าราชการพลเรือน พ.ศ. 2564', 122, '2568', '', '7_20241223133934.pdf');
INSERT INTO `ita_ebit_items` VALUES (1263, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241223134506.pdf');
INSERT INTO `ita_ebit_items` VALUES (1264, '2.5 ข้อกำหนดจริยธรรมเจ้าหน้าที่ของรัฐ สำนักงานปลัดกระทรวงสาธารณสุข พ.ศ. 2564 ', 122, '2568', '', '7_20241223134712.pdf');
INSERT INTO `ita_ebit_items` VALUES (1265, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241223134831.pdf');
INSERT INTO `ita_ebit_items` VALUES (1267, '  6.1 แผนระดับที่ 1 ได้แก่ ยุทธศาสตร์ชาติ พ.ศ. 2561-2580', 122, '2568', '', '7_20241224092613.pdf');
INSERT INTO `ita_ebit_items` VALUES (1269, '6.2.1 แผนแม่บทภายใต้ยุทธศาสตร์ชาติ (พ.ศ. 2566-2580) (ฉบับแก้ไขเพิ่มเติม)', 122, '2568', '', '7_20241224101647.pdf');
INSERT INTO `ita_ebit_items` VALUES (1270, '6.2.2 แผนพัฒนาเศรษฐกิจและสังคมแห่งชาติ ฉบับที่ 13 (พ.ศ. 2566-2570)', 122, '2568', '', '7_20241224101740.pdf');
INSERT INTO `ita_ebit_items` VALUES (1272, '6.2.3 นโยบายและแผนระดับชาติว่าด้วยความมั่นคงแห่งชาติ (พ.ศ. 2566-2570)', 122, '2568', '', '7_20241224102556.pdf');
INSERT INTO `ita_ebit_items` VALUES (1273, '6.3.1 แผนปฏิบัติการด้านการต่อต้านการทุจริตและประพฤติมิชอบ ระยะที่ 2 (พ.ศ. 2566-2570)', 122, '2568', '', '7_20241224104737.pdf');
INSERT INTO `ita_ebit_items` VALUES (1274, '6.3.2 แผนปฏิบัติการด้านการส่งเสริมคุณธรรมแห่งชาติ ระยะที่ 2 (พ.ศ. 2566-2570)', 122, '2568', '', '7_20241224105931.PDF');
INSERT INTO `ita_ebit_items` VALUES (1275, '6.3.3 ยุทธศาสตร์ด้านมาตรฐานทางจริยธรรมและการส่งเสริมจริยธรรมภาครัฐ (พ.ศ. 2565-2570)', 122, '2568', '', '7_20241224110127.pdf');
INSERT INTO `ita_ebit_items` VALUES (1276, ' 7.1 แผนปฏิบัติราชการด้านการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ กระทรวงสาธารณสุข ระยะที่ 2 (พ.ศ. 2566-2570', 122, '2568', '', '7_20241224110421.pdf');
INSERT INTO `ita_ebit_items` VALUES (1277, '7.2 แผนปฏิบัติราชการด้านการส่งเสริมคุณธรรม จริยธรรม กระทรวงสาธารณสุข ระยะที่ 2 (พ.ศ. 2566-2570)', 122, '2568', '', '7_20241224110834.pdf');
INSERT INTO `ita_ebit_items` VALUES (1278, '2.11. แผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน และผลการใช้จ่ายงบประมาณ ประจำปีของหน่วยงาน ตามแผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน', 122, '2568', '', '7_20241224111656.pdf');
INSERT INTO `ita_ebit_items` VALUES (1279, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224111215.pdf');
INSERT INTO `ita_ebit_items` VALUES (1280, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224111940.pdf');
INSERT INTO `ita_ebit_items` VALUES (1282, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224113052.pdf');
INSERT INTO `ita_ebit_items` VALUES (1283, '2.13. คู่มือการปฏิบัติงานการร้องเรียนการทุจริตและประพฤติมิชอบ', 122, '2568', '', '7_20241224115521.pdf');
INSERT INTO `ita_ebit_items` VALUES (1284, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224115633.pdf');
INSERT INTO `ita_ebit_items` VALUES (1285, '2.14. คู่มือการปฏิบัติงานตามภารกิจหลักและภารกิจสนับสนุนของหน่วยงาน', 122, '2568', '', '7_20241224140551.pdf');
INSERT INTO `ita_ebit_items` VALUES (1286, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224140745.pdf');
INSERT INTO `ita_ebit_items` VALUES (1287, '2.15. คู่มือขั้นตอนการให้บริการ (ภารกิจให้บริการประชาชนตามพระราชบัญญัติ การอำนวยความสะดวกในการพิจารณาอนุญาตของทางราชการ พ.ศ. 2558) (เฉพาะสำนักงานสาธารณสุขจังหวัด และสำนักงานสาธารณสุขอำเภอ)', 122, '2568', '', '7_20241224140925.pdf');
INSERT INTO `ita_ebit_items` VALUES (1288, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224141026.pdf');
INSERT INTO `ita_ebit_items` VALUES (1290, '2.16. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ ประจำปีงบประมาณ พ.ศ. 2567 รอบ 12 เดือน ประจำปีงบประมาณ พ.ศ. 2567', 122, '2568', '', '7_20241224144129.pdf');
INSERT INTO `ita_ebit_items` VALUES (1291, '2.17. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2567 รอบ 12 เดือน ประจำปีงบประมาณ พ.ศ. 2567', 122, '2568', '', '7_20241224144325.pdf');
INSERT INTO `ita_ebit_items` VALUES (1292, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 123, '2568', '', '7_20241224153906.pdf');
INSERT INTO `ita_ebit_items` VALUES (1293, 'รายงานการวิเคราะห์การจัดซื้อจัดจ้าง', 123, '2568', '', '7_20241224154030.pdf');
INSERT INTO `ita_ebit_items` VALUES (1294, 'ฟอร์มขอเผยแพร่', 123, '2568', '', '7_20241224154054.pdf');
INSERT INTO `ita_ebit_items` VALUES (1295, '18.2 แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2568', 122, '2568', '', '7_20241224154503.pdf');
INSERT INTO `ita_ebit_items` VALUES (1296, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 123, '2568', '', '7_20241224154615.pdf');
INSERT INTO `ita_ebit_items` VALUES (1297, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224154651.pdf');
INSERT INTO `ita_ebit_items` VALUES (1298, '18.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2568 ตามรอบระยะเวลาที่กำหนดในกรอบแนวทางของหน่วยงาน', 122, '2568', '', '7_20241224154825.pdf');
INSERT INTO `ita_ebit_items` VALUES (1299, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224154938.pdf');
INSERT INTO `ita_ebit_items` VALUES (1300, '18.4 ประกาศสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยแนวทางปฏิบัติงาน เพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง พ.ศ. 2560 และแบบแสดงความบริสุทธิ์ใจในการจัดซื้อจัดจ้างของหน่วยงานในการเปิดเผยข้อมูลความขัดแย้งทางผลประโยชน์ของหัวหน้าเจ้าหน้าที่', 122, '2568', '', '7_20241224155117.pdf');
INSERT INTO `ita_ebit_items` VALUES (1301, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224155238.pdf');
INSERT INTO `ita_ebit_items` VALUES (1302, '18.1 การวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุของปีงบประมาณ พ.ศ. 2567', 122, '2568', '', '7_20241224155850.pdf');
INSERT INTO `ita_ebit_items` VALUES (1303, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 122, '2568', '', '7_20241224155943.pdf');
INSERT INTO `ita_ebit_items` VALUES (1304, '12. คู่มือการปฏิบัติงานการร้องเรียนการปฏิบัติงานหรือให้บริการของเจ้าหน้าที่', 122, '2568', '', '7_20241226093735.pdf');
INSERT INTO `ita_ebit_items` VALUES (1305, '2.9. แผนปฏิบัติการประจำปีของหน่วยงาน (แผนปฏิบัติการประจำปีของหน่วยงานทุกแผน)', 122, '2568', '', '7_20241226115806.pdf');
INSERT INTO `ita_ebit_items` VALUES (1306, '2.10. รายงานผลการดำเนินงานตามแผนปฏิบัติการประจำปีของหน่วยงาน (เป็นไปตามข้อ 9.)', 122, '2568', '', '7_20241226120053.pdf');
INSERT INTO `ita_ebit_items` VALUES (1307, ' ผู้บริหารแสดงนโยบายการบริหารและพัฒนาทรัพยากรบุคล', 126, '2568', '', '7_20250325145000.pdf');
INSERT INTO `ita_ebit_items` VALUES (1308, 'บันทึกข้อความลงนาม มค68', 125, '2568', '', '7_20250326021056.pdf');
INSERT INTO `ita_ebit_items` VALUES (1309, 'บันทึกข้อความลงนาม กพ 68', 125, '2568', '', '7_20250326021200.pdf');
INSERT INTO `ita_ebit_items` VALUES (1310, 'บันทึกข้อความ มีค 68', 125, '2568', '', '7_20250326021246.pdf');
INSERT INTO `ita_ebit_items` VALUES (1311, 'แบบ สขร 1 เดือน ม.ค.68', 125, '2568', '', '7_20250326023010.pdf');
INSERT INTO `ita_ebit_items` VALUES (1312, 'แบบ สขร 1 เดือน กพ.68', 125, '2568', '', '7_20250326023114.pdf');
INSERT INTO `ita_ebit_items` VALUES (1313, 'แบบ สขร 1 เดือน มี.ค.68', 125, '2568', '', '7_20250326023150.pdf');
INSERT INTO `ita_ebit_items` VALUES (1314, 'ฟอร์มขอเผยแพร่', 125, '2568', '', '7_20250326023222.pdf');
INSERT INTO `ita_ebit_items` VALUES (1315, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 126, '2568', '', '7_20250326024258.pdf');
INSERT INTO `ita_ebit_items` VALUES (1316, 'ประกาศ', 126, '2568', '', '7_20250326024321.pdf');
INSERT INTO `ita_ebit_items` VALUES (1317, 'ฟอร์มขอเผยแพร่', 126, '2568', '', '7_20250326024342.pdf');
INSERT INTO `ita_ebit_items` VALUES (1318, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 126, '2568', '', '7_20250326024436.pdf');
INSERT INTO `ita_ebit_items` VALUES (1319, 'แผน68', 126, '2568', '', '7_20250326024519.pdf');
INSERT INTO `ita_ebit_items` VALUES (1320, 'ฟอร์มขอเผยแพร่', 126, '2568', '', '7_20250326024543.pdf');
INSERT INTO `ita_ebit_items` VALUES (1321, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 127, '2568', '', '7_20250326030147.pdf');
INSERT INTO `ita_ebit_items` VALUES (1322, 'ประกาศดีเด่น ดีมาก', 127, '2568', '', '7_20250326030229.pdf');
INSERT INTO `ita_ebit_items` VALUES (1323, 'ภาพติดประกาศ', 127, '2568', '', '7_20250326030301.pdf');
INSERT INTO `ita_ebit_items` VALUES (1324, 'ฟอร์มขอเผยแพร่', 127, '2568', '', '7_20250326030318.pdf');
INSERT INTO `ita_ebit_items` VALUES (1325, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 128, '2568', '', '7_20250326044134.pdf');
INSERT INTO `ita_ebit_items` VALUES (1326, 'โครงการ', 128, '2568', '', '7_20250326044224.pdf');
INSERT INTO `ita_ebit_items` VALUES (1327, 'บันทึกข้อความรายงานผลการดำเนินงาน', 128, '2568', '', '7_20250326044405.pdf');
INSERT INTO `ita_ebit_items` VALUES (1328, 'ภาพกิจกรรม', 128, '2568', '', '7_20250326044437.pdf');
INSERT INTO `ita_ebit_items` VALUES (1329, 'ทะเบียนผู้เข้าร่วมประชุม', 128, '2568', '', '7_20250326044535.pdf');
INSERT INTO `ita_ebit_items` VALUES (1330, 'ฟอร์มขอเผยแพร่', 128, '2568', '', '7_20250326044557.pdf');
INSERT INTO `ita_ebit_items` VALUES (1331, 'บันทึกข้อความรายงานผลการดำเนินงาน', 128, '2568', '', '7_20250326045459.pdf');
INSERT INTO `ita_ebit_items` VALUES (1332, 'ประกาศเจตนารมณ์', 132, '2568', '', '7_20250326073255.pdf');
INSERT INTO `ita_ebit_items` VALUES (1333, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 132, '2568', '', '7_20250326073353.pdf');
INSERT INTO `ita_ebit_items` VALUES (1334, 'คำสั่ง ประกาศ', 132, '2568', '', '7_20250326073514.pdf');
INSERT INTO `ita_ebit_items` VALUES (1335, 'หนังสือชี้แจง', 132, '2568', '', '7_20250326073540.pdf');
INSERT INTO `ita_ebit_items` VALUES (1336, 'หนังสือแจ้งเวียน', 132, '2568', '', '7_20250326073604.pdf');
INSERT INTO `ita_ebit_items` VALUES (1337, 'ฟอร์มขอเผยแพร่', 132, '2568', '', '7_20250326073631.pdf');
INSERT INTO `ita_ebit_items` VALUES (1338, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 133, '2568', '', '7_20250326091224.pdf');
INSERT INTO `ita_ebit_items` VALUES (1339, 'รายงานผลการดำเนินงาน', 132, '2568', '', '7_20250326091303.pdf');
INSERT INTO `ita_ebit_items` VALUES (1340, 'ฟอร์มขอเผยแพร่', 132, '2568', '', '7_20250326091320.pdf');
INSERT INTO `ita_ebit_items` VALUES (1341, 'รางาน', 133, '2568', '', '7_20250326091918.pdf');
INSERT INTO `ita_ebit_items` VALUES (1342, 'ฟอร์มขอเผยแพร่', 132, '2568', '', '7_20250326091938.pdf');
INSERT INTO `ita_ebit_items` VALUES (1343, '1. มีคู่มือปฏิบัติการการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ ของเจ้าหน้าที่ภายในหน่วยงาน ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 129, '2568', '', '7_20250326152553.pdf');
INSERT INTO `ita_ebit_items` VALUES (1345, '2. คู่มือปฏิบัติการการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ที่มีแบบฟอร์ม การเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 129, '2568', '', '7_20250326153323.pdf');
INSERT INTO `ita_ebit_items` VALUES (1346, '3. หลักฐานที่แสดงถึงช่องทางการร้องเรียน ตามข้อ 1. และข้อ 2. อาทิ ผ่านระบบหมายเลขโทรศัพท์ ผ่านระบบอินเตอร์เน็ต ผ่านระบบไปรษณีย์ ผ่าน Application หรือช่องทางอื่น ๆ ที่หน่วยงานกำหนดตามความเหมาะสม', 129, '2568', '', '7_20250326153533.pdf');
INSERT INTO `ita_ebit_items` VALUES (1347, '4. มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 129, '2568', '', '7_20250326153630.pdf');
INSERT INTO `ita_ebit_items` VALUES (1348, 'บันทึกข้อความ ที่ผู้บริหารลงนามรับทราบรายงานสรุปผลการดำเนินงานเรื่องร้องเรียนตามข้อ (1) และข้อ (2) ที่มีการวิเคราะห์ปัญหา / อุปสรรคและแนวทางแก้ไข และมีการขออนุญาตนำไปเผยแพร่บนเว็บไซต์ของหน่วยงาน', 130, '2568', '', '7_20250326153919.pdf');
INSERT INTO `ita_ebit_items` VALUES (1349, '2.1 สรุปผลการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน', 130, '2568', '', '7_20250326154113.pdf');
INSERT INTO `ita_ebit_items` VALUES (1350, '2.2 สรุปผลการดำเนินงานเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 130, '2568', '', '7_20250326154223.pdf');
INSERT INTO `ita_ebit_items` VALUES (1351, '	3. มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 130, '2568', '', '7_20250326154352.pdf');
INSERT INTO `ita_ebit_items` VALUES (1352, 'บันทึกข้อความ ที่ผู้บริหารลงนามอนุมัติในโครงการ และมีการขออนุญาต นำไปเผยแพร่บนเว็บไซต์ของหน่วยงาน', 131, '2568', '', '7_20250326154555.pdf');
INSERT INTO `ita_ebit_items` VALUES (1353, ' ขออนุมัติโครงการ', 131, '2568', '', '7_20250326154730.pdf');
INSERT INTO `ita_ebit_items` VALUES (1355, ' โครงการ', 131, '2568', '', '7_20250326155004.pdf');
INSERT INTO `ita_ebit_items` VALUES (1357, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 131, '2568', '', '7_20250326155202.pdf');
INSERT INTO `ita_ebit_items` VALUES (1358, 'มีรายงานประชุมโครงการ / กิจกรรม ที่แสดงชื่อผู้ใช้บริการ หรือผู้มีส่วนได้ส่วนเสีย มาร่วมวางแผนและมีการแลกเปลี่ยนความคิดเห็น ตามภารกิจที่เลือก ที่ผู้บริหารรับทราบ (มีการแสดงชื่อของผู้เข้าร่วมการประชุม / สัมมนา อย่างชัดเจน)', 131, '2568', '', '7_20250326155424.pdf');
INSERT INTO `ita_ebit_items` VALUES (1359, 'มีรายงานประชุมโครงการ / กิจกรรม ที่แสดงชื่อผู้ใช้บริการ หรือผู้มีส่วนได้ส่วนเสีย มาร่วมดำเนินการ ตามภารกิจที่เลือก (มีการแสดงชื่อของผู้เข้าร่วมการประชุม / สัมมนา อย่างชัดเจน)', 131, '2568', '', '7_20250326155634.pdf');
INSERT INTO `ita_ebit_items` VALUES (1360, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 131, '2568', '', '7_20250326155654.pdf');
INSERT INTO `ita_ebit_items` VALUES (1361, 'มีรายงานสรุปผลการดำเนินโครงการ / กิจกรรม ตามภารกิจที่เลือก', 131, '2568', '', '7_20250326155832.pdf');
INSERT INTO `ita_ebit_items` VALUES (1362, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 131, '2568', '', '7_20250326155848.pdf');
INSERT INTO `ita_ebit_items` VALUES (1363, 'มีภาพกิจกรรม ที่ระบุวัน เวลา สถานที่จัดกิจกรรมที่ชัดเจน', 131, '2568', '', '7_20250326160041.pdf');
INSERT INTO `ita_ebit_items` VALUES (1364, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 131, '2568', '', '7_20250326160100.pdf');
INSERT INTO `ita_ebit_items` VALUES (1365, 'มีบันทึกข้อความรายงาน ที่ผู้บริหารลงนามรับทราบ สั่งการ และมีการขออนุญาตนำขึ้นเผยแพร่บนเว็บไซต์ของหน่วยงาน (สำหรับข้อ 2. ข้อ 3. และข้อ 4.)', 131, '2568', '', '7_20250326160212.pdf');
INSERT INTO `ita_ebit_items` VALUES (1366, 'มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 131, '2568', '', '7_20250326160312.pdf');
INSERT INTO `ita_ebit_items` VALUES (1367, 'ฟอร์มขอเผยแพร่', 133, '2568', '', '7_20250327021302.pdf');
INSERT INTO `ita_ebit_items` VALUES (1368, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 134, '2568', '', '7_20250327032738.pdf');
INSERT INTO `ita_ebit_items` VALUES (1369, 'แนวปฏิบัติการยืมพัสดุ', 134, '2568', '', '7_20250327032846.pdf');
INSERT INTO `ita_ebit_items` VALUES (1370, 'แนวปฏิบัติการยืมพัสดุระหว่างหน่วยงาน', 134, '2568', '', '7_20250327032933.pdf');
INSERT INTO `ita_ebit_items` VALUES (1371, 'หนังสือแจ้งเวียน', 134, '2568', '', '7_20250327032952.pdf');
INSERT INTO `ita_ebit_items` VALUES (1372, 'ฟอร์มขอเผยแพร่', 134, '2568', '', '7_20250327033013.pdf');
INSERT INTO `ita_ebit_items` VALUES (1373, 'รายงานกูเดิลฟอร์ม', 135, '2568', '', '7_20250327044602.pdf');
INSERT INTO `ita_ebit_items` VALUES (1374, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 135, '2568', '', '7_20250327061756.pdf');
INSERT INTO `ita_ebit_items` VALUES (1375, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 135, '2568', '', '7_202503270617561.pdf');
INSERT INTO `ita_ebit_items` VALUES (1376, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 135, '2568', '', '7_202503270617562.pdf');
INSERT INTO `ita_ebit_items` VALUES (1377, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 135, '2568', '', '7_202503270617563.pdf');
INSERT INTO `ita_ebit_items` VALUES (1378, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 135, '2568', '', '7_20250327061820.pdf');
INSERT INTO `ita_ebit_items` VALUES (1379, 'แผน68', 135, '2568', '', '7_20250327061841.pdf');
INSERT INTO `ita_ebit_items` VALUES (1380, 'ฟอร์มขอเผยแพร่', 135, '2568', '', '7_20250327061902.pdf');
INSERT INTO `ita_ebit_items` VALUES (1381, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 136, '2568', '', '7_20250327065629.pdf');
INSERT INTO `ita_ebit_items` VALUES (1382, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 136, '2568', '', '7_20250327065630.pdf');
INSERT INTO `ita_ebit_items` VALUES (1383, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 136, '2568', '', '7_20250327070054.pdf');
INSERT INTO `ita_ebit_items` VALUES (1384, 'รายงานการดำเนินงาน', 136, '2568', '', '7_20250327070133.pdf');
INSERT INTO `ita_ebit_items` VALUES (1385, 'ฟอร์มขอเผยแพร่', 136, '2568', '', '7_20250327070159.pdf');
INSERT INTO `ita_ebit_items` VALUES (1386, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 136, '2568', '', '7_20250327070254.pdf');
INSERT INTO `ita_ebit_items` VALUES (1387, 'รายงานการดำเนินงาน', 136, '2568', '', '7_20250327070321.pdf');
INSERT INTO `ita_ebit_items` VALUES (1388, 'ฟอร์มขอเผยแพร่', 136, '2568', '', '7_20250327070341.pdf');
INSERT INTO `ita_ebit_items` VALUES (1389, 'บันทึกข้อความขออนุมัติจัด', 137, '2568', '', '7_20250327080528.pdf');
INSERT INTO `ita_ebit_items` VALUES (1390, 'บันทึกข้อความรายงานผลการดำเนินงาน', 137, '2568', '', '7_20250327080554.pdf');
INSERT INTO `ita_ebit_items` VALUES (1391, 'บันทึกข้อความรายงานผลการดำเนินงาน', 137, '2568', '', '7_20250327080634.pdf');
INSERT INTO `ita_ebit_items` VALUES (1392, 'ฟอร์มขอเผยแพร่', 137, '2568', '', '7_20250327080651.pdf');
INSERT INTO `ita_ebit_items` VALUES (1393, 'รายงานการวิเคราะความเสี่ยง', 137, '2568', '', '7_20250327083935.pdf');
INSERT INTO `ita_ebit_items` VALUES (1394, 'มีบันทึกข้อความ ที่ผู้บริหารลงนามในคำสั่ง / ข้อสั่งการ / ประกาศ และมีการขออนุญาตนำไปเผยแพร่บนเว็บไซต์ของหน่วยงาน หรือสื่อสารเผยแพร่ ในช่องทางอื่น', 138, '2568', '', '7_20250327092949.pdf');
INSERT INTO `ita_ebit_items` VALUES (1395, 'มีมาตรการป้องกันการทุจริต (การควบคุมความเสี่ยงการทุจริต) อย่างเป็นรูปธรรมที่ชัดเจน ต้องมีความสอดคล้องตามแผนบริหารความเสี่ยงการทุจริตของหน่วยงานที่ได้จากข้อ MOIT 17', 138, '2568', '', '7_20250327093157.pdf');
INSERT INTO `ita_ebit_items` VALUES (1396, 'มีมาตรการป้องกันการทุจริต (การควบคุมความเสี่ยงการทุจริต) อย่างเป็นรูปธรรมที่ชัดเจน ต้องมีความสอดคล้องตามแผนบริหารความเสี่ยงการทุจริตของหน่วยงานที่ได้จากข้อ MOIT 17', 138, '2568', '', '7_20250327093248.pdf');
INSERT INTO `ita_ebit_items` VALUES (1397, 'หลักฐานหนังสือแจ้งเวียน', 138, '2568', '', '7_20250327093710.pdf');
INSERT INTO `ita_ebit_items` VALUES (1398, 'แบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 138, '2568', '', '7_20250327093838.pdf');
INSERT INTO `ita_ebit_items` VALUES (1399, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 139, '2568', '', '7_20250327094513.pdf');
INSERT INTO `ita_ebit_items` VALUES (1400, 'ฟอร์มขอเผยแพร่', 139, '2568', '', '7_20250327094535.pdf');
INSERT INTO `ita_ebit_items` VALUES (1401, '1 ของขวัญ', 139, '2568', '', '7_20250327094626.pdf');
INSERT INTO `ita_ebit_items` VALUES (1402, '2 ของขวัญ', 139, '2568', '', '7_20250327094703.pdf');
INSERT INTO `ita_ebit_items` VALUES (1403, '1 เรี่ยไร', 139, '2568', '', '7_20250327095438.pdf');
INSERT INTO `ita_ebit_items` VALUES (1404, '2 เรี่ยไร', 139, '2568', '', '7_20250327095507.pdf');
INSERT INTO `ita_ebit_items` VALUES (1405, '2 เรี่ยไร', 139, '2568', '', '7_20250327101252.pdf');
INSERT INTO `ita_ebit_items` VALUES (1406, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 140, '2568', '', '7_20250327105745.pdf');
INSERT INTO `ita_ebit_items` VALUES (1407, 'โครงการ', 140, '2568', '', '7_20250327105812.pdf');
INSERT INTO `ita_ebit_items` VALUES (1408, 'บันทึกข้อความรายงานผลการดำเนินงาน', 140, '2568', '', '7_20250327105857.pdf');
INSERT INTO `ita_ebit_items` VALUES (1409, 'รายงานการดำเนินงาน', 140, '2568', '', '7_20250327105927.pdf');
INSERT INTO `ita_ebit_items` VALUES (1410, 'ภาพกิจกรรม', 140, '2568', '', '7_20250327105950.pdf');
INSERT INTO `ita_ebit_items` VALUES (1411, 'ฟอร์มขอเผยแพร่', 140, '2568', '', '7_20250327110009.pdf');
INSERT INTO `ita_ebit_items` VALUES (1412, '1 ลงนาม', 141, '2568', '', '7_20250328031101.pdf');
INSERT INTO `ita_ebit_items` VALUES (1413, '2.1 ประกาศ', 141, '2568', '', '7_20250328031146.pdf');
INSERT INTO `ita_ebit_items` VALUES (1414, '2.2 ประกาศ', 141, '2568', '', '7_20250328031216.pdf');
INSERT INTO `ita_ebit_items` VALUES (1415, '2.3 ประกาศ', 141, '2568', '', '7_20250328031247.pdf');
INSERT INTO `ita_ebit_items` VALUES (1416, '3 รายงานกิจกรรม', 141, '2568', '', '7_20250328031355.pdf');
INSERT INTO `ita_ebit_items` VALUES (1417, '4 ภาพกิจกรรม', 141, '2568', '', '7_20250328031428.pdf');
INSERT INTO `ita_ebit_items` VALUES (1418, 'ฟอร์มขอเผยแพร่', 141, '2568', '', '7_20250328031451.pdf');
INSERT INTO `ita_ebit_items` VALUES (1419, '1 ลงนาม', 142, '2568', '', '7_20250328040519.pdf');
INSERT INTO `ita_ebit_items` VALUES (1420, '2.1 แนวปฏิบัติ', 142, '2568', '', '7_20250328040610.pdf');
INSERT INTO `ita_ebit_items` VALUES (1421, '2.2 ประกาศ', 142, '2568', '', '7_20250328040636.pdf');
INSERT INTO `ita_ebit_items` VALUES (1422, '2.3', 142, '2568', '', '7_20250328040701.pdf');
INSERT INTO `ita_ebit_items` VALUES (1423, '2.4', 142, '2568', '', '7_20250328040728.pdf');
INSERT INTO `ita_ebit_items` VALUES (1424, '3.1', 142, '2568', '', '7_20250328040808.pdf');
INSERT INTO `ita_ebit_items` VALUES (1425, '3.2', 142, '2568', '', '7_20250328040858.pdf');
INSERT INTO `ita_ebit_items` VALUES (1426, 'บันทึกข้อความรายงานผลการดำเนินงาน', 124, '2568', '', '7_20250617035905.pdf');
INSERT INTO `ita_ebit_items` VALUES (1427, 'งบลงทุน', 124, '2568', '', '7_20250617035951.pdf');
INSERT INTO `ita_ebit_items` VALUES (1428, 'งบดำเนินการ', 124, '2568', '', '7_20250617040021.pdf');
INSERT INTO `ita_ebit_items` VALUES (1429, 'ฟอร์มขอเผยแพร่', 124, '2568', '', '7_20250617040038.pdf');
INSERT INTO `ita_ebit_items` VALUES (1430, 'บันทึกข้อความรายงานผลการดำเนินงาน', 125, '2568', '', '7_20250617045118.pdf');
INSERT INTO `ita_ebit_items` VALUES (1431, 'แบบ สขร 1 เดือน เม.ย.งบลงทุน', 125, '2568', '', '7_20250617045240.pdf');
INSERT INTO `ita_ebit_items` VALUES (1432, 'แบบ สขร 1 เดือน เม.ย.(งบดำเนินการ)', 125, '2568', '', '7_20250617045312.pdf');
INSERT INTO `ita_ebit_items` VALUES (1433, 'แบบ สขร 1 เดือน พค งบลงทุน', 125, '2568', '', '7_20250617045356.pdf');
INSERT INTO `ita_ebit_items` VALUES (1434, 'แบบ สขร 1 เดือน พค(งบดำเนินการ)', 125, '2568', '', '7_20250617045432.pdf');
INSERT INTO `ita_ebit_items` VALUES (1435, 'แบบ สขร 1 เดือน มิย งบลงทุน', 125, '2568', '', '7_20250617045506.pdf');
INSERT INTO `ita_ebit_items` VALUES (1436, 'แบบ สขร 1 เดือน มิย(งบดำเนินการ)', 125, '2568', '', '7_20250617045544.pdf');
INSERT INTO `ita_ebit_items` VALUES (1437, 'ฟอร์มขอเผยแพร่', 125, '2568', '', '7_20250617045559.pdf');
INSERT INTO `ita_ebit_items` VALUES (1438, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 127, '2568', '', '7_20250618035025.pdf');
INSERT INTO `ita_ebit_items` VALUES (1439, 'ประกาศ', 127, '2568', '', '7_20250618035044.pdf');
INSERT INTO `ita_ebit_items` VALUES (1440, 'ภาพติดประกาศ', 127, '2568', '', '7_20250618035126.pdf');
INSERT INTO `ita_ebit_items` VALUES (1441, 'ภาพติดประกาศ', 127, '2568', '', '7_202506180351261.pdf');
INSERT INTO `ita_ebit_items` VALUES (1442, 'ฟอร์มขอเผยแพร่', 127, '2568', '', '7_20250618035230.pdf');
INSERT INTO `ita_ebit_items` VALUES (1444, 'บันทึกข้อความรายงานผลการจัดหาพัสดุในแต่ละรอบเดือน', 125, '2568', '', '7_20250908072617.pdf');
INSERT INTO `ita_ebit_items` VALUES (1445, 'รายงานผลการจัดหาพัสดุ ก.ค(งบลงทุน) ', 125, '2568', '', '7_20250908072745.pdf');
INSERT INTO `ita_ebit_items` VALUES (1446, '5.2 รายงานผลการจัดหาพัสดุ กค.(งบดำเนินการ)', 125, '2568', '', '7_20250908073028.pdf');
INSERT INTO `ita_ebit_items` VALUES (1447, 'รายงานผลการจัดหาพัสดุ สค.(งบลงทุน)', 125, '2568', '', '7_20250908073149.pdf');
INSERT INTO `ita_ebit_items` VALUES (1449, 'รายงานผลการจัดหาพัสดุ สค.(งบดำเนินการ) ', 125, '2568', '', '7_20250908073556.pdf');
INSERT INTO `ita_ebit_items` VALUES (1450, 'รายงานผลการจัดหาพัสดุ กย(งบลงทุน) ', 125, '2568', '', '7_20250908074531.pdf');
INSERT INTO `ita_ebit_items` VALUES (1451, 'รายงานผลการจัดหาพัสดุ กย.(งบดำเนินการ)', 125, '2568', '', '7_20250908074636.pdf');
INSERT INTO `ita_ebit_items` VALUES (1452, 'ฟอร์มขอประกาศ', 125, '2568', '', '7_20250908074754.pdf');
INSERT INTO `ita_ebit_items` VALUES (1453, 'บันทึกข้อมความที่ผู้บริหารลงนามรับทราบรายงานสรุปผลการดำเนินงานเรื่องร้องเรียน', 130, '2568', '', '7_20250908075001.pdf');
INSERT INTO `ita_ebit_items` VALUES (1456, 'แบบฟอร์มเผยแพร่ข้อมูล ข้อ 5', 130, '2568', '', '7_20250908075324.pdf');
INSERT INTO `ita_ebit_items` VALUES (1457, 'สรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 3', 130, '2568', '', '7_20250908075835.pdf');
INSERT INTO `ita_ebit_items` VALUES (1458, 'สรุปผลการดำเนินงานเรื่องรองเรียน ข้อ 4', 130, '2568', '', '7_20250908075938.pdf');
INSERT INTO `ita_ebit_items` VALUES (1459, 'บันทึกข้อความชี้แจงข้อ5', 132, '2568', '', '7_20250908080446.pdf');
INSERT INTO `ita_ebit_items` VALUES (1460, 'บันทึกข้อความรายงานผล', 132, '2568', '', '7_20250908080727.pdf');
INSERT INTO `ita_ebit_items` VALUES (1461, 'แบบรายงานสรุปผลการกำกับติดตาม มาตรการป้องกันการรับสินบนทุกรูปแบบ ประจำปี 2568', 132, '2568', '', '7_20250908080826.pdf');
INSERT INTO `ita_ebit_items` VALUES (1462, 'ฟอร์มขอเผยแพร่', 132, '2568', '', '7_20250908080928.pdf');
INSERT INTO `ita_ebit_items` VALUES (1464, 'บันทึกข้อความ รายงานแผนจริยธรรม', 136, '2568', '', '7_20250908081444.pdf');
INSERT INTO `ita_ebit_items` VALUES (1465, 'บันทึกข้อความผลตามแผนป้องกัน ปราบปรามการทุจริต', 136, '2568', '', '7_20250908081527.pdf');
INSERT INTO `ita_ebit_items` VALUES (1466, 'ฟอร์มขอเผยแพร่จริยธรรม', 136, '2568', '', '7_20250908081609.pdf');
INSERT INTO `ita_ebit_items` VALUES (1467, 'ฟอร์มขอเผยแพร่ผลตามแผนป้องกัน ปราบปรามการทุจริต', 136, '2568', '', '7_20250908082029.pdf');
INSERT INTO `ita_ebit_items` VALUES (1468, 'รายงานผลการกํากับติดตามการดําเนินงานตามแผนปฏิบัติการป้องกัน ปราบปรามการทุจริต', 136, '2568', '', '7_20250908082229.pdf');
INSERT INTO `ita_ebit_items` VALUES (1469, 'รายงานผล ตามแผนจริยธรรม', 136, '2568', '', '7_20250908082755.pdf');
INSERT INTO `ita_ebit_items` VALUES (1470, 'บันทึกข้อความรับทราบรายงาน', 137, '2568', '', '7_20250908082952.pdf');
INSERT INTO `ita_ebit_items` VALUES (1471, 'รายงานวิเคราะห์ความเสี่ยง (รอบ 12 เดือน)', 137, '2568', '', '7_20250908083101.pdf');
INSERT INTO `ita_ebit_items` VALUES (1472, 'ฟอร์มขอเผยแพร่', 137, '2568', '', '7_20250908083152.pdf');
INSERT INTO `ita_ebit_items` VALUES (1473, 'บันทึกข้อความรายงานผล', 142, '2568', '', '7_20250909160310.pdf');
INSERT INTO `ita_ebit_items` VALUES (1474, 'แบบรายงานผลการดำเนินงานตามมาตรการในการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน ประจำปีงบประมาณ ', 142, '2568', '', '7_20250909160429.pdf');
INSERT INTO `ita_ebit_items` VALUES (1475, 'ขอเผยแพร่ประกาศ', 142, '2568', '', '7_20250909160627.pdf');
INSERT INTO `ita_ebit_items` VALUES (1476, 'เสนอผู้บริหารและขอเผยแพร่', 139, '2568', '', '7_20250910063652.pdf');
INSERT INTO `ita_ebit_items` VALUES (1477, 'กรณีที่หน่วยงานเข้าไปมีส่วนเกี่ยวข้อง', 139, '2568', '', '7_20250910063829.pdf');
INSERT INTO `ita_ebit_items` VALUES (1478, 'กรณีที่หน่วยงานดำเนินการเรี่ยไร', 139, '2568', '', '7_20250910064001.pdf');
INSERT INTO `ita_ebit_items` VALUES (1479, 'ของขวัญเกิน 3,000 บาท', 139, '2568', '', '7_20250910064103.pdf');
INSERT INTO `ita_ebit_items` VALUES (1480, 'ของขวัญไม่เกิน 3,000 บาท', 139, '2568', '', '7_20250910064213.pdf');
INSERT INTO `ita_ebit_items` VALUES (1481, 'ฟอร์มขอเผยแพร่', 139, '2568', '', '7_20250910064318.pdf');

-- ----------------------------
-- Table structure for ita_ebit_items_copy
-- ----------------------------
DROP TABLE IF EXISTS `ita_ebit_items_copy`;
CREATE TABLE `ita_ebit_items_copy`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ชื่อ EBIT',
  `ita_ebit` int NULL DEFAULT NULL COMMENT 'Ebit',
  `n_year` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Link',
  `file` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ไฟล์',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 702 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ita_ebit_items_copy
-- ----------------------------
INSERT INTO `ita_ebit_items_copy` VALUES (3, 'สรุปผลการดำเนินการจัดซื้อจัดจ้างและวิเคราะห์ผลการจัดซื้อจัดจ้าง ปีงบประมาณ พ.ศ. ๒๕๖๒', 1, '2563', '', '9_20200305103850.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (4, 'รายงานสรุปผลวิเคราะห์ผลการจัดซื้อจัดจ้าง ประจำปีงบประมาณ พ.ศ. ๒๕๖๒', 1, '2563', '', '9_20200305104037.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (6, 'บันทึกข้อความ ข้อสั่งการ กรอบแนวทางการดำเนินการเพื่อส่งเสริมความโปร่งใส', 2, '2563', '', '9_20200305111119.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (7, 'ประกาศเผยแพร่แผนการจัดซื้อจัดจ้าง งบประมาณรายจ่ายประจำปีงบประมาณ พ.ศ. ๒๕๖๓', 2, '2563', '', '9_20200305112438.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (8, 'คำสั่งแต่งตั้งเจ้าหน้าที่ปิด-ปลดประกาศ', 2, '2563', '', '9_20200305201526.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (9, 'รายงานผลการดำเนินการตามแผนการจัดซื้อจัดจ้าง  ประจำปีงบประมาณ  256๓', 2, '2563', '', '9_20200305201722.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (10, 'กำหนดแนวทางปฏิบัติงานเพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง', 2, '2563', '', '9_20200305201842.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (11, 'หลักฐานที่แสดงถึงการเผยแพร่ในช่องทางระบบเครือข่ายสารสนเทศของกรมบัญชีกลาง', 3, '2563', '', '9_20200305202845.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (12, 'ประกาศเผยแพร่แผนการจัดซื้อจัดจ้าง งบประมาณรายจ่ายประจำปีงบประมาณ พ.ศ. ๒๕๖๓', 3, '2563', '', '9_20200305203201.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (13, 'คำสั่งแต่งตั้งเจ้าหน้าที่ปิด-ปลดประกาศ', 3, '2563', '', '9_20200305203330.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (15, 'ภาพถ่ายการเผยแพร่ ณ สถานที่ปิดประกาศของหน่วยงาน', 4, '2563', '', '9_20200305203701.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (16, 'บันทึกข้อความ ลงนามคำสั่ง ข้อสั่งการ การเผยแพร่ข้อมูลผ่านเว็ปไซต์', 8, '2563', '', '9_20200305204719.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (17, 'คำสั่ง ข้อสั่งการ การดำเนินการเผยแพร่ข้อมูลผ่านเว็ปไซต์', 8, '2563', '', '9_20200305204815.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (18, 'รายละเอียดคำสั่งแนบท้ายประกาศ', 8, '2563', '', '9_20200305210147.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (19, 'รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูล', 8, '2563', '', '9_20200305210223.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (20, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 8, '2563', '', '9_20200305210248.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (21, 'บันทึกข้อความแผนปฏิบัติการ ประจำปีงบประมาณ 2563', 10, '2563', 'https://drive.google.com/open?id=1MyE9FCY2bsxR6aGy8ex8ZWaSeqHGzGod', '9_20200305212622.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (22, '1บันทึกข้อความลงนามคำสั่ง', 13, '2563', '', '9_20200305223210.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (23, '2ประกาศ สสอ.เรื่องมาตรการเจ้าหน้าที่มีผลปฏิบัติราชการต่ำ', 13, '2563', '', '9_20200305223234.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (24, '3เชิญประชุม ขอลงนาม', 13, '2563', '', '9_20200305223255.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (25, '4ภาพกิจกรรมประชุมชี้แจง', 13, '2563', '', '9_20200305223315.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (26, 'บันทึกลงนามประกาศการประเมินผลปฏิบัติราชการ', 14, '2563', '', '9_20200305223914.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (28, 'บันทึกข้อความลงนาม ประกาศเจตจำนงสุจริตของผู้บริหารสูงสุด', 15, '2563', '', '9_20200305225642.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (29, 'ภาพถ่ายประกอบการประชุม', 15, '2563', '', '9_20200305225713.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (30, 'คำสั่งประจำศูนย์ รับเรื่องร้องเรียน สสอ.เมือง', 16, '2563', '', '9_20200305231921.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (31, 'ศูนย์รับเรื่องราวร้องทุกข์', 16, '2563', '', '9_20200305231947.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (32, 'คู่มือศูนย์จัดการเรื่องราวร้องทุกข์', 16, '2563', '', '9_20200305232013.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (33, 'กระบวนงานจัดการเรื่องราวร้องทุกข์', 16, '2563', '', '9_20200305232041.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (34, 'บันทึกข้อความนำส่งเรื่องร้องเรียน1', 16, '2563', '', '9_20200305232124.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (35, 'บันทึกข้อความนำส่งเรื่องร้องเรียน2', 16, '2563', '', '9_20200305232147.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (36, 'แบบรายงานการจัดการเรื่องร้องรอบ 16,2 เดือน', 16, '2563', '', '9_20200305232218.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (37, 'บันทึกข้อความเผยแพร่', 16, '2563', '', '9_20200305232242.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (38, 'บันทึกข้อความลงนามข้อสั่งการ มาตรการการป้องกันการรับสินบน', 17, '2563', '', '9_20200306093445.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (39, 'ประกาศมาตรการการป้องกันการรับสินบนทุกรูปแบบตามที่หน่วยงานกำหนด', 17, '2563', '', '9_20200306093541.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (40, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 17, '2563', '', '9_20200306093613.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (41, 'หนังสือเชิญเข้าร่วมการประชุมการป้องกันผลประโยชน์ทับซ้อนในหน่วยงาน และประกาศเจตนารมณ์การต่อต้านการทุจริต', 18, '2563', '', '9_20200306095627.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (42, 'รายงานผลการดำเนินงานกิจกรรมการพัฒนาองค์กรคุณธรรมคนเมืองจิตพอเพียงต้านทุจริต ปี 256๓', 18, '2563', '', '9_20200306100231.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (44, 'การดำเนินงานชมรมสตรองรักษ์โปร่งใส เมืองมหาสารคาม', 19, '2563', '', '9_20200306110020.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (45, 'ขอเชิญประชุมวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', 20, '2563', '', '9_20200306120927.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (46, 'รายงานการประชุมวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ในหน่วยงาน', 20, '2563', '', '9_20200306121011.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (47, 'รายงานการวิเคราะห์ความเสี่ยงเกี่ยวกับการปฏิบัติงานที่อาจเกิดผลประโยชน์ทับซ้อน', 20, '2563', '', '9_20200306121043.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (48, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 20, '2563', '', '9_20200306121106.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (49, 'คำสั่งมอบหมายการปิดประกาศ /ปลดประกาศ', 3, '2563', '', '9_20200310133102.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (50, 'บันทึกข้อความจัดทำแผนการจัดซื้อจัดจ้างให้ผู้บริหารรับทราบ และขออนุมัติประกาศเผยแพร่บนเว็บไซต์หน่วยงาน', 3, '2563', '', '9_20200310133448.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (51, 'ภาพถ่ายการเผยแพร่ ณ สถานที่ปิดประกาศของหน่วยงาน', 3, '2563', '', '9_20200310133812.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (52, 'หลักฐานที่แสดงถึงการเผยแพร่ในช่องทางระบบเครือข่ายสารสนเทศของกรมบัญชีกลาง', 3, '2563', '', '9_20200310134041.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (53, 'ประกาศรายชื่อข้าราชการที่มีผลการประเมินผลการปฏิบัติราชการระดับดีเด่นและดีมาก', 14, '2563', '', '9_20200312104646.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (54, 'ภาพการติดประกาศ เผยแพร่ผลการประเมินการปฏิบัติราชการประจำปี ของหน่วยงาน', 14, '2563', '', '9_20200312105730.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (55, 'ภาพถ่าย ปิดประกาศแนวทางจัดการเรื่องร้องเรียน', 16, '2563', '', '9_20200312111058.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (56, 'หนังสือเชิญประชุม', 21, '2563', '', '9_20200312113012.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (57, 'คู่มือ การบริหารจัดการผลประโยชน์ทับซ้อน สสอ.เมือง2563', 21, '2563', '', '9_20200312113033.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (58, 'คู่มือผลประโยชน์ทับซ้อน สสอ.เมือง ปี 63', 21, '2563', '', '9_20200312113051.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (59, 'ประกาศ มาตรการป้องกันการทุจริต', 21, '2563', '', '9_20200312113109.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (60, 'รายงานประชุม-สสอ.เมืองผลประโยชน์ทับซ้อน', 21, '2563', '', '9_20200312113145.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (61, 'เสนอรายงานสรุปผลการจัดประชุม', 21, '2563', '', '9_20200312113418.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (62, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน', 21, '2563', '', '9_20200312113634.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (63, 'หนังสือเชิญ', 22, '2563', '', '9_20200312115106.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (64, 'รายงานประชุม-สสอ.เมืองผลประโยชน์ทับซ้อน', 22, '2563', '', '9_20200312115127.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (65, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน', 22, '2563', '', '9_20200312115145.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (66, 'เสนอรายงานสรุปผลการจัดประชุม', 22, '2563', '', '9_20200312115203.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (67, 'ภาพกิจกรรมประกาศเจตนารมณ์', 22, '2563', '', '9_20200312115222.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (68, 'บันทึกเสนอประกาศ', 8, '2563', '', '9_20200312133310.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (69, 'คำสั่ง กำหนดผู้รับผิดชอบในการดำเนินงานเผยแพร่ข้อมูล', 8, '2563', '', '9_20200312133326.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (70, 'พรบ.ข้อมูลข่าวสาร พ.ศ.2540', 8, '2563', 'https://drive.google.com/open?id=1eOC1qr8DIzP-O8-A-grNFsFQkXnFB-fG', '');
INSERT INTO `ita_ebit_items_copy` VALUES (71, 'รายละเอียดแนบท้ายคำสั่ง ประกาศ', 8, '2563', '', '9_20200312133550.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (72, 'รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูล', 8, '2563', '', '9_20200312133608.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (73, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 8, '2563', '', '9_20200312133624.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (74, 'คู่มือบริการประชาชน', 26, '2563', '', '9_20200316110917.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (75, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 26, '2563', '', '9_20200316110938.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (76, 'รายงานการประเมินผลการปฏิบัติตามแผนปฏิบัติการ ปี 62', 11, '2563', '', '9_20200316115307.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (77, 'สรุปผลการดำเนินงาน PA 5 เรื่อง', 11, '2563', '', '9_20200316124750.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (79, 'แบบฟอร์มการขอเผยแพร่ข้อมูลผ่านเว็บไซต์', 1, '2563', '', '9_20200514115206.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (80, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   ตุลาคม  ๒๕62 – พฤศจิกายน  ๒๕๖๒', 4, '2563', '', '9_20200518113930.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (81, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   ธันวาคม  ๒๕๖๒', 4, '2563', '', '9_20200518114012.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (82, 'http://203.157.185.28/ssomuang/index.php/admin_ita_ebit_items', 4, '2563', '', '9_20200518114446.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (83, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   กุมภาพันธ์ 2563', 4, '2563', '', '9_20200518114539.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (84, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   มีนาคม 2563', 4, '2563', '', '9_20200518114600.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (85, 'แบบสรุปผลการจัดซื้อจัดจ้าง  ประจำเดือน   เมษายน 2563', 4, '2563', '', '9_20200518114623.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (86, 'รายงานสรุปผลการกำกับ ติดตาม ผลการดำเนินงานตามแผนปฏิบัติการเครือข่ายบริการสุขภาพอำเภอเมืองมหาสารคาม ประจำปี 2563', 12, '2563', '', '9_20200519120222.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (87, 'ขออนุมติแผนปฏบิตัการป้องกัน ปราบปรามการทุจริตและขออนุญาตเผยแพร่ผ่านเว็ปไซต์', 23, '2563', '', '9_20200521144054.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (88, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำงบปี 2563', 23, '2563', '', '9_20200521144148.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (89, 'อนุมัติแผนปฏิบัติการชมรมจริยธรรม และเผยแพร่ขึ้นเว็ป', 23, '2563', '', '9_20200521144234.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (90, 'แผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรม ประจำปีงบประมาณ 2563', 23, '2563', '', '9_20200521144335.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (91, 'โครงการส่งเสริมและสนับสนุนการประเมินคุณธรรมและความโปร่งใสในการดำเนินงานของหน่วยงาน', 23, '2563', '', '9_20200521144553.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (92, '1.บันทึกข้อความขออนุมัติดำเนินโครงการ', 5, '2563', '', '9_20200602151212.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (93, '2.โครงการ พชอ. ปี 2563', 5, '2563', '', '9_20200602151354.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (94, '3.รายงานการประชุมพชอ.ครั้งที่1-63', 5, '2563', '', '9_20200602151415.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (95, '3.1เซนชื่อ ประชุม พชอ. ครั้งที่ 1', 5, '2563', '', '9_20200602151510.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (96, '4.ภาพการประชุมคณะกรรมการ พชอ', 5, '2563', '', '9_20200602151534.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (97, '5.ขออนุมัติจัดประชุม', 5, '2563', '', '9_20200602151552.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (98, '6.ขออนุมัติเผยแพร่สรุปผลการประชุม', 5, '2563', '', '9_20200602151609.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (99, 'แจ้งโอนเงิน โครงการ พชอ.63', 5, '2563', '', '9_20200602162147.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (100, 'คำสั่ง พชอ.63', 5, '2563', '', '9_20200602162330.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (101, 'ผู้บริหารหน่วยงาน', 9, '2563', 'http://203.157.185.28/ssomuang/index.php/base_data/boss', '');
INSERT INTO `ita_ebit_items_copy` VALUES (102, 'นโยบายผู้บริหาร', 9, '2563', 'http://203.157.185.28/ssomuang/index.php/base_data/policy', '');
INSERT INTO `ita_ebit_items_copy` VALUES (103, '1.บันทึกข้อความขออนุมัติดำเนินโครงการ', 6, '2563', '', '9_20200608153517.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (104, '2.โครงการ พชอ. ปี 2563', 6, '2563', '', '9_20200608153617.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (105, '3.รายงานการประชุมพชอ.ครั้งที่1-63', 6, '2563', '', '9_20200608153638.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (106, '3.1เซนชื่อ ประชุม พชอ. ครั้งที่ 1', 6, '2563', '', '9_20200608153658.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (107, '4.ภาพการประชุมคณะกรรมการ พชอ', 6, '2563', '', '9_20200608154024.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (108, '5.ขออนุมัติจัดประชุม', 6, '2563', '', '9_20200608154042.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (109, '6.ขออนุมัติเผยแพร่สรุปผลการประชุม', 6, '2563', '', '9_20200608154103.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (110, 'คำสั่ง พชอ.63', 6, '2563', '', '9_20200608154127.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (111, 'คำสั่งแต่งตั้งคณะกรรมการ จิตอาสา', 6, '2563', '', '9_20200608154145.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (112, 'แจ้งโอนเงิน โครงการ พชอ.63', 6, '2563', '', '9_20200608154223.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (113, 'แผนปฏิบัติงาน', 6, '2563', '', '9_20200608154238.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (114, '1.บันทึกข้อความขออนุมัติดำเนินโครงการ', 7, '2563', '', '9_20200608154304.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (115, '2.โครงการ พชอ. ปี 2563', 7, '2563', '', '9_20200608154322.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (116, '3.หนังสือขอประชุม', 7, '2563', '', '9_20200608154337.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (117, '4.รายงานการประชุมพชอ.ครั้งที่263', 7, '2563', '', '9_20200608154352.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (118, '5.เซนชื่อ ประชุม พชอ. ครั้งที่ 2', 7, '2563', '', '9_20200608154409.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (119, '6.ขออนุมัติเผยแพร่สรุปผลการประชุม', 7, '2563', '', '9_20200608154427.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (120, '7.แผนปฏิบัติงานจิตอาสา เอื้ออาทร', 7, '2563', '', '9_20200608154458.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (121, '8.สรุปผลงาน จิตอาสาเอื้ออาทร  3 มิย 63', 7, '2563', '', '9_20200608154613.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (122, 'รายงานผลการกำกับติดตาม แผนปฏิบัติการดำเนินการใน 2 ไตรมาส', 24, '2563', '', '9_20200609140631.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (123, 'รายงานผลการกำกับติดตามการดำเนินงานของชมรมจริยธรรม', 24, '2563', '', '9_20200609140753.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (124, '1.กลไกการตรวจสอบการปฏิบัติงาน', 25, '2563', '', '9_20200609150641.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (125, '2.รายงานประชุม ปจด1-63 ประเด็นชี้แจงวาระงานITA', 25, '2563', '', '9_20200609150704.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (126, '3.รายงานผลการดำเนินงานตามกรอบ', 25, '2563', '', '9_20200609150720.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (127, 'แบบแสดง Link หลักฐาน', 9, '2563', '', '9_20200610134029.docx');
INSERT INTO `ita_ebit_items_copy` VALUES (133, 'บันทึกข้อความเสนอผู้บริหาร และขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 29, '2564', '', '7_20210312102613.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (258, 'รายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2563', 29, '2564', '', '7_20210312103040.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (259, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 31, '2564', '', '7_20210312131832.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (260, 'แบบ สขร.1 ตค.63', 31, '2564', '', '7_20210312131938.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (261, 'แบบ สขร.1 พย.63', 31, '2564', '', '7_20210312132016.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (262, 'แบบ สขร.1 ธค..63', 31, '2564', '', '7_20210312132043.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (265, 'แบบ สขร.1 มีค..64', 31, '2564', '', '7_20210312132217.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (266, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 30, '2564', '', '7_20210312153732.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (267, 'หนังสือแจ้งจัดสรรงบประมาณ', 30, '2564', '', '7_20210312153834.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (268, 'แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุของหน่วยงาน ประจำปีงบประมาณ พ.ศ. 2564', 30, '2564', '', '7_20210312153958.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (269, 'คำสั่งมอบหมายการปิดประกาศ หรือปลดประกาศ', 30, '2564', '', '7_20210312154046.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (270, 'หนังสือรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 30, '2564', '', '7_20210312160406.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (271, 'รายงานผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ..ศ. 2564', 30, '2564', '', '7_20210312160452.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (272, 'หนังสือแจ้งเวียนประกาศกระทรวง', 30, '2564', '', '7_20210312161633.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (273, 'ประกาศกระทรวง', 30, '2564', '', '7_20210312161716.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (274, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 30, '2564', '', '7_20210312161803.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (275, 'แบบ สขร.1 มค..64', 31, '2564', '', '7_20210312181857.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (276, 'แบบ สขร.1 กพ..64', 31, '2564', '', '7_20210312181926.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (277, 'รายงานจัดซื้อจัดจ้าง ตค.63-มีค.64', 30, '2564', '', '7_20210312183513.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (278, 'บันทึกข้อความลงนามคำสั่ง หรือประกาศมาตรการการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำและขออนุญาตเผยแพร่', 33, '2564', '', '7_20210312203622.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (279, 'ประกาศมาตรการการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 33, '2564', '', '7_20210312203745.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (280, 'หนังสือแจ้งเวียนเชิญประชุม', 33, '2564', '', '7_20210312203915.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (281, '1. บันทึกข้อความลงนามคำสั่ง และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 27, '2564', '', '9_20210313113757.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (282, 'บันทึกข้อความลงนามในประกาศผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก และปรากฎการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 34, '2564', '', '7_20210313124716.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (283, 'ประกาศรายงานการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก', 34, '2564', '', '7_20210313124758.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (284, 'กรอบแนวทางการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 33, '2564', '', '7_20210313142553.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (285, 'หลักฐานการประชุมชี้แจงทำความเข้าใจให้ทราบทั่วทั้งองค์กรของปีงบประมาณ พ.ศ. 2564', 33, '2564', '', '7_20210313143215.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (286, 'ภาพการติดประกาศรายงานการประเมินผล ฯ - รอบ 2 ปีงบประมาณ พ.ศ. 2563 (เมษายน 2563 - กันยายน 2563)', 34, '2564', '', '7_20210313145738.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (288, 'แผนงาน', 35, '2564', '', '7_20210313155623.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (289, 'บันทึกข้อความรายงานผลการดำเนินงาน', 35, '2564', '', '7_20210313160108.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (290, 'บันทึกข้อความลงนามคำสั่ง ประกาศ หรือข้อสั่งการ และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 39, '2564', '', '7_20210313170029.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (291, 'ประกาศ มาตรการการป้องกันการรับสินบน', 39, '2564', '', '7_20210313170121.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (292, 'หนังสือแจ้งเวียน', 39, '2564', '', '7_20210313170202.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (293, 'บันทึกข้อความรายงานผลการดำเนินงาน', 39, '2564', '', '7_20210313170237.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (295, '2. คำสั่ง มาตรการ กลไก หรือระบบในการดำเนินการกำหนดให้มีการเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน', 27, '2564', '', '9_20210313171212.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (296, '3. กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน รายละเอียดเนื้อหาในข้อ 2) ข้อ 2.1 ถึงข้อ 2.3', 27, '2564', '', '9_20210313172805.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (297, '4. รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน ต้องเป็นรายงานของปีงบประมาณ พ.ศ. 2563', 27, '2564', '', '9_20210313173608.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (298, '1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย ชื่อ-นามสกุล ตำแหน่ง รูปถ่าย หมายเลขโทรศัพท์', 28, '2564', '', '9_20210313174536.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (303, '1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', 28, '2564', '', '9_20210313174859.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (304, '1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', 28, '2564', '', '9_20210313175013.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (305, '1.7 ข้อมูลการติดต่อ ประกอบด้วย ที่อยู่หน่วยงาน หมายเลขโทรศัพท์ หมายเลขโทรสาร ที่อยู่ไปรษณีย์อิเล็กทรอนิกส์ แผนที่ตั้งหน่วยงาน', 28, '2564', '', '9_20210313182644.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (306, '1.10 ยุทธศาสตร์ของประเทศ โดยรวม', 28, '2564', '', '9_20210313183403.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (307, '1.11 พระราชบัญญัติมาตรฐานทางจริยธรรม พ.ศ. 2562', 28, '2564', '', '9_20210313183705.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (308, '1.12 ประมวลจริยธรรมข้าราชการพลเรือน พ.ศ. 2552', 28, '2564', '', '9_20210313183830.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (310, '	1.13 ข้อบังคับสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยจรรยาข้าราชการสำนักงานปลัดกระทรวงสาธารณสุข พ.ศ. 2560', 28, '2564', '', '9_20210313184048.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (312, '1.14 อินโฟกราฟฟิกคณะกรรมการจริยธรรม ประจำสำนักงานปลัดกระทรวงสาธารณสุข ชุดปัจจุบัน', 28, '2564', '', '9_20210313184503.png');
INSERT INTO `ita_ebit_items_copy` VALUES (313, '1.15 จรรยาบรรณกระทรวงสาธารณสุข (MOPH Code of Conduct)', 28, '2564', '', '9_20210313185216.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (314, '3. แผนปฏิบัติการประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนปฏิบัติการประจำปีของหน่วยงาน (แผนปฏิบัติการประจำปีของหน่วยงาน ทุกแผน)', 28, '2564', '', '9_20210313190333.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (315, '4. แผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน', 28, '2564', '', '9_20210313190724.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (316, '5. หลักเกณฑ์ / ขั้นตอนการแก้ไขปัญหาในกรณีที่มีการร้องเรียนเรื่องการปฏิบัติงาน หรือการให้บริการของเจ้าหน้าที่', 28, '2564', '', '9_20210313190914.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (317, '7. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ', 28, '2564', '', '9_20210313191259.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (318, '9.1 การวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีที่ผ่านมา (ปีงบประมาณ พ.ศ. 2563)', 28, '2564', '', '9_20210313191458.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (319, '9.2 แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปี', 28, '2564', '', '9_20210313191615.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (320, '9.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีประจำปีตามรอบระยะเวลาที่กำหนดในกรอบแนวทาง', 28, '2564', '', '9_20210313191918.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (321, '9.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีประจำปีตามรอบระยะเวลาที่กำหนดในกรอบแนวทาง', 28, '2564', '', '9_20210313191941.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (322, '9.4 ประกาศสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยแนวทางปฏิบัติงานเพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง พ.ศ. 2560', 28, '2564', '', '9_20210313192155.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (323, '9.5 แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน ปีงบประมาณ พ.ศ. 2564 (แบบ สขร. 1)', 28, '2564', '', '9_20210313192352.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (324, '10. คู่มือการปฏิบัติงานตามภารกิจหลักและภารกิจสนับสนุนของหน่วยงาน', 28, '2564', '', '9_20210313193315.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (325, '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจ และภารกิจของหน่วยงาน และเป็นข้อมูลข่าวสารที่เกิดขึ้นในปีงบประมาณ พ.ศ. 2564', 28, '2564', '', '9_20210313194148.jpg');
INSERT INTO `ita_ebit_items_copy` VALUES (326, '1.16 ข่าวประชาสัมพันธ์', 28, '2564', '', '9_20210313194424.jpg');
INSERT INTO `ita_ebit_items_copy` VALUES (327, 'หนังสือเชิญประชุม', 45, '2564', '', '7_20210313195938.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (328, 'สรุปผลการประชุมวิเคราะห์ความเสี่ยง', 45, '2564', '', '7_20210313200031.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (329, 'รายงานวิเคราะห์ความเสี่ยง', 45, '2564', '', '7_20210313200106.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (330, 'หนังสือเสนอผู้บริหารเพื่อทราบ และสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 45, '2564', '', '7_20210313200146.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (331, 'บันทึกข้อความลงนามและขออนุญาตเผยแพร่', 46, '2564', '', '7_20210314112934.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (332, 'แนวการปฏิบัติเพื่อป้องกันผลประโยชน์ทับซ้อนของหน่วยงานที่มีความสอดคล้องตามบทวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนของหน่วยงาน', 46, '2564', '', '7_20210314113029.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (333, 'หนังสือแจ้งเวียน', 46, '2564', '', '7_20210314113104.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (334, 'บันทึกข้อความรับทราบการกำกับติดตาม และรายงานผลการดำเนินงานตามแนวการปฏิบัติเพื่อป้องกันผลประโยชน์ทับซ้อนของหน่วยงาน', 46, '2564', '', '7_20210314113214.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (335, 'บันทึกข้อความรายงานผลการดำเนินงาน', 47, '2564', '', '7_20210314122255.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (336, 'แผนงาน', 47, '2564', '', '7_20210314122318.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (337, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2564', 43, '2564', '', '7_20210314141451.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (338, 'แผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงานในสังกัดสำนักงานปลัดกระทรวงสาธารณสุข ราชการบริหารส่วนภูมิภาค ประจำปีงบประมาณ พ.ศ. 2564', 43, '2564', '', '7_20210314141530.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (339, 'รายงานผลการกำกับติดตามการดำเนินการ รอบ 6 เดือน', 44, '2564', '', '7_20210314150027.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (340, 'หนังสือเสนอผู้บริหารเพื่อทราบ และสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 44, '2564', '', '7_20210314150104.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (341, 'รายงานผลการกำกับติดตามการดำเนินการตามข้อกำหนดของคู่มือการขับเคลื่อนชมรมจริยธรรมของหน่วยงาน', 44, '2564', '', '7_20210314150207.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (342, 'แบบรายงานผลการดำเนินงานตามแผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงาน', 44, '2564', '', '7_20210314150328.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (343, '1. คู่มือการดำเนินงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่ภายในหน่วยงาน ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 36, '2564', '', '9_20210314163627.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (344, 'บันทึกข้อความ', 32, '2564', '', '7_20210314164400.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (345, '2. คู่มือปฏิบัติงานการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ ที่มีแบบฟอร์มการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', 36, '2564', '', '9_20210314164435.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (346, 'นโยบายผู้บริหารด้านการบริหารงานบุคคล', 32, '2564', '', '7_20210314164440.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (347, '3.1 รอบ 6 เดือน หลักฐานการรายงานผล ฯ ให้ผู้ร้องเรียนทราบ ภายใน 15 วัน (เดือนตุลาคม 2563 - มีนาคม 2564)', 36, '2564', '', '9_20210314170418.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (348, '4. หลักฐานที่แสดงถึงช่องทางการร้องเรียน อาทิ ผ่านระบบหมายเลขโทรศัพท์ผ่านระบบอินเตอร์เน็ต ผ่านระบบไปรษณีย์ ผ่าน Application หรือช่องทางอื่น ๆ ที่หน่วยงานกำหนดตามความเหมาะสม', 36, '2564', '', '9_20210314171830.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (349, 'รายงานสรุปผลการดำเนินการเรื่องร้องเรียน', 37, '2564', '', '9_20210314172620.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (350, 'บันทึกข้อความลงนามประกาศเจตนารมณ์การป้องกันและแก้ไขปัญหาการล่วงละเมิด หรือคุกคามทางเพศในการทำงาน', 50, '2564', '', '7_20210315095319.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (351, 'ประกาศเจตนารมณ์การป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงาน', 50, '2564', '', '7_20210315095352.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (352, 'คู่มือแนวปฏิบัติการป้องกันและแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในการทำงานของหน่วยงาน', 50, '2564', '', '7_20210315095433.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (355, 'หนังสือแจ้งเวียน', 50, '2564', '', '7_20210315102833.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (356, 'แบบรายงาน', 50, '2564', '', '7_20210315102908.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (363, 'หนังสือขออนุมัติ', 43, '2564', '', '7_20210315105836.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (365, 'หนังสือขออนุญาตเผยแพร่', 43, '2564', '', '7_20210315110107.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (366, 'บันทึกข้อความรายงานผลการดำเนินงาน', 48, '2564', '', '7_20210315114111.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (367, 'แผนงาน', 48, '2564', '', '7_20210315114130.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (368, '1.2 โครงการ / กิจกรรม', 38, '2564', '', '9_20210315130636.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (369, 'ขอเผยแพร่วัตถุประสงค์', 49, '2564', '', '7_20210315141641.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (370, 'แนวทางการดำเนินงาน', 49, '2564', '', '7_20210315141709.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (371, 'รายชื่อสมาชิก', 49, '2564', '', '7_20210315141734.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (372, 'บันทึกข้อความรายงานผลการดำเนินงาน', 49, '2564', '', '7_20210315141758.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (373, 'บันทึกข้อความรายงานผลการดำเนินงาน', 39, '2564', '', '7_20210315143924.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (374, 'รายงานประชุมโครงการ / กิจกรรมที่แสดงชื่อผู้ใช้บริการ ผู้มีส่วนได้ส่วนเสีย มาร่วมในการดำเนินการ ตามภารกิจที่เลือก ที่ผู้บริหารรับทราบ', 38, '2564', '', '9_20210315153735.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (375, '5. ภาพกิจกรรม ที่ระบุวัน เวลา สถานที่จัดกิจกรรมที่ชัดเจน', 38, '2564', '', '9_20210315154326.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (376, 'บันทึกข้อความลงนามและขอเผยแพร่', 40, '2564', '', '7_20210315155252.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (377, 'หนังสือแจ้งเวียน', 40, '2564', '', '7_20210315155310.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (378, 'แนวปฏิบัติเกี่ยวกับการยืมพัสดุ', 40, '2564', '', '7_20210315162124.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (379, 'หนังสือแจ้งเวียน', 40, '2564', '', '7_20210315163319.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (380, '1.1 บันทึกข้อความขออนุมัติดำเนินโครงการ และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 38, '2564', '', '9_20210315165213.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (381, '6. บันทึกข้อความรายงานผู้บริหารรับทราบ สั่งการ และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 38, '2564', '', '9_20210315165342.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (382, 'ข้อสั่งการ', 41, '2564', '', '7_20210315170724.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (383, 'แบบฟอร์มใบยืม', 41, '2564', '', '7_20210315170759.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (384, 'หนังสือแจ้งเวียน', 41, '2564', '', '7_20210315170816.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (385, 'บันทึกข้อความลงนามประกาศ', 42, '2564', '', '7_20210315182247.docx');
INSERT INTO `ita_ebit_items_copy` VALUES (386, 'ประกาศ', 42, '2564', '', '7_20210315182309.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (387, 'ภาพกิจกรรม', 42, '2564', '', '7_20210315182340.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (388, 'ลงนาประกาศ', 42, '2564', '', '7_20210315182612.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (389, 'บันทึกข้อความเสนอแผนจริยธรรม', 43, '2564', '', '7_20210405114400.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (390, 'ขอเผยแพร่แผนส่งเสริมจริยธรรม', 43, '2564', '', '7_20210405114453.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (393, 'แบบฟอร์มที่ 1 แผนส่งเสริมจริยธรรม', 43, '2564', '', '7_20210405120744.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (394, 'แบบฟอร์ม 2 และ 3', 44, '2564', '', '7_20210405144504.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (395, 'บันทึกข้อความรายงานผลการดำเนินงานและขอเผยแพร่', 44, '2564', '', '7_20210405144611.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (396, 'รายงานและขอเผยแพ่', 45, '2564', '', '7_20210405160758.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (397, 'รายงานการประชุม', 45, '2564', '', '7_20210405160826.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (398, 'บันทึกข้อความประกาศ', 46, '2564', '', '7_20210405194530.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (399, 'บันทึกข้อความรายงานผลการดำเนินงานตามประกาศ', 46, '2564', '', '7_20210405194607.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (400, 'บันทึกข้อความขออนุมัติโครงการ', 35, '2564', '', '7_20210610095151.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (401, 'บันทึกข้อความขออนุมัติโครงการ', 35, '2564', '', '7_20210610095158.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (402, 'บันทึกข้อความขออนุมัติโครงการ', 35, '2564', '', '7_20210610095205.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (403, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 35, '2564', '', '7_20210610095450.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (404, 'โครงการ', 35, '2564', '', '7_20210610095527.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (405, 'รายชื่อผู้เข้าร่วมอบรม', 35, '2564', '', '7_20210610095619.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (406, 'บันทึกข้อความเสนอผู้บริหาร', 35, '2564', '', '7_20210610095834.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (407, 'บันทึกข้อความเสนอผู้บริหาร', 35, '2564', '', '7_20210610095947.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (408, 'บันทึกข้อความเสนอผู้บริหาร', 35, '2564', '', '7_20210610100126.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (409, 'บันทึกข้อความรายงานผลการดำเนินงาน', 35, '2564', '', '7_20210610103348.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (410, 'ภาพกิจกรรม', 35, '2564', '', '7_20210610103804.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (411, 'บันทึกข้อความลงนามประกาศ', 39, '2564', '', '7_20210610151537.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (412, 'ประกาศ', 39, '2564', '', '7_20210610151617.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (413, 'หนังสือแจ้งเวียน', 39, '2564', '', '7_20210610151640.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (414, 'บันทึกข้อความรายงานผล', 39, '2564', '', '7_20210610151723.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (415, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 47, '2564', '', '7_20210611150400.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (416, 'โครงการ', 47, '2564', '', '7_20210611150430.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (417, 'รายชื่อผู้เข้าร่วมอบรม', 47, '2564', '', '7_20210611150519.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (418, 'บันทึกเสนอผู้บริหาาร', 47, '2564', '', '7_20210611150609.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (419, 'รายงานการดำเนินงาน', 47, '2564', '', '7_20210611150700.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (420, 'ภาพกิจกรรม', 47, '2564', '', '7_20210611150721.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (421, 'บันทึกข้อความขออนุมัติโครงการ', 48, '2564', '', '7_20210611183134.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (422, 'โครงการ', 47, '2564', '', '7_20210611183158.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (423, 'รายชื่อผู้เข้าร่วมโครงการ', 47, '2564', '', '7_20210611183252.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (424, 'บันทึกข้อความรายงานผลการดำเนินงาน', 47, '2564', '', '7_20210611183318.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (425, 'บันทึกข้อความรายงานผลการดำเนินงาน', 47, '2564', '', '7_20210611183350.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (426, 'ภาพกิจกรรม', 47, '2564', '', '7_20210611183417.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (427, 'รายงานผู้บริหาร', 47, '2564', '', '7_20210611183521.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (428, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 48, '2564', '', '7_20210613191554.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (429, 'โครงการ', 48, '2564', '', '7_20210613191621.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (430, 'รายชื่อผู้เข้าร่วมโครงการ', 48, '2564', '', '7_20210613191707.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (431, 'บันทึกข้อความรายงานผลการดำเนินงานต่อผู้บริหาร', 48, '2564', '', '7_20210613191809.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (432, 'บันทึกข้อความรายงานผลการดำเนินงาน', 48, '2564', '', '7_20210613191836.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (433, 'ภาพกิจกรรม', 48, '2564', '', '7_20210613191900.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (434, 'แบบ สขร.1 เมย..64', 31, '2564', '', '7_20210613194923.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (435, 'แบบ สขร.1 พค.64', 31, '2564', '', '7_20210613195010.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (436, 'แบบ สขร.1 มิย.64', 31, '2564', '', '7_20210613195041.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (437, 'เอกสารการจัดซื้อจัดจ้าง', 30, '2564', '', '7_20210613212919.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (438, 'แบบ สขร 1 เดือน ก.ค.64', 31, '2564', '', '7_20210901093949.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (439, 'แบบ สขร 1  สค.64', 31, '2564', '', '7_20210901094203.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (440, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 36, '2564', '', '7_20210901110738.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (441, 'หน่วยงานมีข้อมูลเชิงสถิติเรื่องร้องเรียนรอบ 12 เดือน', 37, '2564', '', '7_20210901111607.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (442, 'แบบ สขร 1  กย.64', 31, '2564', '', '7_20210901113134.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (443, 'บันทึกข้อความลงนามในคำสั่ง', 52, '2565', 'http://203.157.185.28/ssokudrang/assets/uploads/9_20211229121352.pdf', '9_20211229121750.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (450, 'คำสั่ง มาตรการ', 52, '2565', '', '9_20211229125912.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (452, 'กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซด์', 52, '2565', '', '9_20211229130914.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (453, 'แบบฟอร์มการเผยแพร่ข้อมูล', 52, '2565', '', '9_20211229131343.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (454, 'บันทึกลงนามรับทราบ การติดตามการเผยแพร่ข้อมูล', 52, '2565', '', '9_20211229142145.PDF');
INSERT INTO `ita_ebit_items_copy` VALUES (455, 'รายงานผลการติดตามการเผยแพร่ข้อมูล', 52, '2565', '', '9_20211229142227.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (456, 'แบบฟอร์มการเผยแพร่ข้อมูล 2.3', 52, '2565', '', '9_20211229142455.PDF');
INSERT INTO `ita_ebit_items_copy` VALUES (457, '	1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย (1) รูปถ่าย (2) ชื่อ-นามสกุล (3) ตำแหน่ง และ (4) หมายเลขโทรศัพท์ (มีครบ 4 รายการ)', 53, '2565', '', '9_20211229220834.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (458, '1.2 นโยบายของผู้บริหาร', 53, '2565', '', '9_20211229221753.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (459, 'โครงสร้างหน่วยงาน', 53, '2565', '', '9_20211230095049.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (460, '1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', 53, '2565', '', '9_20211230095616.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (461, '1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', 53, '2565', '', '9_20211230095911.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (463, '1.7 ข้อมูลการติดต่อ ประกอบด้วย ที่อยู่หน่วยงาน หมายเลขโทรศัพท์ หมายเลขโทรสาร ที่อยู่ไปรษณีย์อิเล็กทรอนิกส์ แผนที่ตั้งหน่วยงาน', 53, '2565', '', '9_20211230102027.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (465, '2. วิสัยทัศน์ พันธกิจ ค่านิยม', 53, '2565', '', '9_20211230103052.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (466, '3.พระราชบัญญัติมาตรฐานทางจริยธรรม 2562', 53, '2565', '', '9_20211230103624.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (467, '4.ประมวลจริยธรรมข้าราชการพลเรือน', 53, '2565', '', '9_20211230105923.PDF');
INSERT INTO `ita_ebit_items_copy` VALUES (468, '5.ข้อกำหนดจริยธรรมเจ้าหน้าที่ของรัฐ สนง ปลัดกระทรวงสาสุข 2564', 53, '2565', '', '9_20211230111009.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (469, 'อินโฟกราฟฟิก', 53, '2565', '', '9_20211230111204.png');
INSERT INTO `ita_ebit_items_copy` VALUES (470, 'ึ7.ยุทธศาสตร์ของประเทศโดยรวม', 53, '2565', '', '9_20211230111337.PDF');
INSERT INTO `ita_ebit_items_copy` VALUES (471, '8.นโยบายและยุทธศาสตร์ของหน่วยงาน', 53, '2565', '', '9_20211230111519.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (472, 'บันทึกข้อความรายงานผู้บริหารรับทราบและขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 54, '2565', '', '7_20211230114841.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (473, 'รายงานการวิเคราะห์จัดซื้อจัดจ้างในปีที่ผ่านมา', 54, '2565', '', '7_20211230114945.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (474, 'ฟอร์มขอเผยแพร่', 54, '2565', '', '7_20211230115028.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (475, 'บันทึกข้อความขออนุมัติผู้บริหารและขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 55, '2565', '', '7_20211230121007.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (476, 'หนังสิอแจ้งจัดสรรงบประมาณ', 55, '2565', '', '7_20211230121219.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (477, 'แผนงาน', 55, '2565', '', '7_20211230121302.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (478, 'คำสั่งมอบหมายการปิดประกาศ หรือปลดประกาศ', 55, '2565', '', '7_20211230121355.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (479, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20211230121419.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (480, 'บันทึกข้อความรายงานผลการดำเนินงาน', 55, '2565', '', '7_20211230121614.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (481, 'รายงานจัดซื้อจัดจ้าง ตค.64-ธค.64', 55, '2565', '', '7_20211230121732.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (482, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20211230121752.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (483, 'หนังสือแจ้งเวียน', 55, '2565', '', '7_20211230121847.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (484, 'ประกาศกระทรวง', 55, '2565', '', '7_20211230121929.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (485, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20211230121947.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (486, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 56, '2565', '', '7_20211230124831.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (487, 'บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 56, '2565', '', '7_20211230124832.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (488, 'แบบ สขร.1 ตค..64', 56, '2565', '', '7_20211230124922.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (489, 'แบบ สขร.1 พย..64', 56, '2565', '', '7_20211230124953.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (490, 'แบบ สขร.1 ธค..64', 56, '2565', '', '7_20211230125034.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (491, 'ฟอร์มขอเผยแพร่', 56, '2565', '', '7_20211230130256.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (492, 'ภาพติดประกาศ', 55, '2565', '', '7_20211230143752.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (493, '9.แผนปฏิบัติการประจำปีของหน่วยงาน ', 53, '2565', '', '9_20211230144500.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (494, '11.คู่มือปฏิบัติงานการร้องเรียนการปฏิบัติงาน', 53, '2565', '', '9_20211230145355.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (495, '12.คู่มือปฏิบัติงาน และประพฤติมิชอบ', 53, '2565', '', '9_20211230145425.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (496, '15 รายงานผลการดำเนินการเกี่ยวกับการร้องเรียน', 53, '2565', '', '9_20211230152157.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (497, '16 รายงานผลการดำเนินการเกี่ยวกับการประพฤติมิชอบ', 53, '2565', '', '9_20211230152714.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (498, '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจ และภารกิจของหน่วยงาน และเป็นข้อมูลข่าวสารที่เกิดขึ้นในปีงบประมาณ พ.ศ. 2564', 53, '2565', '', '9_20211230153038.jpg');
INSERT INTO `ita_ebit_items_copy` VALUES (499, '17.4', 53, '2565', '', '9_20211230154144.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (500, 'แบบฟอร์มการเผยแพร่ข้อมูล ข้อมูลพื้นที่เป็นปัจจุบัน 1.1-1.8', 52, '2565', '', '9_20220111140945.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (501, 'แบบฟอร์มการเผยแพร่ข้อมูล 2.', 53, '2565', '', '9_20220111141045.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (502, 'แบบฟอร์มการเผยแพร่ข้อมูล 1.1-1.8', 53, '2565', '', '9_20220111141244.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (503, 'แบบฟอร์มการเผยแพร่ข้อมูล 3.', 53, '2565', '', '9_20220111141906.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (504, 'แบบฟอร์มการเผยแพร่ข้อมูล 4.', 53, '2565', '', '9_20220111141928.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (505, 'แบบฟอร์มการเผยแพร่ข้อมูล 5.', 53, '2565', '', '9_20220111141954.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (506, 'แบบฟอร์มการเผยแพร่ข้อมูล 7.', 53, '2565', '', '9_20220111142030.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (507, 'แบบฟอร์มการเผยแพร่ข้อมูล 8.', 53, '2565', '', '9_20220111142054.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (508, 'แบบฟอร์มการเผยแพร่ข้อมูล 9.', 53, '2565', '', '9_20220111142657.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (509, 'แบบฟอร์มการเผยแพร่ข้อมูล 9.', 53, '2565', '', '9_20220111142702.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (510, 'แบบฟอร์มการเผยแพร่ข้อมูล 10.', 53, '2565', '', '9_20220111142901.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (511, 'แบบฟอร์มการเผยแพร่ข้อมูล 11.', 53, '2565', '', '9_20220111142923.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (512, 'แบบฟอร์มการเผยแพร่ข้อมูล 12.', 53, '2565', '', '9_20220111142948.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (513, 'แบบฟอร์มการเผยแพร่ข้อมูล 13.', 53, '2565', '', '9_20220111143014.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (514, 'แบบฟอร์มการเผยแพร่ข้อมูล 14.', 53, '2565', '', '9_20220111143031.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (515, 'แบบฟอร์มการเผยแพร่ข้อมูล 15-16', 53, '2565', '', '9_20220111143056.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (516, 'แบบฟอร์มการเผยแพร่ข้อมูล 17.', 53, '2565', '', '9_20220111143124.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (517, 'บันทึกข้อความรายงานผลการจัดซื้อจัดจ้าง', 55, '2565', '', '7_20220327123521.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (518, 'แบบ สขร.1  มค.65-มีค.65', 55, '2565', '', '7_20220327123626.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (519, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20220327123654.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (520, 'บันทึกข้อความรายงานผลการจัดซื้อจัดจ้างและขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 56, '2565', '', '7_20220327135848.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (521, 'แบบ สขร.1 มค..65', 56, '2565', '', '7_20220327135931.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (522, 'แบบ สขร.1 กพ.65', 56, '2565', '', '7_20220327140019.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (523, 'แบบ สขร.1 มีค..65', 56, '2565', '', '7_20220327140101.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (524, 'ฟอร์มขอเผยแพร่', 56, '2565', '', '7_20220327140128.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (525, 'บันทึกข้อความลงนามนโยบายการบริหารงานบุคคล', 57, '2565', '', '7_20220328131441.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (526, 'นโยบายผู้บริหารด้านการบริหารงานบุคคล', 57, '2565', '', '7_20220328131509.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (527, 'ฟอร์มขอเผยแพร่', 57, '2565', '', '7_20220328131532.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (528, 'บันทึกข้อความลงนามแผนการบริหารงานบุคคล', 57, '2565', '', '7_20220328144242.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (529, 'แผนการบริหารงานบุคคล', 57, '2565', '', '7_20220328144359.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (530, 'ฟอร์มขอเผยแพร่แผน', 57, '2565', '', '7_20220328144429.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (531, 'หนังสือแจ้งเวียนประกาศ', 58, '2565', '', '7_20220328163840.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (532, 'ประกาศนโยบาย', 58, '2565', '', '7_20220328163917.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (533, 'ฟอร์มขอเผยแพร่', 58, '2565', '', '7_20220328163937.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (534, 'หนังสือแจ้งเวียนทำความเข้าใจ', 58, '2565', '', '7_20220329102143.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (535, 'ประกาศ สสอ.กุดรัง', 58, '2565', '', '7_20220329111409.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (536, 'ประกาศ สสอ.กุดรัง', 58, '2565', '', '7_20220329111412.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (537, 'กรอบแนวทางการบริหารผลการปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', 58, '2565', '', '7_20220329112551.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (538, 'บันทึกข้อลงนามและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', 58, '2565', '', '7_20220329113046.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (539, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113708.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (540, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113711.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (541, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113717.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (542, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113721.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (543, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113725.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (544, 'หลักฐานการประชุม', 58, '2565', '', '7_20220329113729.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (545, 'บันทึกข้อความลงนามประกาศ', 59, '2565', '', '7_20220329150131.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (546, 'ฟอร์มขอเผยแพร่', 59, '2565', '', '7_20220329153242.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (547, 'ประกาศ', 59, '2565', '', '7_20220329155321.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (548, 'หลักฐาน', 59, '2565', '', '7_20220329155348.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (549, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 60, '2565', '', '7_20220329171936.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (550, 'โครงการ', 60, '2565', '', '7_20220329171957.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (551, 'รายชื่อผู้เข้าร่วมโครงการ', 60, '2565', '', '7_20220329172031.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (552, 'บันทึกข้อความเสนอผู้บริหาร', 60, '2565', '', '7_20220329172120.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (553, 'รายงานการดำเนินงาน', 60, '2565', '', '7_20220329172157.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (554, 'ภาพกิจกรรม', 60, '2565', '', '7_20220329172224.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (555, 'ฟอร์มขอเผยแพร่', 60, '2565', '', '7_20220329172242.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (556, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 64, '2565', '', '7_20220330140726.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (557, 'ประกาศ', 64, '2565', '', '7_20220330141013.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (558, 'หนังสือแจ้งเวียน', 64, '2565', '', '7_20220330141140.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (559, 'ฟอร์มขอเผยแพร่', 64, '2565', '', '7_20220330141202.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (560, 'บันทึกข้อความสั่งการและขอเผยแพร่', 66, '2565', '', '7_20220330154729.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (561, 'แนวปฏิบัติเกี่ยวกับการยืมพัสดุ', 66, '2565', '', '7_20220330154814.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (562, 'หนังสือแจ้งเวียน', 66, '2565', '', '7_20220330154921.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (563, 'ฟอร์มขอเผยแพร่', 66, '2565', '', '7_20220330154941.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (565, '1.1 หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220124.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (566, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220148.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (567, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220255.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (568, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220317.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (569, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 61, '2565', '', '9_20220330220535.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (570, 'คู่มือปฏิบัติงานการรับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', 61, '2565', '', '9_20220330221222.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (571, 'คู่มือปฏิบัติงานเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการของเจ้าหน้าที่', 61, '2565', '', '9_20220330221332.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (572, 'หลักฐานการรับเรื่องร้องเรียน', 61, '2565', '', '9_20220330221401.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (573, '1.1 บันทึกข้อความรายงาน', 62, '2565', '', '9_20220330231116.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (574, '1.2 บันทึกข้อความรายงาน', 62, '2565', '', '9_20220330231514.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (575, '1.3 รอบ 6 เดือน', 62, '2565', '', '9_20220330231538.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (576, '1.4 แบบฟอร์มการเผยแพร่ข้อมูล', 62, '2565', '', '9_20220330231613.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (577, '1 ขออนุมัติโครงการ', 63, '2565', '', '9_20220330235226.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (578, '2 โครงการ', 63, '2565', '', '9_20220330235402.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (579, 'บันทึกข้อความลงนามและขออนุญาตเผยแพร่', 65, '2565', '', '7_20220331102105.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (580, 'ประกาศ', 65, '2565', '', '7_20220331102138.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (581, 'หนังสือแจ้งเวียน', 65, '2565', '', '7_20220331102201.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (582, 'ประกาศเจตจำนงสุจริต', 65, '2565', '', '7_20220331102240.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (583, 'ภาพกิจกรรม', 65, '2565', '', '7_20220331102257.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (584, 'ฟอร์มขอเผยแพร่', 65, '2565', '', '7_20220331102316.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (585, 'บันทึกข้อความเสนอผู้บริหารและขอเผยแพร่', 67, '2565', '', '7_20220331133425.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (586, 'แผนปฏิบัติการป้องกัน ปราบปรามการทุจริตและประพฤติมิชอบ ประจำปีงบประมาณ พ.ศ. 2565', 67, '2565', '', '7_20220331133506.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (587, 'ฟอร์มขอเผยแพร่', 67, '2565', '', '7_20220331133545.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (588, 'บันทึกข้อความลงนามและขออนุญาตเผยแพร่แผนส่งเสริมคุณธรรม', 67, '2565', '', '7_20220331133648.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (589, 'แผนปฏิบัติการส่งเสริมคุณธรรมของชมรมจริยธรรมของหน่วยงาน ปีงบประมาณ พ.ศ. 2565', 67, '2565', '', '7_20220331133743.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (590, 'ฟอร์มขอเผยแพร่', 67, '2565', '', '7_20220331133803.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (591, 'บันทึกข้อความรายงานผลตามแผนคุณธรรมและขออนุญาตเผยแพร่', 68, '2565', '', '7_20220331141954.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (592, 'แบบฟอร์มที่ 2 รายงานผลตาม แผนส่งเสริมจริยธรรม', 68, '2565', '', '7_20220331142042.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (593, 'ฟอร์มขอเผยแพร่', 68, '2565', '', '7_20220331142105.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (594, 'บันทึกข้อความรายงานผู้บริหารและขออนุญาตนำเผยแพร่ผลตามแผนป้องกันและปราบปรามการทุจริต', 68, '2565', '', '7_20220331143711.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (595, 'ฟอร์มขอเผยแพร่', 68, '2565', '', '7_20220331143726.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (596, 'หนังสือเชิญประชุม', 59, '2565', '', '7_20220331153355.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (597, 'สรุปผลการประชุมวิเคราะห์ความเสี่ยง', 69, '2565', '', '7_20220331153455.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (598, 'สรุปผลการประชุมวิเคราะห์ความเสี่ยง', 69, '2565', '', '7_20220331153458.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (599, 'รายงานการประชุมวิเคราะห์ความเสี่ยง', 69, '2565', '', '7_20220331153619.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (600, 'เสนอผู้บริหารและขอเผยแพร่', 69, '2565', '', '7_20220331153706.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (601, 'ฟอร์มขอเผยแพร่', 69, '2565', '', '7_20220331153738.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (602, 'หนังสือเชิญประชุม', 69, '2565', '', '7_20220331154013.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (603, 'บันทึกข้อความอนุมัติโครงการ', 63, '2565', '', '9_20220331162220.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (604, 'โครงการ PPA 65', 63, '2565', '', '9_20220331162307.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (605, 'รายงานประชุม', 63, '2565', '', '9_20220331162343.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (606, 'รายงานสรุปผลการดำเนินงาน', 63, '2565', '', '9_20220331163033.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (607, 'ภาพการดำเนินงาน', 63, '2565', '', '9_20220331163102.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (608, 'บันทึกขออนุญาตเผยแพร่', 63, '2565', '', '9_20220331163131.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (609, 'แบบฟอร์มการเผยแพร่ข้อมูล', 63, '2565', '', '9_20220331163145.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (610, 'รายงานผลตามแผนการป้องกันปราบปรามการทุจริต', 68, '2565', '', '7_20220331164630.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (611, 'บันทึกข้อความรายงานผลการดำเนินงานและขอเผยแพร่', 71, '2565', '', '7_20220331180106.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (612, 'รายงานการเรี่ยไร', 71, '2565', '', '7_20220331180136.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (613, 'ฟอร์มขอเผยแพร่', 71, '2565', '', '7_20220331180152.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (614, 'บันทึกข้อความรายงานผลการดำเนินงานและขอเผยแพร่', 55, '2565', '', '7_20220629085353.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (615, 'แบบ สขร.1  เมย.65-มิย.65 (งบลงทุน)', 55, '2565', '', '7_20220629085530.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (616, 'แบบ สขร.1  เมย.65-มิย.65(งบดำเนินการ)', 55, '2565', '', '7_20220629085623.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (617, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20220629085644.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (618, 'บันทึกข้อความรายงานผลการดำเนินงาน', 56, '2565', '', '7_20220629103330.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (619, 'แบบ สขร.1  เมย.65 (งบลงทุน)', 56, '2565', '', '7_20220629103450.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (620, 'แบบ สขร.1  พค.65(งบลงทุน)', 56, '2565', '', '7_20220629103556.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (621, 'แบบ สขร.1  พค.65(งบลงทุน)', 56, '2565', '', '7_20220629103557.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (622, 'แบบ สขร.1  มิย.65(งบลงทุน)', 56, '2565', '', '7_20220629103637.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (623, 'แบบ สขร.1  เมย.65(งบดำเนินการ)', 56, '2565', '', '7_20220629103751.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (624, 'แบบ สขร.1  พค.65(งบดำเนินการ)', 56, '2565', '', '7_20220629103826.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (625, 'แบบ สขร.1  มิย.65(งบดำเนินการ)', 56, '2565', '', '7_20220629104058.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (626, 'ฟอร์มขอเผยแพร่', 56, '2565', '', '7_20220629104119.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (627, 'บันทึกข้อความลงนามประกาศ', 73, '2565', '', '7_20220629122140.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (628, 'ประกาศ', 73, '2565', '', '7_20220629122219.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (629, 'กิจกรรม', 73, '2565', '', '7_20220629122303.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (630, 'กิจกรรม', 73, '2565', '', '7_20220629122304.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (631, 'ภาพกิจกรรม', 73, '2565', '', '7_20220629122322.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (632, 'ฟอร์มขอเผยแพร่', 73, '2565', '', '7_20220629122400.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (633, 'ภาพกิจกรรม', 73, '2565', '', '7_20220629123146.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (634, 'บันทึกข้อความลงนามและขออนุญาตประกาศ', 74, '2565', '', '7_20220629132128.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (635, 'ประกาศ', 74, '2565', '', '7_20220629132152.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (636, 'คู่มือแนวทางปฏิบัติ', 74, '2565', '', '7_20220629132243.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (637, 'หนังสือแจ้งเวียน', 74, '2565', '', '7_20220629132305.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (638, 'บันทึกข้อความขออนุมัติดำเนินการโครงการ', 72, '2565', '', '7_20220629141425.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (639, 'โครงการ', 72, '2565', '', '7_20220629141447.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (640, 'รายชื่อผู้เข้าร่วมอบรม', 72, '2565', '', '7_20220629141518.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (641, 'บันทึกข้อความรายงานผลการดำเนินงานต่อผู้บริหาร', 72, '2565', '', '7_20220629141606.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (642, 'รายงานการดำเนินงาน', 72, '2565', '', '7_20220629141630.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (643, 'ภาพกิจกรรม', 72, '2565', '', '7_20220629141651.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (644, 'ฟอร์มขอเผยแพร่', 72, '2565', '', '7_20220629141718.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (645, 'ฟอร์มขอเผยแพร่', 59, '2565', '', '7_20220629162214.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (646, 'บันทึกข้อความรายงานผลและขอเผยแพร่', 59, '2565', '', '7_20220629162303.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (647, 'ประกาศ', 59, '2565', '', '7_20220629162332.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (648, 'บันทึกประกาศ', 59, '2565', '', '7_20220629162411.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (649, 'ประกาศดีเด่นและดีมาก', 59, '2565', '', '7_20220629162724.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (650, 'ฟอร์มขอเผยแพร่', 70, '2565', '', '7_20220630095550.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (651, 'รายชื่อสมาชิก', 70, '2565', '', '7_20220630095640.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (652, 'แนวทางการดำเนินงาน', 70, '2565', '', '7_20220630095715.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (653, 'เผยแพร่ประชาสัมพันธ์', 59, '2565', '', '7_20220630104845.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (654, 'บันทึกข้อความลงนามประกาศ', 70, '2565', '', '7_20220630132310.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (655, 'หนังสือแจ้งเวียน', 70, '2565', '', '7_20220630132340.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (656, 'หนังสือแจ้งเวียน', 70, '2565', '', '7_20220630132454.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (657, 'ฟอร์มขอเผยแพร่', 70, '2565', '', '7_20220630132515.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (658, 'ฟอร์มขอเผยแพร่', 70, '2565', '', '7_20220630132521.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (659, 'บันทึกข้อความรายงานผลการดำเนินงาน', 70, '2565', '', '7_20220630133323.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (660, 'กิจกรรมการดำเนินงาน', 70, '2565', '', '7_20220630135908.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (661, 'ประกาศมาตรการ', 70, '2565', '', '7_20220630143007.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (662, 'คู่มือผลประโยชน์ทับซ้อน', 70, '2565', '', '7_20220630143046.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (663, 'บันทึกข้อความรายงานผู้บริหาร', 55, '2565', '', '7_20220913092620.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (664, 'แบบ สขร.1  กค-กย 65(งบลงทุน)', 55, '2565', '', '7_20220913092738.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (665, 'แบบ สขร.1  กค-กย 65(งบดำเนินการ)', 55, '2565', '', '7_20220913092822.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (666, 'ฟอร์มขอเผยแพร่', 55, '2565', '', '7_20220913092843.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (667, 'บันทึกข้อความรายงานผู้บริหารไตรมาส4', 56, '2565', '', '7_20220913103754.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (668, 'แบบ สขร 1 เดือน ก.ค.65(งบลงทุน)', 56, '2565', '', '7_20220913103859.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (669, 'แบบ สขร 1 เดือน ก.ค.65(งบดำเนินการ)', 56, '2565', '', '7_20220913103946.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (670, 'แบบ สขร 1 เดือน ส.ค.65(งบลงทุน)', 56, '2565', '', '7_20220913104033.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (671, 'แบบ สขร 1 เดือน ส.ค.65(งบดำเนินการ)', 56, '2565', '', '7_20220913104111.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (672, 'แบบ สขร 1 เดือน ก.ย.65(งบลงทุน)', 56, '2565', '', '7_20220913104149.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (673, 'แบบ สขร 1 เดือน ก.ย.65(งบดำเนินการ)', 56, '2565', '', '7_20220913104244.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (674, 'ฟอร์มขอเผยแพร่ไตรมาส4', 56, '2565', '', '7_20220913104642.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (675, 'ฟอร์มขอเผยแพร่ไตรมาส4', 56, '2565', '', '7_20220913110152.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (676, 'ฟอร์มขอเผยแพร่ไตรมาส4', 56, '2565', '', '7_20220913112753.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (677, 'มีการตอบสนองต่อเรื่องร้องเรียนและข้อมูลเชิงสถิติเรื่องร้องเรียน', 62, '2565', '', '9_20220914101200.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (678, 'หน่วยงานมีแนวปฏิบัติการจัดการเรื่องร้องเรียนและช่องทางการร้องเรียน', 62, '2565', '', '9_20220914101456.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (679, 'บันทึกข้อความรายงานสรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 2', 62, '2565', '', '9_20220914101809.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (680, 'สรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 3', 62, '2565', '', '9_20220914102108.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (681, 'สรุปผลการดำเนินงานเรื่องร้องเรียน ข้อ 4', 62, '2565', '', '9_20220914102249.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (682, 'แบบฟอร์มการเผยแพร่ข้อมูล ข้อ 5', 62, '2565', '', '9_20220914102412.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (683, 'บันทึกข้อความรายงานผลการดำเนินงาน', 64, '2565', '', '7_20220914105213.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (684, 'รายงานผลการดำเนินงาน', 64, '2565', '', '7_20220914105249.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (685, 'ฟอร์มขอเผยแพร่', 64, '2565', '', '7_20220914105309.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (686, 'บันทึกข้อความรายงานผลการดำเนินงาน', 64, '2565', '', '7_20220914105527.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (687, 'บันทึกข้อความรายงานผลการดำเนินงาน', 65, '2565', '', '7_20220914131201.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (688, 'รายงานผลการดำเนินงาน', 65, '2565', '', '7_20220914131237.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (689, 'ฟอร์มขอเผยแพร่', 65, '2565', '', '7_20220914131253.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (690, 'บันทึกข้อความรายงานผลตามแผนจริยธรรม', 68, '2565', '', '7_20220914143153.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (691, 'รายงานผลตามแผนจริยธรรม', 68, '2565', '', '7_20220914143238.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (692, 'ฟอร์มขอเผยแพร่จริยธรรม', 68, '2565', '', '7_20220914143327.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (693, 'บันทึกข้อความรายงานผลการดำเนินงานตามแผนป้องกันปราบปรามทุจริต', 68, '2565', '', '7_20220914143428.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (694, 'รายงานผลการดำเนินงานตามแผนป้องกันปราบปราบการทุจริต', 68, '2565', '', '7_20220914143530.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (695, 'ฟอร์มขอเผยแพร่ผลการป้องกันและปราบปรามการทุจริต', 68, '2565', '', '7_20220914143630.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (696, 'บันทึกข้อความรายงานผลการดำเนินงาน', 71, '2565', '', '7_20220914152800.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (697, 'รายงานเรี่ยไร', 71, '2565', '', '7_20220914152843.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (698, 'รายงานเรี่ยไร', 71, '2565', '', '7_20220914152857.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (699, 'ฟอร์มขอเผยแพร่', 71, '2565', '', '7_20220914152917.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (700, 'บันทึกข้อความรายงานผลการดำเนินงาน', 74, '2565', '', '7_20220914160756.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (701, 'รายงานการดำเนินงาน', 74, '2565', '', '7_20220914160841.pdf');
INSERT INTO `ita_ebit_items_copy` VALUES (702, 'ฟอร์มขอเผยแพร่', 74, '2565', '', '7_20220914160900.pdf');

-- ----------------------------
-- Table structure for ita_index
-- ----------------------------
DROP TABLE IF EXISTS `ita_index`;
CREATE TABLE `ita_index`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่อดัชนี',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ita_index
-- ----------------------------
INSERT INTO `ita_index` VALUES (1, 'ความโปร่งใส (Transparency Index)');
INSERT INTO `ita_index` VALUES (2, 'ความพรอมรับผิด (Accountability Index)');
INSERT INTO `ita_index` VALUES (3, 'ความปลอดจากการทุจริตในการปฏิบัติงาน (Corruption Free Index)');
INSERT INTO `ita_index` VALUES (4, 'วัฒนธรรมคุณธรรมในองค์กร (Integrity Culture Index)');
INSERT INTO `ita_index` VALUES (5, 'คุณธรรมการทำงานในหน่วยงาน (Work Integrity Index)');
INSERT INTO `ita_index` VALUES (6, 'การเปิดเผยข้อมูล MOIT1 – MOIT2');
INSERT INTO `ita_index` VALUES (7, 'การจัดซื้อจัดจ้างและการจัดหาพัสดุ MOIT3 – MOIT5');
INSERT INTO `ita_index` VALUES (8, 'การบริหารและพัฒนาทรัพยากรบุคคล MOIT6 – MOIT9');
INSERT INTO `ita_index` VALUES (9, 'การส่งเสริมความโปร่งใส MOIT10 – MOIT12');
INSERT INTO `ita_index` VALUES (10, 'การรับสินบน MOIT13 – MOIT14');
INSERT INTO `ita_index` VALUES (11, 'การใช้ทรัพย์สินของราชการ MOIT15');
INSERT INTO `ita_index` VALUES (12, 'การดำเนินงานเพื่อป้องกันการทุจริต MOIT16 – MOIT17');
INSERT INTO `ita_index` VALUES (13, 'การป้องกันผลประโยชน์ทับซ้อน MOIT18 – MOIT21');
INSERT INTO `ita_index` VALUES (14, 'การเสริมสร้างวัฒนธรรมสุจริตในองค์กร MOIT22 – MOIT23');

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่อLink',
  `link` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ที่อยู่Link',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES (1, 'กระทรวงสาธารณสุข', 'https://www.moph.go.th/');
INSERT INTO `link` VALUES (2, 'สสจ.มหาสารคาม', 'http://mkho.moph.go.th');
INSERT INTO `link` VALUES (3, 'สำนักงานเขตสุขภาพที่ 7', 'https://r7.moph.go.th/home/');
INSERT INTO `link` VALUES (4, 'สปสช.', 'https://www.nhso.go.th/');
INSERT INTO `link` VALUES (5, 'สปสช. เขต 7  ขอนแก่น', 'https://khonkaen.nhso.go.th/FrontEnd/index.aspx');
INSERT INTO `link` VALUES (6, 'HDC กระทรวงสาธารณสุข', 'http://hdcservice.moph.go.th/');
INSERT INTO `link` VALUES (7, 'HDC จังหวัดมหาสารคาม', 'http://203.157.102.144/');
INSERT INTO `link` VALUES (8, 'รายงานสถานการณ์ โควิด-19 ในประเทศ', 'https://covid19.ddc.moph.go.th/');
INSERT INTO `link` VALUES (9, NULL, 'https://ddcportal.ddc.moph.go.th/portal/apps/opsdashboard/index.html#/20f3466e075e45e5946aa87c96e8ad65');
INSERT INTO `link` VALUES (10, 'กฏกระทรวงแบ่งส่วนราชการ', 'http://www.stopcorruption.moph.go.th/index.php/main/p_detail/page/73');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `topic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'หัวข้อ',
  `detail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'รายละเอียด',
  `date_sent` date NULL DEFAULT NULL COMMENT 'วันที่ส่ง',
  `user_id` int NULL DEFAULT NULL COMMENT 'ผู้ส่ง',
  `cat_id` int NULL DEFAULT NULL COMMENT 'หมวดหมู่',
  `read` int NULL DEFAULT 0 COMMENT 'จำนวนการอ่าน',
  `file` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ไฟลล์',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 'คำสั่งชมรมจริยธรรม', 'คำสั่งแต่งตั้งคณะกรรมการชมรมจริธรรม', '2021-11-15', 7, 1, 4, '7_20211115135350.pdf');
INSERT INTO `news` VALUES (2, 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม', 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม', '2021-11-15', 7, 1, 4, '7_20211115140928.pdf');
INSERT INTO `news` VALUES (3, 'MOIT 1 (1.2 คำสั่ง มาตรการ)', 'มีคำสั่ง มาตรการ กลไก หรือระบบในการดำเนินการกำหนดให้มีการเผยแพร่ข้อมูล', '2021-12-29', 9, 1, 5, '9_20211229122734.pdf');
INSERT INTO `news` VALUES (5, 'คำสั่งชมรมจริยธรรม', 'คำสั่งชมรมจริยธรรม', '2022-11-16', 7, 1, 9, '7_20221116115558.pdf');
INSERT INTO `news` VALUES (6, 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม ปี66', 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม ปี66', '2022-11-16', 7, 1, 3, '7_20221116122102.pdf');
INSERT INTO `news` VALUES (7, 'คำสั่งชมรมจริยธรรม', 'คำสั่งชมรมจริยธรรม สสอ.กุดรัง', '2023-11-15', 7, 1, 8, '7_20231115153114.pdf');
INSERT INTO `news` VALUES (8, 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม ปี67', 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม ปี67', '2023-11-15', 7, 1, 2, '7_20231115153246.pdf');
INSERT INTO `news` VALUES (9, 'อินโฟกราฟิก (Infographic) นโยบายงดการให้และรับของขวัญทุกชนิดจากการปฏิบัติหน้าที่ (No Gift Policy) ของ สสอ.กุดรัง', 'สำนักงานสาธารณสุขอำเภอกุดรัง มีนโยบายงดการให้และรับของขวัญทุกชนิดจากการปฏิบัติหน้าที่ (No Gift Policy) ', '2023-12-18', 7, 1, 10, '7_20231218160602.pdf');
INSERT INTO `news` VALUES (10, 'คำสั่งชมรมจริยธรรม ปี68', 'คำสั่งชมรมจริยธรรม ปี68', '2024-11-15', 7, 1, 20, '7_20241115105551.pdf');
INSERT INTO `news` VALUES (11, 'คำสั่งชมรมจริยธรรม ปี68', 'คำสั่งชมรมจริยธรรม ปี68', '2024-11-15', 7, 1, 5, '7_20241115105554.pdf');
INSERT INTO `news` VALUES (12, 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม ปี68', 'แผนดำเนินงานขับเคลื่อนชมรมจริยธรรม ปี68', '2024-11-15', 7, 1, 11, '7_20241115105648.pdf');
INSERT INTO `news` VALUES (13, 'ฟอร์มขอเผยแพร่', 'ฟอร์มขอเผยแพร่', '2024-11-15', 7, 1, 9, '7_20241115105804.pdf');
INSERT INTO `news` VALUES (14, 'เสนอลงนามแผน', 'เสนอลงนามแผน', '2024-11-15', 7, 1, 15, '7_20241115105848.pdf');
INSERT INTO `news` VALUES (15, 'รายงานผล', 'รายงานผล', '2024-11-15', 7, 1, 5, '7_20241115120017.pdf');

-- ----------------------------
-- Table structure for news_category
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่อหมวดหมู่',
  `dashboard` int NULL DEFAULT 1 COMMENT 'แสดงหน้าหลัก',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES (1, 'ข่าวประชาสัมพันธ์', 1);
INSERT INTO `news_category` VALUES (2, 'ข่าวจัดซื้อจัดจ้าง', 1);
INSERT INTO `news_category` VALUES (3, 'เอกสารวิชาการคู่มือ', 1);
INSERT INTO `news_category` VALUES (4, 'กฎหมายสาธารณสุข', 1);

-- ----------------------------
-- Table structure for policy
-- ----------------------------
DROP TABLE IF EXISTS `policy`;
CREATE TABLE `policy`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ข้อความ',
  `file` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'รูปภาพ',
  `last_update` datetime(0) NULL DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `user_id` int NULL DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of policy
-- ----------------------------
INSERT INTO `policy` VALUES (1, '', '1_20200602103919.pdf', '2020-06-02 10:06:19', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'กฏ',
  `note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'บักทึกเพิ่มเติม',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'เพิ่มข่าวประกาศ', '-');
INSERT INTO `role` VALUES (2, 'ลบแก้ไข ข่าวประกาศ', NULL);
INSERT INTO `role` VALUES (3, 'จัดการข้อมูล ITA', NULL);
INSERT INTO `role` VALUES (4, 'ปลด Lock แก้ไขเอกสารขออณุญาติไปราชการ', NULL);

-- ----------------------------
-- Table structure for structure
-- ----------------------------
DROP TABLE IF EXISTS `structure`;
CREATE TABLE `structure`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ข้อความ',
  `file` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'รูปภาพ',
  `last_update` datetime(0) NULL DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `user_id` int NULL DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of structure
-- ----------------------------
INSERT INTO `structure` VALUES (1, '', '1_20201215143927.jpg', '2020-12-15 14:12:27', 1);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 9);
INSERT INTO `user_role` VALUES (2, 1, 160);
INSERT INTO `user_role` VALUES (3, 1, 88);
INSERT INTO `user_role` VALUES (4, 1, 121);
INSERT INTO `user_role` VALUES (5, 4, 65);
INSERT INTO `user_role` VALUES (6, 4, 160);
INSERT INTO `user_role` VALUES (7, 4, 7);
INSERT INTO `user_role` VALUES (8, 4, 141);
INSERT INTO `user_role` VALUES (9, 4, 1);
INSERT INTO `user_role` VALUES (10, 1, 1);
INSERT INTO `user_role` VALUES (11, 1, 7);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Username',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Password',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ชื่อ สกุล',
  `user_type` int NULL DEFAULT NULL COMMENT 'ระดับการใช้งาน',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'E-mail',
  `active` int NULL DEFAULT NULL COMMENT 'สถานะผู้ใช้',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, NULL, 'admin', '*4D8E7AF24D5190E7E0D609ECA8BC60F42B7A58FF', 'นายเดชาชิต แก้วม่วง', 1, 'thait-rex@hotmail.com', 1);
INSERT INTO `users` VALUES (7, 8, 'rattiya', '*4D8E7AF24D5190E7E0D609ECA8BC60F42B7A58FF', 'รัติยา ถิ่นโสภา', 1, '-', 1);
INSERT INTO `users` VALUES (9, 9, 'faii', '*4D8E7AF24D5190E7E0D609ECA8BC60F42B7A58FF', 'รัตนาภรณ์ เฉลิมศรี', 1, 'atomkku@hotmail.com', 1);

-- ----------------------------
-- Table structure for vision
-- ----------------------------
DROP TABLE IF EXISTS `vision`;
CREATE TABLE `vision`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'ข้อความ',
  `file` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'รูปภาพ',
  `last_update` datetime(0) NULL DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `user_id` int NULL DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vision
-- ----------------------------
INSERT INTO `vision` VALUES (1, '<p><strong>วิสัยทัศน์</strong><strong> (VISSION)</strong></p>\n<p>เป็นองค์กรหลักในการพัฒนาระบบสุขภาพ มีคุณภาพได้มาตรฐาน ภายในปี ๒๕๖๔</p>\n<p>&nbsp;</p>\n<p>พันธกิจ (MISSION)</p>\n<ol>\n<li>พัฒนาบุคลากรสังกัดทุกระดับ ให้มีศักยภาพด้านส่งเสริมสนับสนุนการปรับเปลี่ยนพฤติกรรม สุขภาพประชาชน โดยใช้กระบวนการแผนที่เดินยุทธศาสตร์</li>\n<li>ส่งเสริม สนับสนุน และการแลกเปลี่ยนเรียนรู้ด้านสุขภาพในชุมชนอย่างต่อเนื่องโดยเน้นการดำเนินงาน &ldquo;โรงเรียน อสม.&rdquo;</li>\n<li>ส่งเสริมให้ครอบครัวพึ่งตนเองด้านสุขภาพโดยเน้นการพัฒนาหมู่บ้านจัดการสุขภาพ</li>\n<li>ประชาสัมพันธ์และประสานความร่วมมือกับภาคีเครือข่ายทุกระดับ ให้มีส่วนร่วมในการปรับเปลี่ยนพฤติกรรมสุขภาพประชาชน</li>\n<li>ส่งเสริมสนับสนุนการพัฒนาโรงพยาบาลส่งเสริมสุขภาพให้มาตรฐาน และเอื้อต่อการปรับเปลี่ยนพฤติกรรมสุขภาพประชาชน</li>\n</ol>\n<p>&nbsp;</p>\n<p><strong>(</strong><strong>Core Value) ของสสอ.เมืองมหาสารคาม</strong></p>\n<p>สอดคล้องกับ MHSK Model ของ สสจ.มหาสารคาม คือ MUEANG Model ได้แก่</p>\n<p>M = Mastery คือ ครองตน ครองคน ครองงาน เป็นนายตนเอง หมายถึง ตรงต่อเวลา (On time) มีความรับผิดชอบงานในหน้าที่ (Accountability) และโปร่งใจ (Transparency)</p>\n<p>U = Unity คือ ความเป็นน้ำหนึ่งอันเดียวกัน,ความสามัคคี ความเป็นเอกภาพในการทำงานเป็นทีม</p>\n<p>E = Excellence คือ ยุทธศาสตร์ ความเป็นเลิศ ๔ ด้าน ( 4 Excellence) คือ ยุทธศาสตร์ที่ ๑ ส่งเสริมสุขภาพและป้องกันโรคเป็นเลิศ (Prevention &amp; Promotion Excellence) ยุทธศาสตร์ที่๒ บริการเป็นเลิศ (Service Excellence) ยุทธศาสตร์ที่ ๓ บุคลากรเป็นเลิศ (People Excellence) และยุทธศาสตร์ที่ ๔ บริหารเป็นเลิศด้วยธรรมาภิบาล (Governance Excellence)</p>\n<p>A = Attitude คือ ความรู้สึก และทัศนคติที่ดีต่อสิ่งที่ถูกต้อง</p>\n<p>N = Natural Health คือ สุขภาพดีวิถีธรรม วิถีไทย ตามแนวเศรษฐกิจพอเพียง</p>\n<p>G = Goal คือ มีการตั้งเป้าหมาย และบรรลุเป้าหมายที่ตั้งไว้</p>\n<p>&nbsp;</p>\n<p><strong>วัฒนธรรม</strong></p>\n<p>สามัคคี&nbsp; มีวินัย&nbsp; ใฝ่คุณธรรม</p>\n<p>&nbsp;</p>\n<p><strong>สมรรถนะหลัก</strong></p>\n<ol>\n<li>ความเชี่ยวชาญทางการแพทย์และสาธารณสุข</li>\n<li>ภาคีเครือข่ายมีส่วนร่วม</li>\n<li>ระบบการเฝ้าระวังและป้องกันโรคที่เข้มแข็ง</li>\n<li>ระบบการพัฒนาคุณภาพชีวิตที่ดี</li>\n</ol>\n<p>&nbsp;</p>\n<p><strong>ภารกิจหลัก</strong></p>\n<ol>\n<li>ประสานนโยบายการทำยุทธศาสตร์ด้านสุขภาพร่วมกับหน่วยงานภาครัฐ ท้องถิ่น องค์กรเอกชนและภาคประชาสังคมในพื้นที่ระดับอำเภอ / ตำบล</li>\n<li>ประเมินผลการดำเนินงานของเครือข่ายบริการสุขภาพ</li>\n<li>ควบคุมมาตรฐานการดำเนินงานของหน่วยงานสาธารณสุขในพื้นที่</li>\n<li>คุ้มครองผู้บริโภคด้านการบริการและผลิตภัณฑ์สุขภาพในพื้นที่</li>\n<li>ดำเนินงานตามกฎหมายการแพทย์และการสารณสุข</li>\n<li>ปฏิบัติงานตามนโยบายเร่งด่วนด้านสุขภาพของรัฐบาล กระทรวง เขตสุขภาพ และจังหวัด</li>\n</ol>\n<p>............................................................</p>\n<p>ภารกิจรอง</p>\n<ol>\n<li>พัฒนาวิชาการแก่บุคลากรสาธารณสุข องค์กรสุขภาพภาคประชาชนสนับสนุนวิชาการและการวิจัยที่เกี่ยงข้องกับสุขภาพ</li>\n<li>สนับสนุนและควบคุมการปฏิบัติงานของหน่วยงานสาธารณสุขในสังกัดให้ได้มาตรฐาน</li>\n<li>สนับสนุนบุคลากรสาธารณสุข&nbsp; อาสาสมัครสาธารณสุขให้ได้รับการพัฒนาความรู้อย่างต่อเนื่องและเหมาะสม</li>\n</ol>', '', '2020-06-02 14:06:38', 1);

SET FOREIGN_KEY_CHECKS = 1;
