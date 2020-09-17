/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myerp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-09-17 16:20:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbdealer`
-- ----------------------------
DROP TABLE IF EXISTS `tbdealer`;
CREATE TABLE `tbdealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbdealer
-- ----------------------------

-- ----------------------------
-- Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `tbinout`
-- ----------------------------
DROP TABLE IF EXISTS `tbinout`;
CREATE TABLE `tbinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opttype` int(11) DEFAULT NULL COMMENT '-1为出库，1为入库',
  `proid` int(11) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `proname` varchar(50) DEFAULT NULL,
  `protype` varchar(255) DEFAULT NULL,
  `proimgurl` varchar(300) DEFAULT NULL,
  `prooldnum` int(11) DEFAULT NULL,
  `proaddnum` int(11) DEFAULT NULL COMMENT '入库或者出库的数量',
  `unitname` varchar(255) DEFAULT NULL COMMENT '计量单位名称',
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbinout
-- ----------------------------
INSERT INTO `tbinout` VALUES ('18', '1', '30', '000005', '缇凡纪珍珠耳钉', '耳环/耳钉', '20200916085439714.png', '0', '100', '件', '2020-09-17 15:58:05');
INSERT INTO `tbinout` VALUES ('19', '1', '23', '000001', '缇凡纪珍珠双G项链', '项链', '20200916083651083.jpg', '0', '25', '件', '2020-09-17 15:58:19');
INSERT INTO `tbinout` VALUES ('20', '1', '32', '000008', 'JFTevolution 手链', '手镯/手链', '20200916085649805.jpg', '50', '15', '件', '2020-09-17 15:58:38');
INSERT INTO `tbinout` VALUES ('21', '1', '28', '000003', 'TFJ  秋季新款  ROSE戒指', '戒指 ', '20200916085125401.jpg', '0', '50', '件', '2020-09-17 15:59:04');
INSERT INTO `tbinout` VALUES ('22', '1', '34', '000009', 'TFJ  Oui 手环', '手镯/手环', '20200916085837223.webp', '0', '50', '件', '2020-09-17 15:59:24');
INSERT INTO `tbinout` VALUES ('23', '1', '31', '000006', 'JFTevolution耳钉', '耳环/耳钉', '20200916085556132.webp', '0', '100', '对', '2020-09-17 15:59:58');
INSERT INTO `tbinout` VALUES ('24', '-1', '30', '000005', '缇凡纪珍珠耳钉', '耳环/耳钉', '20200916085439714.png', '100', '15', '对', '2020-09-17 16:00:13');
INSERT INTO `tbinout` VALUES ('25', '-1', '31', '000006', 'JFTevolution耳钉', '耳环/耳钉', '20200916085556132.webp', '100', '25', '对', '2020-09-17 16:00:43');

-- ----------------------------
-- Table structure for `tblog`
-- ----------------------------
DROP TABLE IF EXISTS `tblog`;
CREATE TABLE `tblog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `userid` int(20) DEFAULT NULL,
  `typeid` int(10) DEFAULT NULL COMMENT '操作类型',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `msg` varchar(255) DEFAULT NULL COMMENT '创建信息',
  `ctime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblog
