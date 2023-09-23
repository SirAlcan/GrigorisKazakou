/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100419
Source Host           : localhost:3306
Source Database       : seminar

Target Server Type    : MYSQL
Target Server Version : 100419
File Encoding         : 65001

Date: 2023-04-06 17:00:53
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id_city` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'Αθήνα');
INSERT INTO `city` VALUES ('2', 'Ηράκλειο Κρήτης');
INSERT INTO `city` VALUES ('3', 'Θεσαλλονίκη');
INSERT INTO `city` VALUES ('4', 'Καβάλα');
INSERT INTO `city` VALUES ('5', 'Καλαμάτα');
INSERT INTO `city` VALUES ('6', 'Καρδίτσα');
INSERT INTO `city` VALUES ('7', 'Καρλόβασι');
INSERT INTO `city` VALUES ('8', 'Καρπενήσι');
INSERT INTO `city` VALUES ('9', 'Νίκαια');
INSERT INTO `city` VALUES ('10', 'Παλαιόκαστρο');
INSERT INTO `city` VALUES ('11', 'Πειραιάς');
INSERT INTO `city` VALUES ('12', 'Σπάρτη');
INSERT INTO `city` VALUES ('13', 'Τρίκαλα');
INSERT INTO `city` VALUES ('14', 'Χανιά');
INSERT INTO `city` VALUES ('15', 'Κορυδαλλός');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_date` date DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  `id_sex` tinyint(1) DEFAULT NULL,
  `id_status` tinyint(4) DEFAULT NULL,
  `dt_inserted` datetime DEFAULT NULL,
  `dt_updates` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'Θεόδωρος', 'Θεοδώρου', '+301111111111', '2000-02-10', '15', '1', '1', '2020-01-10 10:01:20', '2020-01-10 10:01:20');
INSERT INTO `customer` VALUES ('2', 'Νίκη', 'Νίκου', '+302222222222', '1999-03-15', '1', '2', '2', '2020-01-11 10:01:20', '2020-01-11 10:01:20');
INSERT INTO `customer` VALUES ('3', 'Αλέκος', 'Αλέκου', '+303333333333', '1998-04-17', '2', '1', '3', '2020-01-12 10:01:20', '2020-01-12 10:01:20');
INSERT INTO `customer` VALUES ('4', 'Ειρήνη', 'Ειρηνίου', '+304444444444', '1997-05-20', '3', '2', '4', '2020-01-13 10:01:20', '2020-01-13 10:01:20');
INSERT INTO `customer` VALUES ('5', 'Γεώργιος', 'Γεωργίου', '+305555555555', '1996-06-22', '4', '1', '1', '2020-01-14 10:01:20', '2020-01-14 10:01:20');
INSERT INTO `customer` VALUES ('6', 'Μαντώ', 'Μαυρογένους', '+306666666666', '1995-07-26', '6', '2', '2', '2020-01-15 10:01:20', '2020-01-15 10:01:20');
INSERT INTO `customer` VALUES ('7', 'Μαρία', 'Πενταγιώτισσα', '+307777777777', '1994-08-28', '8', '2', '3', '2020-01-16 10:01:20', '2020-01-16 10:01:20');
INSERT INTO `customer` VALUES ('8', 'Νικόλαος', 'Παπαδόπουλος', '+308888888888', '1993-09-30', '9', '1', '4', '2020-01-17 10:01:20', '2020-01-17 10:01:20');
INSERT INTO `customer` VALUES ('9', 'Κατερίνα', 'Οτινάναι', '+309999999999', '1992-11-02', '12', '2', '1', '2020-01-18 10:01:20', '2020-01-18 10:01:20');
INSERT INTO `customer` VALUES ('10', 'Ευλαλία', 'Κιρμιζή', '+301234567891', '1991-12-06', '14', '2', '2', '2020-01-19 10:01:20', '2020-01-19 10:01:20');
INSERT INTO `customer` VALUES ('11', 'Κυριάκος', 'Άλλος', '+302345678912', '1991-01-08', '14', '1', '3', '2020-01-20 10:01:20', '2020-01-20 10:01:20');
INSERT INTO `customer` VALUES ('12', 'Νικόλαος', 'Μπάρμπας', '+303456789933', '1990-02-10', '2', '1', '4', '2020-01-21 10:01:20', '2020-01-21 10:01:20');
INSERT INTO `customer` VALUES ('13', 'Νικολέτα', 'Δημήτρίου', '+304567900954', '1989-03-15', '5', '2', '1', '2020-01-22 10:01:20', '2020-01-22 10:01:20');
INSERT INTO `customer` VALUES ('14', 'Φίλιππος', 'Φιλίππου', '+305679011975', '1988-04-17', '7', '1', '2', '2020-01-23 10:01:20', '2020-01-23 10:01:20');
INSERT INTO `customer` VALUES ('15', 'Ασπασία', 'Τρικαλιώτη', '+306790122996', '1987-05-21', '9', '2', '3', '2020-01-24 10:01:20', '2020-01-24 10:01:20');
INSERT INTO `customer` VALUES ('16', 'Γεωργία', 'Μανταμάδου', '+307901234017', '1986-06-23', '4', '2', '4', '2020-01-25 10:01:20', '2020-01-25 10:01:20');
INSERT INTO `customer` VALUES ('17', 'Κατερίνα', 'Περιβόλη', '+309012345038', '1985-07-26', '6', '1', '1', '2020-01-26 10:01:20', '2020-01-26 10:01:20');

