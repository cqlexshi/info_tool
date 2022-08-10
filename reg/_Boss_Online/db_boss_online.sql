/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : boss_online

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-03 16:00:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for taskbykeyword
-- ----------------------------
DROP TABLE IF EXISTS `taskbykeyword`;
CREATE TABLE `taskbykeyword` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Done` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Title` (`Title`) USING BTREE,
  KEY `Done` (`Done`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskbykeyword
-- ----------------------------
INSERT INTO `taskbykeyword` VALUES ('1', '水晶郦城1-1栋', '0');

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
  `InTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_INSTANCE_ID`,`CUST_ADDR_ID`),
  KEY `ACC_NBR` (`ACC_NBR`),
  KEY `PRODUCT_INSTANCE_STATE` (`PRODUCT_INSTANCE_STATE`),
  KEY `STATE_DATE` (`STATE_DATE`),
  KEY `IF_IS_MAIN` (`IF_IS_MAIN`),
  KEY `Cust_Id` (`Cust_Id`),
  KEY `CUST_ADDR_ID` (`CUST_ADDR_ID`),
  KEY `I` (`I`),
  KEY `KEY_NUM_TYPE_CODE` (`KEY_NUM_TYPE_CODE`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercard
-- ----------------------------

-- ----------------------------
-- Table structure for usercardorder
-- ----------------------------
DROP TABLE IF EXISTS `usercardorder`;
CREATE TABLE `usercardorder` (
  `Cust_Id` int(11) DEFAULT NULL,
  `CUST_ADDR_ID` int(11) DEFAULT NULL,
  `SRVPKG_INST_ID` int(11) NOT NULL,
  `OPER_STATE` tinyint(4) DEFAULT NULL,
  `OFFER_INST_TITLE` varchar(100) NOT NULL,
  `OFFER_INST_ID` int(11) DEFAULT NULL,
  `SRVPKG_TITLE` varchar(100) DEFAULT NULL,
  `SRVPKG_ID` int(11) DEFAULT NULL,
  `VALID_DATE` varchar(20) DEFAULT NULL,
  `EXPIRE_DATE` varchar(20) DEFAULT NULL,
  `STATE_TITLE` varchar(100) DEFAULT NULL,
  `STATE_ID` int(11) DEFAULT NULL,
  `ORG_TITLE` varchar(64) DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `OP_TITLE` varchar(100) DEFAULT NULL,
  `OP_ID` int(11) DEFAULT NULL,
  `VALID_TYPE_TITLE` varchar(100) DEFAULT NULL,
  `VALID_TYPE_ID` int(11) DEFAULT NULL,
  `CREATE_DATE` varchar(20) DEFAULT NULL,
  `OS_STATUS` varchar(60) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `InTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`SRVPKG_INST_ID`),
  KEY `Cust_Id` (`Cust_Id`),
  KEY `CUST_ADDR_ID` (`CUST_ADDR_ID`),
  KEY `OPER_STATE` (`OPER_STATE`),
  KEY `OFFER_INST_ID` (`OFFER_INST_TITLE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercardorder
-- ----------------------------

-- ----------------------------
-- Table structure for usercontact
-- ----------------------------
DROP TABLE IF EXISTS `usercontact`;
CREATE TABLE `usercontact` (
  `CUST_ADDR_ID` varchar(255) DEFAULT NULL,
  `STD_ADDR_ID` varchar(255) DEFAULT NULL,
  `CUST_ID` int(11) NOT NULL,
  `CUST_ID_JM` varchar(255) DEFAULT NULL,
  `HOST_CUST_ID` varchar(255) DEFAULT NULL,
  `OWN_ORG_ID` varchar(255) DEFAULT NULL,
  `OWN_CORP_ORG_ID` varchar(255) DEFAULT NULL,
  `TRANSFER_STATUS` varchar(255) DEFAULT NULL,
  `STD_ADDR_NAME` varchar(255) DEFAULT NULL,
  `DOOR_NAME` varchar(255) DEFAULT NULL,
  `AUDIT_FLAG` varchar(255) DEFAULT NULL,
  `CUST_STATUS` varchar(255) DEFAULT NULL,
  `CUST_CODE` varchar(255) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `CUST_LEVEL` varchar(255) DEFAULT NULL,
  `CUST_TYPE` varchar(255) DEFAULT NULL,
  `CUST_CERT_TYPE` varchar(255) DEFAULT NULL,
  `CUST_CERT_NO` varchar(255) DEFAULT NULL,
  `IS_HOST` varchar(255) DEFAULT NULL,
  `Done` tinyint(4) DEFAULT '0',
  `InTime` int(11) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `InTime` (`InTime`) USING BTREE,
  KEY `Done` (`Done`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercontact
-- ----------------------------

-- ----------------------------
-- Table structure for usertel
-- ----------------------------
DROP TABLE IF EXISTS `usertel`;
CREATE TABLE `usertel` (
  `Cust_Id` int(11) NOT NULL,
  `I_ID` int(11) NOT NULL,
  `CONT_ID` int(11) DEFAULT NULL,
  `CONT_NAME` varchar(255) DEFAULT NULL,
  `CONT_DFLT_MODE` varchar(255) DEFAULT NULL,
  `CONT_MOBILE1` varchar(255) DEFAULT NULL,
  `CONT_MOBILE2` varchar(255) DEFAULT NULL,
  `CONT_PHONE1` varchar(255) DEFAULT NULL,
  `CONT_PHONE2` varchar(255) DEFAULT NULL,
  `InTime` int(11) DEFAULT NULL,
  `GetStatus` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`I_ID`),
  KEY `InTime` (`InTime`) USING BTREE,
  KEY `Cust_Id` (`Cust_Id`),
  KEY `I` (`I_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertel
-- ----------------------------
