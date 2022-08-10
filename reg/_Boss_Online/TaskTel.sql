/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 50553
Source Host           : 192.168.0.99:3306
Source Database       : boss_online

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-01-19 09:49:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tasktel
-- ----------------------------
DROP TABLE IF EXISTS `tasktel`;
CREATE TABLE `tasktel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbtitle` varchar(64) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `cust_id_jm` varchar(255) NOT NULL,
  `cust_addr_id` int(11) NOT NULL,
  `product_instance_id` int(11) DEFAULT NULL,
  `own_corp_org_id` int(11) DEFAULT NULL,
  `tagid` int(11) NOT NULL,
  `done` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
