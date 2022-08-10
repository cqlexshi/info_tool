/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : cqboss

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-02-09 09:23:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for card995info
-- ----------------------------
DROP TABLE IF EXISTS `card995info`;
CREATE TABLE `card995info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Card` int(11) DEFAULT NULL,
  `Info` mediumtext,
  `Done` tinyint(4) DEFAULT '0',
  `InTime` int(11) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `CaId` (`Card`) USING BTREE,
  KEY `Done` (`Done`) USING BTREE,
  KEY `ix_status` (`status`) USING BTREE,
  KEY `ix_id` (`Id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2569399 DEFAULT CHARSET=utf8;
