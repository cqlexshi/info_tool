/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : boss_online

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-16 10:02:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for usercard
-- ----------------------------
DROP TABLE IF EXISTS `usercard`;
CREATE TABLE `usercard` (
  `Cust_Id` int(11) DEFAULT NULL,
  `CUST_ADDR_ID` int(11) NOT NULL,
  `I` int(11) DEFAULT NULL,
  `KEY_NUM_TYPE_CODE` varchar(255) DEFAULT NULL,
  `KEY_NUM` varchar(255) DEFAULT NULL,
  `REGION_ID` int(255) DEFAULT NULL,
  `CORP_ORG_ID` int(11) DEFAULT NULL,
  `PRODUCT_INSTANCE_ID` varchar(64) NOT NULL,
  `KEY_NUM_TYPE_CODE_DESC` varchar(100) DEFAULT NULL,
  `IF_IS_MAIN` varchar(100) DEFAULT NULL,
  `ACC_NBR` varchar(100) DEFAULT NULL,
  `TOTALBLCAMOUNT` double DEFAULT NULL,
  `TOTALBILLAMOUNT` double(10,0) DEFAULT NULL,
  `PRODUCT_INSTANCE_STATE` varchar(100) DEFAULT NULL,
  `STATE_DATE` varchar(100) DEFAULT NULL,
  `TagId` int(11) DEFAULT NULL,
  `Done` tinyint(4) DEFAULT '0',
  `InTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_INSTANCE_ID`,`CUST_ADDR_ID`),
  KEY `ACC_NBR` (`ACC_NBR`),
  KEY `PRODUCT_INSTANCE_STATE` (`PRODUCT_INSTANCE_STATE`),
  KEY `STATE_DATE` (`STATE_DATE`),
  KEY `IF_IS_MAIN` (`IF_IS_MAIN`),
  KEY `Cust_Id` (`Cust_Id`),
  KEY `CUST_ADDR_ID` (`CUST_ADDR_ID`),
  KEY `I` (`I`),
  KEY `KEY_NUM_TYPE_CODE` (`KEY_NUM_TYPE_CODE`),
  KEY `Done` (`Done`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
