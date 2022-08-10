/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : boss_online

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-16 10:01:13
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `TagId` int(11) DEFAULT NULL,
  `Done` tinyint(4) DEFAULT '0',
  `InTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `InTime` (`InTime`) USING BTREE,
  KEY `Done` (`Done`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