-- ----------------------------
INSERT INTO `tblog` VALUES ('11', '1', '3', '超级管理员', '登陆系统失败,用户名为：admin密码为11111111', '2020-09-11 15:30:47');
INSERT INTO `tblog` VALUES ('12', '1', '1', '超级管理员', '正常登陆系统', '2020-09-11 15:30:57');
INSERT INTO `tblog` VALUES ('13', '1', '1', '超级管理员', '正常登陆系统', '2020-09-11 15:37:00');
INSERT INTO `tblog` VALUES ('14', '1', '1', '超级管理员', '正常登陆系统', '2020-09-11 15:39:48');
INSERT INTO `tblog` VALUES ('15', '1', '1', '超级管理员', '正常登陆系统', '2020-09-11 15:51:36');
INSERT INTO `tblog` VALUES ('16', '1', '3', '超级管理员', '修改密码失败,旧密码为：1111111111', '2020-09-11 15:51:55');
INSERT INTO `tblog` VALUES ('17', '1', '1', '超级管理员', '正常修改密码', '2020-09-11 15:52:19');
INSERT INTO `tblog` VALUES ('18', '0', '3', '未知', '登陆系统失败,用户名为：admin密码为123456', '2020-09-12 09:13:24');
INSERT INTO `tblog` VALUES ('19', '1', '1', '超级管理员', '正常登陆系统', '2020-09-12 09:13:33');
INSERT INTO `tblog` VALUES ('20', '0', '3', '未知', '登陆系统失败,用户名为：admin密码为123456', '2020-09-14 15:38:16');
INSERT INTO `tblog` VALUES ('21', '1', '1', '超级管理员', '正常登陆系统', '2020-09-14 15:38:23');
INSERT INTO `tblog` VALUES ('22', '0', '3', '未知', '登陆系统失败,用户名为：admin密码为123456', '2020-09-14 16:13:15');
INSERT INTO `tblog` VALUES ('23', '0', '3', '未知', '登陆系统失败,用户名为：admin密码为121212', '2020-09-14 16:13:21');
INSERT INTO `tblog` VALUES ('24', '1', '1', '超级管理员', '正常登陆系统', '2020-09-14 16:13:30');
INSERT INTO `tblog` VALUES ('25', '1', '1', '超级管理员', '正常登陆系统', '2020-09-14 16:46:48');
INSERT INTO `tblog` VALUES ('26', '1', '1', '超级管理员', '正常登陆系统', '2020-09-14 17:11:33');
INSERT INTO `tblog` VALUES ('27', '1', '1', '超级管理员', '正常登陆系统', '2020-09-14 17:18:21');
INSERT INTO `tblog` VALUES ('28', '1', '1', '超级管理员', '正常登陆系统', '2020-09-15 09:36:58');
INSERT INTO `tblog` VALUES ('29', '1', '1', '超级管理员', '正常登陆系统', '2020-09-15 09:41:09');
INSERT INTO `tblog` VALUES ('30', '1', '3', '超级管理员', '修改密码失败,旧密码为：123456', '2020-09-15 10:07:59');
INSERT INTO `tblog` VALUES ('31', '1', '3', '超级管理员', '修改密码失败,旧密码为：121212', '2020-09-15 10:08:06');
INSERT INTO `tblog` VALUES ('32', '1', '1', '超级管理员', '正常修改密码', '2020-09-15 10:08:14');
INSERT INTO `tblog` VALUES ('33', '0', '3', '未知', '登陆系统失败,用户名为：admin密码为111111', '2020-09-15 16:14:53');
INSERT INTO `tblog` VALUES ('34', '1', '1', '超级管理员', '正常登陆系统', '2020-09-15 16:15:01');
INSERT INTO `tblog` VALUES ('35', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 08:17:23');
INSERT INTO `tblog` VALUES ('36', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 10:26:38');
INSERT INTO `tblog` VALUES ('37', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 10:29:58');
INSERT INTO `tblog` VALUES ('38', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 10:56:01');
INSERT INTO `tblog` VALUES ('39', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 16:10:03');
INSERT INTO `tblog` VALUES ('40', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 16:11:58');
INSERT INTO `tblog` VALUES ('41', '0', '3', '未知', '登陆系统失败,用户名为：admin密码为1  1 =1', '2020-09-16 16:16:35');
INSERT INTO `tblog` VALUES ('42', '0', '3', '未知', '登陆系统失败,用户名为：admin密码为1    1=1', '2020-09-16 16:17:27');
INSERT INTO `tblog` VALUES ('43', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 16:17:50');
INSERT INTO `tblog` VALUES ('44', '1', '3', '超级管理员', '登陆系统失败,用户名为：admin密码为1    1=1', '2020-09-16 16:18:22');
INSERT INTO `tblog` VALUES ('45', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 16:18:27');
INSERT INTO `tblog` VALUES ('46', '1', '1', '超级管理员', '正常登陆系统', '2020-09-16 16:26:17');
INSERT INTO `tblog` VALUES ('47', '1', '1', '超级管理员', '正常登陆系统', '2020-09-17 15:05:16');
INSERT INTO `tblog` VALUES ('48', '1', '1', '超级管理员', '正常登陆系统', '2020-09-17 15:36:22');

-- ----------------------------
-- Table structure for `tbmenubar`
-- ----------------------------
DROP TABLE IF EXISTS `tbmenubar`;
CREATE TABLE `tbmenubar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(100) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `ParentPath` varchar(100) DEFAULT NULL,
  `Href` varchar(100) DEFAULT NULL,
  `Target` varchar(100) DEFAULT NULL,
  `OrderList` int(11) DEFAULT NULL,
  `Visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmenubar
-- ----------------------------
INSERT INTO `tbmenubar` VALUES ('1', '系统设置', '0', '1', '1', null, '', '1', '1');
INSERT INTO `tbmenubar` VALUES ('2', '商品中心', '0', '1', '2', null, '', '2', '1');
INSERT INTO `tbmenubar` VALUES ('3', '进货管理', '0', '1', '3', null, '', '3', '1');
INSERT INTO `tbmenubar` VALUES ('4', '销售管理', '0', '1', '4', null, '', '4', '1');
INSERT INTO `tbmenubar` VALUES ('5', '库存管理', '0', '1', '5', null, '', '7', '1');
INSERT INTO `tbmenubar` VALUES ('6', '报表管理', '0', '1', '6', null, '', '8', '1');
INSERT INTO `tbmenubar` VALUES ('7', '密码修改', '1', '2', '1,7', './admin/editpassword.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('8', '新增用户', '1', '2', '1,8', './admin/usersadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('9', '建根类别', '2', '2', '2,9', './admin/tbtypeadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('10', '管理类别', '2', '2', '2,10', './tbtypelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('11', '新增商品', '2', '2', '2,11', './admin/proadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('12', '管理商品', '2', '2', '2,12', './prolist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('13', '创建进货单', '3', '2', '3,13', './admin/ordermain.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('14', '管理进货单', '3', '2', '3,14', './orderheadlist', 'main', '2', '1');
INSERT INTO `tbmenubar` VALUES ('15', '销售开单', '4', '2', '4,15', './admin/salemain.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('16', '维护订单', '4', '2', '4,16', './orderheadlistforsale', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('17', '库存入库', '5', '2', '5,17', './admin/proinout.jsp?t=1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('18', '商品出库', '5', '2', '5,18', './admin/proinout.jsp?t=-1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('19', '商品查询', '5', '2', '5,19', 'prolistforsearch', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('20', '管理用户', '1', '2', '1,20', './userslist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('21', '新增角色', '1', '2', '1,21', './admin/roleadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('22', '角色管理', '1', '2', '1,22', './rolelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('23', '入库管理', '0', '1', '23', '', null, '5', '0');
INSERT INTO `tbmenubar` VALUES ('24', '出库管理', '0', '1', '24', null, null, '6', '0');
INSERT INTO `tbmenubar` VALUES ('25', '明细查询', '5', '2', '5,25', './inoutlist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('26', '进货报表', '6', '2', '6,26', './admin/jinhuo.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('27', '退换货管理', '0', '1', '27', null, null, '9', '1');
INSERT INTO `tbmenubar` VALUES ('29', '退换货订单', '27', '2', '27,29', './returnExprolist', 'main', '3', '1');
INSERT INTO `tbmenubar` VALUES ('30', '退换货信息录入', '27', '2', '27,30', './admin/returnExadd.jsp', 'main', '2', '1');
INSERT INTO `tbmenubar` VALUES ('31', '销售报表', '6', '2', '6,31', './admin/baobiao-sale.jsp', 'main', '2', '1');
INSERT INTO `tbmenubar` VALUES ('32', '退换货报表', '6', '2', '6,32', './admin/baobiao-returnEx.jsp', 'main', '3', '1');
INSERT INTO `tbmenubar` VALUES ('33', '日志查询', '1', '2', '1,33', './loglistforsearch', 'main', '6', '1');
INSERT INTO `tbmenubar` VALUES ('34', '经销商管理', '0', '1', '34', null, null, '7', '1');
INSERT INTO `tbmenubar` VALUES ('35', '新增经销商', '34', '2', '34,35', './admin/salepeopleadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('36', '查看列表', '34', '2', '34,36', './salepeoplelist', 'main', '2', '1');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  `typeid` varchar(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('35', '20200916170026574', '郭玲', '15397600038', '四川成都总部', '64066', '1', '2020-08-16 17:00:26', null, null);
INSERT INTO `tborderhead` VALUES ('36', '20200916170105520', '彭玲玲', '15398888888', '四川成都总部', '36288', '1', '2020-09-16 17:01:05', null, null);
INSERT INTO `tborderhead` VALUES ('37', '20200916170128100', '李燕', '15397600038', '四川成都总部', '116550', '1', '2020-07-16 17:01:28', null, null);
INSERT INTO `tborderhead` VALUES ('38', '20200916170152741', '李正宇', '15397600038', '四川成都总部', '56710', '1', '2020-10-16 17:01:52', null, null);

-- ----------------------------
-- Table structure for `tborderheadforsale`
-- ----------------------------
DROP TABLE IF EXISTS `tborderheadforsale`;
CREATE TABLE `tborderheadforsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderheadforsale
-- ----------------------------
INSERT INTO `tborderheadforsale` VALUES ('39', '20200916164158770', '郭玲', '15397600038', '重庆巴南', '80666', '1', '2020-09-16 16:41:58', null, null);
INSERT INTO `tborderheadforsale` VALUES ('40', '20200916170334423', '彭玲玲', '15397600038', '重庆巴南分部', '72166', '1', '2020-09-16 17:03:34', null, null);
INSERT INTO `tborderheadforsale` VALUES ('41', '20200916170443864', '李正宇', '15397600038', '重庆璧山分部', '82466', '1', '2020-09-16 17:04:43', null, null);

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('53', '20200916170026574', '33', 'Rose des Vents 手链', '54000', '1', '20200916085732092.jpg');
INSERT INTO `tborderitems` VALUES ('54', '20200916170026574', '25', 'JFTevolution项链', '4666', '1', '20200916084330524.jpg');
INSERT INTO `tborderitems` VALUES ('55', '20200916170026574', '23', '缇凡纪珍珠双G项链', '5400', '1', '20200916083651083.jpg');
INSERT INTO `tborderitems` VALUES ('56', '20200916170105520', '35', 'TFJ  Oui 胸针', '5400', '1', '20200916085919787.jpg');
INSERT INTO `tborderitems` VALUES ('57', '20200916170105520', '34', 'TFJ  Oui 手环', '26666', '1', '20200916085837223.webp');
INSERT INTO `tborderitems` VALUES ('58', '20200916170105520', '30', '缇凡纪珍珠耳钉', '4222', '1', '20200916085439714.png');
INSERT INTO `tborderitems` VALUES ('59', '20200916170128100', '33', 'Rose des Vents 手链', '54000', '1', '20200916085732092.jpg');
INSERT INTO `tborderitems` VALUES ('60', '20200916170128100', '27', 'TFJ  Oui 戒指', '52600', '1', '20200916084933258.jpg');
INSERT INTO `tborderitems` VALUES ('61', '20200916170128100', '24', '缇凡纪珍饰珍珠蜜蜂项链', '4550', '1', '20200916083938673.jpg');
INSERT INTO `tborderitems` VALUES ('62', '20200916170128100', '23', '缇凡纪珍珠双G项链', '5400', '1', '20200916083651083.jpg');
INSERT INTO `tborderitems` VALUES ('63', '20200916170152741', '36', 'Rose des Vents 胸针', '1144', '1', '20200916090011263.jpg');
INSERT INTO `tborderitems` VALUES ('64', '20200916170152741', '35', 'TFJ  Oui 胸针', '5400', '1', '20200916085919787.jpg');
INSERT INTO `tborderitems` VALUES ('65', '20200916170152741', '32', 'JFTevolution 手链', '45500', '1', '20200916085649805.jpg');
INSERT INTO `tborderitems` VALUES ('66', '20200916170152741', '31', 'JFTevolution耳钉', '4666', '1', '20200916085556132.webp');

-- ----------------------------
-- Table structure for `tborderitemsforsale`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitemsforsale`;
CREATE TABLE `tborderitemsforsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitemsforsale
-- ----------------------------
INSERT INTO `tborderitemsforsale` VALUES ('59', '20200916164158770', '34', 'TFJ  Oui 手环', '26666', '1', '20200916085837223.webp');
INSERT INTO `tborderitemsforsale` VALUES ('60', '20200916164158770', '33', 'Rose des Vents 手链', '54000', '1', '20200916085732092.jpg');
INSERT INTO `tborderitemsforsale` VALUES ('61', '20200916170334423', '34', 'TFJ  Oui 手环', '26666', '1', '20200916085837223.webp');
INSERT INTO `tborderitemsforsale` VALUES ('62', '20200916170334423', '32', 'JFTevolution 手链', '45500', '1', '20200916085649805.jpg');
INSERT INTO `tborderitemsforsale` VALUES ('63', '20200916170443864', '27', 'TFJ  Oui 戒指', '52600', '1', '20200916084933258.jpg');
INSERT INTO `tborderitemsforsale` VALUES ('64', '20200916170443864', '26', 'Rose des Vents 戒指', '25200', '1', '20200916084608100.jpg');
INSERT INTO `tborderitemsforsale` VALUES ('65', '20200916170443864', '25', 'JFTevolution项链', '4666', '1', '20200916084330524.jpg');

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `procount` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `procodeurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('23', '缇凡纪珍珠双G项链', '000001', '1', '5400', '秋季新款时尚珠宝系列', '<p><span style=\"color: rgb(75, 75, 75); font-family: FuturaLT-Light, NotoSansCJKsc-Normal, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.89);\">作为品牌的标志性元素，创始人Guccio Gucci姓名的首字母以别致的方式呈现在这款项链上。金色效果金属标识与白色玻璃珍珠边框相得益彰，令整款设计更显精致典雅的气息</span></p>', '意大利', '25', '20200916083651083.jpg', '20200916083651086.jpg');
INSERT INTO `tbproduct` VALUES ('24', '缇凡纪珍饰珍珠蜜蜂项链', '000002', '1', '4550', '珍珠铂金制品', '<p><span style=\"color: rgb(75, 75, 75); font-family: FuturaLT-Light, NotoSansCJKsc-Normal, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.89);\">这款标志现已作为品牌的经典符号再次被推到时尚前沿。这款单品采用做旧效果金色调金属材质，蜜蜂翅膀上点缀有做旧水晶。一颗大号奶油色树脂珍珠构成蜜蜂的身体，中心部分点缀互扣式双G细节。一枚超大造型玻璃珍珠吊坠让这款蜜蜂项链的造型更显精致。</span></p>', '意大利', '0', '20200916083938673.jpg', '20200916083938674.jpg');
INSERT INTO `tbproduct` VALUES ('25', 'JFTevolution项链', '000003', '1', '4666', '法国知名工匠，匠心打造', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">evolution 项链优雅经典。“D.I.O.R.”字母垂坠于金色饰面金属链条，字母“O”以白色仿水晶镶嵌，为颈部增添光彩。款式简单易搭，可搭配其他 Dio(r)evolution 单品佩戴</span></p>', '法国', '50', '20200916084330524.jpg', '20200916084330525.jpg');
INSERT INTO `tbproduct` VALUES ('26', 'Rose des Vents 戒指', '000004', '2', '25200', '黄色 18K 金、钻石和珍珠母贝装饰', '<p><a class=\"product-link\" href=\"https://www.dior.cn/zh_cn/products/couture-JRDV95150_0000-rose-des-vents-%E6%88%92%E6%8C%87-%E9%BB%84%E8%89%B2-18k-%E9%87%91%E3%80%81%E9%92%BB%E7%9F%B3%E5%92%8C%E7%8F%8D%E7%8F%A0%E6%AF%8D%E8%B4%9D%E8%A3%85%E9%A5%B0\" style=\"border: none; cursor: pointer; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; text-decoration-line: none; padding: 0px; display: flex; flex-direction: column; white-space: normal;\"><p class=\"multiline-text product-subtitle multiline-text--is-china\" style=\"margin-top: 0px; margin-bottom: 0px; word-break: break-all; width: 317.513px;\">黄色 18K 金、钻石和珍珠母贝装饰</p></a><a class=\"product-link\" href=\"https://www.dior.cn/zh_cn/products/couture-JRDV95150_0000-rose-des-vents-%E6%88%92%E6%8C%87-%E9%BB%84%E8%89%B2-18k-%E9%87%91%E3%80%81%E9%92%BB%E7%9F%B3%E5%92%8C%E7%8F%8D%E7%8F%A0%E6%AF%8D%E8%B4%9D%E8%A3%85%E9%A5%B0\" style=\"border: none; cursor: pointer; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; text-decoration-line: none; padding: 0px; display: flex; flex-direction: column; white-space: normal;\"><p class=\"multiline-text product-subtitle multiline-text--is-china\" style=\"margin-top: 0px; margin-bottom: 0px; word-break: break-all; width: 317.513px;\">黄色 18K 金、钻石和珍珠母贝装饰</p></a><a class=\"product-link\" href=\"https://www.dior.cn/zh_cn/products/couture-JRDV95150_0000-rose-des-vents-%E6%88%92%E6%8C%87-%E9%BB%84%E8%89%B2-18k-%E9%87%91%E3%80%81%E9%92%BB%E7%9F%B3%E5%92%8C%E7%8F%8D%E7%8F%A0%E6%AF%8D%E8%B4%9D%E8%A3%85%E9%A5%B0\" style=\"border: none; cursor: pointer; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; text-decoration-line: none; padding: 0px; display: flex; flex-direction: column; white-space: normal;\"><p class=\"multiline-text product-subtitle multiline-text--is-china\" style=\"margin-top: 0px; margin-bottom: 0px; word-break: break-all; width: 317.513px;\">黄色 18K 金、钻石和珍珠母贝装饰</p></a><a class=\"product-link\" href=\"https://www.dior.cn/zh_cn/products/couture-JRDV95150_0000-rose-des-vents-%E6%88%92%E6%8C%87-%E9%BB%84%E8%89%B2-18k-%E9%87%91%E3%80%81%E9%92%BB%E7%9F%B3%E5%92%8C%E7%8F%8D%E7%8F%A0%E6%AF%8D%E8%B4%9D%E8%A3%85%E9%A5%B0\" style=\"border: none; cursor: pointer; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; text-decoration-line: none; padding: 0px; display: flex; flex-direction: column; white-space: normal;\"><p class=\"multiline-text product-subtitle multiline-text--is-china\" style=\"margin-top: 0px; margin-bottom: 0px; word-break: break-all; width: 317.513px;\">黄色 18K 金、钻石和珍珠母贝装饰</p></a></p>', '法国', '0', '20200916084608100.jpg', '20200916084608101.jpg');
INSERT INTO `tbproduct` VALUES ('27', 'TFJ  Oui 戒指', '000002', '2', '52600', ' ¥26,500   Rose Céleste 戒指 aria_frontView #新品  R黄色和白色 18K 金、钻石、缟玛瑙和珍珠母贝装饰', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">维多利娅·德卡斯特兰 (Victoire de Castellane) 倾心打造新款幸运符，以天体为灵感，继续书写 Rose des Vents 系列的传奇。月亮图案与 Mimirose 系列同款璀璨钻石结合，让这款全新的开口戒指更显华丽。</span><br style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(246, 246, 246);\"/><br style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(246, 246, 246);\"/><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">Rose Céleste 月亮图案和 Mimirose 系列同款钻石均为交缠的麦穗环绕，戒身亦采用麦穗造型，别致典雅。</span></p><p><br/></p>', '法国', '10', '20200916084933258.jpg', '20200917155711631.jpg');
INSERT INTO `tbproduct` VALUES ('28', 'TFJ  秋季新款  ROSE戒指', '000003', '2', '5222', '黄色 18K 金、钻石和珍珠装饰', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">高级珠宝系列以金丝线精心打造，交错点缀璀璨美钻，承载快乐讯息，唤醒一段段甜蜜的爱的回忆</span></p><p><br/></p>', '意大利', '50', '20200916085125401.jpg', '20200917155639983.jpg');
INSERT INTO `tbproduct` VALUES ('29', 'TFJ  ROSE系列 定制耳环', '000004', '3', '5260', '法国知名工匠，匠心打造', '<p>18K玫瑰金&nbsp; ，ROSE系列高级珠宝系列</p><p><br/></p>', '法国', '0', '20200916085309486.webp', '20200917155621684.jpg');
INSERT INTO `tbproduct` VALUES ('30', '缇凡纪珍珠耳钉', '000005', '40', '4222', '秋季新款时尚珠宝系列', '<p>秋季新款时尚珠宝系列秋季新款时尚珠宝系列v</p><p><br/></p>', '意大利', '85', '20200916085439714.png', '20200917155601183.jpg');
INSERT INTO `tbproduct` VALUES ('31', 'JFTevolution耳钉', '000006', '40', '4666', '法国知名工匠，匠心打造', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">高级珠宝系列以金丝线精心打造，交错点缀璀璨美钻，承载快乐讯息，唤醒一段段甜蜜的爱的回忆</span></p><p><br/></p>', '法国', '75', '20200916085556132.webp', '20200917155546248.jpg');
INSERT INTO `tbproduct` VALUES ('32', 'JFTevolution 手链', '000008', '38', '45500', '秋季新款时尚珠宝系列', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">高级珠宝系列以金丝线精心打造，交错点缀璀璨美钻，承载快乐讯息，唤醒一段段甜蜜的爱的回忆</span></p>', '意大利', '15', '20200916085649805.jpg', '20200916085649896.jpg');
INSERT INTO `tbproduct` VALUES ('33', 'Rose des Vents 手链', '000007', '38', '54000', '珍珠铂金制品', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">高级珠宝系列以金丝线精心打造，交错点缀璀璨美钻，承载快乐讯息，唤醒一段段甜蜜的爱的回忆</span></p><p><br/></p>', '意大利', '50', '20200916085732092.jpg', '20200917155526749.jpg');
INSERT INTO `tbproduct` VALUES ('34', 'TFJ  Oui 手环', '000009', '39', '26666', '法国知名工匠，匠心打造', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">高级珠宝系列以金丝线精心打造，交错点缀璀璨美钻，承载快乐讯息，唤醒一段段甜蜜的爱的回忆</span></p>', '法国', '50', '20200916085837223.webp', '20200916085837223.jpg');
INSERT INTO `tbproduct` VALUES ('35', 'TFJ  Oui 胸针', '000010', '37', '5400', '秋季新款时尚珠宝系列', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">高级珠宝系列以金丝线精心打造，交错点缀璀璨美钻，承载快乐讯息，唤醒一段段甜蜜的爱的回忆</span></p>', '意大利', '0', '20200916085919787.jpg', '20200916085919788.jpg');
INSERT INTO `tbproduct` VALUES ('36', 'Rose des Vents 胸针', '000011', '37', '1144', '法国知名工匠，匠心打造', '<p><span style=\"font-family: &quot;Century Gothic Std&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(246, 246, 246);\">高级珠宝系列以金丝线精心打造，交错点缀璀璨美钻，承载快乐讯息，唤醒一段段甜蜜的爱的回忆</span></p>', '法国', '100', '20200916090011263.jpg', '20200916090011264.jpg');

-- ----------------------------
-- Table structure for `tbreturnex`
-- ----------------------------
DROP TABLE IF EXISTS `tbreturnex`;
CREATE TABLE `tbreturnex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbpronum` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `tbproname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `tbpropath` varchar(255) DEFAULT NULL COMMENT '商品类别',
  `tbproimg` varchar(255) DEFAULT NULL,
  `opttype` varchar(255) DEFAULT NULL,
  `tbcusname` varchar(255) DEFAULT NULL COMMENT '顾客姓名',
  `tbcustel` varchar(255) DEFAULT NULL COMMENT '顾客电话',
  `tbcusadds` varchar(255) DEFAULT NULL COMMENT '顾客地址',
  `tbcurrtime` varchar(255) DEFAULT '当前时间',
  `tbproid` int(11) DEFAULT NULL COMMENT '商品的id',
  `tbrtuExnum` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbreturnex
-- ----------------------------
INSERT INTO `tbreturnex` VALUES ('8', '000011', 'Rose des Vents 胸针', '配饰/胸针', '20200916090011263.jpg', '退货', '张三', '18823546987', '重庆巴南龙洲湾', '2020-09-16 17:08:35', '36', '1');
INSERT INTO `tbreturnex` VALUES ('9', '000001', '缇凡纪珍珠双G项链', '项链', '20200916083651083.jpg', '换货', '李四', '15946879852', '四川成都', '2020-09-16 17:09:12', '23', '1');
INSERT INTO `tbreturnex` VALUES ('10', '000005', 'TFJ  Oui 戒指', '戒指 ', '20200916084933258.jpg', '退货', '王卓', '17866666666', '四川绵阳', '2020-09-16 17:09:58', '27', '2');
INSERT INTO `tbreturnex` VALUES ('11', '000009', 'TFJ  Oui 手环', '手镯/手环', '20200916085837223.webp', '退货', '赵六', '15846879552', '北京市海淀区', '2020-09-16 17:10:52', '34', '2');
INSERT INTO `tbreturnex` VALUES ('12', '000004', 'Rose des Vents 戒指', '戒指 ', '20200916084608100.jpg', '换货', '王建军', '18823546987', '北京市朝阳区', '2020-09-16 17:12:21', '26', '2');

-- ----------------------------
-- Table structure for `tbrolehasmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tbrolehasmenu`;
CREATE TABLE `tbrolehasmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `menuname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbrolehasmenu
-- ----------------------------
INSERT INTO `tbrolehasmenu` VALUES ('93', '1', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('94', '1', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('95', '1', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('96', '1', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('97', '1', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('98', '1', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('99', '1', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('100', '1', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('101', '1', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('102', '1', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('103', '1', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('104', '1', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('105', '1', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('106', '1', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('107', '1', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('108', '1', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('109', '1', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('110', '1', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('111', '1', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('112', '1', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('113', '1', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('114', '1', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('115', '2', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('116', '2', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('117', '2', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('118', '2', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('119', '2', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('120', '2', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('121', '2', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('122', '2', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('123', '2', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('124', '2', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('125', '2', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('126', '2', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('127', '2', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('128', '2', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('129', '2', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('130', '2', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('131', '2', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('132', '2', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('133', '2', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('134', '2', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('135', '2', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('136', '2', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('140', '1', null, '24', null);
INSERT INTO `tbrolehasmenu` VALUES ('141', '1', null, '23', null);
INSERT INTO `tbrolehasmenu` VALUES ('142', '1', null, '25', null);
INSERT INTO `tbrolehasmenu` VALUES ('143', '1', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('145', '4', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('146', '5', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('147', '5', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('148', '1', null, '27', null);
INSERT INTO `tbrolehasmenu` VALUES ('149', '1', null, '29', null);
INSERT INTO `tbrolehasmenu` VALUES ('150', '1', null, '28', null);
INSERT INTO `tbrolehasmenu` VALUES ('151', '1', null, '30', null);
INSERT INTO `tbrolehasmenu` VALUES ('154', '2', null, '29', null);
INSERT INTO `tbrolehasmenu` VALUES ('155', '2', null, '28', null);
INSERT INTO `tbrolehasmenu` VALUES ('156', '2', null, '27', null);
INSERT INTO `tbrolehasmenu` VALUES ('158', '6', null, '30', null);
INSERT INTO `tbrolehasmenu` VALUES ('159', '6', null, '27', null);
INSERT INTO `tbrolehasmenu` VALUES ('160', '6', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('161', '6', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('162', '5', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('163', '5', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('164', '5', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('165', '5', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('166', '5', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('167', '6', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('168', '6', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('169', '4', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('170', '4', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('171', '4', null, '23', null);
INSERT INTO `tbrolehasmenu` VALUES ('172', '4', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('173', '4', null, '25', null);
INSERT INTO `tbrolehasmenu` VALUES ('174', '3', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('175', '3', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('177', '3', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('178', '3', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('179', '3', null, '29', null);
INSERT INTO `tbrolehasmenu` VALUES ('180', '3', null, '27', null);
INSERT INTO `tbrolehasmenu` VALUES ('181', '1', null, '31', null);
INSERT INTO `tbrolehasmenu` VALUES ('182', '1', null, '32', null);
INSERT INTO `tbrolehasmenu` VALUES ('183', '1', null, '33', null);
INSERT INTO `tbrolehasmenu` VALUES ('184', '1', null, '34', null);
INSERT INTO `tbrolehasmenu` VALUES ('185', '1', null, '36', null);
INSERT INTO `tbrolehasmenu` VALUES ('186', '1', null, '35', null);

-- ----------------------------
-- Table structure for `tbroles`
-- ----------------------------
DROP TABLE IF EXISTS `tbroles`;
CREATE TABLE `tbroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbroles
-- ----------------------------
INSERT INTO `tbroles` VALUES ('1', '超级管理员', '超级管理员');
INSERT INTO `tbroles` VALUES ('3', '销售经理', '销售经理');
INSERT INTO `tbroles` VALUES ('4', '库存管理员', '只能查询商品库存信息');
INSERT INTO `tbroles` VALUES ('5', '采购员', '采购');
INSERT INTO `tbroles` VALUES ('6', '销售人员', '填写入销售和退换货信息');
INSERT INTO `tbroles` VALUES ('7', '经销商', '经销商信息新增和查询');

-- ----------------------------
-- Table structure for `tbsalepeople`
-- ----------------------------
DROP TABLE IF EXISTS `tbsalepeople`;
CREATE TABLE `tbsalepeople` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbpronum` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `tbproname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `tbpropath` varchar(255) DEFAULT NULL COMMENT '商品类别',
  `tbproimg` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `tbsalename` varchar(255) DEFAULT NULL COMMENT '经销商姓名',
  `tbsaletel` varchar(255) DEFAULT NULL COMMENT '经销商电话',
  `tbsaleadds` varchar(255) DEFAULT NULL COMMENT '经销商地址',
  `tbcurrtime` varchar(255) DEFAULT '当前时间',
  `tbproid` int(11) DEFAULT NULL COMMENT '商品的id',
  `tbnum` varchar(34) DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsalepeople
-- ----------------------------
INSERT INTO `tbsalepeople` VALUES ('11', '000011', 'Rose des Vents 胸针', '配饰/胸针', '20200916090011263.jpg', '小郭', '15988888888', '重庆巴南', '2020-09-16 16:54:50', '36', '100');
INSERT INTO `tbsalepeople` VALUES ('12', '000001', '缇凡纪珍珠双G项链', '项链', '20200916083651083.jpg', '小李', '13988888888', '重庆璧山', '2020-09-16 16:55:33', '23', '50');
INSERT INTO `tbsalepeople` VALUES ('13', '000005', 'TFJ  Oui 戒指', '戒指 ', '20200916084933258.jpg', '小刘', '15866666666', '四川成都', '2020-09-16 16:56:22', '27', '200');
INSERT INTO `tbsalepeople` VALUES ('14', '000009', 'TFJ  Oui 手环', '手镯/手环', '20200916085837223.webp', '小彭', '18856565656', '北京市朝阳区', '2020-09-16 16:57:23', '34', '520');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('75', '41EFB73C20B2B946AB68D8917961A513', 'MateBook 13', '21', '1', '2020-08-26 15:39:18', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('76', '41EFB73C20B2B946AB68D8917961A513', '戴尔DELL灵越5000', '20', '1', '2020-08-26 15:39:18', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcar` VALUES ('78', 'F7AC1B96F5F2488659F18637B0205CA0', 'MateBook 13', '21', '1', '2020-09-05 15:08:43', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('79', '7E0778971E4DB6EBB8B83471BEC5D4B2', 'MateBook 13', '21', '1', '2020-09-07 16:32:43', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('80', '7E0778971E4DB6EBB8B83471BEC5D4B2', '戴尔DELL灵越5000', '20', '1', '2020-09-07 16:32:44', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcar` VALUES ('81', '71D8395BC3D8B6528467C55AC9D55147', 'MateBook 13', '21', '1', '2020-09-07 16:39:07', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('82', '71D8395BC3D8B6528467C55AC9D55147', '戴尔DELL灵越5000', '20', '1', '2020-09-07 16:39:07', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcar` VALUES ('83', '9946FB1C7CAD9B1B491EFA24F440B47D', '戴尔DELL灵越5000', '20', '1', '2020-09-07 16:44:22', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcar` VALUES ('84', '9946FB1C7CAD9B1B491EFA24F440B47D', '华为MateBook14', '18', '1', '2020-09-07 16:44:23', '20200824171445193.png', '5200');

-- ----------------------------
-- Table structure for `tbshoppingcarforsale`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcarforsale`;
CREATE TABLE `tbshoppingcarforsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcarforsale
-- ----------------------------
INSERT INTO `tbshoppingcarforsale` VALUES ('1', 'A8FDD5A1D20E7B662474D4FD235A91D5', 'JFTevolution 手链', '32', '1', '2020-09-16 11:41:29', '20200916085649805.jpg', '45500');
INSERT INTO `tbshoppingcarforsale` VALUES ('2', 'A8FDD5A1D20E7B662474D4FD235A91D5', 'JFTevolution耳钉', '31', '1', '2020-09-16 11:41:30', '20200916085556132.webp', '4666');
INSERT INTO `tbshoppingcarforsale` VALUES ('3', 'A8FDD5A1D20E7B662474D4FD235A91D5', '缇凡纪珍珠双G项链', '23', '1', '2020-09-16 11:41:30', '20200916083651083.jpg', '5400');

-- ----------------------------
-- Table structure for `tbsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `tbsupplier`;
CREATE TABLE `tbsupplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsupplier
-- ----------------------------

-- ----------------------------
-- Table structure for `tbtype`
-- ----------------------------
DROP TABLE IF EXISTS `tbtype`;
CREATE TABLE `tbtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `parentname` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `levelnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbtype
-- ----------------------------
INSERT INTO `tbtype` VALUES ('1', '项链', '/', '0', '项链', '0');
INSERT INTO `tbtype` VALUES ('2', '戒指', '/', '0', '戒指 ', '0');
INSERT INTO `tbtype` VALUES ('3', '耳环', '/', '0', '耳环', '0');
INSERT INTO `tbtype` VALUES ('4', '手镯', '/', '0', '手镯', '0');
INSERT INTO `tbtype` VALUES ('5', '配饰', '/', '0', '配饰', '0');
INSERT INTO `tbtype` VALUES ('37', '胸针', '配饰', '5', '配饰/胸针', '1');
INSERT INTO `tbtype` VALUES ('38', '手链', '手镯', '4', '手镯/手链', '1');
INSERT INTO `tbtype` VALUES ('39', '手环', '手镯', '4', '手镯/手环', '1');
INSERT INTO `tbtype` VALUES ('40', '耳钉', '耳环', '3', '耳环/耳钉', '1');

-- ----------------------------
-- Table structure for `tbuserhasrole`
-- ----------------------------
DROP TABLE IF EXISTS `tbuserhasrole`;
CREATE TABLE `tbuserhasrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuserhasrole
-- ----------------------------
INSERT INTO `tbuserhasrole` VALUES ('13', '1', null, '1', null);
INSERT INTO `tbuserhasrole` VALUES ('17', '7', null, '1', null);
INSERT INTO `tbuserhasrole` VALUES ('18', '8', null, '4', null);
INSERT INTO `tbuserhasrole` VALUES ('19', '11', null, '3', null);
INSERT INTO `tbuserhasrole` VALUES ('20', '12', null, '5', null);
INSERT INTO `tbuserhasrole` VALUES ('21', '13', null, '6', null);

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `creatorid` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '123456', '超级管理员', '15397600038', '四川成都总部', null, null);
INSERT INTO `tbusers` VALUES ('7', 'Liuchunting', '123456', '刘春廷', '15988886666', '缇凡纪珠宝店', null, null);
INSERT INTO `tbusers` VALUES ('8', 'Penglingling', '123456', '彭玲玲', '15397600035', '商品库', null, null);
INSERT INTO `tbusers` VALUES ('11', 'Lizhengyu', '123456', '李正宇', '15397600033', '纪珠宝店', null, null);
INSERT INTO `tbusers` VALUES ('12', 'Liyan', '123456', '李燕', '15397600032', '凡珠宝店', null, null);
INSERT INTO `tbusers` VALUES ('13', 'Guoling', '123456', '郭玲', '13500000001', '缇珠宝店', null, null);

-- ----------------------------
-- View structure for `v_product`
-- ----------------------------
DROP VIEW IF EXISTS `v_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product` AS select `tbproduct`.`id` AS `id`,`tbproduct`.`proname` AS `proname`,`tbproduct`.`pronum` AS `pronum`,`tbproduct`.`typeid` AS `typeid`,`tbproduct`.`price` AS `price`,`tbproduct`.`brief` AS `brief`,`tbproduct`.`descriptions` AS `descriptions`,`tbproduct`.`address` AS `address`,`tbproduct`.`procount` AS `procount`,`tbproduct`.`imgurl` AS `imgurl`,`tbproduct`.`procodeurl` AS `procodeurl`,`tbtype`.`levelnum` AS `levelnum`,`tbtype`.`typename` AS `typename`,`tbtype`.`fullpath` AS `fullpath` from (`tbproduct` left join `tbtype` on((`tbproduct`.`typeid` = `tbtype`.`id`))) ;

-- ----------------------------
-- View structure for `v_sale`
-- ----------------------------
DROP VIEW IF EXISTS `v_sale`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sale` AS select `tborderitemsforsale`.`id` AS `id`,`tborderitemsforsale`.`orderid` AS `orderid`,`tborderitemsforsale`.`price` AS `price`,`tborderitemsforsale`.`proname` AS `proname`,`tborderitemsforsale`.`procount` AS `procount`,`tborderheadforsale`.`ctime` AS `ctime` from (`tborderitemsforsale` left join `tborderheadforsale` on((`tborderitemsforsale`.`orderid` = `tborderheadforsale`.`orderid`))) ;
