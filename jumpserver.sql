/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50173
Source Host           : 47.52.43.101:3306
Source Database       : jumpserver

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-11-02 09:34:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for audit_log
-- ----------------------------
DROP TABLE IF EXISTS `audit_log`;
CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `bind_host_id` int(11) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `cmd` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `bind_host_id` (`bind_host_id`),
  CONSTRAINT `audit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`id`),
  CONSTRAINT `audit_log_ibfk_2` FOREIGN KEY (`bind_host_id`) REFERENCES `bind_host` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audit_log
-- ----------------------------
INSERT INTO `audit_log` VALUES ('1', '3', '3', 'login', null, '2017-11-01 17:00:28');
INSERT INTO `audit_log` VALUES ('2', '3', '3', 'login', null, '2017-11-01 17:05:46');
INSERT INTO `audit_log` VALUES ('3', '3', '3', 'login', null, '2017-11-01 17:17:25');
INSERT INTO `audit_log` VALUES ('4', '3', '3', 'login', null, '2017-11-01 17:25:42');
INSERT INTO `audit_log` VALUES ('5', '3', '3', 'login', null, '2017-11-01 17:27:42');
INSERT INTO `audit_log` VALUES ('6', '3', '3', 'login', null, '2017-11-01 17:29:44');
INSERT INTO `audit_log` VALUES ('7', '3', '3', 'login', null, '2017-11-01 17:34:07');
INSERT INTO `audit_log` VALUES ('8', '3', '3', 'login', null, '2017-11-01 17:35:02');
INSERT INTO `audit_log` VALUES ('9', '3', '3', 'login', null, '2017-11-01 17:35:46');
INSERT INTO `audit_log` VALUES ('10', '3', '3', 'login', null, '2017-11-01 18:03:20');
INSERT INTO `audit_log` VALUES ('11', '3', '3', 'cmd', 'ls', '2017-11-01 18:03:25');
INSERT INTO `audit_log` VALUES ('12', '3', '3', 'cmd', 'ls', '2017-11-01 18:03:29');
INSERT INTO `audit_log` VALUES ('13', '3', '3', 'cmd', 'df', '2017-11-01 18:03:31');
INSERT INTO `audit_log` VALUES ('14', '3', '3', 'cmd', 'ls', '2017-11-01 18:03:34');
INSERT INTO `audit_log` VALUES ('15', '3', '3', 'cmd', 'cd /', '2017-11-01 18:03:35');
INSERT INTO `audit_log` VALUES ('16', '3', '3', 'cmd', 'ls', '2017-11-01 18:03:36');
INSERT INTO `audit_log` VALUES ('17', '3', '3', 'cmd', 'vim catvim un	install.sh ', '2017-11-01 18:03:48');
INSERT INTO `audit_log` VALUES ('18', '3', '3', 'cmd', '', '2017-11-01 18:03:50');
INSERT INTO `audit_log` VALUES ('19', '3', '3', 'cmd', '', '2017-11-01 18:03:50');
INSERT INTO `audit_log` VALUES ('20', '3', '3', 'cmd', '', '2017-11-01 18:03:50');
INSERT INTO `audit_log` VALUES ('21', '3', '3', 'cmd', '', '2017-11-01 18:03:51');
INSERT INTO `audit_log` VALUES ('22', '3', '3', 'cmd', '', '2017-11-01 18:03:51');
INSERT INTO `audit_log` VALUES ('23', '3', '3', 'cmd', '', '2017-11-01 18:03:51');
INSERT INTO `audit_log` VALUES ('24', '3', '3', 'cmd', '', '2017-11-01 18:03:51');
INSERT INTO `audit_log` VALUES ('25', '3', '3', 'cmd', '', '2017-11-01 18:03:51');
INSERT INTO `audit_log` VALUES ('26', '3', '3', 'cmd', '', '2017-11-01 18:03:52');
INSERT INTO `audit_log` VALUES ('27', '3', '3', 'cmd', '', '2017-11-01 18:03:52');
INSERT INTO `audit_log` VALUES ('28', '3', '3', 'cmd', '', '2017-11-01 18:03:52');
INSERT INTO `audit_log` VALUES ('29', '3', '3', 'cmd', '', '2017-11-01 18:03:52');
INSERT INTO `audit_log` VALUES ('30', '3', '3', 'cmd', '', '2017-11-01 18:03:52');
INSERT INTO `audit_log` VALUES ('31', '3', '3', 'cmd', '', '2017-11-01 18:03:52');
INSERT INTO `audit_log` VALUES ('32', '3', '3', 'cmd', '', '2017-11-01 18:03:52');
INSERT INTO `audit_log` VALUES ('33', '3', '3', 'cmd', '', '2017-11-01 18:03:53');
INSERT INTO `audit_log` VALUES ('34', '3', '3', 'cmd', '', '2017-11-01 18:03:53');
INSERT INTO `audit_log` VALUES ('35', '3', '3', 'cmd', '', '2017-11-01 18:03:53');
INSERT INTO `audit_log` VALUES ('36', '3', '3', 'cmd', '', '2017-11-01 18:03:53');
INSERT INTO `audit_log` VALUES ('37', '3', '3', 'cmd', '', '2017-11-01 18:03:53');
INSERT INTO `audit_log` VALUES ('38', '3', '3', 'cmd', '', '2017-11-01 18:03:53');
INSERT INTO `audit_log` VALUES ('39', '3', '3', 'cmd', '', '2017-11-01 18:03:56');
INSERT INTO `audit_log` VALUES ('40', '3', '3', 'cmd', '', '2017-11-01 18:03:57');
INSERT INTO `audit_log` VALUES ('41', '3', '3', 'cmd', '', '2017-11-01 18:03:57');
INSERT INTO `audit_log` VALUES ('42', '3', '3', 'cmd', '', '2017-11-01 18:03:57');
INSERT INTO `audit_log` VALUES ('43', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('44', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('45', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('46', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('47', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('48', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('49', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('50', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('51', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('52', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('53', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('54', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('55', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('56', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('57', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('58', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('59', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('60', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('61', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('62', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('63', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('64', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('65', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('66', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('67', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('68', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('69', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('70', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('71', '3', '3', 'cmd', '', '2017-11-01 18:03:58');
INSERT INTO `audit_log` VALUES ('72', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('73', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('74', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('75', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('76', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('77', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('78', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('79', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('80', '3', '3', 'cmd', '', '2017-11-01 18:03:59');
INSERT INTO `audit_log` VALUES ('81', '3', '3', 'cmd', ':q', '2017-11-01 18:04:00');
INSERT INTO `audit_log` VALUES ('82', '3', '3', 'cmd', '', '2017-11-01 18:04:01');
INSERT INTO `audit_log` VALUES ('83', '3', '3', 'cmd', '', '2017-11-01 18:04:02');
INSERT INTO `audit_log` VALUES ('84', '3', '3', 'cmd', '', '2017-11-01 18:04:02');
INSERT INTO `audit_log` VALUES ('85', '3', '3', 'cmd', '', '2017-11-01 18:04:02');
INSERT INTO `audit_log` VALUES ('86', '3', '3', 'cmd', '', '2017-11-01 18:04:02');
INSERT INTO `audit_log` VALUES ('87', '3', '3', 'cmd', 'ls', '2017-11-01 18:04:05');
INSERT INTO `audit_log` VALUES ('88', '3', '3', 'cmd', 'cd /', '2017-11-01 18:04:07');
INSERT INTO `audit_log` VALUES ('89', '3', '3', 'cmd', '', '2017-11-01 18:04:10');

-- ----------------------------
-- Table structure for bind_host
-- ----------------------------
DROP TABLE IF EXISTS `bind_host`;
CREATE TABLE `bind_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host_id` int(11) DEFAULT NULL,
  `remoteuser_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `_host_remoteuser_uc` (`host_id`,`remoteuser_id`),
  KEY `remoteuser_id` (`remoteuser_id`),
  CONSTRAINT `bind_host_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host` (`id`),
  CONSTRAINT `bind_host_ibfk_2` FOREIGN KEY (`remoteuser_id`) REFERENCES `remote_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bind_host
-- ----------------------------
INSERT INTO `bind_host` VALUES ('1', '1', '3');
INSERT INTO `bind_host` VALUES ('2', '1', '4');
INSERT INTO `bind_host` VALUES ('3', '3', '1');

-- ----------------------------
-- Table structure for bindhost_m2m_hostgroup
-- ----------------------------
DROP TABLE IF EXISTS `bindhost_m2m_hostgroup`;
CREATE TABLE `bindhost_m2m_hostgroup` (
  `bindhost_id` int(11) DEFAULT NULL,
  `hostgroup_id` int(11) DEFAULT NULL,
  KEY `bindhost_id` (`bindhost_id`),
  KEY `hostgroup_id` (`hostgroup_id`),
  CONSTRAINT `bindhost_m2m_hostgroup_ibfk_1` FOREIGN KEY (`bindhost_id`) REFERENCES `bind_host` (`id`),
  CONSTRAINT `bindhost_m2m_hostgroup_ibfk_2` FOREIGN KEY (`hostgroup_id`) REFERENCES `host_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bindhost_m2m_hostgroup
