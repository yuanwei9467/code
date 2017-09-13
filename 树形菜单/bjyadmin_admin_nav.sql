/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : thinkphpadmin

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-13 15:20:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bjyadmin_admin_nav`
-- ----------------------------
DROP TABLE IF EXISTS `bjyadmin_admin_nav`;
CREATE TABLE `bjyadmin_admin_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `pid` int(11) unsigned DEFAULT '0' COMMENT '所属菜单',
  `name` varchar(15) DEFAULT '' COMMENT '菜单名称',
  `mca` varchar(255) DEFAULT '' COMMENT '模块、控制器、方法',
  `ico` varchar(20) DEFAULT '' COMMENT 'font-awesome图标',
  `order_number` int(11) unsigned DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bjyadmin_admin_nav
-- ----------------------------
INSERT INTO `bjyadmin_admin_nav` VALUES ('1', '0', '系统设置', 'Admin/ShowNav/config', 'cog', '1');
INSERT INTO `bjyadmin_admin_nav` VALUES ('2', '1', '菜单管理', 'Admin/Nav/index', null, null);
INSERT INTO `bjyadmin_admin_nav` VALUES ('7', '4', '权限管理', 'Admin/Rule/index', '', '1');
INSERT INTO `bjyadmin_admin_nav` VALUES ('4', '0', '权限控制', 'Admin/ShowNav/rule', 'expeditedssl', '2');
INSERT INTO `bjyadmin_admin_nav` VALUES ('8', '4', '用户组管理', 'Admin/Rule/group', '', '2');
INSERT INTO `bjyadmin_admin_nav` VALUES ('9', '4', '管理员列表', 'Admin/Rule/admin_user_list', '', '3');
INSERT INTO `bjyadmin_admin_nav` VALUES ('16', '0', '会员管理', 'Admin/ShowNav/', 'users', '4');
INSERT INTO `bjyadmin_admin_nav` VALUES ('17', '16', '会员列表', 'Admin/User/index', '', null);
INSERT INTO `bjyadmin_admin_nav` VALUES ('36', '0', '文章管理', 'Admin/ShowNav/posts', 'th', '6');
INSERT INTO `bjyadmin_admin_nav` VALUES ('37', '36', '文章列表', 'Admin/Posts/index', '', null);
