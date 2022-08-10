/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : boss_online

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-20 10:25:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for taskmoney
-- ----------------------------
DROP TABLE IF EXISTS `taskmoney`;
CREATE TABLE `taskmoney` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbtitle` varchar(64) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `cust_id_jm` varchar(255) DEFAULT NULL,
  `cust_addr_id` varchar(255) DEFAULT NULL,
  `product_instance_id` int(11) DEFAULT NULL,
  `own_corp_org_id` int(11) DEFAULT NULL,
  `acct_id` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) DEFAULT NULL,
  `done` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `acct_id` (`acct_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3553 DEFAULT CHARSET=utf8;