-- ----------------------------
INSERT INTO `bindhost_m2m_hostgroup` VALUES ('1', '1');
INSERT INTO `bindhost_m2m_hostgroup` VALUES ('2', '1');
INSERT INTO `bindhost_m2m_hostgroup` VALUES ('3', '1');
INSERT INTO `bindhost_m2m_hostgroup` VALUES ('3', '2');

-- ----------------------------
-- Table structure for host
-- ----------------------------
DROP TABLE IF EXISTS `host`;
CREATE TABLE `host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(64) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host
-- ----------------------------
INSERT INTO `host` VALUES ('1', 'ubuntu test', '192.168.2.254', '22');
INSERT INTO `host` VALUES ('2', 'server1', '192.168.2.100', '30000');
INSERT INTO `host` VALUES ('3', 'server2', '47.52.43.101', '22');

-- ----------------------------
-- Table structure for host_group
-- ----------------------------
DROP TABLE IF EXISTS `host_group`;
CREATE TABLE `host_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host_group
-- ----------------------------
INSERT INTO `host_group` VALUES ('1', 'bj_group');
INSERT INTO `host_group` VALUES ('2', 'sh_group');

-- ----------------------------
-- Table structure for remote_user
-- ----------------------------
DROP TABLE IF EXISTS `remote_user`;
CREATE TABLE `remote_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_type` varchar(255) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `_user_passwd_uc` (`auth_type`,`username`,`password`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remote_user
-- ----------------------------
INSERT INTO `remote_user` VALUES ('3', 'ssh-key', 'root', null);
INSERT INTO `remote_user` VALUES ('4', 'ssh-password', 'alex', '');
INSERT INTO `remote_user` VALUES ('1', 'ssh-password', 'root', '123qwe!@#');
INSERT INTO `remote_user` VALUES ('2', 'ssh-password', 'root', 'alex!34321df');

-- ----------------------------
-- Table structure for user_m2m_bindhost
-- ----------------------------
DROP TABLE IF EXISTS `user_m2m_bindhost`;
CREATE TABLE `user_m2m_bindhost` (
  `userprofile_id` int(11) DEFAULT NULL,
  `bindhost_id` int(11) DEFAULT NULL,
  KEY `userprofile_id` (`userprofile_id`),
  KEY `bindhost_id` (`bindhost_id`),
  CONSTRAINT `user_m2m_bindhost_ibfk_1` FOREIGN KEY (`userprofile_id`) REFERENCES `user_profile` (`id`),
  CONSTRAINT `user_m2m_bindhost_ibfk_2` FOREIGN KEY (`bindhost_id`) REFERENCES `bind_host` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_m2m_bindhost
-- ----------------------------
INSERT INTO `user_m2m_bindhost` VALUES ('1', '1');
INSERT INTO `user_m2m_bindhost` VALUES ('2', '1');
INSERT INTO `user_m2m_bindhost` VALUES ('1', '2');
INSERT INTO `user_m2m_bindhost` VALUES ('2', '2');
INSERT INTO `user_m2m_bindhost` VALUES ('3', '3');

-- ----------------------------
-- Table structure for user_profile
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES ('1', 'alex', 'alex123');
INSERT INTO `user_profile` VALUES ('2', 'jack', 'jack123');
INSERT INTO `user_profile` VALUES ('3', 'rain', '123456');

-- ----------------------------
-- Table structure for userprofile_m2m_hostgroup
-- ----------------------------
DROP TABLE IF EXISTS `userprofile_m2m_hostgroup`;
CREATE TABLE `userprofile_m2m_hostgroup` (
  `userprofile_id` int(11) DEFAULT NULL,
  `hostgroup_id` int(11) DEFAULT NULL,
  KEY `userprofile_id` (`userprofile_id`),
  KEY `hostgroup_id` (`hostgroup_id`),
  CONSTRAINT `userprofile_m2m_hostgroup_ibfk_1` FOREIGN KEY (`userprofile_id`) REFERENCES `user_profile` (`id`),
  CONSTRAINT `userprofile_m2m_hostgroup_ibfk_2` FOREIGN KEY (`hostgroup_id`) REFERENCES `host_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userprofile_m2m_hostgroup
-- ----------------------------
INSERT INTO `userprofile_m2m_hostgroup` VALUES ('3', '1');
INSERT INTO `userprofile_m2m_hostgroup` VALUES ('1', '1');