-- ----------------------------
-- Table structure for customer_product
-- ----------------------------
DROP TABLE IF EXISTS `customer_product`;
CREATE TABLE `customer_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `dt_inserted` datetime DEFAULT NULL,
  `dt_updates` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of customer_product
-- ----------------------------
INSERT INTO `customer_product` VALUES ('1', '1', '1', '2', '2020-01-10 10:01:20', '2020-01-10 10:01:20');
INSERT INTO `customer_product` VALUES ('2', '2', '3', '3', '2020-01-11 10:01:20', '2020-01-11 10:01:20');
INSERT INTO `customer_product` VALUES ('3', '1', '4', '4', '2020-01-12 10:01:20', '2020-01-12 10:01:20');
INSERT INTO `customer_product` VALUES ('4', '1', '5', '5', '2020-01-13 10:01:20', '2020-01-13 10:01:20');
INSERT INTO `customer_product` VALUES ('5', '3', '4', '3', '2020-01-14 10:01:20', '2020-01-14 10:01:20');
INSERT INTO `customer_product` VALUES ('6', '5', '5', '4', '2020-01-15 10:01:20', '2020-01-15 10:01:20');
INSERT INTO `customer_product` VALUES ('7', '2', '2', '2', '2020-01-16 10:01:20', '2020-01-16 10:01:20');
INSERT INTO `customer_product` VALUES ('8', '2', '5', '54', '2020-01-17 10:01:20', '2020-01-17 10:01:20');
INSERT INTO `customer_product` VALUES ('9', '4', '6', '6', '2020-01-18 10:01:20', '2020-01-18 10:01:20');
INSERT INTO `customer_product` VALUES ('10', '4', '7', '87', '2020-01-19 10:01:20', '2020-01-19 10:01:20');
INSERT INTO `customer_product` VALUES ('11', '3', '3', '6', '2020-01-20 10:01:20', '2020-01-20 10:01:20');
INSERT INTO `customer_product` VALUES ('12', '9', '4', '5', '2020-01-21 10:01:20', '2020-01-21 10:01:20');
INSERT INTO `customer_product` VALUES ('13', '9', '2', '4', '2020-01-22 10:01:20', '2020-01-22 10:01:20');
INSERT INTO `customer_product` VALUES ('14', '9', '3', '23', '2020-01-23 10:01:20', '2020-01-23 10:01:20');
INSERT INTO `customer_product` VALUES ('15', '8', '6', '5', '2020-01-24 10:01:20', '2020-01-24 10:01:20');
INSERT INTO `customer_product` VALUES ('16', '8', '1', '6', '2020-01-25 10:01:20', '2020-01-25 10:01:20');
INSERT INTO `customer_product` VALUES ('17', '6', '2', '7', '2020-01-26 10:01:20', '2020-01-26 10:01:20');
INSERT INTO `customer_product` VALUES ('18', '6', '7', '82', '2020-01-27 10:01:20', '2020-01-27 10:01:20');
INSERT INTO `customer_product` VALUES ('19', '1', '6', '2', '2020-01-28 10:01:20', '2020-01-28 10:01:20');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `dt_inserted` datetime DEFAULT NULL,
  `dt_updates` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Τσίχλες', '0.50', '2020-01-10 10:01:20', '2020-01-10 10:01:20');
INSERT INTO `product` VALUES ('2', 'Καραμέλες', '0.80', '2020-01-11 10:01:20', '2020-01-11 10:01:20');
INSERT INTO `product` VALUES ('3', 'Μπισκότα', '1.00', '2020-01-12 10:01:20', '2020-01-12 10:01:20');
INSERT INTO `product` VALUES ('4', 'Σοκολάτα', '1.20', '2020-01-13 10:01:20', '2020-01-13 10:01:20');
INSERT INTO `product` VALUES ('5', 'Γάλα', '1.40', '2020-01-14 10:01:20', '2020-01-14 10:01:20');
INSERT INTO `product` VALUES ('6', 'Δημητριακά', '2.10', '2020-01-15 10:01:20', '2020-01-15 10:01:20');
INSERT INTO `product` VALUES ('7', 'Γαριδάκια', '1.60', '2020-01-16 10:01:20', '2020-01-16 10:01:20');
INSERT INTO `product` VALUES ('8', 'Πακοτίνια', '0.80', '2020-01-17 10:01:20', '2020-01-17 10:01:20');
INSERT INTO `product` VALUES ('9', 'Δρακουλίνια', '0.70', '2020-01-18 10:01:20', '2020-01-18 10:01:20');
INSERT INTO `product` VALUES ('10', 'Χλωρίνη', '1.60', '2020-01-19 10:01:20', '2020-01-19 10:01:20');
INSERT INTO `product` VALUES ('11', 'Μακαρόνια', '0.30', '2020-01-20 10:01:20', '2020-01-20 10:01:20');
INSERT INTO `product` VALUES ('12', 'Ρύζι', '0.40', '2020-01-21 10:01:20', '2020-01-21 10:01:20');
INSERT INTO `product` VALUES ('13', 'Ζάχαρη', '0.50', '2020-01-22 10:01:20', '2020-01-22 10:01:20');
INSERT INTO `product` VALUES ('14', 'Αλάτι', '0.30', '2020-01-23 10:01:20', '2020-01-23 10:01:20');
INSERT INTO `product` VALUES ('15', 'Αλέυρι', '1.10', '2020-01-24 10:01:20', '2020-01-24 10:01:20');

-- ----------------------------
-- Table structure for sex
-- ----------------------------
DROP TABLE IF EXISTS `sex`;
CREATE TABLE `sex` (
  `id_sex` tinyint(2) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sex`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sex
-- ----------------------------
INSERT INTO `sex` VALUES ('1', 'Άνδρας');
INSERT INTO `sex` VALUES ('2', 'Γυναίκα');
INSERT INTO `sex` VALUES ('3', 'Άλλο');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', 'Enabled');
INSERT INTO `status` VALUES ('2', 'Disabled');
INSERT INTO `status` VALUES ('3', 'Blocked');
INSERT INTO `status` VALUES ('4', 'Full.Blocked');
