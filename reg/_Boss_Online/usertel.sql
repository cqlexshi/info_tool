/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : boss_online

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-16 10:01:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for usertel
-- ----------------------------
DROP TABLE IF EXISTS `usertel`;
CREATE TABLE `usertel` (
  `CUST_ID` int(11) NOT NULL,
  `CUST_ADDR_ID` int(11) NOT NULL,
  `I_ID` int(11) NOT NULL,
  `CONT_ID` int(11) DEFAULT NULL,
  `CONT_NAME` varchar(255) DEFAULT NULL,
  `CONT_DFLT_MODE` varchar(255) DEFAULT NULL,
  `CONT_MOBILE1` varchar(255) DEFAULT NULL,
  `CONT_MOBILE2` varchar(255) DEFAULT NULL,
  `CONT_PHONE1` varchar(255) DEFAULT NULL,
  `CONT_PHONE2` varchar(255) DEFAULT NULL,
  `GetStatus` varchar(5) DEFAULT NULL,
  `TagId` int(11) DEFAULT NULL,
  `Done` tinyint(4) DEFAULT '0',
  `InTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`I_ID`,`CUST_ID`),
  KEY `InTime` (`InTime`) USING BTREE,
  KEY `Cust_Id` (`CUST_ADDR_ID`),
  KEY `I` (`I_ID`),
  KEY `Done` (`Done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
