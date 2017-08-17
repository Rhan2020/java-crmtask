/*
Navicat MySQL Data Transfer

Source Server         : 127
Source Server Version : 50605
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50605
File Encoding         : 65001

Date: 2016-06-05 15:35:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` varchar(50) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `source` int(4) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `straffName` varchar(32) DEFAULT NULL,
  `contactTime` varchar(50) DEFAULT NULL,
  `signTime` varchar(50) DEFAULT NULL,
  `money` int(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('09e87cdf5ab4444d9c84a7a9d06bf0c5', '小明', '3', '3', '1', '2016-06-05', '2016-06-01', '999999', '北京', '800-820-8820');
INSERT INTO `customer` VALUES ('230e6c72d2e24e27b7cae347a18c1dc0', '小红', '1', '3', '1', '2016-06-04', '2016-06-17', '77777777', '长沙', '1234567-765');
INSERT INTO `customer` VALUES ('7266d903aef1491292dbd036a86a771d', '小山哥', '0', '6', '1', '2016-06-01', '2016-06-26', '20000000', '广州', '15754326763');
INSERT INTO `customer` VALUES ('75bebee52f554b8cb79583f7d84e41fc', '小萌龙', '2', '0', '1', '2016-06-01', '2016-06-19', '666666666', '山西', '15754323801');
INSERT INTO `customer` VALUES ('7fbd226e207a4e4e93fa94a6852942cb', '西红柿', '0', '2', '1', '2016-06-02', '2016-06-07', '232323', '沙发上', '323232');
INSERT INTO `customer` VALUES ('842153e9e7824badb82e5088072d7890', '爱丽丝', '0', '5', '1', '2016-06-10', '2016-06-14', '600000', '上海', '+86234241432');
INSERT INTO `customer` VALUES ('9e7f2973a2994f778b159e8464261134', '青蛙', '2', '4', '1', '2016-06-08', '2016-06-14', '20000', '山的那边', '+86747474740');
INSERT INTO `customer` VALUES ('9efb3f6b58664d55826899ea8c66784c', '小军', '4', '1', '1', '2016-06-10', '2016-06-14', '123123134', '杭州西湖', '32897423-34239');
INSERT INTO `customer` VALUES ('b55584b8622c40abb7dad35b61adad42', '胜多负少', '1', '3', '1', '2016-06-09', '2016-06-15', '4234234', '爽肤水的方式', '442423423');
