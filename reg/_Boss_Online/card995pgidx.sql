/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : cqboss

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-02-09 09:26:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for card995pgidx
-- ----------------------------
DROP TABLE IF EXISTS `card995pgidx`;
CREATE TABLE `card995pgidx` (
  `Id` int(11) NOT NULL,
  `PgIdx` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
