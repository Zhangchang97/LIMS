/*
 Navicat Premium Data Transfer

 Source Server         : ManagementSystem
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : experiment

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 07/05/2019 11:14:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for experimentinfo
-- ----------------------------
DROP TABLE IF EXISTS `experimentinfo`;
CREATE TABLE `experimentinfo`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `experimentname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `facility` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantityoffacility` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classroom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookings` int(200) NOT NULL,
  `numberofbooking` int(200) NOT NULL,
  `totalbooking` int(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of experimentinfo
-- ----------------------------
INSERT INTO `experimentinfo` VALUES (1, '工程材料A', '非平衡组织观察分析', '金相显微镜4*1', '27', '60分钟', 'B405', 0, 35, 35);
INSERT INTO `experimentinfo` VALUES (2, '工程材料A', '热处理及硬度', '电阻炉、预磨机、硬度计', '3、2、2', '60分钟', 'B407', 0, 20, 20);
INSERT INTO `experimentinfo` VALUES (3, '工程材料A', '热处理及硬度', '电阻炉、预磨机、硬度计', '3、2、2', '60分钟', 'B409', 0, 20, 20);
INSERT INTO `experimentinfo` VALUES (4, '工程材料B', '铁碳平衡组织观察分析', '金相显微镜4*1', '27', '60分钟', 'B405', 0, 35, 35);
INSERT INTO `experimentinfo` VALUES (5, '工程材料B', '热处理及硬度', '电阻炉、预磨机、硬度计', '3、2、2', '60分钟', 'B407', 0, 20, 20);
INSERT INTO `experimentinfo` VALUES (6, '工程材料B', '热处理及硬度', '电阻炉、预磨机、硬度计', '3、2、2', '60分钟', 'B409', 0, 20, 20);
INSERT INTO `experimentinfo` VALUES (7, '材料科学基础', '平衡组织观察分析', '金相显微镜4*1', '27', '60分钟', 'B405', 0, 35, 35);
INSERT INTO `experimentinfo` VALUES (8, '材料科学基础', '金相试样制备+', '预磨机、抛光机、显微镜', NULL, '60分钟', 'B405', 0, 25, 25);
INSERT INTO `experimentinfo` VALUES (9, '材料科学基础', '金相试样制备+', '预磨机、抛光机、显微镜', NULL, '60分钟', 'B407', 0, 25, 25);
INSERT INTO `experimentinfo` VALUES (10, '材料科学基础', '二元合金相图', '可控温升炉', '12', '45分钟', 'B411', 0, 30, 30);
INSERT INTO `experimentinfo` VALUES (11, '材料热力学与物理化学', '原电池电动势', '原电池电动势测定装置', '12', '45分钟', 'B411', 0, 25, 25);
INSERT INTO `experimentinfo` VALUES (12, '材料热力学与物理化学', '燃烧热测定', '燃烧热测定装置', '12', '60分钟', 'B411', 0, 25, 25);
INSERT INTO `experimentinfo` VALUES (13, '材料热力学与物理化学', '乙酸乙酯的皂化', '水浴箱、电导率仪', '12', '60分钟', 'B411', 0, 25, 25);

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1, 'qingtian', 'zhoujielun');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'zhangsan', 'zhangsan', '0');
INSERT INTO `userinfo` VALUES (2, 'admin', 'admin', '1');
INSERT INTO `userinfo` VALUES (3, 'lisi', 'lisi', '0');

SET FOREIGN_KEY_CHECKS = 1;
