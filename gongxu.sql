/*
Navicat MySQL Data Transfer

Source Server         : 23
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : demotest

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2018-04-27 08:17:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gongxu
-- ----------------------------
DROP TABLE IF EXISTS `gongxu`;
CREATE TABLE `gongxu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `another1` varchar(255) DEFAULT NULL,
  `another2` varchar(255) DEFAULT NULL,
  `another3` varchar(255) DEFAULT NULL,
  `another4` varchar(255) DEFAULT NULL,
  `another5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gongxu
-- ----------------------------
INSERT INTO `gongxu` VALUES ('10', '车工', null, null, null, null, null);
INSERT INTO `gongxu` VALUES ('11', '钳工', null, null, null, null, null);
INSERT INTO `gongxu` VALUES ('12', '铣床', null, null, null, null, null);
INSERT INTO `gongxu` VALUES ('13', '打磨', null, null, null, null, null);
INSERT INTO `gongxu` VALUES ('14', '装配', null, null, null, null, null);
INSERT INTO `gongxu` VALUES ('15', '焊接', null, null, null, null, null);

-- ----------------------------
-- Table structure for order_d
-- ----------------------------
DROP TABLE IF EXISTS `order_d`;
CREATE TABLE `order_d` (
  `id` int(12) NOT NULL,
  `customer` varchar(255) NOT NULL COMMENT '客户',
  `resPerson` varchar(255) NOT NULL COMMENT '负责人',
  `orderTime` varchar(100) NOT NULL COMMENT '下单时间',
  `expectTime` varchar(100) NOT NULL COMMENT '预期时间',
  `completionTime` varchar(100) DEFAULT NULL COMMENT '完成时间',
  `configuration` varchar(255) NOT NULL COMMENT '配置',
  `state` varchar(1) NOT NULL COMMENT '1正常订单 2正常加模板 3加急订单',
  `serverCode` varchar(1) NOT NULL COMMENT '1暂停订单 2完工 3删除 默认0',
  `usedTime` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve2` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve3` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve4` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve5` varchar(255) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_d
-- ----------------------------
INSERT INTO `order_d` VALUES ('1212', '张三', '菜鸡', '2018-04-11', '2018-04-11', '', 'nihao', '1', '3', '', '', null, null, null);
INSERT INTO `order_d` VALUES ('2018020201', '蔡君', '菜鸡', '2018-04-11', '2018-04-11', '', '傻狗子', '1', '3', '', '', '', '', '');
INSERT INTO `order_d` VALUES ('2018020801', '菜鸡', '高杰', '2018-04-11', '2018-04-11', '', '配置：垃圾', '1', '3', '', '', null, null, null);
INSERT INTO `order_d` VALUES ('2018041101', 'aaa', 'bbb', '2018-04-11', '2018-04-11', '', '配置：123', '1', '3', '', '', null, null, null);
INSERT INTO `order_d` VALUES ('2018042101', 'lin ', 'da', '', '', '', '配置：', '1', '3', '', null, null, null, null);
INSERT INTO `order_d` VALUES ('2018042601', '山西沁新集团新创能源科技有限公司', '潘银峰', '2018-03-29', '2018-06-11', '', '配置：55KW*2 变频电机，内部喷涂\r\n带DN250卸料阀1台，内壁喷涂特氟龙\r\n转子喷涂碳化钨，其余喷涂特氟龙\r\n变频器柜，变频器132KW，混合机到控制柜5M电缆', '1', '0', '', null, null, null, null);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(12) NOT NULL COMMENT '=orderId',
  `productName` varchar(255) NOT NULL COMMENT '产品名称',
  `type` varchar(255) NOT NULL COMMENT '型号',
  `number` varchar(100) NOT NULL COMMENT '数量',
  `workid` varchar(5) NOT NULL COMMENT '排列顺序',
  `reserve1` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve2` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve3` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve4` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve5` varchar(255) DEFAULT NULL COMMENT '预留字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('2018020201', 'a', '12', '1', '1', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018020801', '孙子', '菜鸡', '1', '1', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018041101', 'a', 'a', '1', '1', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018041101', 'b', 'b', '1', '2', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018042101', '', '', '', '1', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018042401', 'a', '12', '1', '1', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018042601', '无重力混合机', 'WZL-20', '1', '1', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018042601', '储料罐', '2m3', '1', '2', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018042601', '特殊加工', '内部喷涂', '1', '3', null, null, null, null, null);
INSERT INTO `product` VALUES ('2018042601', '控制柜', '配套', '1', '4', null, null, null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `power` int(1) unsigned NOT NULL COMMENT '权限 1admin 2普通用户',
  `reserve1` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve2` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve3` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve4` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve5` varchar(255) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `id` int(12) NOT NULL COMMENT '=orderId',
  `workId` int(10) NOT NULL COMMENT '工序id',
  `content` varchar(5000) DEFAULT NULL COMMENT '内容',
  `worker` int(10) DEFAULT NULL COMMENT '作业员id',
  `orderTime` varchar(100) NOT NULL COMMENT '下单时间',
  `expectTime` varchar(100) NOT NULL COMMENT '预期时间',
  `completionTime` varchar(100) DEFAULT NULL COMMENT '完成时间',
  `passTime` varchar(255) DEFAULT NULL COMMENT '逾期',
  `test` varchar(255) DEFAULT NULL COMMENT '检验',
  `productId` int(10) NOT NULL COMMENT '=productid',
  `hiddenIt` int(2) unsigned zerofill DEFAULT NULL COMMENT '预留字段',
  `standard` varchar(255) DEFAULT NULL COMMENT '标准',
  `userdTime` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `reserve5` varchar(255) DEFAULT NULL COMMENT '预留字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('2018042601', '10', '', '1', '2018-12-31T23:51', '2018-12-31T23:59', '2018-12-31T23:32', '', '', '1', '00', '1', '2', null);

-- ----------------------------
-- Table structure for worker
-- ----------------------------
DROP TABLE IF EXISTS `worker`;
CREATE TABLE `worker` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `job` varchar(255) DEFAULT NULL,
  `another1` varchar(255) DEFAULT NULL,
  `another2` varchar(255) DEFAULT NULL,
  `another3` varchar(255) DEFAULT NULL,
  `another4` varchar(255) DEFAULT NULL,
  `another5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worker
-- ----------------------------
INSERT INTO `worker` VALUES ('1', '李光海', '车工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('2', '王奎虎', '车工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('3', '王新闻', '车工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('5', '汪崇平', '车工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('7', '王巍', '车工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('8', '施伟', '装配', null, null, null, null, null);
INSERT INTO `worker` VALUES ('9', '江宏青', '装配', null, null, null, null, null);
INSERT INTO `worker` VALUES ('10', '冯经万', '装配', null, null, null, null, null);
INSERT INTO `worker` VALUES ('11', '瓮振伟', '装配', null, null, null, null, null);
INSERT INTO `worker` VALUES ('12', '袁海安', '装配', null, null, null, null, null);
INSERT INTO `worker` VALUES ('13', '周远征', '装配', null, null, null, null, null);
INSERT INTO `worker` VALUES ('14', '徐启超', '下料', null, null, null, null, null);
INSERT INTO `worker` VALUES ('15', '符长斌', '下料', null, null, null, null, null);
INSERT INTO `worker` VALUES ('16', '王余生', '打磨', null, null, null, null, null);
INSERT INTO `worker` VALUES ('17', '杨龙全', '打磨', null, null, null, null, null);
INSERT INTO `worker` VALUES ('18', '楚永彦', '打磨', null, null, null, null, null);
INSERT INTO `worker` VALUES ('19', '闫开亮', '打磨', null, null, null, null, null);
INSERT INTO `worker` VALUES ('20', '李宫方', '打磨', null, null, null, null, null);
INSERT INTO `worker` VALUES ('21', '贾兴河', '打磨', null, null, null, null, null);
INSERT INTO `worker` VALUES ('22', '周世龙', '焊工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('23', '王玉安', '焊工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('24', '韩永强', '焊工', null, null, null, null, null);
INSERT INTO `worker` VALUES ('25', '万仲明', '喷漆', null, null, null, null, null);
INSERT INTO `worker` VALUES ('26', '刘毅', '钻床', null, null, null, null, null);
