/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : boss_online

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-22 15:50:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for usercardorder_test
-- ----------------------------
DROP TABLE IF EXISTS `usercardorder_test`;
CREATE TABLE `usercardorder_test` (
  `Cust_Id` int(11) NOT NULL,
  `Acct_Id` int(11) DEFAULT NULL,
  `CUST_ADDR_ID` int(11) NOT NULL,
  `PRODUCT_INSTANCE_ID` int(11) NOT NULL,
  `SRVPKG_INST_ID` int(11) NOT NULL,
  `OPER_STATE` tinyint(4) NOT NULL,
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
  `TagId` int(11) DEFAULT NULL,
  `Done` tinyint(4) DEFAULT '0',
  `InTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`CUST_ADDR_ID`,`PRODUCT_INSTANCE_ID`,`SRVPKG_INST_ID`,`Cust_Id`),
  KEY `SRVPKG_INST_ID` (`SRVPKG_INST_ID`),
  KEY `Cust_Id` (`Cust_Id`),
  KEY `Acct_Id` (`Acct_Id`),
  KEY `CUST_ADDR_ID` (`CUST_ADDR_ID`),
  KEY `OPER_STATE` (`OPER_STATE`),
  KEY `OFFER_INST_ID` (`OFFER_INST_TITLE`),
  KEY `Done` (`Done`),
  KEY `STATE_ID` (`STATE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
