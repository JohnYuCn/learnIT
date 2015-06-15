/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.18
Source Server Version : 50067
Source Host           : 192.168.1.18:3306
Source Database       : tvcms

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-05-29 17:37:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `message_push`
-- ----------------------------
DROP TABLE IF EXISTS `message_push`;
CREATE TABLE `message_push` (
  `id` int(11) NOT NULL auto_increment,
  `domain_name` varchar(200) default NULL,
  `content` varchar(500) default NULL COMMENT '推送消息内容',
  `user_id` int(11) default NULL COMMENT '推送人',
  `send_time` datetime default NULL COMMENT '推送时间',
  `title` varchar(100) default NULL COMMENT '标题',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_push
-- ----------------------------
INSERT INTO `message_push` VALUES ('43', null, '特维网讯新版官网于2014-12-12日上午8点正式上线，比老版本更上档次，更牛X', null, '2014-12-11 17:23:39', '特维网讯新版官网上线，在此感谢您长久以来对本公司的支持！谢谢！');
INSERT INTO `message_push` VALUES ('44', null, '北京特维网讯技术有限公司今日在深证上市，详情请访问 www.tvdns.cn ', null, '2014-12-11 17:30:45', '特维网讯技术有限公司上市通知');
INSERT INTO `message_push` VALUES ('45', null, 'sdasdasdasd', null, '2014-12-15 16:46:45', 'dsadasdasd');
INSERT INTO `message_push` VALUES ('46', null, '特维网讯技术有限公司上市了', null, '2015-03-09 15:57:04', '特维网讯上市了，感谢您的支持');

-- ----------------------------
-- Table structure for `services_category`
-- ----------------------------
DROP TABLE IF EXISTS `services_category`;
CREATE TABLE `services_category` (
  `id` int(11) NOT NULL auto_increment,
  `superior_id` int(11) default NULL COMMENT '上级项目ID',
  `type` int(11) default NULL COMMENT '服务项目类型',
  `code` varchar(30) default NULL COMMENT '代码项',
  `items_name` varchar(200) default NULL COMMENT '项目名称',
  `en_items_name` varchar(200) default NULL COMMENT '英文项目名称',
  `description` varchar(200) default NULL COMMENT '描述',
  `en_description` varchar(200) default NULL COMMENT '英文描述',
  `unit` varchar(20) default NULL COMMENT '单位',
  `reference_value` varchar(200) default NULL COMMENT '参数值',
  `price` varchar(20) default NULL COMMENT '单价',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='服务项目类别表';

-- ----------------------------
-- Records of services_category
-- ----------------------------
INSERT INTO `services_category` VALUES ('1', null, null, '01', '服务项目根目录', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `services_category` VALUES ('2', '1', '2', '0101', '而访问方式', '阿斯顿', '撒旦', '阿斯顿', '', '', 'asd', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `shop_brand`
-- ----------------------------
DROP TABLE IF EXISTS `shop_brand`;
CREATE TABLE `shop_brand` (
  `braID` int(11) NOT NULL auto_increment COMMENT '主键id',
  `name` varchar(50) default '' COMMENT '品牌名称',
  `website` varchar(200) default '' COMMENT '网络地址',
  `description` text COMMENT '描述',
  `logo` varchar(300) default NULL COMMENT 'logo地址',
  `sorting` int(11) default '0' COMMENT '排序 (从大到小排序)',
  `isShow` tinyint(4) default '0' COMMENT '是否显示0不显示',
  `addDate` varchar(30) default '' COMMENT '添加时间',
  PRIMARY KEY  (`braID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='品牌';

-- ----------------------------
-- Records of shop_brand
-- ----------------------------
INSERT INTO `shop_brand` VALUES ('1', '222', '22', 'sdf', 'ww.dd.ss.s', '22', '0', '2014-12-25');
INSERT INTO `shop_brand` VALUES ('3', 'addinick', 'www', 'sfds', 'www1', '50', '1', '20141230150759');
INSERT INTO `shop_brand` VALUES ('4', 'addinick2', 'www', 'sdfsd', 'www1', '50', '1', '20141230150838');
INSERT INTO `shop_brand` VALUES ('7', '3543', '4444', '56', '565', '656', '1', '20141230174121');
INSERT INTO `shop_brand` VALUES ('8', '发到个人', '4444', '对方高发的', 'www', '123', '1', '20150106155430');
INSERT INTO `shop_brand` VALUES ('9', '作者', null, null, null, '0', '0', '20150109191644');
INSERT INTO `shop_brand` VALUES ('10', '服装', 'www', '', 'www', '12', '1', '20150127120503');
INSERT INTO `shop_brand` VALUES ('11', '书', '4444', '', '565', '50', '1', '20150127120513');
INSERT INTO `shop_brand` VALUES ('12', 'addinick', 'www1222', '', 'www122', '50', '1', '20150127120520');
INSERT INTO `shop_brand` VALUES ('13', '萨芬', '4444', '', 'www122', '22', '1', '20150127120527');
INSERT INTO `shop_brand` VALUES ('14', 'addinick2', 'www1', '', 'www122', '123', '1', '20150127120539');
INSERT INTO `shop_brand` VALUES ('15', '1', '4444', '', 'www122', '50', '1', '20150127120547');
INSERT INTO `shop_brand` VALUES ('16', '1', '4444', '', 'www122', '32', '1', '20150127120555');
INSERT INTO `shop_brand` VALUES ('17', 'addinick233', 'www1', '', 'www', '50', '1', '20150127120602');
INSERT INTO `shop_brand` VALUES ('18', '1', 'www1222', '', 'www122', '44', '1', '20150127120616');
INSERT INTO `shop_brand` VALUES ('19', '1', '4444', '', 'www122', '44', '1', '20150127120624');
INSERT INTO `shop_brand` VALUES ('20', '1', '4444', '', 'www122', '44', '1', '20150127120628');
INSERT INTO `shop_brand` VALUES ('21', '1', '4444', '', 'www122', '44', '1', '20150127120631');
INSERT INTO `shop_brand` VALUES ('22', '1', '4444', '', 'www122', '44', '1', '20150127120634');
INSERT INTO `shop_brand` VALUES ('23', '1', '4444', '', 'www122', '44', '1', '20150127120637');
INSERT INTO `shop_brand` VALUES ('24', '1', '4444', '', 'www122', '44', '1', '20150127120644');
INSERT INTO `shop_brand` VALUES ('25', '1', '4444', '', 'www122', '44', '1', '20150127120651');
INSERT INTO `shop_brand` VALUES ('26', '1', '4444', '', 'www122', '44', '1', '20150127120653');

-- ----------------------------
-- Table structure for `shop_modelstyle`
-- ----------------------------
DROP TABLE IF EXISTS `shop_modelstyle`;
CREATE TABLE `shop_modelstyle` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `pmdID` int(11) default '0' COMMENT '商品类型ID',
  `name` varchar(50) default '' COMMENT '名称',
  `msMethods` tinyint(4) default '0' COMMENT '写入方式',
  `msValue` varchar(500) default NULL COMMENT '可选值 目前先用text',
  `addDate` varchar(30) default '' COMMENT '修改时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='类型属性';

-- ----------------------------
-- Records of shop_modelstyle
-- ----------------------------
INSERT INTO `shop_modelstyle` VALUES ('1', '1', '作者', '1', '博哥&4&41', null);
INSERT INTO `shop_modelstyle` VALUES ('2', '1', '出版日期', '0', '2015-1-1', '');
INSERT INTO `shop_modelstyle` VALUES ('3', '1', 'test', '0', 'ssss', null);
INSERT INTO `shop_modelstyle` VALUES ('4', '1', 'test23', '1', 'ssss', null);
INSERT INTO `shop_modelstyle` VALUES ('5', '3', '311', '1', '博', '');
INSERT INTO `shop_modelstyle` VALUES ('6', '3', '322', '1', '固定', '');
INSERT INTO `shop_modelstyle` VALUES ('7', '4', '411', '1', '的功夫', '');
INSERT INTO `shop_modelstyle` VALUES ('8', '4', '422', '1', '地方', '');
INSERT INTO `shop_modelstyle` VALUES ('9', '5', '511', '0', '324', '');
INSERT INTO `shop_modelstyle` VALUES ('10', '5', '522', '1', '22豆腐丝', '');

-- ----------------------------
-- Table structure for `shop_order`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `ordID` int(11) NOT NULL auto_increment COMMENT 'ID',
  `orderSerial` varchar(30) default NULL COMMENT '订单编号',
  `orderType` int(11) default NULL COMMENT '订单类型',
  `orderFrom` int(11) default NULL COMMENT '订单来源',
  `createDate` varchar(30) default NULL COMMENT '创建时间',
  `createType` int(11) default NULL COMMENT '创建方式',
  `creater` int(11) default NULL COMMENT '创建人',
  `buyer` int(11) default NULL COMMENT '购买人',
  `buyIP` char(15) default NULL COMMENT '购买时IP',
  `parentID` int(11) default NULL COMMENT '父订单ID',
  `parentSerial` varchar(30) default NULL COMMENT '父订单编号',
  `orderStyle` int(11) default NULL COMMENT '订单状态',
  `returnID` int(11) default NULL COMMENT '退货订单ID',
  `orderPriceID` int(11) default NULL COMMENT '订单价格',
  `accepter` int(11) default NULL COMMENT '收货人信息',
  `invoice` int(11) default NULL COMMENT '发票信息',
  `odID` int(11) default NULL COMMENT '配送信息',
  `payID` int(11) default NULL COMMENT '支付信息',
  PRIMARY KEY  (`ordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderaccepter`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderaccepter`;
CREATE TABLE `shop_orderaccepter` (
  `oaID` int(11) NOT NULL auto_increment COMMENT '主键',
  `ordID` int(11) default '0',
  `name` varchar(10) default '' COMMENT '姓名',
  `address4` varchar(100) default '' COMMENT '街道地址',
  `address2` varchar(10) default '' COMMENT '2级地址',
  `address3` varchar(10) default '' COMMENT '3级地址',
  `address1` varchar(10) default '' COMMENT '1级地址',
  `phone` varchar(11) default '' COMMENT '移动电话',
  `telephone` varchar(15) default '' COMMENT '固定电话',
  `postMark` char(6) default '' COMMENT '邮编',
  `email` varchar(20) default '' COMMENT '电子邮件',
  PRIMARY KEY  (`oaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderaccepter
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_ordercomment`
-- ----------------------------
DROP TABLE IF EXISTS `shop_ordercomment`;
CREATE TABLE `shop_ordercomment` (
  `ocID` int(11) NOT NULL auto_increment COMMENT '主键',
  PRIMARY KEY  (`ocID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_ordercomment
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderdistribution`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderdistribution`;
CREATE TABLE `shop_orderdistribution` (
  `odID` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `code` int(11) default '0' COMMENT '状态码',
  `name` varchar(20) default '' COMMENT '名称',
  PRIMARY KEY  (`odID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderdistribution
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderinvoice`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderinvoice`;
CREATE TABLE `shop_orderinvoice` (
  `oiID` int(11) NOT NULL auto_increment COMMENT '主键',
  `ordID` int(11) default '0' COMMENT '订单ID',
  `invTitle` varchar(40) default '' COMMENT '发票抬头',
  `invContent` varchar(40) default '' COMMENT '发票内容',
  `invType` int(11) default '0' COMMENT '发票类型',
  `invOwner` varchar(10) default '' COMMENT '发票开具人',
  `invRemark` varchar(100) default '' COMMENT '发票备注',
  PRIMARY KEY  (`oiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderinvoice
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_ordermodify`
-- ----------------------------
DROP TABLE IF EXISTS `shop_ordermodify`;
CREATE TABLE `shop_ordermodify` (
  `omID` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `ordID` int(11) default '0' COMMENT '订单ID',
  `modifier` int(11) default '0' COMMENT '修改人',
  `modifyDate` varchar(30) default '' COMMENT '修改时间',
  `oldStyle` int(11) default '0' COMMENT '原始订单状态',
  `newStyle` int(11) default '0' COMMENT '修改后的状态',
  `isSplit` tinyint(4) default '0' COMMENT '拆分订单',
  `oldPrice` decimal(10,0) default '0' COMMENT '原始订单价格',
  `newPrice` decimal(10,0) default '0' COMMENT '修改后的价格',
  `ip` char(15) default '' COMMENT '修改时IP',
  PRIMARY KEY  (`omID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_ordermodify
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderpayinfo`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderpayinfo`;
CREATE TABLE `shop_orderpayinfo` (
  `opiID` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `ordID` int(11) default '0' COMMENT '订单ID',
  `payType` int(11) default '0' COMMENT '支付方式',
  PRIMARY KEY  (`opiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderpayinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderprice`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderprice`;
CREATE TABLE `shop_orderprice` (
  `opID` int(11) NOT NULL auto_increment COMMENT '主键',
  `ordID` int(11) default '0' COMMENT '订单id',
  `proPrice` decimal(10,0) default '0' COMMENT '商品总价',
  `freight` decimal(10,0) default '0' COMMENT '运费',
  `couponID` varchar(30) default '' COMMENT '优惠券',
  `ordPrice` decimal(10,0) default '0' COMMENT '成交价格',
  `type` int(11) default '0' COMMENT '价格类型',
  `promotionID` int(11) default '0' COMMENT '促销ID',
  PRIMARY KEY  (`opID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderprice
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderproduct`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderproduct`;
CREATE TABLE `shop_orderproduct` (
  `opID` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `ordID` int(11) default '0' COMMENT '订单ID',
  `title` varchar(100) NOT NULL default '' COMMENT '标题',
  `subtitle` varchar(100) default '' COMMENT '副标题',
  `weight` double default '0' COMMENT '重量',
  `description` text COMMENT '描述',
  `picture` varchar(200) default '' COMMENT '图片地址 暂时用一个',
  `pcsID` int(11) default '0' COMMENT '商品分类',
  `titlePicture` varchar(100) default '' COMMENT '标题图片',
  PRIMARY KEY  (`opID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderproduct
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderproductatt`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderproductatt`;
CREATE TABLE `shop_orderproductatt` (
  `opaID` int(11) NOT NULL auto_increment COMMENT '主键',
  `opID` int(11) default '0' COMMENT '商品ID',
  `size` varchar(10) default '' COMMENT '尺寸',
  `color` varchar(10) default '' COMMENT '颜色',
  `number` int(11) default '0' COMMENT '数量',
  `name` varchar(30) default '' COMMENT '名字',
  `type` int(11) default '0' COMMENT '类型',
  PRIMARY KEY  (`opaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderproductatt
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderstatusinfo`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderstatusinfo`;
CREATE TABLE `shop_orderstatusinfo` (
  `osiID` int(11) NOT NULL auto_increment COMMENT '主键',
  `name` varchar(20) default '' COMMENT '名称',
  `description` varchar(50) default '' COMMENT '描述',
  `code` int(11) default '0' COMMENT '状态码',
  PRIMARY KEY  (`osiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orderstatusinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_proattscreen`
-- ----------------------------
DROP TABLE IF EXISTS `shop_proattscreen`;
CREATE TABLE `shop_proattscreen` (
  `pacID` int(11) NOT NULL auto_increment COMMENT '主键',
  `pcsID` int(11) default NULL COMMENT '商品分类ID',
  `pmdID` int(11) default NULL COMMENT '商品类型ID productModel',
  `msID` int(11) default NULL COMMENT '商品属性shop_modelstyle',
  PRIMARY KEY  (`pacID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_proattscreen
-- ----------------------------
INSERT INTO `shop_proattscreen` VALUES ('1', '22', '1', '1');
INSERT INTO `shop_proattscreen` VALUES ('2', '23', '3', '6');
INSERT INTO `shop_proattscreen` VALUES ('3', '23', '4', '7');
INSERT INTO `shop_proattscreen` VALUES ('4', '23', '1', '1');
INSERT INTO `shop_proattscreen` VALUES ('5', '24', '4', '7');
INSERT INTO `shop_proattscreen` VALUES ('6', '25', '4', '7');
INSERT INTO `shop_proattscreen` VALUES ('7', '25', '5', '10');
INSERT INTO `shop_proattscreen` VALUES ('8', '25', '3', '5');
INSERT INTO `shop_proattscreen` VALUES ('9', '25', '1', '1');
INSERT INTO `shop_proattscreen` VALUES ('10', '26', '4', '7');
INSERT INTO `shop_proattscreen` VALUES ('11', '26', '5', '10');
INSERT INTO `shop_proattscreen` VALUES ('12', '26', '3', '5');
INSERT INTO `shop_proattscreen` VALUES ('13', '26', '1', '1');
INSERT INTO `shop_proattscreen` VALUES ('14', '27', '5', '9');
INSERT INTO `shop_proattscreen` VALUES ('15', '28', '5', '10');
INSERT INTO `shop_proattscreen` VALUES ('16', '29', '4', '8');

-- ----------------------------
-- Table structure for `shop_product`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `proID` int(11) NOT NULL auto_increment COMMENT '主键',
  `title` varchar(100) NOT NULL default '' COMMENT '标题',
  `subtitle` varchar(100) default '' COMMENT '副标题',
  `integral` int(11) default '0' COMMENT '积分',
  `tags` varchar(100) default '' COMMENT '标签',
  `stock` int(11) default '0' COMMENT '库存',
  `weight` double default '0' COMMENT '重量',
  `description` text COMMENT '描述',
  `addDate` varchar(30) default '' COMMENT '添加时间',
  `proSerial` varchar(100) default '' COMMENT '商品编号',
  `saleDate` varchar(30) default '' COMMENT '最近上架日期',
  `unsaleDate` varchar(30) default '' COMMENT '最近下架日期',
  `editDate` varchar(30) default NULL COMMENT '最后一次修改时间',
  `price` decimal(10,0) default '0' COMMENT '价格',
  `picture` varchar(200) default '' COMMENT '图片地址 暂时用一个',
  `braID` int(11) default '0' COMMENT '品牌ID',
  `pcsID` int(11) default '0' COMMENT '商品分类',
  `pmdID` int(11) default NULL COMMENT '商品类型',
  `groupID` int(11) default NULL COMMENT '商品组合',
  `priceID` int(11) default NULL COMMENT '价格实体',
  `uid` int(11) default NULL COMMENT '创建人',
  `ip` varchar(15) default NULL COMMENT 'IP地址',
  `freeProduct` varchar(100) default NULL COMMENT '赠品(用,号分割)',
  `titlePicture` varchar(100) default NULL COMMENT '标题图片',
  `attributeID` int(11) default '0' COMMENT '商品自带属性ID',
  `stockID` int(11) default '0' COMMENT '商品库存ID',
  PRIMARY KEY  (`proID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('1', '123', '123', '111', '222', '0', '0', 'fdfddd', '2014-12-26 12:00:00', '234', '1', '1', null, '0', '', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `shop_product` VALUES ('2', '4444', '123345', '0', '', '0', '0', '1', '2014-12-24 12:00:00', '1', '1', '1', '1', '0', '', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `shop_product` VALUES ('3', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('4', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('5', '222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('6', '222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('7', '222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('8', 'jd', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('9', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('10', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('11', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('12', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('13', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('14', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('15', '22222', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('16', '15', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '17', '20', '1', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('17', '25', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '1', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('18', '25', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '1', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('19', '25', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '1', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('20', '撒旦撒旦', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '3', '11', '1', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('21', '5656', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('22', '5656', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('23', '5656', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('24', '雍和宫', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('25', '雍和宫', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('26', 'qqq', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '4', '20', '3', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('27', '1234', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('28', 'hjk', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('29', '123', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('30', '123', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('31', '', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('32', 'xiaozhi', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('33', '', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('34', '秋装', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '10', '11', '3', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('35', '请问请问', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('36', '123', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('37', '321', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('38', '123123', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('39', '123', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('40', 'sd', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('41', '333', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('42', '44', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('43', 'u', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('44', 'iu', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');
INSERT INTO `shop_product` VALUES ('45', '8', null, '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', '11', '5', '0', '0', null, null, null, null, '0', '0');

-- ----------------------------
-- Table structure for `shop_productattribute`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productattribute`;
CREATE TABLE `shop_productattribute` (
  `paID` int(11) NOT NULL auto_increment COMMENT '主键',
  `proID` int(11) default '0' COMMENT '商品ID',
  `attKey` varchar(20) default '' COMMENT 'key值',
  `attValue` varchar(150) default '' COMMENT 'value值',
  `attType` int(11) default '0' COMMENT '类型',
  `addDate` varchar(30) default '' COMMENT '添加时间',
  PRIMARY KEY  (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productattribute
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_productclassify`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productclassify`;
CREATE TABLE `shop_productclassify` (
  `pcsID` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `parentID` int(11) default '0' COMMENT '父ID',
  `level` int(11) default '0' COMMENT '等级,从0开始排列(0为父级可以有多个)',
  `name` varchar(50) default '' COMMENT '名称',
  `isShow` tinyint(4) default '0' COMMENT '是否显示 0不显示',
  `isNavigation` tinyint(4) default '0' COMMENT '是否导航栏显示 0不显示',
  `keyword` varchar(50) default '' COMMENT '关键字',
  `description` varchar(100) default '' COMMENT '描述',
  `recommend` tinyint(4) default '0' COMMENT '是否推荐',
  `sorting` int(11) default '0' COMMENT '排序',
  `addDate` varchar(30) default '' COMMENT '添加时间',
  `sortname` varchar(50) default '',
  PRIMARY KEY  (`pcsID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of shop_productclassify
-- ----------------------------
INSERT INTO `shop_productclassify` VALUES ('11', '0', '0', '最顶级', '0', '0', '', '', '0', '0', '', '');
INSERT INTO `shop_productclassify` VALUES ('17', '11', '0', '服装', '1', '1', '啦啦啦', '撒', '0', '12', '20150106155956', '');
INSERT INTO `shop_productclassify` VALUES ('18', '17', '0', '上衣', '1', '1', '地方', '辅导费', '0', '123', '20150106160012', '');
INSERT INTO `shop_productclassify` VALUES ('19', '18', '0', '夹克', '1', '1', '白', '的房东', '0', '32', '20150106160033', '');
INSERT INTO `shop_productclassify` VALUES ('20', '18', '0', '羽绒服', '1', '1', '白色', '风格', '0', '51', '20150106160049', '');
INSERT INTO `shop_productclassify` VALUES ('22', '11', '0', 'select', '1', '1', '大法官', '第三方', '0', '44', '20150115114717', '');
INSERT INTO `shop_productclassify` VALUES ('23', '11', '0', 'test筛选', '1', '1', '芬狄诗', '啥的', '0', '21', '20150115201134', '');
INSERT INTO `shop_productclassify` VALUES ('24', '11', '0', '第一测试', '1', '1', '啦啦啦', '芬狄诗', '0', '12', '20150115201415', '');
INSERT INTO `shop_productclassify` VALUES ('25', '11', '0', '第一测试', '1', '1', '啦啦啦', '芬狄诗', '0', '12', '20150115201437', '');
INSERT INTO `shop_productclassify` VALUES ('26', '11', '0', '第一测试', '1', '1', '啦啦啦', '芬狄诗', '0', '12', '20150115201517', '');
INSERT INTO `shop_productclassify` VALUES ('28', '18', '0', '111', '1', '1', '111', '111', '0', '111', '20150324143248', '');
INSERT INTO `shop_productclassify` VALUES ('29', '11', '0', 'qe', '1', '0', 'q', 'q', '0', '1', '20150324175509', '');

-- ----------------------------
-- Table structure for `shop_productgroup`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productgroup`;
CREATE TABLE `shop_productgroup` (
  `pgID` int(11) NOT NULL auto_increment COMMENT '主键',
  `proID` varchar(100) default '0' COMMENT '商品ID集合(用,分割)',
  `oldPrice` decimal(10,0) default '0' COMMENT '原始总价',
  `payPrice` decimal(10,0) default '0' COMMENT '支付总价',
  `createDate` varchar(30) default '' COMMENT '创建时间',
  `endDate` varchar(30) default '' COMMENT '到期时间',
  `isDelete` tinyint(4) default '0' COMMENT '是否删除',
  `uid` int(11) default '0' COMMENT '创建人',
  `ip` varchar(15) default '' COMMENT 'IP地址',
  `description` text COMMENT '描述',
  `freeProduct` varchar(100) default '' COMMENT '赠品(用,号分割)',
  PRIMARY KEY  (`pgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productgroup
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_productmodel`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productmodel`;
CREATE TABLE `shop_productmodel` (
  `pmdID` int(11) NOT NULL auto_increment COMMENT '主键id',
  `name` varchar(50) default '' COMMENT '名称',
  `styleCount` int(11) default '0' COMMENT '总属性',
  `addDate` varchar(30) default '',
  PRIMARY KEY  (`pmdID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品类型';

-- ----------------------------
-- Records of shop_productmodel
-- ----------------------------
INSERT INTO `shop_productmodel` VALUES ('1', '书', '2', '');
INSERT INTO `shop_productmodel` VALUES ('3', '服装', '0', '20150107170657');
INSERT INTO `shop_productmodel` VALUES ('4', '萨芬', '0', '20150107171145');
INSERT INTO `shop_productmodel` VALUES ('5', '饮料', '0', '20150107171607');

-- ----------------------------
-- Table structure for `shop_productprice`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productprice`;
CREATE TABLE `shop_productprice` (
  `ppID` int(11) NOT NULL auto_increment COMMENT '主键',
  `proID` int(11) default '0' COMMENT '商品ID',
  `type` int(11) default '0' COMMENT '类型',
  `price` decimal(10,2) default '0.00' COMMENT '价格价',
  `kickback` decimal(10,2) default '0.00' COMMENT '折扣',
  `begindate` varchar(30) default '' COMMENT '开始时间',
  `enddate` varchar(30) default '' COMMENT '结束时间',
  `specialPrice` decimal(10,0) default '0' COMMENT '特价',
  `countDown` int(11) default '0' COMMENT '倒计时',
  `isCountDown` tinyint(4) default '0' COMMENT '是否循环倒计时',
  `isTrue` tinyint(4) default '0' COMMENT '是否执行',
  `vipPrice` decimal(10,2) default '0.00' COMMENT '会员价',
  `integralPrice` int(11) default '0' COMMENT '积分价格(可以使用的积分)纯积分商品把积分写比价格大即可',
  PRIMARY KEY  (`ppID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品价格';

-- ----------------------------
-- Records of shop_productprice
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_productstock`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productstock`;
CREATE TABLE `shop_productstock` (
  `psID` int(11) NOT NULL auto_increment,
  `proID` int(11) default '0' COMMENT '商品ID',
  `size` varchar(10) default '' COMMENT '尺寸',
  `color` varchar(10) default '' COMMENT '颜色',
  `number` int(11) default '0' COMMENT '数量',
  `name` varchar(30) default '' COMMENT '名称',
  `type` int(11) default '0' COMMENT '类型',
  PRIMARY KEY  (`psID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productstock
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_shopcaratt`
-- ----------------------------
DROP TABLE IF EXISTS `shop_shopcaratt`;
CREATE TABLE `shop_shopcaratt` (
  `spaID` int(11) NOT NULL auto_increment COMMENT '主键',
  `scID` int(11) default NULL COMMENT '购物车ID',
  `size` varchar(10) default NULL COMMENT '尺寸',
  `color` varchar(10) default NULL COMMENT '颜色',
  `number` int(11) default NULL COMMENT '数量',
  `name` varchar(30) default NULL COMMENT '名字',
  `type` int(11) default NULL COMMENT '类型',
  `addDate` varchar(30) default NULL COMMENT '添加时间',
  PRIMARY KEY  (`spaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_shopcaratt
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `shop_shopcart`;
CREATE TABLE `shop_shopcart` (
  `scID` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `userID` int(11) default '0' COMMENT '用户ID',
  `proID` int(11) default '0' COMMENT '商品ID',
  `size` varchar(10) default '' COMMENT '尺寸',
  `color` varchar(10) default '' COMMENT '颜色',
  `number` int(11) default '0' COMMENT '数量',
  `name` varchar(30) default '' COMMENT '名字',
  `type` int(11) default '0' COMMENT '类型',
  `addDate` varchar(30) default '' COMMENT '添加时间',
  PRIMARY KEY  (`scID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_shopcart
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_useraddress`
-- ----------------------------
DROP TABLE IF EXISTS `shop_useraddress`;
CREATE TABLE `shop_useraddress` (
  `uaID` int(11) NOT NULL auto_increment COMMENT '主键',
  `userID` int(11) default '0' COMMENT '用户ID',
  `name` varchar(10) default '' COMMENT '姓名',
  `address4` varchar(100) default '' COMMENT '街道地址',
  `address2` varchar(10) default '' COMMENT '二级地址',
  `address3` varchar(10) default '' COMMENT '三级地址',
  `address1` varchar(10) default '' COMMENT '一级地址',
  `phone` varchar(11) default '' COMMENT '移动电话',
  `telephone` varchar(15) default '' COMMENT '固定电话',
  `postMark` char(6) default '' COMMENT '邮编',
  `email` varchar(20) default '' COMMENT '电子邮件',
  `addDate` varchar(30) default '' COMMENT '添加时间',
  PRIMARY KEY  (`uaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_useraddress
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_userfavorite`
-- ----------------------------
DROP TABLE IF EXISTS `shop_userfavorite`;
CREATE TABLE `shop_userfavorite` (
  `ufID` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `userID` int(11) default '0' COMMENT '用户ID',
  `proID` int(11) default '0' COMMENT '商品ID',
  `title` varchar(100) NOT NULL default '' COMMENT '标题',
  `titlePicture` varchar(100) default '' COMMENT '标题图片',
  `addDate` varchar(30) default '' COMMENT '添加时间',
  PRIMARY KEY  (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userfavorite
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_userinvoice`
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinvoice`;
CREATE TABLE `shop_userinvoice` (
  `oiID` int(11) NOT NULL auto_increment COMMENT '主键',
  `userID` int(11) default NULL COMMENT '用户ID',
  `invTitle` varchar(40) default NULL COMMENT '发票抬头',
  `invContent` varchar(40) default NULL COMMENT '发票内容',
  `invType` int(11) default NULL COMMENT '发票类型',
  `invOwner` varchar(10) default NULL COMMENT '发票开具人',
  `invRemark` varchar(100) default NULL COMMENT '发票备注',
  `addDate` varchar(30) default NULL COMMENT '添加时间',
  PRIMARY KEY  (`oiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userinvoice
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_advert`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_advert`;
CREATE TABLE `tvcms_advert` (
  `id` int(11) NOT NULL auto_increment,
  `type` int(11) default NULL,
  `ad_name` varchar(50) default NULL COMMENT '广告名称',
  `alt_name` varchar(50) default NULL COMMENT '提示文字',
  `pv_count` int(11) default NULL COMMENT '浏览次数',
  `uv_count` int(11) default NULL COMMENT 'Ip浏览次数',
  `image_name` varchar(50) default NULL,
  `image_url` varchar(50) default NULL COMMENT '图片路径',
  `notes` varchar(100) default NULL COMMENT '注释',
  `link_address` varchar(100) default NULL COMMENT '链接地址',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
-- Records of tvcms_advert
-- ----------------------------
INSERT INTO `tvcms_advert` VALUES ('41', '2', 'sdsadsad', 'sdasdas', null, null, 'QQ图片20141022161050.png', 'advert/20141105164609.png', 'sdasd', 'dsadasd', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_authorization`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_authorization`;
CREATE TABLE `tvcms_authorization` (
  `id` int(11) NOT NULL auto_increment,
  `domain_name` varchar(100) default NULL COMMENT '域名',
  `code` varchar(100) default NULL COMMENT '授权码',
  `user_id` int(11) default NULL COMMENT '授权人',
  `status` varchar(30) default NULL COMMENT '授权状态',
  `end_time` varchar(200) default NULL COMMENT '授权结束日期',
  `start_time` datetime default NULL COMMENT '授权开始日期',
  `type` varchar(30) default NULL COMMENT '授权类型',
  `is_check` varchar(10) default NULL COMMENT '客户端时是否验证',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_authorization
-- ----------------------------
INSERT INTO `tvcms_authorization` VALUES ('3', 'localhost:8080/tvcms', 'TVDNSCMSYFIEGR4R0JKSM7VI', null, '试用期', 'GZZAHFFZH', '2015-03-11 00:00:00', '内容管理系统', '1');

-- ----------------------------
-- Table structure for `tvcms_author_name`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_author_name`;
CREATE TABLE `tvcms_author_name` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) default '' COMMENT '作者姓名',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_author_name
-- ----------------------------
INSERT INTO `tvcms_author_name` VALUES ('1', '张三');
INSERT INTO `tvcms_author_name` VALUES ('2', '张四');
INSERT INTO `tvcms_author_name` VALUES ('3', '王五');
INSERT INTO `tvcms_author_name` VALUES ('4', '赵六');
INSERT INTO `tvcms_author_name` VALUES ('5', '111');
INSERT INTO `tvcms_author_name` VALUES ('6', 'ååå');

-- ----------------------------
-- Table structure for `tvcms_column`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_column`;
CREATE TABLE `tvcms_column` (
  `id` int(11) NOT NULL auto_increment COMMENT '栏目ID',
  `column_name` varchar(20) default NULL COMMENT '栏目名称',
  `bclassid` int(11) default NULL COMMENT '上级栏目ID',
  `parent` varchar(20) default NULL COMMENT '上级目录',
  `column_type` varchar(5) default NULL COMMENT '栏目类型，1=内部栏目，2=外部栏目',
  `column_url` varchar(200) default NULL COMMENT '外部栏目URL',
  `file_save` varchar(50) default NULL COMMENT '文件保存目录',
  `thumbnail` varchar(50) default NULL COMMENT '存储缩略图路径和文件名',
  `sort` int(11) default NULL COMMENT '排序',
  `is_nav` varchar(5) default NULL COMMENT '是否显示到导航，1=显示到导航，2=不显示到导航',
  `access_rights` varchar(10) default NULL COMMENT '栏目访问权限',
  `title` varchar(200) default NULL COMMENT '栏目标题',
  `keywords` varchar(300) default NULL COMMENT '栏目关键词',
  `description` varchar(400) default NULL COMMENT '栏目描述',
  `template_style` varchar(20) default NULL COMMENT '模板风格',
  `index_style` varchar(20) default NULL COMMENT '栏目首页模板',
  `list_style` varchar(20) default NULL COMMENT '栏目列表页模板',
  `hidden` int(11) default NULL COMMENT '是否隐藏',
  `cont_style` varchar(20) default NULL COMMENT '栏目内容页模板',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='管理栏目';

-- ----------------------------
-- Records of tvcms_column
-- ----------------------------
INSERT INTO `tvcms_column` VALUES ('1', '根目录', null, '根目录', '1', null, '', '1', '1', '1', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('2', '平台介绍', '1', '根节点', '1', '', 'xinwen', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('3', '政策法规', '1', '根节点', '1', '', 'zcfg', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('4', '安全监察', '1', '根节点', '1', '', 'aqjc', '', null, null, '', '', '', '', '', '', '', null, '', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('5', '标准规范', '1', '根节点', '1', '', 'bzgf', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('6', '信息服务', '1', '根节点', '1', '', 'xxfw', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('7', '工作情况', '1', '根节点', '1', '', 'gzqk', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('8', '范本公式', '1', '根节点', '1', '', 'fbgs', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('9', '相关下载', '1', '根节点', '1', '', 'xgxz', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('12', '检测服务', '6', '信息服务', '', '', 'jcfw', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('13', '测评服务', '6', '信息服务', '1', '', 'cpfw', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('14', '认证服务', '6', '信息服务', '1', '', 'rzfw', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('15', '标准信息', '6', '信息服务', '1', '', 'bzxx', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('16', '政策法规', '3', '政策法规', '1', '', 'zcfg', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('17', '安全监察', '3', '政策法规', '1', '', 'aqjc1', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('18', '行业规范', '3', '政策法规', '1', '', 'hygf1', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('19', '知识产权', '3', '政策法规', '1', '', 'zscq1', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('20', '平台动态', '2', '平台介绍', '', '', 'ptnews', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('21', '工作情况', '2', '平台介绍', '1', '', 'gzqk', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('22', '首页轮播', '1', '根节点', '1', '', 'index', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('23', '首页顶部横向滚动', '1', '根节点', '1', '', 'indexX', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);
INSERT INTO `tvcms_column` VALUES ('24', '平台介绍', '2', '平台介绍', '1', '', 'jieshao', '', null, null, '', '', '', '', '', '8', '40', null, '95', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_comment`;
CREATE TABLE `tvcms_comment` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键id',
  `title` varchar(30) default NULL COMMENT '标题',
  `content` varchar(200) default NULL COMMENT '内容',
  `member_id` int(11) default NULL COMMENT '会员',
  `is_examine` int(11) default NULL COMMENT '是否通过审核',
  `review_time` datetime default NULL COMMENT '评论时间',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_comment_member` (`member_id`),
  CONSTRAINT `FK_Reference_comment_member` FOREIGN KEY (`member_id`) REFERENCES `tvcms_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_comment
-- ----------------------------
INSERT INTO `tvcms_comment` VALUES ('1', '评论测试', '评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试', null, '1', '2014-11-03 17:57:01', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_cont`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_cont`;
CREATE TABLE `tvcms_cont` (
  `id` int(11) NOT NULL auto_increment COMMENT '内容ID',
  `only_id` varchar(200) default NULL COMMENT '内容的唯一标识',
  `column_id` int(11) default NULL COMMENT '所属栏目ID',
  `title` varchar(200) default NULL COMMENT '标题',
  `is_b` int(11) default NULL COMMENT '1=粗体，默认为null',
  `is_i` int(11) default NULL COMMENT '是否斜体，1=斜体，空表示默认',
  `is_del` int(11) default NULL COMMENT '是否删除线',
  `title_color` varchar(10) default NULL COMMENT '标题颜色',
  `tuijian` int(11) default NULL COMMENT '推荐',
  `toutiao` int(11) default NULL COMMENT '头条',
  `keywords` varchar(300) default NULL COMMENT '关键词',
  `ext_url` varchar(50) default NULL COMMENT '外部链接',
  `release_time` datetime default NULL COMMENT '发布时间',
  `title_img` varchar(20) default NULL COMMENT '标题图片',
  `cont_abs` varchar(300) default NULL COMMENT '内容摘要',
  `author` varchar(40) default NULL COMMENT '作者',
  `info_source` varchar(40) default NULL COMMENT '信息来源',
  `new_content` mediumtext COMMENT '新闻正文',
  `top_rank` varchar(20) default NULL COMMENT '置顶级别',
  `top_rule` varchar(20) default NULL COMMENT '置顶规则',
  `top_start_date` datetime default NULL COMMENT '置顶开始日期',
  `top_end_date` datetime default NULL COMMENT '置顶结束日期',
  `quanxianset` varchar(20) default NULL COMMENT '权限设置',
  `look_point` varchar(10) default NULL COMMENT '查看扣除点数',
  `hits` int(11) default NULL COMMENT '点击数',
  `dow_num` int(11) default NULL COMMENT '下载数',
  `filename_path` varchar(100) default NULL COMMENT '文件保存路径',
  `tags` varchar(500) default NULL COMMENT 'tags',
  `up_time` datetime default NULL COMMENT '定时上线时间',
  `down_time` datetime default NULL COMMENT '定时下线时间',
  `comment_option` int(11) NOT NULL COMMENT '评论选项，1=开启，2=关闭',
  `pv_count` int(11) default NULL COMMENT 'pv访问',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  `uv_count` int(11) default NULL COMMENT 'uv访问',
  `cont_temp` int(11) default NULL COMMENT '内容模版',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `recommend` varchar(20) default NULL COMMENT '推荐数目',
  `no_recommend` varchar(20) default NULL COMMENT '不推荐数目',
  `is_model` int(1) default '0' COMMENT '切换模式',
  PRIMARY KEY  (`id`),
  KEY `fk_tvcms_cont_1` (`column_id`),
  KEY `fk_tvcms_cont_2` (`author`),
  KEY `fk_tvcms_cont_3` (`info_source`),
  CONSTRAINT `fk_tvcms_cont_1` FOREIGN KEY (`column_id`) REFERENCES `tvcms_column` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='内容管理表';

-- ----------------------------
-- Records of tvcms_cont
-- ----------------------------
INSERT INTO `tvcms_cont` VALUES ('1', '', '2', '插上的爱的阿萨德阿萨德阿萨德阿萨德阿萨德阿萨德', null, null, null, null, '1', '0', null, '', '2015-05-23 18:22:44', '', '奥的斯插上的爱的阿萨德阿萨德阿萨德阿萨德阿萨德阿萨德', '张三', '本站', '<p>阿萨德爱的阿萨德爱的</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', '18', null, '2015-05-11 18:22:54', null, null, null, null, '2', null, '0', '1', '2', '0');
INSERT INTO `tvcms_cont` VALUES ('2', '', '20', '我是测试文章', null, null, null, null, '1', '1', null, '', '2015-05-20 15:40:07', '20150512155915.jpg', '我是测试文章我是测试文章我是测试文章我是测试文章我是测试文章我是测试文章我是测试文章', '张三', '本站', '<p>我是测试文章我是测试文章我是测试文章我是测试文章我是测试文章我是测试文章</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-12 15:43:27', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('3', '', '20', '我是测试2', null, null, null, null, '0', '0', null, '', '2015-05-12 15:56:45', '20150512155947.jpg', '我是测试2我是测试2我是测试2', '', '本站', '<p>我是测试2我是测试2</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-12 15:59:47', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('4', '', '22', '轮播1', null, null, null, null, '1', '0', null, '', null, '20150512162317.jpg', '轮播1轮播1轮播1轮播1', '', '本站', '<p>轮播1轮播1轮播1轮播1</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-12 16:23:17', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('5', '', '22', '轮播2', null, null, null, null, '1', '0', null, '', '2015-06-17 16:21:51', '20150512162501.jpg', '轮播2轮播2轮播2轮播2', '', '本站', '<p>轮播2轮播2轮播2轮播2轮播2轮播2</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-12 16:24:52', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('6', '', '22', '轮播33', null, null, null, null, '1', '0', null, '', null, '20150512162523.jpg', '轮播333', '', '本站', '<p>轮播3333333</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', '1', null, '2015-05-12 16:25:23', null, null, null, null, '1', null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('7', '', '22', '轮播4', null, null, null, null, '1', '0', null, '', null, '20150512162536.jpg', '轮播4轮播4轮播4', '', '本站', '<p>轮播4轮播4轮播4轮播4</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-12 16:25:36', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('8', '', '22', '轮播555', null, null, null, null, '1', '0', null, '', null, '20150512162556.jpg', '轮播555轮播555轮播555轮播555', '', '本站', '<p>轮播555轮播555轮播555轮播555轮播555</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-12 16:25:56', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('9', '', '24', '平台介绍', null, null, null, null, '1', '0', null, '', null, '', '中国安全生产科学研究院（以下简称中国\r\n安科院）是国家安全生产监督管理总局直\r\n属的综合性和社会公益性科研事业单位，\r\n以实施科技兴安战略，推动安全生产科技\r\n进步和科技创新为宗旨', '', '本站', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 12px; list-style: none; font-family: 宋体; line-height: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">中国安全生产科学研究院（以下简称中国</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 12px; list-style: none; font-family: 宋体; line-height: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">安科院）是国家安全生产监督管理总局直</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 12px; list-style: none; font-family: 宋体; line-height: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">属的综合性和社会公益性科研事业单位，</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 12px; list-style: none; font-family: 宋体; line-height: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">以实施科技兴安战略，推动安全生产科技</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 12px; list-style: none; font-family: 宋体; line-height: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">进步和科技创新为宗旨</p><p><br/></p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-13 20:25:26', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('10', '', '20', 'fdgdfg', null, null, null, null, '0', '0', null, '', null, '', 'fdgdfg', '', '本站', '<p>fdgdfg</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-26 16:31:23', null, null, null, null, null, null, '0', 'fd', '', '0');
INSERT INTO `tvcms_cont` VALUES ('11', '', '5', '123', null, null, null, null, '0', '0', null, '', null, '', '123', '张三', '腾讯', '<p>123</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-27 11:39:47', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('12', '', '12', '456', null, null, null, null, '0', '0', null, '', null, '', '456', '', '本站', '<p>456</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-27 11:47:17', null, null, null, null, null, null, '0', '', '', '0');
INSERT INTO `tvcms_cont` VALUES ('13', '', '5', '321', null, null, null, null, '0', '0', null, '', null, '', '1231321', '张三', '本站', '<p>1231321</p>', '0', '1', null, null, null, '', null, null, null, '', null, null, '1', null, null, '2015-05-27 16:50:07', null, null, null, null, null, null, '0', '1', '', '0');

-- ----------------------------
-- Table structure for `tvcms_cont_comments`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_cont_comments`;
CREATE TABLE `tvcms_cont_comments` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL COMMENT '评论标题',
  `comment_time` datetime default NULL COMMENT '评论时间',
  `comment_content` varchar(500) default NULL COMMENT '评论内容',
  `ip` varchar(50) default NULL COMMENT '评论ip地址',
  `is_examine` varchar(10) default NULL COMMENT '是否通过审核',
  `reply_time` datetime default NULL COMMENT '回复时间',
  `reply_content` varchar(500) default NULL COMMENT '回复内容',
  `reply_userid` int(11) default NULL COMMENT '回复人',
  `cont_id` int(11) default NULL COMMENT '内容id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_cont_comments
-- ----------------------------
INSERT INTO `tvcms_cont_comments` VALUES ('3', '这个很好', '2015-01-06 20:38:44', '恩恩，不错，很棒', null, '1', '2015-01-15 20:38:50', '谢谢您的支持!', '1', '5');

-- ----------------------------
-- Table structure for `tvcms_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_dept`;
CREATE TABLE `tvcms_dept` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `parent_id` int(11) default NULL COMMENT '上级部门ID',
  `name` varchar(100) default NULL COMMENT '名称',
  `sort` int(11) default NULL COMMENT '排序',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门';

-- ----------------------------
-- Records of tvcms_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_img_set`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_img_set`;
CREATE TABLE `tvcms_img_set` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `default_high` int(11) default NULL COMMENT '默认值高',
  `default_wide` int(11) default NULL COMMENT '默认值宽',
  `watermark_flag` decimal(1,0) default NULL COMMENT '水印开关标记，1为开启，2为结束',
  `watermark_site` decimal(1,0) default NULL COMMENT '水印位置，1为左上，2为上，3为右上，4为左，5为右，6为左下，7为下，8为右下',
  `watermark` varchar(400) default NULL COMMENT '水印文字',
  `watermark_font` varchar(30) default NULL COMMENT '水印字体',
  `character_color` varchar(30) default NULL COMMENT '文字颜色',
  `size` int(11) default NULL COMMENT '文字大小',
  `pellucidity` int(11) default NULL COMMENT '水印透明度',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片设置';

-- ----------------------------
-- Records of tvcms_img_set
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_img_set_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_img_set_copy`;
CREATE TABLE `tvcms_img_set_copy` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `default_high` int(11) default NULL COMMENT '默认值高',
  `default_wide` int(11) default NULL COMMENT '默认值宽',
  `watermark_flag` decimal(1,0) default NULL COMMENT '水印开关标记，1为开启，2为结束',
  `watermark_site` decimal(1,0) default NULL COMMENT '水印位置，1为左上，2为上，3为右上，4为左，5为右，6为左下，7为下，8为右下',
  `watermark` varchar(400) default NULL COMMENT '水印文字',
  `watermark_font` varchar(30) default NULL COMMENT '水印字体',
  `character_color` varchar(30) default NULL COMMENT '文字颜色',
  `size` int(11) default NULL COMMENT '文字大小',
  `pellucidity` int(11) default NULL COMMENT '水印透明度',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片设置';

-- ----------------------------
-- Records of tvcms_img_set_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_mail`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_mail`;
CREATE TABLE `tvcms_mail` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `mail_subject` varchar(200) default NULL,
  `mail_post` int(11) default NULL COMMENT '邮件端口号',
  `mail_host` varchar(40) default NULL COMMENT '主机地址',
  `mail_pwd` varchar(40) default NULL COMMENT '邮箱密码',
  `mail_name` varchar(40) default NULL COMMENT '邮箱名称',
  `mail_text` varchar(4000) default NULL COMMENT '内容',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_mail
-- ----------------------------
INSERT INTO `tvcms_mail` VALUES ('1', '注册测试邮件', '25', 'smtp.163.com', 'lp1989', 'lianp888@163.com', '测试哈哈哈哈');

-- ----------------------------
-- Table structure for `tvcms_manage_classification`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_manage_classification`;
CREATE TABLE `tvcms_manage_classification` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `managesort` varchar(40) default NULL COMMENT '管理分类',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理分类';

-- ----------------------------
-- Records of tvcms_manage_classification
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_member`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_member`;
CREATE TABLE `tvcms_member` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `username` varchar(30) default NULL COMMENT '用户名',
  `password` varchar(50) default NULL COMMENT '密码',
  `age` int(10) default NULL COMMENT '年龄',
  `birth_date` date default NULL COMMENT '出生日期',
  `phone` varchar(20) default NULL COMMENT '联系电话',
  `address` varchar(50) default NULL COMMENT '地址',
  `true_name` varchar(50) default NULL COMMENT '真实姓名',
  `gender` decimal(1,0) default NULL COMMENT '性别',
  `email` varchar(30) default NULL COMMENT '邮箱',
  `group_id` int(11) default NULL COMMENT '会员组ID',
  `is_disabled` decimal(1,0) default NULL COMMENT '是否禁止登录',
  `login_times` int(11) default NULL COMMENT '登录次数',
  `last_login_time` datetime default NULL COMMENT '上次登录时间',
  `last_modpwd_time` datetime default NULL COMMENT '上次修改密码时间',
  `preview_pass` decimal(1,0) default NULL COMMENT '是否审核通过，0表示未通过，1表示通过',
  `register_time` datetime default NULL COMMENT '注册时间',
  `register_ip` varchar(15) default NULL COMMENT '注册IP',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `registration_method` int(11) default NULL COMMENT '注册方式',
  `is_activation` int(11) default NULL COMMENT '邮件激活',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`),
  KEY `fk_tvcms_member_1` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Records of tvcms_member
-- ----------------------------
INSERT INTO `tvcms_member` VALUES ('8', '173008335@qq.com', '202CB962AC59075B964B07152D234B70', null, null, null, '', '', null, null, null, null, null, null, null, null, '2014-11-16 19:33:24', null, null, null, null, null, null, null, '2', null, null);
INSERT INTO `tvcms_member` VALUES ('9', '228295289@qq.com', '57CB5A26334A6C1D5E27C49DEF4A0F0D', null, '2014-11-26', null, 'sdsadsad', 'sdsadsd', null, null, null, null, null, null, null, null, '2014-11-17 10:14:27', null, null, null, null, null, null, null, '2', null, null);
INSERT INTO `tvcms_member` VALUES ('11', '13106070@qq.com', '202CB962AC59075B964B07152D234B70', null, '2014-11-17', null, '朝阳区汤立路', '', null, null, null, null, null, null, null, null, '2014-11-17 14:15:31', null, null, null, null, null, null, null, '2', null, null);
INSERT INTO `tvcms_member` VALUES ('12', '13813813813', '202CB962AC59075B964B07152D234B70', null, null, null, '', '123', null, null, null, null, null, null, null, null, '2014-11-17 15:45:45', null, null, null, null, null, null, null, '3', null, null);
INSERT INTO `tvcms_member` VALUES ('13', '18600062729', '202CB962AC59075B964B07152D234B70', null, null, null, '', '', null, null, null, null, null, null, null, null, '2014-11-17 15:47:05', null, null, null, null, null, null, null, '3', null, null);
INSERT INTO `tvcms_member` VALUES ('15', 'xurannan@tvdns.cn', '202CB962AC59075B964B07152D234B70', null, null, null, '', '', null, null, null, null, null, null, null, null, '2014-11-17 16:08:23', null, null, null, null, null, null, null, '2', '1', null);
INSERT INTO `tvcms_member` VALUES ('18', '18513705559', 'E10ADC3949BA59ABBE56E057F20F883E', null, '2014-11-09', '124545642154', 'sdsadsad', '张三', null, '228295289@qq.com', null, null, null, null, null, null, '2014-11-20 19:26:42', null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `tvcms_member` VALUES ('19', '张三1sad', 'E10ADC3949BA59ABBE56E057F20F883E', '32', '2014-11-18', null, 'dsadda', 'sadsadsdad', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `tvcms_member` VALUES ('20', 'dsadas', 'E10ADC3949BA59ABBE56E057F20F883E', '12', '2014-11-25', null, '立水桥明天生活馆b座342室', 'sadsd', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `tvcms_member` VALUES ('21', '王闯', '7815696ECBF1C96E6894B779456D330E', '12', '2015-04-14', null, '1212', '1232', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);

-- ----------------------------
-- Table structure for `tvcms_member_field`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_member_field`;
CREATE TABLE `tvcms_member_field` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `field` varchar(30) default NULL COMMENT '字段名',
  `name` varchar(100) default NULL COMMENT '字段标识',
  `sort` int(11) default NULL COMMENT '排序',
  `data_type` decimal(2,0) default NULL COMMENT '字段类型',
  `length` int(11) default NULL COMMENT '字段长度',
  `decimal_digits` smallint(6) default NULL COMMENT '小数位数',
  `form_type` decimal(2,0) default NULL COMMENT '表单元素',
  `form_length` smallint(6) default NULL COMMENT '表单元素长度',
  `form_html` varchar(200) default NULL COMMENT '表单HTML代码',
  `default_value` varchar(100) default NULL COMMENT '默认值',
  `comment` varchar(100) default NULL COMMENT '注释',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员字段';

-- ----------------------------
-- Records of tvcms_member_field
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_member_group`;
CREATE TABLE `tvcms_member_group` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `name` varchar(100) default NULL COMMENT '名称',
  `type` decimal(1,0) default NULL COMMENT '会员组类型，0表示个人会员组，1表示企业会员组',
  `grade` decimal(2,0) default NULL COMMENT '会员组级别，级别值越高权限越大',
  `max_favorites_num` smallint(6) default NULL COMMENT '最大收藏夹数',
  `max_download_num` smallint(6) default NULL COMMENT '每天最大下载数',
  `max_post_num` smallint(6) default NULL COMMENT '每天最大投稿数',
  `preview_post` decimal(1,0) default NULL COMMENT '投稿信息是否审核，0表示需要审核，1表示不需要审核',
  `preview_comment` decimal(1,0) default NULL COMMENT '评论是否审核，0表示需要审核，1表示不需要审核',
  `max_sms_num` smallint(6) default NULL COMMENT '最大短消息数',
  `sms_max_length` smallint(6) default NULL COMMENT '短消息最大字数',
  `can_register` decimal(1,0) default NULL COMMENT '前台可注册，0表示不可注册，1表示可注册',
  `preview_register` decimal(1,0) default NULL COMMENT '注册需要审核，0表示不需要审核，1表示需要审核',
  `sort` int(11) default NULL COMMENT '排序',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员组';

-- ----------------------------
-- Records of tvcms_member_group
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_message_board`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_message_board`;
CREATE TABLE `tvcms_message_board` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL COMMENT '名称',
  `services_name` varchar(30) default NULL COMMENT '服务项目ID',
  `contact` varchar(20) default NULL COMMENT '联系方式',
  `written_ip` varchar(40) default NULL COMMENT '留言IP',
  `written_time` datetime default NULL COMMENT '留言时间',
  `is_examine` int(11) default NULL COMMENT '是否通过审核',
  `reply_content` varchar(500) default NULL COMMENT '回复信息',
  `message` varchar(500) default NULL COMMENT '信息',
  `sms_send_record_id` char(10) default NULL COMMENT '短信发送记录ID',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  `send_record_id` varchar(500) default NULL COMMENT '短信发送记录',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of tvcms_message_board
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_send_sms_record`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_send_sms_record`;
CREATE TABLE `tvcms_send_sms_record` (
  `id` varchar(50) NOT NULL,
  `txt` varchar(1000) default NULL COMMENT '短信内容',
  `type` varchar(20) default NULL COMMENT '类型,1=预约发送，2=留言发送，3=后台发送，4=其他发送',
  `phone` varchar(200) default NULL COMMENT '手机号码',
  `state` varchar(50) default NULL COMMENT '状态',
  `send_time` datetime default NULL COMMENT '发送时间',
  `sp_code` varchar(50) default NULL COMMENT '流水号',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送记录';

-- ----------------------------
-- Records of tvcms_send_sms_record
-- ----------------------------
INSERT INTO `tvcms_send_sms_record` VALUES ('003b87a0655c4baab22cfd48db92a061', '您的注册验证码为674311,请勿泄露!', '4', '13032911555', '1', '2015-03-08 12:12:44', '20150308121244', null, null, null, null, '2015-03-08 12:12:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('00dc45c8efd840c29235355a8462b31c', '您好!Mon Oct 20 18:53:00 CST 2014，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-20 18:53:08', '20141020185308', null, null, null, null, '2014-10-20 18:53:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('01ab4aeecb0c40dab9d16ab539fc38cb', '您的注册验证码为729873,请勿泄露!', '4', '13552214666', '1', '2015-03-08 12:15:32', '20150308121532', null, null, null, null, '2015-03-08 12:15:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('03724217f52d4a01a6a3fff0ceafce00', '555', '3', '55', '6', '2014-10-11 20:11:20', '20141011201120', null, null, null, '16', '2014-10-11 20:11:20', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('03eb5f9b1e2a41309da9989f0f3b1ab3', '您的注册验证码为596178,请勿泄露!', '4', '13332005788', '1', '2015-03-08 13:54:52', '20150308135452', null, null, null, null, '2015-03-08 13:54:52', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('045148a26f4143dab93f117d7b412613', '您的注册验证码为243215,请勿泄露!', '4', '13930660556', '1', '2015-03-08 13:35:21', '20150308133521', null, null, null, null, '2015-03-08 13:35:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0452cba42c6a42a4afc000756c3e016e', '您好！XXX用户预约了2014-10-24  19:11:36的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），。手机号为***********', '1', '18600062729', '7', '2014-10-17 19:11:39', '20141017191139', null, null, null, '16', '2014-10-17 19:11:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('04cf4023cac34d03a0016db1b497cdf3', '您好，你的注册验证码为：855927，请勿泄露!', '4', '18513705559', '7', '2014-11-17 11:43:56', '20141117114356', null, null, null, '1', '2014-11-17 11:43:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('05739efed8cb443eaf4ed7ddb3a78972', '您的注册验证码为618409,请勿泄露!', '4', '18007477888', '1', '2015-03-08 12:51:39', '20150308125139', null, null, null, null, '2015-03-08 12:51:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('05cfb56544d64a1a970543bab3c2c21d', '您的注册验证码为781298,请勿泄露!', '4', '15922122358', '1', '2015-03-08 12:47:01', '20150308124701', null, null, null, null, '2015-03-08 12:47:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('06ca387e548d4d79864199c245fcd750', '您好！228295289用户预约了2014-10-14  16:59:31的如下项目：X光检查，各类化验，健康檢查，请注意查看!', '1', '18513705559', '7', '2014-10-28 16:59:35', '20141028165935', null, null, null, null, '2014-10-28 16:59:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('070a996e963a454188b1a552fd8b411d', '马丽，您好！您的订单2015030813445705669已提交，我们将在工作日24小时内与您联系。', '4', '15027605669', '1', '2015-03-08 13:44:57', '20150308134457', null, null, null, null, '2015-03-08 13:44:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('070cd61502344b1dbf7dba10cf0f5388', '您的注册验证码为204449,请勿泄露!', '4', '15081528389', '1', '2015-03-08 13:05:11', '20150308130511', null, null, null, null, '2015-03-08 13:05:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0740c46c786f48a2a2b8da592c7cb6c6', '您的注册验证码为668049,请勿泄露!', '4', '13804675266', '1', '2015-03-08 12:16:54', '20150308121654', null, null, null, null, '2015-03-08 12:16:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0860c2a446b24523bf76b7afe0b5304b', '您的注册验证码为538578,请勿泄露!', '4', '13843387071', '1', '2015-03-08 13:53:21', '20150308135321', null, null, null, null, '2015-03-08 13:53:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0869659074f8464c9d0c36a706abbc45', '您的注册验证码为118072,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:34:57', '20150308123457', null, null, null, null, '2015-03-08 12:34:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0872ed0287a948899ae38d01ec64b49e', '您好!2014-10-29 18:54:39，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-29 18:54:40', '20141029185440', null, null, null, '16', '2014-10-29 18:54:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('089fc0fbfb8f4fa495f318edb4a75636', '李志军，您好！您的订单2015030721382878365已提交，我们将在工作日24小时内与您联系。', '4', '13582578365', '1', '2015-03-07 21:38:28', '20150307213828', null, null, null, null, '2015-03-07 21:38:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('08aa616c6f01433eb17c636ac0fc629f', '您的注册验证码为974358,请勿泄露!', '4', '', '4', '2015-03-08 08:28:43', '20150308082843', null, null, null, null, '2015-03-08 08:28:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('08aacb6682034aebbd3744f9cf52b53a', '您的注册验证码为649803,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:06:56', '20150308130656', null, null, null, null, '2015-03-08 13:06:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('08f59f8ba5874d5fb3863b81b9b4dd6d', '您好！228295289用户预约了2014-10-13 14:37:01的如下项目：彩色多普勒超声检查，健康檢查，请注意查看!', '1', '18600062729', '7', '2014-10-28 14:37:04', '20141028143704', null, null, null, '16', '2014-10-28 14:37:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('09042c46c7874c61854687204802b0f1', '您的注册验证码为910042,请勿泄露!', '4', '18040252411', '1', '2015-03-08 12:17:58', '20150308121758', null, null, null, null, '2015-03-08 12:17:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('091fd680ffdb4a19aaf265f2b3b04d95', '王广宇，您好！您的订单2015030721273062058已提交，我们将在工作日24小时内与您联系。', '4', '18940862058', '1', '2015-03-07 21:27:30', '20150307212730', null, null, null, null, '2015-03-07 21:27:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('092e588e180345bbb2212191dcb3e3ea', '郭海峰，您好！您的订单2015030813202312888已提交，我们将在工作日24小时内与您联系。', '4', '15993812888', '1', '2015-03-08 13:20:23', '20150308132023', null, null, null, null, '2015-03-08 13:20:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0988a4dab5c94170a105daedc41c5113', '您的注册验证码为190736,请勿泄露!', '4', '15832174444', '1', '2015-03-08 13:01:22', '20150308130122', null, null, null, null, '2015-03-08 13:01:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('09a3da78a0934078819ec366921adc48', '您的注册验证码为883633,请勿泄露!', '4', '13733334308', '1', '2015-03-08 13:17:55', '20150308131755', null, null, null, null, '2015-03-08 13:17:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0a7f299959c9443489de0dfe5fba7620', '您的注册验证码为760660,请勿泄露!', '4', '15993812888', '1', '2015-03-08 12:51:28', '20150308125128', null, null, null, null, '2015-03-08 12:51:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0b0b42aca17344d9987bf23ddb80a58e', '您的注册验证码为464095,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:40:22', '20150307204022', null, null, null, null, '2015-03-07 20:40:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0b993d568568471facc4a3820d263438', '您的注册验证码为386183,请勿泄露!', '4', '13899886643', '1', '2015-03-08 12:19:14', '20150308121914', null, null, null, null, '2015-03-08 12:19:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0bd1cce931214473a64dcb37ccbc562c', '您的注册验证码为537035,请勿泄露!', '4', '13700845298', '1', '2015-03-08 12:38:35', '20150308123835', null, null, null, null, '2015-03-08 12:38:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0c10913f684f41db8995864d61c66acd', '您的注册验证码为538301,请勿泄露!', '4', '18037051986', '1', '2015-03-08 13:21:04', '20150308132104', null, null, null, null, '2015-03-08 13:21:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0c31fb6ed126488287e09b6a5390a44e', '您的注册验证码为146146,请勿泄露!', '4', '', '4', '2015-03-08 13:47:33', '20150308134733', null, null, null, null, '2015-03-08 13:47:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0c68436a32bc4aa9a88a9935f57009f7', '您的注册验证码为876307,请勿泄露!', '4', '15932586108', '1', '2015-03-08 13:44:22', '20150308134422', null, null, null, null, '2015-03-08 13:44:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0d7ba5bc01df419eb6322b65450cab22', '您的注册验证码为808307,请勿泄露!', '4', '15922122358', '1', '2015-03-08 12:41:54', '20150308124154', null, null, null, null, '2015-03-08 12:41:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0d7fdeab468e471b8727545e81e2ad75', '您好！XXX用户预约了2014-10-13 20:22:11的如下项目：项目2，项目3，。手机号为***********', '1', '18600062729', '7', '2014-10-14 20:22:13', '20141014202213', null, null, null, '16', '2014-10-14 20:22:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0d8ba1f770e4486594efa5fde92c4301', '刘贵斌，您好！您的订单2015030721275780878已提交，我们将在工作日24小时内与您联系。', '4', '13722780878', '1', '2015-03-07 21:27:57', '20150307212757', null, null, null, null, '2015-03-07 21:27:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0dc9f86e50b04a87a622624c47119262', '您好！woqu用户预约了2014-10-13 10:30:59的如下项目：X光检查，请注意查看!', '1', '18600062729', '7', '2014-10-28 10:31:02', '20141028103102', null, null, null, '16', '2014-10-28 10:31:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0df53362aeb2449d9d93642f95ba4cc5', '您的注册验证码为783015,请勿泄露!', '4', '18631553968', '1', '2015-03-08 13:00:51', '20150308130051', null, null, null, null, '2015-03-08 13:00:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0e086f3bb2224bc490ede593a5a538c8', 'sssss', '4', '18500228638', '1', '2015-03-06 15:42:25', '20150306154225', null, null, null, null, '2015-03-06 15:42:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0ef927a0d74f4c1c8a21425c093a8d64', '您的注册验证码为271837,请勿泄露!', '4', '13856034168', '1', '2015-03-08 12:47:39', '20150308124739', null, null, null, null, '2015-03-08 12:47:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0f0a4c42a8124b7695147a24bd05ee41', '您的注册验证码为525824,请勿泄露!', '4', '13780506202', '1', '2015-03-08 13:00:40', '20150308130040', null, null, null, null, '2015-03-08 13:00:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0f5b7e0ccd5e4691b9fd307c7b8739b0', '刘博，您好！您的订单2015030718201041638已提交，我们将在工作日24小时内与您联系。', '4', '18945941638', '1', '2015-03-07 18:20:10', '20150307182010', null, null, null, null, '2015-03-07 18:20:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0f60b0b82cfd4f3190c1ba8dc8c56ba7', '您好！sunJingYang1用户预约了2014-10-13 10:53:33的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18513705559', '1', '2014-10-25 10:53:36', '20141025105336', null, null, null, '16', '2014-10-25 10:53:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('0f8a1de7218143f594415f19b486a621', '您的注册验证码为510095,请勿泄露!', '4', '15055707442', '1', '2015-03-08 13:45:05', '20150308134505', null, null, null, null, '2015-03-08 13:45:05', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('106bbe684d2949c09a0d703b3e44760e', '李锡望，您好！您的订单2015030721332673068已提交，我们将在工作日24小时内与您联系。', '4', '13315573068', '1', '2015-03-07 21:33:26', '20150307213326', null, null, null, null, '2015-03-07 21:33:26', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1088689c5a184b5d8c7f6c77db15b80b', '您好！XXX用户预约了2014-10-24  19:11:36的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），。手机号为***********', '1', '15001378541', '7', '2014-10-17 19:11:39', '20141017191139', null, null, null, '16', '2014-10-17 19:11:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('10f47d4fccdb409ab72b12a47574805c', '您好！null用户预约了2014-10-13 18:44:49的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），', '1', '15001378541', '7', '2014-10-20 18:44:51', '20141020184451', null, null, null, '16', '2014-10-20 18:44:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('110015d0ceb44476bb3ef3db4c6ae781', '您的注册验证码为884896,请勿泄露!', '4', '13911365763', '1', '2015-03-08 13:06:19', '20150308130619', null, null, null, null, '2015-03-08 13:06:19', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('11148345c2b845dfb69d46e40aa911ec', '您好，你的注册验证码为：814094，请勿泄露!', '4', '18513705559', '7', '2014-11-17 11:38:31', '20141117113831', null, null, null, '1', '2014-11-17 11:38:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('117afe0c40974a81b7efdca4fc9aa962', '您好！null用户预约了2014-10-13 18:44:49的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），', '1', '18600062729', '7', '2014-10-20 18:44:51', '20141020184451', null, null, null, '16', '2014-10-20 18:44:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1197fbd7b472499ab38e1ac2aa30a73b', '您的注册验证码为342159,请勿泄露!', '4', '15132516832', '1', '2015-03-08 12:14:50', '20150308121450', null, null, null, null, '2015-03-08 12:14:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('11a547aec0564d63be9ff903d3e21009', '田鹏，您好！您的订单2015030812581512885已提交，我们将在工作日24小时内与您联系。', '4', '13731512885', '1', '2015-03-08 12:58:15', '20150308125815', null, null, null, null, '2015-03-08 12:58:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('11be21e75f294c319804b396c3ccf9e2', '您的注册验证码为621659,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:47:41', '20150308124741', null, null, null, null, '2015-03-08 12:47:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1202df303d5c478da7514ea604438b47', '您的注册验证码为432445,请勿泄露!', '4', '13369613520', '1', '2015-03-08 12:59:45', '20150308125944', null, null, null, null, '2015-03-08 12:59:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('123e6e6c2eab4a4588f498ce24d6e26f', '您的注册验证码为460358,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:33:08', '20150307203308', null, null, null, null, '2015-03-07 20:33:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('12f2bc95eb1f4940b7e60370230b1781', '您好!2014-10-28 15:51:34，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-28 15:51:35', '20141028155135', null, null, null, null, '2014-10-28 15:51:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('13103e12829b405b809ce29a9ade6bfe', '您好，你的注册验证码为：631261，请勿泄露!', '4', '18513705559', '7', '2014-11-17 11:39:17', '20141117113917', null, null, null, '1', '2014-11-17 11:39:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1395d9208564494d9fb5129e4fb11830', '您好！XXX用户预约了2014-10-12 12:44:38的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '15001378541', '7', '2014-10-15 12:44:41', '20141015124440', null, null, null, '16', '2014-10-15 12:44:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('139914e88b8b4749b407d549ca3b7df5', '孙德民，您好！您的订单2015030812151681287已提交，我们将在工作日24小时内与您联系。', '4', '13909281287', '1', '2015-03-08 12:15:16', '20150308121516', null, null, null, null, '2015-03-08 12:15:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1485fde5ef074a83b7517f1964712724', '您的注册验证码为720986,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:32:47', '20150308123247', null, null, null, null, '2015-03-08 12:32:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('14be2c94c189485ca8aa02e86dcfc563', '您好！sunjinyang用户预约了2014-10-06  17:34:04的如下项目：彩色多普勒超声检查，X光检查，各类化验，请注意查看!', '1', '18600062729', '7', '2014-10-27 17:34:08', '20141027173408', null, null, null, null, '2014-10-27 17:34:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('14c7519628974d8a96a6ff810c140d8a', '刘博，您好！您的订单2015030718551241638已提交，我们将在工作日24小时内与您联系。', '4', '18945941638', '1', '2015-03-07 18:55:12', '20150307185512', null, null, null, null, '2015-03-07 18:55:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('15285283bbe94704a75a3525bd4b4be2', '您的注册验证码为831985,请勿泄露!', '4', '13832465978', '1', '2015-03-08 12:47:13', '20150308124713', null, null, null, null, '2015-03-08 12:47:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('15736eaf73f64e7fb067c473f40ca82a', '您的注册验证码为763922,请勿泄露!', '4', '', '4', '2015-03-08 13:48:09', '20150308134809', null, null, null, null, '2015-03-08 13:48:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('15aeb5a3caa6483d84cddb431466080a', '您好!2014-10-28 15:51:34，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-28 15:51:35', '20141028155135', null, null, null, null, '2014-10-28 15:51:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1602922835fe4e6f8bd828b55471e131', '何伟，您好！您的订单2015030723231856617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 23:23:19', '20150307232318', null, null, null, null, '2015-03-07 23:23:19', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('16558a5e42e547afba28cf8218077556', '您的注册验证码为851662,请勿泄露!', '4', '18945941638', '1', '2015-03-07 19:13:29', '20150307191329', null, null, null, null, '2015-03-07 19:13:29', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('16988e328a984d7cac79ffaf61e31c32', '您的注册验证码为735464,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:47:58', '20150308124758', null, null, null, null, '2015-03-08 12:47:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('16d359fbd42c47cfa1e98577d0d3a4ec', '您好！test用户预约了2014-11-04 12:12:48的如下项目：X光检查，请注意查看!', '1', '18513705559', '7', '2014-11-22 12:12:51', '20141122121251', null, null, null, '1', '2014-11-22 12:12:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('171e98109291411e9d17ad2a6242882c', '您好!2014-10-24 19:10:19，有人发来留言，请注意查收!', '2', '15001378541', '1', '2014-10-24 19:10:20', '20141024191020', null, null, null, '16', '2014-10-24 19:10:20', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('177996a2d38d4100946e3d7cb16cb1b9', '您的注册验证码为217476,请勿泄露!', '4', '186315931791', '6', '2015-03-07 21:27:01', '20150307212701', null, null, null, null, '2015-03-07 21:27:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('180c2c6217734f898a8e11db518ece31', '您的注册验证码为184170,请勿泄露!', '4', '13326347132', '1', '2015-03-08 13:09:32', '20150308130932', null, null, null, null, '2015-03-08 13:09:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('18ca59fd98f84da2a07bcf0dad1c07ea', '何伟，您好！您的订单2015030810243156617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-08 10:24:31', '20150308102431', null, null, null, null, '2015-03-08 10:24:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1aba8fe480444d08978618c333f9c230', '您的注册验证码为337001,请勿泄露!', '4', '13906429245', '1', '2015-03-08 12:53:11', '20150308125311', null, null, null, null, '2015-03-08 12:53:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1ae16a7d31bb4de485a89f54da241370', '您的注册验证码为650277,请勿泄露!', '4', '15055707442', '1', '2015-03-08 13:42:15', '20150308134215', null, null, null, null, '2015-03-08 13:42:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1ae911a7fa894aaab3c23bf31614c32b', '您的注册验证码为604173,请勿泄露!', '4', '18660190225', '1', '2015-03-08 13:08:16', '20150308130816', null, null, null, null, '2015-03-08 13:08:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1b25613d55844c00a9110da503fe0fc6', '您好！XXX用户预约了2014-10-20 20:22:23的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '15001378541', '7', '2014-10-14 20:22:25', '20141014202225', null, null, null, '16', '2014-10-14 20:22:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1b29dc0957214f7f84077cc38da25a46', '薛清华，您好！您的订单2015030812131444666已提交，我们将在工作日24小时内与您联系。', '4', '13772644666', '1', '2015-03-08 12:13:15', '20150308121314', null, null, null, null, '2015-03-08 12:13:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1b2f26a44ee44f119f96bad6fca964ee', '您的注册验证码为882042,请勿泄露!', '4', '13832465978', '1', '2015-03-08 12:44:28', '20150308124428', null, null, null, null, '2015-03-08 12:44:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1b53a28cc89142dca644b5a820c93bfc', '张华伟，您好！您的订单2015030808135341149已提交，我们将在工作日24小时内与您联系。', '4', '13832941149', '1', '2015-03-08 08:13:53', '20150308081353', null, null, null, null, '2015-03-08 08:13:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1b7dbb8408424f73906fbe02001efea6', '您好！woqu用户预约了2014-10-08 17:36:41的如下项目：X光检查，各类化验，请注意查看!', '1', '18600062729', '7', '2014-10-27 17:36:44', '20141027173644', null, null, null, '16', '2014-10-27 17:36:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1b83c2ad27274dcfa05e616a2752b046', '您的注册验证码为826479,请勿泄露!', '4', '15993812888', '1', '2015-03-08 13:13:58', '20150308131358', null, null, null, null, '2015-03-08 13:13:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1c49bf8618ab483da494fc68abf152e8', '您好！test用户预约了的如下项目：各类化验，请注意查看!', '1', '18600062729', '7', '2014-10-26 22:15:55', '20141026221555', null, null, null, null, '2014-10-26 22:15:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1d27fb8cdf9a425582d5d5bcd67ff206', '您的注册验证码为486023,请勿泄露!', '4', '15100567867', '1', '2015-03-07 19:01:52', '20150307190152', null, null, null, null, '2015-03-07 19:01:52', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1d7152141f4349e887f3655fd61643ca', '您的注册验证码为759014,请勿泄露!', '4', '13514182795', '1', '2015-03-07 21:31:51', '20150307213151', null, null, null, null, '2015-03-07 21:31:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1d8a4d5c567044aba134d57780af77ae', '您的注册验证码为502642,请勿泄露!', '4', '', '4', '2015-03-08 12:32:39', '20150308123239', null, null, null, null, '2015-03-08 12:32:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1db1d424316843bf8c43b6045b0818df', '刘博，您好！您的订单2015030719234424086已提交，我们将在工作日24小时内与您联系。', '4', '17001224086', '1', '2015-03-07 19:23:44', '20150307192344', null, null, null, null, '2015-03-07 19:23:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1df194cc688a474cba66d480fe21a1a6', '您好！XXX用户预约了2014-10-30  16:07:40的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，。手机号为***********', '1', '15001378541', '7', '2014-10-17 16:08:01', '20141017160801', null, null, null, '16', '2014-10-17 16:08:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1e3c980eb6d44b9b87687736e0f60735', '您的注册验证码为889816,请勿泄露!', '4', '15100567867', '1', '2015-03-07 19:18:48', '20150307191847', null, null, null, null, '2015-03-07 19:18:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1ea5d7205a5f4859a904f3af54757766', '您的注册验证码为441332,请勿泄露!', '4', '18641102778', '1', '2015-03-08 13:52:04', '20150308135204', null, null, null, null, '2015-03-08 13:52:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1ef2b9bdde384f37affac6445d2fabce', '您的注册验证码为781276,请勿泄露!', '4', '', '4', '2015-03-08 12:44:55', '20150308124455', null, null, null, null, '2015-03-08 12:44:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1f3f81e8b0d5455e9933c43846e86483', '韩旭，您好！您的订单2015030812203280695已提交，我们将在工作日24小时内与您联系。', '4', '18940980695', '1', '2015-03-08 12:20:32', '20150308122032', null, null, null, null, '2015-03-08 12:20:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1f425cd6f58a4d7b8f5ade09eb9a22b4', '您的注册验证码为807768,请勿泄露!', '4', '13998195566', '1', '2015-03-08 08:14:58', '20150308081458', null, null, null, null, '2015-03-08 08:14:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1f7ba9460a334170b6c04c0a93693f77', '您好！XXX用户预约了2014-10-11 10:53:19的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 10:53:21', '20141011105321', null, null, null, '16', '2014-10-11 10:53:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1fb5808fd53b4a37b7fbcab942a70fd6', '您的注册验证码为119234,请勿泄露!', '4', '13903378710', '1', '2015-03-07 21:27:18', '20150307212718', null, null, null, null, '2015-03-07 21:27:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1ff902139dc242db93710d010146aeb4', '您的注册验证码为818357,请勿泄露!', '4', '13369613520', '1', '2015-03-08 13:04:14', '20150308130414', null, null, null, null, '2015-03-08 13:04:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('1fffbf20c09143e4b5eaee2c3035ecf3', '您的注册验证码为601579,请勿泄露!', '4', '13569969392', '1', '2015-03-08 12:40:32', '20150308124032', null, null, null, null, '2015-03-08 12:40:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('209aa9c416ee4e0f981a9a3f9d0e19bc', '您的注册验证码为368987,请勿泄露!', '4', '13933458660', '1', '2015-03-08 13:05:57', '20150308130556', null, null, null, null, '2015-03-08 13:05:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('20a9fc2d15254d0c876a6dc73d8da5c9', '您的注册验证码为693982,请勿泄露!', '4', '18515282775', '1', '2015-03-08 09:46:09', '20150308094608', null, null, null, null, '2015-03-08 09:46:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('20bbceafe48d448eb4b2e515aa885067', '您的注册验证码为402809,请勿泄露!', '4', '15603699917', '1', '2015-03-08 13:21:58', '20150308132158', null, null, null, null, '2015-03-08 13:21:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('218ef16744754c1f9ffb86366c324760', '您好！test用户预约了的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），请注意查看!', '1', '18513705559', '7', '2014-10-25 19:36:48', '20141025193648', null, null, null, null, '2014-10-25 19:36:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2194aad7077349a2a42d515f9514f218', '您好！test用户预约了2014-11-04 12:12:48的如下项目：X光检查，请注意查看!', '1', '18600062729', '7', '2014-11-22 12:12:51', '20141122121251', null, null, null, '1', '2014-11-22 12:12:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('21c4f2e4cb174b5998cf1c1b9a90016f', '李福新，您好！您的订单2015030719193567867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:19:35', '20150307191935', null, null, null, null, '2015-03-07 19:19:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('21ea1b87524c4a0dabb56fac3220c13e', '您好！woqu用户预约了2014-10-06 11:03:31的如下项目：彩色多普勒超声检查，X光检查，请注意查看!', '1', '18513705559', '1', '2014-10-25 11:03:33', '20141025110333', null, null, null, '16', '2014-10-25 11:03:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('223e3aef8fcb49dd9e19a7cd133b2eae', '您好！xxx用户预约了的如下项目：各类化验，请注意查看!', '1', '18600062729', '7', '2014-10-22 15:38:36', '20141022153836', null, null, null, '16', '2014-10-22 15:38:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2276919a406f4a63aa1a4f8e13d9f270', '您好!2014-10-29 13:14:42，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-29 13:14:43', '20141029131443', null, null, null, '16', '2014-10-29 13:14:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('22fca003003d4e109d2f4c75978d20d1', '您的注册验证码为138954,请勿泄露!', '4', '15930856541', '1', '2015-03-07 21:25:24', '20150307212524', null, null, null, null, '2015-03-07 21:25:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2354080b542b4abcb699ce7a22edb3c6', '您的注册验证码为468880,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:36:57', '20150307203657', null, null, null, null, '2015-03-07 20:36:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('23f4c4bbf5674d07934f8d551ba94fe8', '您好！sunjinyang用户预约了2014-10-06  17:34:04的如下项目：彩色多普勒超声检查，X光检查，各类化验，请注意查看!', '1', '18513705559', '7', '2014-10-27 17:34:08', '20141027173408', null, null, null, null, '2014-10-27 17:34:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('24c09278fa4548e9b1e58eea57557e1d', '您好！XXX用户预约了2014-10-30  16:07:40的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，。手机号为***********', '1', '18600062729', '7', '2014-10-17 16:08:01', '20141017160801', null, null, null, '16', '2014-10-17 16:08:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('252c6c3150774c3aa85078efb7fdef69', '您的注册验证码为732127,请勿泄露!', '4', '13722780878', '1', '2015-03-07 21:26:38', '20150307212638', null, null, null, null, '2015-03-07 21:26:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('25fa0b87b5954d82a37b38c4b39d2711', '您的注册验证码为281723,请勿泄露!', '4', '13955230363', '1', '2015-03-08 13:02:18', '20150308130218', null, null, null, null, '2015-03-08 13:02:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('267ae0f3131f4dd8b73b2877c1c7f8ea', '您的注册验证码为193242,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:31:24', '20150308123124', null, null, null, null, '2015-03-08 12:31:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('26c95d2a3ee84270b0e2731bf115731f', '您的注册验证码为466385,请勿泄露!', '4', '13930660556', '1', '2015-03-08 12:16:54', '20150308121654', null, null, null, null, '2015-03-08 12:16:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('26d843966fbe4629b84cba14909c34b5', '您的注册验证码为470816,请勿泄露!', '4', '18019618586', '1', '2015-03-08 08:14:12', '20150308081412', null, null, null, null, '2015-03-08 08:14:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2736b43a36d84a53ad0e3cb61b8687b7', '您的注册验证码为321145,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:52:57', '20150308125256', null, null, null, null, '2015-03-08 12:52:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('285ae8cf01fe4c4da921845ee5b15849', '您的注册验证码为783407,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:35:21', '20150307203521', null, null, null, null, '2015-03-07 20:35:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('288f81cc29c542ee8270bf19910ea9f0', '测试信息！！', '3', '18600062729', '1', '2014-10-10 10:00:27', '20141010100027', null, null, null, '16', '2014-10-10 10:00:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('28ae2ee9e361429d8f98024d46c5ae6a', '您的注册验证码为579832,请勿泄露!', '4', '13324117982', '1', '2015-03-08 12:39:38', '20150308123938', null, null, null, null, '2015-03-08 12:39:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('29213babc2e540478c81e3b1221d97b9', '您的注册验证码为284150,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:16:18', '20150308121618', null, null, null, null, '2015-03-08 12:16:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2992e3114a0d48d094157ec7425ee490', '您的注册验证码为768385,请勿泄露!', '4', '15055707442', '1', '2015-03-08 13:44:06', '20150308134406', null, null, null, null, '2015-03-08 13:44:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('29b96c6335cc47d88b599d552ad17d34', '您的注册验证码为601804,请勿泄露!', '4', '13601095966', '1', '2015-03-08 13:08:02', '20150308130802', null, null, null, null, '2015-03-08 13:08:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('29d95899c89244e9b2911d295d9a697a', '李福新，您好！您的订单2015030719233667867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:23:36', '20150307192336', null, null, null, null, '2015-03-07 19:23:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('29eca86ed6cd463396ca3cb9d2deb4b0', '您的注册验证码为641583,请勿泄露!', '4', '18230335555', '1', '2015-03-08 12:50:20', '20150308125020', null, null, null, null, '2015-03-08 12:50:20', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2a8b6643ed2f41b0bcc96aac04b21518', 'sdfsdfsdf', '3', '18600062729', '1', '2014-10-10 09:58:27', '20141010095827', null, null, null, '16', '2014-10-10 09:58:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2b915ac312044fa7af6fbe0a05c53864', '您的注册验证码为139440,请勿泄露!', '4', '15231432616', '1', '2015-03-08 12:47:24', '20150308124724', null, null, null, null, '2015-03-08 12:47:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2be166a622aa4e589c5aed1534337b10', '李德生，您好！您的订单2015030721284378710已提交，我们将在工作日24小时内与您联系。', '4', '13903378710', '1', '2015-03-07 21:28:43', '20150307212843', null, null, null, null, '2015-03-07 21:28:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2c239f25e95b4a47bf5aaba4d77d086b', '孟宪洪，您好！您的订单2015030813021413180已提交，我们将在工作日24小时内与您联系。', '4', '13315513180', '1', '2015-03-08 13:02:14', '20150308130214', null, null, null, null, '2015-03-08 13:02:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2c40c1daa23e488aab5f72c73ba027a8', '您好！张三1sad用户预约了2014-11-11 22:08:32的如下项目：X光检查，请注意查看!', '1', '18513705559', '7', '2014-11-22 22:08:34', '20141122220834', null, null, null, '1', '2014-11-22 22:08:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2c7f7f5f1ddf44e9815ccb8bff35d56f', '您好！XXX用户预约了2014-10-12 09:21:56的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 09:22:02', '20141011092202', null, null, null, '16', '2014-10-11 09:22:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2cfadf034842485582cedf757945da17', '您的注册验证码为883348,请勿泄露!', '4', '18634322780', '1', '2015-03-08 13:34:09', '20150308133409', null, null, null, null, '2015-03-08 13:34:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2d03278a75914649a0ebfaccd92b0718', 'k;jjhlkj', '3', '23543534', '7', '2014-11-08 15:11:22', '20141108151122', null, null, null, '16', '2014-11-08 15:11:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2d54db613cf24a5ca8a6e59e324913d6', null, '3', '2', '6', '2014-10-09 17:27:00', '20141009172700', null, null, null, '16', '2014-10-09 17:27:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2da3b3c36d45487293bba8c005add932', '您的注册验证码为351082,请勿泄露!', '4', '18904769855', '1', '2015-03-08 12:18:45', '20150308121844', null, null, null, null, '2015-03-08 12:18:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2e0ffbeaca6d46fe883acafa7257502e', '李志刚，您好！您的订单2015030813065680666已提交，我们将在工作日24小时内与您联系。', '4', '13298880666', '1', '2015-03-08 13:06:56', '20150308130656', null, null, null, null, '2015-03-08 13:06:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2f2aca2219be45f2b1e4bef02e4a625d', '您的注册验证码为194124,请勿泄露!', '4', '18538071921', '1', '2015-03-08 13:42:38', '20150308134238', null, null, null, null, '2015-03-08 13:42:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2f4cae4d0d224c7ba33a8ae730430682', '您的注册验证码为148772,请勿泄露!', '4', '15132516832', '1', '2015-03-08 12:15:05', '20150308121505', null, null, null, null, '2015-03-08 12:15:05', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2fa7ea00ed104656871da3bc909c0311', null, '3', '234', '6', '2014-10-09 17:06:15', '20141009170615', null, null, null, '16', '2014-10-09 17:06:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('2ff95afa68fd41c582d2c2f4173c6cf3', '何伟，您好！您的订单2015030720332756617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 20:33:28', '20150307203327', null, null, null, null, '2015-03-07 20:33:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3052259b26e8444a87febb786b28c79b', '您的注册验证码为328970,请勿泄露!', '4', '15055707442', '1', '2015-03-08 13:42:42', '20150308134242', null, null, null, null, '2015-03-08 13:42:42', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('30bbaa7e3ceb4346bbc243cc8199a445', '您的注册验证码为973759,请勿泄露!', '4', '13945094448', '1', '2015-03-08 13:13:50', '20150308131350', null, null, null, null, '2015-03-08 13:13:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('30c0c931270e4bccafedb8d773ccdade', '您的注册验证码为792689,请勿泄露!', '4', '13772644666', '1', '2015-03-08 12:11:29', '20150308121129', null, null, null, null, '2015-03-08 12:11:29', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('30d33c5fd33240679bbea703336d2efe', '您的注册验证码为698218,请勿泄露!', '4', '', '4', '2015-03-08 12:13:53', '20150308121353', null, null, null, null, '2015-03-08 12:13:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('314012e842614a099b7554d356eca369', '您好!2014-10-29 18:54:45，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-29 18:54:45', '20141029185445', null, null, null, '16', '2014-10-29 18:54:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('31b15b684b524097b199aec9edb3b981', '您好！XXX用户预约了2014-10-13 20:21:57的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '18600062729', '7', '2014-10-14 20:22:00', '20141014202200', null, null, null, '16', '2014-10-14 20:22:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('31d63b56d09e49379302f2fc5704a4e7', '您的注册验证码为335298,请勿泄露!', '4', '15822027283', '1', '2015-03-08 12:28:19', '20150308122819', null, null, null, null, '2015-03-08 12:28:19', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3221b2859c4240429cb1f320f52d7f47', '您的注册验证码为198617,请勿泄露!', '4', '18604599368', '1', '2015-03-08 13:20:22', '20150308132022', null, null, null, null, '2015-03-08 13:20:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3225ba8b539442c9b87c12fbef0e9e8a', '李福新，您好！您的订单2015030719214967867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:21:49', '20150307192149', null, null, null, null, '2015-03-07 19:21:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('329f7483e93b49aaab49a11ed603c339', '您的注册验证码为457114,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:59:09', '20150308125909', null, null, null, null, '2015-03-08 12:59:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('32a367f68738403db6198eee56ade131', '您的注册验证码为577617,请勿泄露!', '4', '18945941638', '1', '2015-03-07 19:11:53', '20150307191153', null, null, null, null, '2015-03-07 19:11:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('32afb70c2f854ed5a813ea26297b1c9a', '您的注册验证码为365005,请勿泄露!', '4', '13930660556', '1', '2015-03-08 13:30:59', '20150308133059', null, null, null, null, '2015-03-08 13:30:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('33164b3d67e74823abbc524160363914', '您好，你的注册验证码为：314023，请勿泄露!', '4', '185137055595', '7', '2014-11-17 15:57:04', '20141117155703', null, null, null, '1', '2014-11-17 15:57:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('33d157f201bf40d88479916c621cf870', '您的注册验证码为892364,请勿泄露!', '4', '15899428772', '1', '2015-03-07 21:28:34', '20150307212834', null, null, null, null, '2015-03-07 21:28:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('346f7c599e254afdafcd8547fc972385', '您的注册验证码为751238,请勿泄露!', '4', '15097570608', '1', '2015-03-08 08:18:34', '20150308081834', null, null, null, null, '2015-03-08 08:18:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('34b7dca7448845c8bcc9cdd0364b8460', '您的注册验证码为934936,请勿泄露!', '4', '17001224086', '1', '2015-03-07 18:11:06', '20150307181106', null, null, null, null, '2015-03-07 18:11:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('35caec9da2174669b2687fb00c2c5d66', '何伟，您好！您的订单2015030813100856617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-08 13:10:08', '20150308131008', null, null, null, null, '2015-03-08 13:10:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('35d4ef04a7884e22b47d47638e2c1f2b', '孙听文，您好！您的订单2015030812450317981已提交，我们将在工作日24小时内与您联系。', '4', '13920417981', '1', '2015-03-08 12:45:03', '20150308124503', null, null, null, null, '2015-03-08 12:45:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('36686eee89e94f7fa0f2e9de20452519', '您的注册验证码为649480,请勿泄露!', '4', '15930456161', '1', '2015-03-08 12:49:14', '20150308124914', null, null, null, null, '2015-03-08 12:49:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3710eb1fec574da6807dcd982bb00136', '苗，您好！您的订单2015030718245782775已提交，我们将在工作日24小时内与您联系。', '4', '18515282775', '1', '2015-03-07 18:24:58', '20150307182458', null, null, null, null, '2015-03-07 18:24:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3843e2a871d84206b749cd08c0614bca', '您的注册验证码为306997,请勿泄露!', '4', '15027605669', '1', '2015-03-08 13:44:06', '20150308134406', null, null, null, null, '2015-03-08 13:44:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('395f8347a5994e07a8398521ccc4fc58', '您的注册验证码为355897,请勿泄露!', '4', '13369613520', '1', '2015-03-08 12:58:58', '20150308125858', null, null, null, null, '2015-03-08 12:58:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3a29340b1e2146ce89c57cf14c8f4b4b', '您的注册验证码为446535,请勿泄露!', '4', '', '4', '2015-03-08 12:16:35', '20150308121635', null, null, null, null, '2015-03-08 12:16:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3a3ab74b48a5472eb2d5ad5463cf60aa', '您好！test用户预约了2014-10-30  22:13:17的如下项目：各类化验，健康檢查，请注意查看!', '1', '18600062729', '7', '2014-10-26 22:13:22', '20141026221322', null, null, null, null, '2014-10-26 22:13:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3a54de5a0b3c49f1a3e9020952b1b1c1', '您的注册验证码为753980,请勿泄露!', '4', '15993812888', '1', '2015-03-08 13:19:27', '20150308131926', null, null, null, null, '2015-03-08 13:19:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3ac2374590d3489b8a062f433b238fe0', '您好！XXX用户预约了2014-10-20 09:23:57的如下项目：项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 09:24:00', '20141011092400', null, null, null, '16', '2014-10-11 09:24:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3aef320f3860462d8768685aa22810d7', '您的注册验证码为358899,请勿泄露!', '4', '13792336150', '1', '2015-03-08 12:53:55', '20150308125355', null, null, null, null, '2015-03-08 12:53:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3b1d638ddd2c4edabf8e01b953439baa', '您的注册验证码为568170,请勿泄露!', '4', '18230335555', '1', '2015-03-08 13:06:32', '20150308130632', null, null, null, null, '2015-03-08 13:06:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3b51412ab93b49d0b65c0ed6f30e009f', '您的注册验证码为197964,请勿泄露!', '4', '18945941638', '1', '2015-03-07 17:55:53', '20150307175553', null, null, null, null, '2015-03-07 17:55:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3c415c62af204e2f9c50163c1ae73b45', '您的注册验证码为472013,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:22:00', '20150308132200', null, null, null, null, '2015-03-08 13:22:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3c89d7887b5a48dfa42ab85e223020f4', '您的注册验证码为399671,请勿泄露!', '4', '13069898987', '1', '2015-03-08 13:50:07', '20150308135006', null, null, null, null, '2015-03-08 13:50:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3c980265a8564fd5867ea65cee04d1a6', '李志刚，您好！您的订单2015030813053380666已提交，我们将在工作日24小时内与您联系。', '4', '13298880666', '1', '2015-03-08 13:05:33', '20150308130533', null, null, null, null, '2015-03-08 13:05:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3d373a5ce5da426db3cf9f440b1ab951', '李志军，您好！您的订单2015030812583978365已提交，我们将在工作日24小时内与您联系。', '4', '13582578365', '1', '2015-03-08 12:58:40', '20150308125839', null, null, null, null, '2015-03-08 12:58:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3dbab2bc6e0043c298b94067327600b1', '您的注册验证码为162909,请勿泄露!', '4', '', '4', '2015-03-08 12:43:54', '20150308124354', null, null, null, null, '2015-03-08 12:43:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3e2fe507bc8d4da1a0d3576ca0ef4b55', '您的注册验证码为918508,请勿泄露!', '4', '13514182795', '1', '2015-03-07 21:27:47', '20150307212747', null, null, null, null, '2015-03-07 21:27:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3e4ec81e71e34cbcb39574e5cdc335d3', '董爱梅，您好！您的订单2015030813102710666已提交，我们将在工作日24小时内与您联系。', '4', '13230810666', '1', '2015-03-08 13:10:27', '20150308131027', null, null, null, null, '2015-03-08 13:10:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3f037e316ce14ca9b9aa4bce96d9a637', '您的注册验证码为248596,请勿泄露!', '4', '15022309216', '1', '2015-03-08 12:15:28', '20150308121528', null, null, null, null, '2015-03-08 12:15:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3f2fcf2623ae454dbc2af52f34cea477', '您的注册验证码为192334,请勿泄露!', '4', '13230810666', '1', '2015-03-08 08:57:16', '20150308085716', null, null, null, null, '2015-03-08 08:57:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3f44a64dd8264e96954f43a9d4058d96', '您的注册验证码为370588,请勿泄露!', '4', '13911365763', '1', '2015-03-08 13:13:34', '20150308131334', null, null, null, null, '2015-03-08 13:13:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3fb775d348de45d081c345bb8ff90765', '您的注册验证码为356389,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:35:40', '20150308123540', null, null, null, null, '2015-03-08 12:35:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('3fd420efbc8b4c24ac01774a13dcd93a', '您好！null用户预约了2014-10-15 18:49:48的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，', '1', '18600062729', '7', '2014-10-20 18:50:09', '20141020185009', null, null, null, null, '2014-10-20 18:50:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4039a7fc1bd54904af0c0741ca0dd506', '您的注册验证码为145639,请勿泄露!', '4', '15130515888', '1', '2015-03-08 08:18:22', '20150308081822', null, null, null, null, '2015-03-08 08:18:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4047ddf17d5e422a89d0b0ed22444462', '康月红，您好！您的订单2015030721291116309已提交，我们将在工作日24小时内与您联系。', '4', '15033516309', '1', '2015-03-07 21:29:11', '20150307212911', null, null, null, null, '2015-03-07 21:29:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4063240ce2354056b96222900bf9d694', '您好！XXX用户预约了2014-10-13  16:09:10的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，。手机号为***********', '1', '15001378541', '7', '2014-10-17 16:09:18', '20141017160918', null, null, null, '16', '2014-10-17 16:09:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4065753fccf94666937e03b3941dd249', '张雅红，您好！您的订单2015030812471819127已提交，我们将在工作日24小时内与您联系。', '4', '18004319127', '1', '2015-03-08 12:47:18', '20150308124718', null, null, null, null, '2015-03-08 12:47:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('40a3561d12f846b3ab3f07a3f97c4922', '您的注册验证码为125119,请勿泄露!', '4', '13309836003', '1', '2015-03-08 13:14:49', '20150308131449', null, null, null, null, '2015-03-08 13:14:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('40ca9589be114466859c15bb1072d2d5', '您的注册验证码为665244,请勿泄露!', '4', '18600062729', '1', '2015-03-07 20:17:25', '20150307201725', null, null, null, null, '2015-03-07 20:17:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('41b160ac2bb84911b44c46a724c27091', null, null, null, '6', '2014-10-09 17:03:50', '20141009170350', null, null, null, '16', '2014-10-09 17:03:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('41f673daa8294da69857c4bb102a303e', '您的注册验证码为545185,请勿泄露!', '4', '13585106688', '1', '2015-03-08 12:50:48', '20150308125048', null, null, null, null, '2015-03-08 12:50:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4269d848936b42b6b237435688083590', '您的注册验证码为942316,请勿泄露!', '4', '13911224008', '1', '2015-03-08 12:44:39', '20150308124439', null, null, null, null, '2015-03-08 12:44:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('42d99a7505474e33b8a653533eaca99e', '李志刚，您好！您的订单2015030813055580666已提交，我们将在工作日24小时内与您联系。', '4', '13298880666', '1', '2015-03-08 13:05:55', '20150308130555', null, null, null, null, '2015-03-08 13:05:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('42d9f44d3d624a7faa638a50c0c62a13', '您的注册验证码为283116,请勿泄露!', '4', '13832465978', '1', '2015-03-08 12:41:07', '20150308124107', null, null, null, null, '2015-03-08 12:41:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('42e41facdcc74029aaf2c6e2402a3460', '您的注册验证码为146479,请勿泄露!', '4', '13832941149', '1', '2015-03-08 08:12:08', '20150308081208', null, null, null, null, '2015-03-08 08:12:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('435668554b734544a128aca385a179ef', '您的注册验证码为667541,请勿泄露!', '4', '18511156617', '1', '2015-03-07 22:42:06', '20150307224206', null, null, null, null, '2015-03-07 22:42:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('44560e093ed8435fbbb59b14a9c52919', 'retg', '3', '18513705559', '7', '2014-11-08 15:10:23', '20141108151023', null, null, null, '16', '2014-11-08 15:10:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('449fb59c1f0d4af7b9eea6e2fca60d43', '您好！test用户预约了2014-10-30  20:19:45的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），请注意查看!', '1', '18513705559', '7', '2014-10-26 20:19:53', '20141026201952', null, null, null, '16', '2014-10-26 20:19:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('44dbfba832014c8aa28e4d831181c1bd', '您的注册验证码为800737,请勿泄露!', '4', '18641102778', '1', '2015-03-08 13:46:58', '20150308134658', null, null, null, null, '2015-03-08 13:46:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4542d1d54fb843b398313bd060473bbb', '刘博，您好！您的订单2015030719232124086已提交，我们将在工作日24小时内与您联系。', '4', '17001224086', '1', '2015-03-07 19:23:21', '20150307192321', null, null, null, null, '2015-03-07 19:23:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('45aba8eb2e25495aaadc92d524b3b54e', '您好！sunJingYang2用户预约了2014-10-14 11:01:51的如下项目：彩色多普勒超声检查，X光检查，请注意查看!', '1', '18513705559', '1', '2014-10-25 11:01:54', '20141025110154', null, null, null, '16', '2014-10-25 11:01:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('460e63ff0bd84addbfe8e8eb63506fc7', '您的注册验证码为630645,请勿泄露!', '4', '18945941638', '1', '2015-03-07 18:16:45', '20150307181645', null, null, null, null, '2015-03-07 18:16:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4681a0d7ed5840888c544c2967ff5179', '您的注册验证码为153857,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:46:56', '20150308124656', null, null, null, null, '2015-03-08 12:46:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('46a7a3c259e64fb5b7d99b2b488c04df', '您的注册验证码为648229,请勿泄露!', '4', '13303247997', '1', '2015-03-07 21:27:53', '20150307212753', null, null, null, null, '2015-03-07 21:27:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('46f3381bb3d74a35955baacbfbe5fe0b', '您好！test用户预约了的如下项目：各类化验，请注意查看!', '1', '18513705559', '7', '2014-10-26 22:15:55', '20141026221555', null, null, null, null, '2014-10-26 22:15:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('470f2cf901264a20aab023ed14b17902', '您的注册验证码为219382,请勿泄露!', '4', '13906489929', '1', '2015-03-08 13:05:49', '20150308130549', null, null, null, null, '2015-03-08 13:05:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('475f75e601cc47e480dd1370f905e0b2', '才长龙，您好！您的订单2015030721285056541已提交，我们将在工作日24小时内与您联系。', '4', '15930856541', '1', '2015-03-07 21:28:50', '20150307212850', null, null, null, null, '2015-03-07 21:28:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4768cbf07c054f3b94857101a2f96de6', '刘博，您好！您的订单2015030718534941638已提交，我们将在工作日24小时内与您联系。', '4', '18945941638', '1', '2015-03-07 18:53:49', '20150307185349', null, null, null, null, '2015-03-07 18:53:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4776e95a5a544928a3679c70cbf94be5', '您的注册验证码为383408,请勿泄露!', '4', '13863798764', '1', '2015-03-08 13:25:53', '20150308132553', null, null, null, null, '2015-03-08 13:25:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('47bff4a1d90547e695360fdb9ca30489', '您的注册验证码为912156,请勿泄露!', '4', '18931542376', '1', '2015-03-07 21:26:29', '20150307212629', null, null, null, null, '2015-03-07 21:26:29', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4866cf0b2bfb4c8d9814b8608e47150b', '您的注册验证码为323722,请勿泄露!', '4', '13355319900', '1', '2015-03-08 13:25:15', '20150308132515', null, null, null, null, '2015-03-08 13:25:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4886c731bbd24490904bbfaf575a1afe', '您的注册验证码为158991,请勿泄露!', '4', '13733812112', '1', '2015-03-08 12:15:59', '20150308121559', null, null, null, null, '2015-03-08 12:15:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('493b8c2c543045a483fa326f4d9b3234', '果荣成，您好！您的订单2015030721284041237已提交，我们将在工作日24小时内与您联系。', '4', '13911341237', '1', '2015-03-07 21:28:40', '20150307212840', null, null, null, null, '2015-03-07 21:28:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('49819768cc0d4c9b93232aa37eafa6d4', '徐立华，您好！您的订单2015030721285442376已提交，我们将在工作日24小时内与您联系。', '4', '18931542376', '1', '2015-03-07 21:28:54', '20150307212854', null, null, null, null, '2015-03-07 21:28:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('49e9543d89cc417798832c79ceafdc0e', '您的注册验证码为255663,请勿泄露!', '4', '13803306215', '1', '2015-03-08 13:57:01', '20150308135700', null, null, null, null, '2015-03-08 13:57:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4a20ac08e7f345249a7bf824d739e071', '您的注册验证码为855365,请勿泄露!', '4', '18731558180', '1', '2015-03-08 13:33:38', '20150308133338', null, null, null, null, '2015-03-08 13:33:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4a4a8bdec7864cdd9fe496e6cf22adb5', '您的注册验证码为716527,请勿泄露!', '4', '13603384456', '1', '2015-03-08 13:53:56', '20150308135356', null, null, null, null, '2015-03-08 13:53:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4aa33a0f63f44618a22c2fc4c4f80c42', '您好！sunJingYang2用户预约了2015-11-10 11:19:41的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，请注意查看!', '1', '18513705559', '1', '2014-10-25 11:19:47', '20141025111947', null, null, null, '16', '2014-10-25 11:19:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4aedc7cb67924f95a83576553b19ba4e', '您好！null用户预约了2014-10-14 18:50:22的如下项目：X光检查，', '1', '15001378541', '7', '2014-10-20 18:50:39', '20141020185039', null, null, null, null, '2014-10-20 18:50:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4b35b2e4ba85470d8624a25614e5333f', '您的注册验证码为554081,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:17:16', '20150308121716', null, null, null, null, '2015-03-08 12:17:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4beaa04827784547b50389c80f6a80e5', '您的注册验证码为101281,请勿泄露!', '4', '15932586108', '1', '2015-03-08 13:36:44', '20150308133644', null, null, null, null, '2015-03-08 13:36:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4ca6bf49f86c4fe183f56930c834896d', '您的注册验证码为383465,请勿泄露!', '4', '13863798764', '1', '2015-03-08 13:28:07', '20150308132807', null, null, null, null, '2015-03-08 13:28:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4d77eb3ccb8b4c4da77935860c19013a', '穆德旺，您好！您的订单2015030813442356669已提交，我们将在工作日24小时内与您联系。', '4', '15713056669', '1', '2015-03-08 13:44:23', '20150308134423', null, null, null, null, '2015-03-08 13:44:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4e4a2d52925b459c8f152f0a31e3138e', '您的注册验证码为836130,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:00:35', '20150308130035', null, null, null, null, '2015-03-08 13:00:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4e63b9f12d0844dea873f82c92883966', '您的注册验证码为443994,请勿泄露!', '4', '13955230363', '1', '2015-03-08 13:15:04', '20150308131504', null, null, null, null, '2015-03-08 13:15:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4e7cefe815e6482cb4b5185bcfdca873', '您好！XXX用户预约了2014-10-05 15:50:07的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 15:50:09', '20141011155009', null, null, null, '16', '2014-10-11 15:50:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4ed600a61e6449dcb8fcbdae9f6b3b17', '您的注册验证码为878468,请勿泄露!', '4', '13932490028', '1', '2015-03-08 13:13:09', '20150308131309', null, null, null, null, '2015-03-08 13:13:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4f21da3fb96742259e502b13b0ebd499', '您的注册验证码为585896,请勿泄露!', '4', '18940862058', '1', '2015-03-07 21:26:16', '20150307212616', null, null, null, null, '2015-03-07 21:26:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4f3b34dfac514c7190a3b2e0c645a225', '您的注册验证码为584512,请勿泄露!', '4', '', '4', '2015-03-08 13:14:39', '20150308131439', null, null, null, null, '2015-03-08 13:14:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4f46837a2dd6486aab94e7554561304b', '您好！XXX用户预约了2014-10-13  16:08:32的如下项目：彩色多普勒超声检查，X光检查，健康檢查，。手机号为***********', '1', '15001378541', '7', '2014-10-17 16:08:35', '20141017160835', null, null, null, '16', '2014-10-17 16:08:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4f63742ac27e4aa19a1d8ab6cf7bf7b6', '您的注册验证码为698786,请勿泄露!', '4', '13514182795', '1', '2015-03-07 21:28:31', '20150307212831', null, null, null, null, '2015-03-07 21:28:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4f852be0344640b49840f30188253d5a', '您的注册验证码为388261,请勿泄露!', '4', '18515282775', '1', '2015-03-07 17:49:02', '20150307174902', null, null, null, null, '2015-03-07 17:49:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('4fab315d9ee348e6ae42ce5d37bb2ba8', '您的注册验证码为324028,请勿泄露!', '4', '18510854210', '1', '2015-03-08 12:48:17', '20150308124817', null, null, null, null, '2015-03-08 12:48:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('500479997de24abc80a8054ece1ce9ee', '您的注册验证码为554835,请勿泄露!', '4', '15033516309', '1', '2015-03-07 21:25:16', '20150307212516', null, null, null, null, '2015-03-07 21:25:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('502adb88215147c7897ff7f92b450348', '您的注册验证码为196242,请勿泄露!', '4', '18641102778', '1', '2015-03-08 13:38:17', '20150308133817', null, null, null, null, '2015-03-08 13:38:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('50e10278d40e494184eeac0ef1876495', null, '3', '46666', '6', '2014-10-09 17:06:15', '20141009170615', null, null, null, '16', '2014-10-09 17:06:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('513540776ff24031b527e961d11f0cda', '您的注册验证码为970890,请勿泄露!', '4', '13700845298', '1', '2015-03-08 12:41:40', '20150308124140', null, null, null, null, '2015-03-08 12:41:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('51b45c4b71e7455191e27c00131c72aa', '您的注册验证码为977999,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:13:16', '20150308121316', null, null, null, null, '2015-03-08 12:13:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('522a60666a9143eabae03230de5e99d3', '您好！sunjinyang用户预约了2014-10-05 21:16:27的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18513705559', '7', '2014-10-27 21:16:31', '20141027211631', null, null, null, '16', '2014-10-27 21:16:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('52f63d74c5ab419187e72184461d0253', '何伟，您好！您的订单2015030719361356617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 19:36:13', '20150307193613', null, null, null, null, '2015-03-07 19:36:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5316ecf0c6fa4953a344b4af089cd6b6', '您的注册验证码为610810,请勿泄露!', '4', '13514182795', '1', '2015-03-07 21:29:48', '20150307212948', null, null, null, null, '2015-03-07 21:29:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('532cbe974ad642178a944f1e80cec4bf', '您好！test用户预约了2014-10-30  20:19:45的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），请注意查看!', '1', '18600062729', '7', '2014-10-26 20:19:53', '20141026201953', null, null, null, '16', '2014-10-26 20:19:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('53684d91f5c14f7f9a8456c0b7e7af94', '您的注册验证码为489437,请勿泄露!', '4', '18611729283', '1', '2015-03-08 12:23:56', '20150308122356', null, null, null, null, '2015-03-08 12:23:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('53f58ad33fbf4159bea248de42c1d51b', '您的注册验证码为655803,请勿泄露!', '4', '18931542376', '1', '2015-03-07 21:26:08', '20150307212608', null, null, null, null, '2015-03-07 21:26:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('541b4e00404148b682b239a1d15a56ee', '何伟，您好！您的订单2015030719241856617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 19:24:18', '20150307192418', null, null, null, null, '2015-03-07 19:24:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5477aaa7705944ab9fb0676764270283', '您的注册验证码为268960,请勿泄露!', '4', '13673999778', '1', '2015-03-08 13:38:41', '20150308133841', null, null, null, null, '2015-03-08 13:38:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('54d53918f2524d36b7fd66cc06672dbb', '您的注册验证码为570657,请勿泄露!', '4', '15932586108', '1', '2015-03-08 13:37:03', '20150308133703', null, null, null, null, '2015-03-08 13:37:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5509c4aa7ebf4c07ba7f869246c31ac9', '您的注册验证码为174206,请勿泄露!', '4', '', '4', '2015-03-08 13:49:16', '20150308134916', null, null, null, null, '2015-03-08 13:49:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('552520dd28114062a1b6c635df7fa81d', '您的注册验证码为724797,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:12:27', '20150308131227', null, null, null, null, '2015-03-08 13:12:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('55537c2892034a50b44244367c6d1443', '您的注册验证码为352377,请勿泄露!', '4', '18149911326', '1', '2015-03-08 13:02:02', '20150308130202', null, null, null, null, '2015-03-08 13:02:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('560ad74cc8114b4987477c32e0f23fb1', '您好！test用户预约了2014-10-20  09:40:57的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18513705559', '7', '2014-10-27 09:41:04', '20141027094104', null, null, null, null, '2014-10-27 09:41:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('56975c57770749b6a1638ce1c042c9f4', '您的注册验证码为968405,请勿泄露!', '4', '13780538419', '1', '2015-03-08 13:33:08', '20150308133308', null, null, null, null, '2015-03-08 13:33:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('570a97a40c484ed7a4f50a42d684dcce', '您的注册验证码为512791,请勿泄露!', '4', '', '4', '2015-03-08 12:16:24', '20150308121624', null, null, null, null, '2015-03-08 12:16:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('576e4960b5e84b85a940c102dc6faa02', '您的注册验证码为923132,请勿泄露!', '4', '13149116999', '1', '2015-03-08 12:12:39', '20150308121239', null, null, null, null, '2015-03-08 12:12:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('57ce24da4e394851ad386b81d565deb7', '您的注册验证码为832353,请勿泄露!', '4', '18642294647', '1', '2015-03-08 13:10:21', '20150308131021', null, null, null, null, '2015-03-08 13:10:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('583c5d4560d3410ca93cbd7ef352206c', '您的注册验证码为286326,请勿泄露!', '4', '13314312444', '1', '2015-03-08 13:06:40', '20150308130640', null, null, null, null, '2015-03-08 13:06:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('591b4e6854bb45959faf0b753a16f2bc', '您的注册验证码为461308,请勿泄露!', '4', '15930951615', '1', '2015-03-08 12:55:46', '20150308125546', null, null, null, null, '2015-03-08 12:55:46', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('592e460804fa4436b2de8ca251bfeb0f', '您的注册验证码为199089,请勿泄露!', '4', '', '4', '2015-03-08 13:24:31', '20150308132431', null, null, null, null, '2015-03-08 13:24:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5a12a79685fe4846b6a6adc34b17f4b1', '您好！XXX用户预约了2014-10-18  14:09:44的如下项目：彩色多普勒超声检查，各类化验，。手机号为***********', '1', '15001378541', '7', '2014-10-18 14:09:49', '20141018140949', null, null, null, '16', '2014-10-18 14:09:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5c0897febe664f72a9ee916624c1f96d', null, null, null, '6', '2014-10-09 17:03:59', '20141009170359', null, null, null, '16', '2014-10-09 17:03:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5d4f588e45cb47c79dc58d06c4d1d484', '您好！null用户预约了2014-10-15 18:49:48的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，', '1', '15001378541', '7', '2014-10-20 18:50:11', '20141020185011', null, null, null, null, '2014-10-20 18:50:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5d5b4371c267433dbb42d3b6c7d123ba', '孙旭明，您好！您的订单2015030813064558660已提交，我们将在工作日24小时内与您联系。', '4', '13933458660', '1', '2015-03-08 13:06:45', '20150308130645', null, null, null, null, '2015-03-08 13:06:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5e398523a49f4bb29422bb49ad44611b', '您的注册验证码为178953,请勿泄露!', '4', '18931542376', '1', '2015-03-07 21:27:40', '20150307212740', null, null, null, null, '2015-03-07 21:27:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5e449c14044d4d7bb0c5abbc1b6aaaf3', '您好！XXX用户预约了的如下项目：X光检查，。手机号为***********', '1', '15001378541', '7', '2014-10-17 19:10:58', '20141017191058', null, null, null, '16', '2014-10-17 19:10:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5ed007aa4eb149f9aebc17364b060f07', '您的注册验证码为603903,请勿泄露!', '4', '18945941638', '1', '2015-03-07 18:18:42', '20150307181842', null, null, null, null, '2015-03-07 18:18:42', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5f0a036e44c04a029943df27a8700f71', '您的注册验证码为899751,请勿泄露!', '4', '15039444688', '1', '2015-03-08 12:15:33', '20150308121533', null, null, null, null, '2015-03-08 12:15:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('5f60e8def7a342a58441e6976f8f8184', '您的注册验证码为868396,请勿泄露!', '4', '15231432616', '1', '2015-03-08 12:42:56', '20150308124256', null, null, null, null, '2015-03-08 12:42:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('605efaf3edc146f1b3428dfb69b7bf36', '您的注册验证码为804095,请勿泄露!', '4', '13932490028', '1', '2015-03-08 13:13:25', '20150308131325', null, null, null, null, '2015-03-08 13:13:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('606a35feba6d4874a8e2d278193ce4cd', '您的注册验证码为246019,请勿泄露!', '4', '', '4', '2015-03-08 08:30:17', '20150308083017', null, null, null, null, '2015-03-08 08:30:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('60d31eb78c584528a2eeddade3f470ea', '侯强，您好！您的订单2015030812492161667已提交，我们将在工作日24小时内与您联系。', '4', '18631161667', '1', '2015-03-08 12:49:21', '20150308124921', null, null, null, null, '2015-03-08 12:49:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('61851561487b4913be472c762b792015', '您的注册验证码为671141,请勿泄露!', '4', '15130515888', '1', '2015-03-08 08:18:48', '20150308081848', null, null, null, null, '2015-03-08 08:18:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('61f8a912b41d498182afcddec19af37f', '您好！test用户预约了2014-10-20  09:40:57的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18600062729', '7', '2014-10-27 09:41:04', '20141027094104', null, null, null, null, '2014-10-27 09:41:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('620f1759f18a486da1e9d17c65365852', '您好！XXX用户预约了2014-10-14 21:43:33的如下项目：项目2，项目3，。手机号为***********', '1', '', '4', '2014-10-11 21:43:35', '20141011214335', null, null, null, null, '2014-10-11 21:43:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6283e01116dc4ec1ac96671223aa3725', '您好!2014-10-29 18:54:39，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-29 18:54:39', '20141029185439', null, null, null, '16', '2014-10-29 18:54:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('62f213102c4746218f59e4b2b0b80482', '您的注册验证码为443043,请勿泄露!', '4', '18230335555', '1', '2015-03-08 12:50:04', '20150308125004', null, null, null, null, '2015-03-08 12:50:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('62fa431926074c66807d28dc5ebf4035', '您的注册验证码为231253,请勿泄露!', '4', '13582932666', '1', '2015-03-08 13:15:34', '20150308131534', null, null, null, null, '2015-03-08 13:15:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('633a165b2c3341d9bb8e74ef18a9e1d2', '您的注册验证码为323770,请勿泄露!', '4', '', '4', '2015-03-08 13:06:56', '20150308130656', null, null, null, null, '2015-03-08 13:06:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('634c8ed5eecb4a118a4ff65599f10175', '何伟，您好！您的订单2015030723232856617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 23:23:28', '20150307232328', null, null, null, null, '2015-03-07 23:23:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('636ef1f81b3347248b87c9e55fcec52c', '您的注册验证码为664516,请勿泄露!', '4', '18611407017', '1', '2015-03-07 21:25:24', '20150307212523', null, null, null, null, '2015-03-07 21:25:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('63ac3d34e04343999aa8b2f9da5bc40f', '您的注册验证码为513511,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:34:22', '20150307203422', null, null, null, null, '2015-03-07 20:34:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('63daa4760ad04cd3aa97db2cfa1595c4', '您的注册验证码为573725,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:42:12', '20150308124212', null, null, null, null, '2015-03-08 12:42:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('645435f85f9740fa80c5855590bebfb9', '您好！xxx用户预约了2014-10-28  09:28:13的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，请注意查看!', '1', '15001378541', '1', '2014-10-25 09:28:25', '20141025092825', null, null, null, null, '2014-10-25 09:28:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('64625db156e54f7ba9f05c1b1e3fc34d', '您的注册验证码为529613,请勿泄露!', '4', '13911341237', '1', '2015-03-07 21:26:25', '20150307212625', null, null, null, null, '2015-03-07 21:26:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6481682bc65e4055adf48110b79be22d', '您的注册验证码为544622,请勿泄露!', '4', '15100588986', '1', '2015-03-08 14:01:52', '20150308140152', null, null, null, null, '2015-03-08 14:01:52', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('64e4a75aef734a458269e5ead5f2d80e', '您的注册验证码为992926,请勿泄露!', '4', '13603384456', '1', '2015-03-08 13:49:09', '20150308134909', null, null, null, null, '2015-03-08 13:49:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('65085f9cdda8437b852a60e99d13a228', '您的注册验证码为106620,请勿泄露!', '4', '13909281287', '1', '2015-03-08 12:13:18', '20150308121318', null, null, null, null, '2015-03-08 12:13:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('652db8e70abc420a8f5c8212f4f14bd6', '您的注册验证码为615590,请勿泄露!', '4', '13859383033', '1', '2015-03-08 12:46:12', '20150308124612', null, null, null, null, '2015-03-08 12:46:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('65f7d3ad224f42c4b74b8c06c9dc7771', '郑秀国，您好！您的订单2015030722231609080已提交，我们将在工作日24小时内与您联系。', '4', '15931909080', '1', '2015-03-07 22:23:16', '20150307222316', null, null, null, null, '2015-03-07 22:23:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6616b34eeb764a4889908bd2e10944bf', '您的注册验证码为653888,请勿泄露!', '4', '18712808900', '1', '2015-03-07 21:28:47', '20150307212847', null, null, null, null, '2015-03-07 21:28:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('664b931428934874859b9c4367596edb', '您的注册验证码为720050,请勿泄露!', '4', '13933458660', '1', '2015-03-08 12:48:50', '20150308124850', null, null, null, null, '2015-03-08 12:48:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6691faafdf874778b343fec3b3cd936f', '您的注册验证码为416609,请勿泄露!', '4', '15132516832', '1', '2015-03-08 12:17:55', '20150308121755', null, null, null, null, '2015-03-08 12:17:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('66d3053781a74d3aaebed5d6391efab0', '您的注册验证码为734823,请勿泄露!', '4', '15176683658', '1', '2015-03-07 21:25:53', '20150307212553', null, null, null, null, '2015-03-07 21:25:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('673892f6b3384bbe9eeb0eea23c4aabd', '您的注册验证码为352553,请勿泄露!', '4', '13965085152', '1', '2015-03-07 21:27:30', '20150307212730', null, null, null, null, '2015-03-07 21:27:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6789ccf884a8486b9ca80ab45427aa99', '付双利，您好！您的订单2015030721285522549已提交，我们将在工作日24小时内与您联系。', '4', '13909822549', '1', '2015-03-07 21:28:55', '20150307212855', null, null, null, null, '2015-03-07 21:28:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('67edb90f46ac4779a750e878c651a033', '您的注册验证码为468017,请勿泄露!', '4', '13899886643', '1', '2015-03-08 12:19:44', '20150308121944', null, null, null, null, '2015-03-08 12:19:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('67f1d32212a4483884db1101ec77662f', '您的注册验证码为462499,请勿泄露!', '4', '13731512885', '1', '2015-03-08 12:57:02', '20150308125702', null, null, null, null, '2015-03-08 12:57:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('687f4c0aaec0426a98aadc4080966113', '您的注册验证码为168801,请勿泄露!', '4', '15930456161', '1', '2015-03-08 13:07:07', '20150308130707', null, null, null, null, '2015-03-08 13:07:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('68d06b0098a94e689d725794a35a2bb2', '郑秀国，您好！您的订单2015030723040309080已提交，我们将在工作日24小时内与您联系。', '4', '15931909080', '1', '2015-03-07 23:04:03', '20150307230403', null, null, null, null, '2015-03-07 23:04:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('68ea566ee96f4fb2a8013f9f7a258695', '您好！test用户预约了2014-10-12  10:27:19的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18513705559', '1', '2014-10-25 10:27:21', '20141025102721', null, null, null, null, '2014-10-25 10:27:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('68fdf605ddb44ea695a61e39da654cba', '您的注册验证码为228809,请勿泄露!', '4', '13772644666', '1', '2015-03-08 12:12:02', '20150308121202', null, null, null, null, '2015-03-08 12:12:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6aaefaf32f7248eaad5401ee4a2b517b', '您好！test用户预约了2014-10-01  14:49:09的如下项目：各类化验，请注意查看!', '1', '18600062729', '7', '2014-10-26 14:49:14', '20141026144914', null, null, null, null, '2014-10-26 14:49:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6ab49fb3dc394b5faf0d76da605eb35a', '您的注册验证码为613016,请勿泄露!', '4', '18624427766', '1', '2015-03-08 12:16:14', '20150308121614', null, null, null, null, '2015-03-08 12:16:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6ac3a7785d7d4926bc61899b384ceb48', '您好！null用户预约了2014-10-13 18:46:17的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，', '1', '15001378541', '7', '2014-10-20 18:48:34', '20141020184834', null, null, null, null, '2014-10-20 18:48:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6ac660cb75e5426182410371cfa56a92', '何伟，您好！您的订单2015030723042656617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 23:04:26', '20150307230426', null, null, null, null, '2015-03-07 23:04:26', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6b33b4e387cc41de85881c82d20fe879', '您好！XXX用户预约了2014-10-13 20:21:57的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '15001378541', '7', '2014-10-14 20:22:00', '20141014202200', null, null, null, '16', '2014-10-14 20:22:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6b6811c50e864db385f3c88e2f08450a', '您的注册验证码为340986,请勿泄露!', '4', '13899886643', '1', '2015-03-08 12:26:30', '20150308122630', null, null, null, null, '2015-03-08 12:26:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6b84a69e7677424bb728c7b7a46c86ab', '您好！XXX用户预约了2014-10-19 17:41:29的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 17:41:31', '20141011174131', null, null, null, '16', '2014-10-11 17:41:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6c2550f59d6d45f38747351c041b2367', '您的注册验证码为687723,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:32:23', '20150307203223', null, null, null, null, '2015-03-07 20:32:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6c7d72a8afb1433491dffee4617f76ef', '您的注册验证码为565429,请勿泄露!', '4', '18099138080', '1', '2015-03-08 12:11:08', '20150308121108', null, null, null, null, '2015-03-08 12:11:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6d14fb3d67214f449b881cfb2a2886cd', '戴金朝，您好！您的订单2015030813581406215已提交，我们将在工作日24小时内与您联系。', '4', '13803306215', '1', '2015-03-08 13:58:15', '20150308135814', null, null, null, null, '2015-03-08 13:58:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6d2b4b2c90204c63a2e0902485e6ddbc', '您好！null用户预约了2014-10-06 18:45:21的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，', '1', '18600062729', '7', '2014-10-20 18:45:23', '20141020184523', null, null, null, '16', '2014-10-20 18:45:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6da3a7b5a6544a13b33448a2cfa85799', '王占全，您好！您的订单2015030813164532666已提交，我们将在工作日24小时内与您联系。', '4', '13582932666', '1', '2015-03-08 13:16:45', '20150308131645', null, null, null, null, '2015-03-08 13:16:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6daf234e74bf463fb13d1266faa9bbda', '您的注册验证码为519979,请勿泄露!', '4', '18511156617', '1', '2015-03-07 17:35:45', '20150307173545', null, null, null, null, '2015-03-07 17:35:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6db07f5d59db4786be7885bce06275c3', '您好！woqu用户预约了2014-10-05 11:14:58的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18513705559', '1', '2014-10-25 11:15:00', '20141025111500', null, null, null, '16', '2014-10-25 11:15:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('6e0ea8c2db5246e9a3d813187809b28f', '盛春生，您好！您的订单2015030721282385152已提交，我们将在工作日24小时内与您联系。', '4', '13965085152', '1', '2015-03-07 21:28:23', '20150307212823', null, null, null, null, '2015-03-07 21:28:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('70333aa2b1f94bf9b75caa1c03f11217', '您的注册验证码为149901,请勿泄露!', '4', '15931909080', '1', '2015-03-07 22:20:57', '20150307222057', null, null, null, null, '2015-03-07 22:20:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7095338b0762404bbc5b440e1eea72a8', '杨海兵，您好！您的订单2015030721285147997已提交，我们将在工作日24小时内与您联系。', '4', '13303247997', '1', '2015-03-07 21:28:51', '20150307212851', null, null, null, null, '2015-03-07 21:28:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('70d519ec71b94c6591076fd4c331f863', '您好！sunjinyang用户预约了2014-10-06 11:10:11的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，消化系统检测，请注意查看!', '1', '18513705559', '7', '2014-10-28 11:10:15', '20141028111014', null, null, null, null, '2014-10-28 11:10:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('70dd74880c1c4638a08d7944ced5c5ff', '您的注册验证码为908659,请勿泄露!', '4', '18333439443', '1', '2015-03-07 22:16:42', '20150307221642', null, null, null, null, '2015-03-07 22:16:42', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('712c0f0b1b6c4d4a820618f892b5bba5', '您的注册验证码为106775,请勿泄露!', '4', '18004319127', '1', '2015-03-08 12:46:17', '20150308124617', null, null, null, null, '2015-03-08 12:46:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('71420ec587d94b3699b39828a17a1106', '您的注册验证码为136482,请勿泄露!', '4', '', '4', '2015-03-08 12:33:05', '20150308123305', null, null, null, null, '2015-03-08 12:33:05', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('714ce41e3b114b2c9346a478c913b970', '您的注册验证码为832644,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:26:40', '20150308122640', null, null, null, null, '2015-03-08 12:26:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('718723166b0045cdbe6a546fd4947f4c', '您的注册验证码为888771,请勿泄露!', '4', '18230335555', '1', '2015-03-08 13:06:40', '20150308130640', null, null, null, null, '2015-03-08 13:06:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('721efb1bcf4a47c79f76d39828f7f001', '李福新，您好！您的订单2015030719193567867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:19:35', '20150307191935', null, null, null, null, '2015-03-07 19:19:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('724e660b84d84c718e3ab3af19d2e7a8', '您的注册验证码为831079,请勿泄露!', '4', '18604599368', '1', '2015-03-08 13:18:53', '20150308131853', null, null, null, null, '2015-03-08 13:18:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('725e2c1afd2d46348e3a1a45dda4cb74', '您的注册验证码为603316,请勿泄露!', '4', '18641102778', '1', '2015-03-08 13:48:44', '20150308134843', null, null, null, null, '2015-03-08 13:48:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('74a5fa020cb944168fb4411ae7f8f63e', '您的注册验证码为182751,请勿泄露!', '4', '', '4', '2015-03-08 13:43:07', '20150308134307', null, null, null, null, '2015-03-08 13:43:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7559f6ca88804a68be33bff28e9e42c9', '您的注册验证码为638082,请勿泄露!', '4', '13920417981', '1', '2015-03-08 12:44:03', '20150308124403', null, null, null, null, '2015-03-08 12:44:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('75c377fdb2494e4085c7317747d48404', '您好！cn.tvcms.cms.pojo.Member@916ab8用户预约了2017-10-20 19:07:26的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，', '1', '15001378541', '7', '2014-10-20 19:07:32', '20141020190732', null, null, null, '16', '2014-10-20 19:07:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('76c878036551482d96bb0aba6e9c17e7', '您的注册验证码为751708,请勿泄露!', '4', '13016811188', '1', '2015-03-08 10:09:08', '20150308100908', null, null, null, null, '2015-03-08 10:09:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7705161e964c48e7a45a9d02496a84de', '翟静，您好！您的订单2015030721283937465已提交，我们将在工作日24小时内与您联系。', '4', '18630137465', '1', '2015-03-07 21:28:39', '20150307212839', null, null, null, null, '2015-03-07 21:28:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7744ad2e201046c69c2c32c46c1ca8f2', '您的注册验证码为236464,请勿泄露!', '4', '15865814688', '1', '2015-03-08 12:11:28', '20150308121128', null, null, null, null, '2015-03-08 12:11:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7745ecc9a5764f2794fccc648a6cbec4', '您的注册验证码为283003,请勿泄露!', '4', '13933458660', '1', '2015-03-08 12:10:52', '20150308121052', null, null, null, null, '2015-03-08 12:10:52', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7778e5f117b848659016a874f274d449', '您的注册验证码为526194,请勿泄露!', '4', '13933458660', '1', '2015-03-08 08:29:56', '20150308082956', null, null, null, null, '2015-03-08 08:29:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('78789cf699004220b5b3e80f686311bb', '您好！XXX用户预约了2014-10-05 17:44:51的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 17:44:54', '20141011174454', null, null, null, '16', '2014-10-11 17:44:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('791dc5c8e23b4b6f8f2cd22f66976468', '您的注册验证码为825937,请勿泄露!', '4', '13933458660', '1', '2015-03-08 12:13:03', '20150308121302', null, null, null, null, '2015-03-08 12:13:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('797306023a8d45fc8e9eb5c4572db56d', null, '3', null, '6', '2014-10-10 09:34:12', '20141010093412', null, null, null, '16', '2014-10-10 09:34:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('79a5b6ef560c4e469df3cc688159fa6d', '您的注册验证码为783645,请勿泄露!', '4', '13930660556', '1', '2015-03-08 12:17:28', '20150308121728', null, null, null, null, '2015-03-08 12:17:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7b8c373d44644243a4a1307035477342', '您的注册验证码为669040,请勿泄露!', '4', '18600062729', '1', '2015-03-07 21:37:55', '20150307213755', null, null, null, null, '2015-03-07 21:37:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7bd4d175e6d14dd2a9b73e997ed671df', '您的注册验证码为621880,请勿泄露!', '4', '15922122358', '1', '2015-03-08 12:44:51', '20150308124451', null, null, null, null, '2015-03-08 12:44:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7be1ab2f806146e9b293b5d2fa275cc3', '您的注册验证码为494150,请勿泄露!', '4', '', '4', '2015-03-08 13:39:04', '20150308133904', null, null, null, null, '2015-03-08 13:39:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7c19c4fe4da8482e9fdd290bc0825c84', '您的注册验证码为780289,请勿泄露!', '4', '18061611779', '1', '2015-03-08 12:15:43', '20150308121543', null, null, null, null, '2015-03-08 12:15:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7c2c14f83e6e4b56b2cb9232d4d1ccd7', '阿斯顿发斯蒂芬阿斯蒂芬', '3', 'sdfsdf', '6', '2014-10-10 20:03:36', '20141010200336', null, null, null, '16', '2014-10-10 20:03:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7c7cc817b8c34e28a89bb884114eaf3b', '您的注册验证码为851548,请勿泄露!', '4', '13955323060', '1', '2015-03-08 13:41:57', '20150308134157', null, null, null, null, '2015-03-08 13:41:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7db49fca0ceb4f11978113c63fc4d011', '您好！test用户预约了2014-10-01  14:49:09的如下项目：各类化验，请注意查看!', '1', '18513705559', '7', '2014-10-26 14:49:13', '20141026144913', null, null, null, null, '2014-10-26 14:49:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7dbb623e0a0f44548e9be1bd04f7dbc6', '您的注册验证码为720771,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:58:41', '20150308125841', null, null, null, null, '2015-03-08 12:58:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7df915267fbf48818487dd1024bab836', '您的注册验证码为223256,请勿泄露!', '4', '18931170188', '1', '2015-03-08 13:20:28', '20150308132028', null, null, null, null, '2015-03-08 13:20:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7eb3e94944dc483b8efc75dab3266a81', '您的注册验证码为790669,请勿泄露!', '4', '18604599368', '1', '2015-03-08 13:19:31', '20150308131930', null, null, null, null, '2015-03-08 13:19:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7eef1388f9c74d14be779d7ba42bfbf6', '您的注册验证码为548435,请勿泄露!', '4', '13945094448', '1', '2015-03-08 12:56:24', '20150308125624', null, null, null, null, '2015-03-08 12:56:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('7f21447f61f84b578c403adf6e0e21d6', '您的注册验证码为827446,请勿泄露!', '4', '15832174444', '1', '2015-03-08 13:07:40', '20150308130740', null, null, null, null, '2015-03-08 13:07:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8033893897044f46bdb0a0f2873ca75a', '您的注册验证码为621889,请勿泄露!', '4', '15150648868', '1', '2015-03-08 12:14:48', '20150308121448', null, null, null, null, '2015-03-08 12:14:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('803d02a0cc014a09a907a8c037b715be', '您的注册验证码为612841,请勿泄露!', '4', '', '4', '2015-03-08 12:30:48', '20150308123048', null, null, null, null, '2015-03-08 12:30:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('80701ab3e8984c3791bc2ff710a7cea8', '您的注册验证码为909380,请勿泄露!', '4', '18622927320', '1', '2015-03-08 13:56:33', '20150308135633', null, null, null, null, '2015-03-08 13:56:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('80954909f8de492ca89e5cd8b5b8b9b0', '李福新，您好！您的订单2015030719223167867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:22:31', '20150307192231', null, null, null, null, '2015-03-07 19:22:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('80c3ebc25c9b439c942ff91d3d0ee4ef', '您的注册验证码为958615,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:47:48', '20150308124748', null, null, null, null, '2015-03-08 12:47:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('81025a8e4b6d484cadcc525a752ae082', '何伟，您好！您的订单2015030720303556617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 20:30:35', '20150307203035', null, null, null, null, '2015-03-07 20:30:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('817e7a74a9c64266b8b7907743dfc7c0', '您的注册验证码为362413,请勿泄露!', '4', '18668968517', '1', '2015-03-08 12:56:06', '20150308125606', null, null, null, null, '2015-03-08 12:56:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('821217f5434948578d7a9d522fe2741c', '您的注册验证码为804364,请勿泄露!', '4', '18634322780', '1', '2015-03-08 13:51:13', '20150308135113', null, null, null, null, '2015-03-08 13:51:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8216741246234726a3fccdd516d64129', '您的注册验证码为912374,请勿泄露!', '4', '13739881980', '1', '2015-03-08 13:54:39', '20150308135439', null, null, null, null, '2015-03-08 13:54:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('824f4466377046ea82c2a60433bf2513', '您的注册验证码为763673,请勿泄露!', '4', '13369613520', '1', '2015-03-08 13:01:20', '20150308130120', null, null, null, null, '2015-03-08 13:01:20', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('825cda2092b0420890eda9f2e6ef1c62', '鲁建新，您好！您的订单2015030812425625588已提交，我们将在工作日24小时内与您联系。', '4', '15230925588', '1', '2015-03-08 12:42:56', '20150308124256', null, null, null, null, '2015-03-08 12:42:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('826b7542e69647379ac9625e21ab7932', '您的注册验证码为328419,请勿泄露!', '4', '18641102778', '1', '2015-03-08 13:35:13', '20150308133513', null, null, null, null, '2015-03-08 13:35:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('82df1dbb79f6487181dbd6071bae9cd0', '您的注册验证码为348351,请勿泄露!', '4', '13832482528', '1', '2015-03-08 12:50:47', '20150308125047', null, null, null, null, '2015-03-08 12:50:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('82faefd9fda4407da108dfef2f160380', '您的注册验证码为208944,请勿泄露!', '4', '', '4', '2015-03-08 13:50:06', '20150308135006', null, null, null, null, '2015-03-08 13:50:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('830b2aa9480e4809b27ff4accdc6270b', '您的注册验证码为385338,请勿泄露!', '4', '18617861122', '1', '2015-03-07 20:43:16', '20150307204316', null, null, null, null, '2015-03-07 20:43:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('83bab208262d4512a08150c544f95d01', '您的注册验证码为741540,请勿泄露!', '4', '13933458660', '1', '2015-03-08 08:29:36', '20150308082936', null, null, null, null, '2015-03-08 08:29:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('83fa2154a0f94c6e820afe12904735d1', '您的注册验证码为597795,请勿泄露!', '4', '18602222746', '1', '2015-03-08 09:04:06', '20150308090406', null, null, null, null, '2015-03-08 09:04:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('845a217670a244dfa96bea4bc62b9c01', '您的注册验证码为515644,请勿泄露!', '4', '18149911326', '1', '2015-03-08 13:06:16', '20150308130616', null, null, null, null, '2015-03-08 13:06:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('847d82b04a394efaa78ab1eee47c6262', '您的注册验证码为599283,请勿泄露!', '4', '15032500599', '1', '2015-03-07 21:39:36', '20150307213936', null, null, null, null, '2015-03-07 21:39:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('84c7ae900b674e0a8ed94acdf2c1dabb', '您的注册验证码为975031,请勿泄露!', '4', '13069898987', '1', '2015-03-08 13:26:40', '20150308132640', null, null, null, null, '2015-03-08 13:26:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('852ca81f60904aa8a09046017612be19', 'retg', '3', '', '7', '2014-11-08 15:10:23', '20141108151022', null, null, null, '16', '2014-11-08 15:10:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('85a8452eaad8408fa552a612289018b5', '您好！null用户预约了2014-10-13 18:46:17的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，', '1', '18600062729', '7', '2014-10-20 18:48:13', '20141020184657', null, null, null, null, '2014-10-20 18:48:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('86c2a0ba5ed641049f76d18abc3df306', '您的注册验证码为266894,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:37:30', '20150308123730', null, null, null, null, '2015-03-08 12:37:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('86e3bd1cf9554dc2a212658eee2a27e5', '您的注册验证码为370894,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:27:51', '20150308122751', null, null, null, null, '2015-03-08 12:27:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('86eda79b8f3b4ec9aabb56e49e548910', '您的注册验证码为331386,请勿泄露!', '4', '13220171000', '1', '2015-03-08 12:17:26', '20150308121726', null, null, null, null, '2015-03-08 12:17:26', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('86f0603ded28469e8b21aa941eb8099a', '您的注册验证码为838770,请勿泄露!', '4', '18511156617', '1', '2015-03-07 20:52:09', '20150307205209', null, null, null, null, '2015-03-07 20:52:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('873bbb9d1e554398807bf408ad621638', '您的注册验证码为527044,请勿泄露!', '4', '', '4', '2015-03-08 13:06:37', '20150308130637', null, null, null, null, '2015-03-08 13:06:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('879058c5831a463394263afa8190b3b7', '张剑，您好！您的订单2015030721281593179已提交，我们将在工作日24小时内与您联系。', '4', '18631593179', '1', '2015-03-07 21:28:15', '20150307212815', null, null, null, null, '2015-03-07 21:28:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('87d0635a93f1416a975bb3468bb66234', '您好！228295289用户预约了2014-10-13 14:37:01的如下项目：彩色多普勒超声检查，健康檢查，请注意查看!', '1', '18513705559', '7', '2014-10-28 14:37:03', '20141028143703', null, null, null, '16', '2014-10-28 14:37:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('87dfe1abcef345e0a1b51d833bc66522', '测试信息！！', '3', '18945941638', '1', '2014-10-10 10:00:27', '20141010100027', null, null, null, '16', '2014-10-10 10:00:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('886a0169fd714153966371d049559ccc', '您的注册验证码为116135,请勿泄露!', '4', '15899428772', '1', '2015-03-07 21:34:27', '20150307213427', null, null, null, null, '2015-03-07 21:34:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('88a5415b293141c4a47f2c1eb415fbfd', '您的注册验证码为814958,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:33:37', '20150308123337', null, null, null, null, '2015-03-08 12:33:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('88d9428d7d8241b7a825474f71a1e2af', '您的注册验证码为604474,请勿泄露!', '4', '18663955866', '1', '2015-03-08 12:50:35', '20150308125035', null, null, null, null, '2015-03-08 12:50:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('89d13cdda8f640419438e892b437671d', '苗，您好！您的订单2015030718193282775已提交，我们将在工作日24小时内与您联系。', '4', '18515282775', '1', '2015-03-07 18:19:32', '20150307181932', null, null, null, null, '2015-03-07 18:19:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('89f8b7febd9441c29d52853721b6773e', '您的注册验证码为518530,请勿泄露!', '4', '13863798764', '1', '2015-03-08 13:28:16', '20150308132816', null, null, null, null, '2015-03-08 13:28:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8a47b9ec6e9d42bbb5f9730bf4e1c278', '您好！XXX用户预约了2014-10-13  16:09:10的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，。手机号为***********', '1', '18600062729', '7', '2014-10-17 16:09:18', '20141017160918', null, null, null, '16', '2014-10-17 16:09:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8b100907c53c4c6c9e608c8505c0f694', '您的注册验证码为994583,请勿泄露!', '4', '18641102778', '1', '2015-03-08 13:34:59', '20150308133459', null, null, null, null, '2015-03-08 13:34:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8b18b2c4680544ea96f53419b88ae5a6', '您的注册验证码为628225,请勿泄露!', '4', '15603699917', '1', '2015-03-08 13:22:30', '20150308132230', null, null, null, null, '2015-03-08 13:22:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8c17c3eadefb4e46a17b7e0c6dde0ad5', '您好，你的注册验证码为：811957，请勿泄露!', '4', '18513705559', '7', '2014-11-17 11:35:17', '20141117113517', null, null, null, '1', '2014-11-17 11:35:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8c2baa566bdb4ab3b6324ecace416ddf', '您好！xrn用户预约了2014-10-27  09:43:02的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），请注意查看!', '1', '18600062729', '7', '2014-10-27 09:43:05', '20141027094305', null, null, null, '16', '2014-10-27 09:43:05', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8c7e2674c3934ab98a08ac2e1ec1306a', '您的注册验证码为110473,请勿泄露!', '4', '', '4', '2015-03-08 12:58:46', '20150308125846', null, null, null, null, '2015-03-08 12:58:46', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8d03be7511764052ad4522c83855e376', '您的注册验证码为677445,请勿泄露!', '4', '13899886643', '1', '2015-03-08 12:29:03', '20150308122903', null, null, null, null, '2015-03-08 12:29:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8d276622e3764bcdaf27f9865818e124', '您的注册验证码为944269,请勿泄露!', '4', '18511156617', '1', '2015-03-07 19:58:39', '20150307195839', null, null, null, null, '2015-03-07 19:58:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8d2b4ea1be2242129bfd075503fca665', 'xu，您好！您的订单2015030722293362729已提交，我们将在工作日24小时内与您联系。', '4', '18600062729', '1', '2015-03-07 22:29:33', '20150307222933', null, null, null, null, '2015-03-07 22:29:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8d74211f2e2f419f961cd47c1fa75772', '您的注册验证码为792378,请勿泄露!', '4', '18004319127', '1', '2015-03-08 12:46:28', '20150308124628', null, null, null, null, '2015-03-08 12:46:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8d7fe717442044a6a5b03a3842708739', '韩娟娟，您好！您的订单2015030721293783658已提交，我们将在工作日24小时内与您联系。', '4', '15176683658', '1', '2015-03-07 21:29:37', '20150307212937', null, null, null, null, '2015-03-07 21:29:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8e63715107e74b5a9a9456a00407315f', '您的注册验证码为293458,请勿泄露!', '4', '13899886643', '1', '2015-03-08 12:25:36', '20150308122536', null, null, null, null, '2015-03-08 12:25:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8eaddaadcd674449aa6959e499ce8e33', '您的注册验证码为237539,请勿泄露!', '4', '13931187955', '1', '2015-03-08 13:00:28', '20150308130028', null, null, null, null, '2015-03-08 13:00:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8fc353a7fc0f4ebdb3393e7d605a66c0', '您的注册验证码为454778,请勿泄露!', '4', '', '4', '2015-03-08 12:17:16', '20150308121716', null, null, null, null, '2015-03-08 12:17:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('8ff1909d120e49d8a605f624f1cb1025', '您的注册验证码为998637,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:31:39', '20150308123139', null, null, null, null, '2015-03-08 12:31:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('901015069add4c8ea6ef5e82bf6d3e36', '您好！XXX用户预约了2014-10-13 20:22:11的如下项目：项目2，项目3，。手机号为***********', '1', '15001378541', '7', '2014-10-14 20:22:13', '20141014202213', null, null, null, '16', '2014-10-14 20:22:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('907eb0d1d2ce4815b09cddf649807ce8', '您好！test用户预约了2014-10-19  10:13:18的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '15001378541', '1', '2014-10-25 10:14:23', '20141025101423', null, null, null, null, '2014-10-25 10:14:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('910b05817e5743c895066493e7fff538', '您的注册验证码为899155,请勿泄露!', '4', '18945641638', '1', '2015-03-07 17:54:58', '20150307175458', null, null, null, null, '2015-03-07 17:54:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9132b5da820c4ce7bc37c04718e87273', '您的注册验证码为981708,请勿泄露!', '4', '13932490028', '1', '2015-03-08 13:17:22', '20150308131722', null, null, null, null, '2015-03-08 13:17:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('92349197b08b48768475825cb6d44fdb', '您的注册验证码为119819,请勿泄露!', '4', '15081528389', '1', '2015-03-08 13:06:56', '20150308130656', null, null, null, null, '2015-03-08 13:06:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('92aaa79701d74c869e4ada70e67c8e70', '您的注册验证码为100747,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:10:22', '20150308131022', null, null, null, null, '2015-03-08 13:10:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('92bc46754bc14d8b9422619b1ed3391d', '您好！null用户预约了2014-10-06 18:45:21的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，', '1', '15001378541', '7', '2014-10-20 18:45:23', '20141020184523', null, null, null, '16', '2014-10-20 18:45:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('93e1f53c20824dff85d414951f820b61', '您的注册验证码为734661,请勿泄露!', '4', '13230810666', '1', '2015-03-08 12:51:43', '20150308125143', null, null, null, null, '2015-03-08 12:51:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('94d527db6b7b442b97b110d6760715cc', '您的注册验证码为553118,请勿泄露!', '4', '18731558180', '1', '2015-03-08 13:34:40', '20150308133440', null, null, null, null, '2015-03-08 13:34:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('94ff9ea546d84326b8fbec7a32ceba20', '您的注册验证码为786519,请勿泄露!', '4', '17001224086', '1', '2015-03-08 13:05:24', '20150308130524', null, null, null, null, '2015-03-08 13:05:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('95887a7c1d914cd18c258b63f1408f9b', '您好！xxx用户预约了的如下项目：各类化验，请注意查看!', '1', '15001378541', '7', '2014-10-22 15:38:37', '20141022153837', null, null, null, '16', '2014-10-22 15:38:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('95eb9fdd47864a19916700346fc14fed', '您的注册验证码为668361,请勿泄露!', '4', '15109947919', '1', '2015-03-08 12:43:11', '20150308124311', null, null, null, null, '2015-03-08 12:43:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('968b73e7a1ee42da8983c1a3d1766fdb', '您的注册验证码为340750,请勿泄露!', '4', '13681191570', '1', '2015-03-08 13:00:45', '20150308130045', null, null, null, null, '2015-03-08 13:00:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('96f1cf27349a4ebdab0d1a0f9bd036e9', '李志刚，您好！您的订单2015030813065680666已提交，我们将在工作日24小时内与您联系。', '4', '13298880666', '1', '2015-03-08 13:06:56', '20150308130656', null, null, null, null, '2015-03-08 13:06:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('970150dc9e714e17a278721bedbe15a6', '田鹏，您好！您的订单2015030812581612885已提交，我们将在工作日24小时内与您联系。', '4', '13731512885', '1', '2015-03-08 12:58:16', '20150308125816', null, null, null, null, '2015-03-08 12:58:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('97a99cab5fe044fbb0c6f203e1c34675', '您的注册验证码为501656,请勿泄露!', '4', '15150648868', '1', '2015-03-08 12:14:44', '20150308121444', null, null, null, null, '2015-03-08 12:14:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('984ee945f5354e12b427e93f701010db', '短信测试回N退订', '3', '18201362643', '1', '2015-04-16 18:05:48', '20150416180548', null, null, null, '1', '2015-04-16 18:05:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('99009baafa3e4c59a6f99b99e4ba6c5c', '您的注册验证码为934902,请勿泄露!', '4', '13582578365', '1', '2015-03-07 21:36:22', '20150307213622', null, null, null, null, '2015-03-07 21:36:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9978186ac76b4d049f6c55b9fa613dad', '测试信息！！', '3', '18513705559', '1', '2014-10-10 10:00:27', '20141010100027', null, null, null, '16', '2014-10-10 10:00:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('99b19335bb594488882ffce62520542a', '您好！XXX用户预约了2014-10-05 11:08:57的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 11:09:00', '20141011110900', null, null, null, '16', '2014-10-11 11:09:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9a13b73b8943451284d7c952f3121e80', '您好！test用户预约了2014-10-21  10:21:28的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18513705559', '1', '2014-10-25 10:21:41', '20141025102141', null, null, null, '16', '2014-10-25 10:21:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9ae840a05d2c411a9d3fd09853d93c98', '杨迎，您好！您的订单2015030721282125305已提交，我们将在工作日24小时内与您联系。', '4', '13472925305', '1', '2015-03-07 21:28:21', '20150307212821', null, null, null, null, '2015-03-07 21:28:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9b885fa0ea28448c87d48af92bcb5de3', '您的注册验证码为462533,请勿泄露!', '4', '13963507171', '1', '2015-03-08 12:57:15', '20150308125715', null, null, null, null, '2015-03-08 12:57:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9c3784eca73946aa8c5ab26c5e49518a', '您的注册验证码为684413,请勿泄露!', '4', '18510854210', '1', '2015-03-08 12:46:24', '20150308124624', null, null, null, null, '2015-03-08 12:46:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9cbf5b8c74794c3cbd4fc3ce67b3243c', '您的注册验证码为100496,请勿泄露!', '4', '13937127977', '1', '2015-03-08 13:06:59', '20150308130659', null, null, null, null, '2015-03-08 13:06:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9ce26d7f60a14e799a940b98e27874a7', 'k;jjhlkj', '3', '14534565', '7', '2014-11-08 15:11:22', '20141108151122', null, null, null, '16', '2014-11-08 15:11:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9d44868a1bfc49fcadf6637e10d8041c', '您的注册验证码为844575,请勿泄露!', '4', '18624427766', '1', '2015-03-08 13:07:04', '20150308130704', null, null, null, null, '2015-03-08 13:07:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9d92e4eca97b453495c132a5c56979b8', '您好！123123用户预约了2014-10-12 11:12:27的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18513705559', '1', '2014-10-25 11:12:29', '20141025111229', null, null, null, '16', '2014-10-25 11:12:29', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9e5e569f11424aabb9c0ba6dd2635fe0', '测试！！', '3', '18600062729', '1', '2014-12-07 18:12:08', '20141207181208', null, null, null, '1', '2014-12-07 18:12:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9eac1c0ee4c446c2b368c905d970bc8e', '您的注册验证码为995616,请勿泄露!', '4', '13663370225', '1', '2015-03-08 12:17:34', '20150308121734', null, null, null, null, '2015-03-08 12:17:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9eae6f2cff834b3f8e9b530f0d6ee0df', '您的注册验证码为496869,请勿泄露!', '4', '18500228638', '1', '2015-03-08 09:57:08', '20150308095708', null, null, null, null, '2015-03-08 09:57:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9eff79166f8f4552816235e405488048', '您的注册验证码为124049,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:35:49', '20150308123549', null, null, null, null, '2015-03-08 12:35:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9f5932b4e2bf491f81e4183b56fe107b', '您好！XXX用户预约了2014-10-13 21:39:18的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 21:39:21', '20141011213921', null, null, null, null, '2014-10-11 21:39:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9f64c8e9123c43ca98a38a4346b20790', '您的注册验证码为557800,请勿泄露!', '4', '15832174444', '1', '2015-03-08 13:15:08', '20150308131508', null, null, null, null, '2015-03-08 13:15:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('9f6a3d3895b74daf88946cd90ca9ca2b', 'xu，您好！您的订单2015030809422862729已提交，我们将在工作日24小时内与您联系。', '4', '18600062729', '1', '2015-03-08 09:42:28', '20150308094228', null, null, null, null, '2015-03-08 09:42:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a00ac6b3f5eb4392b65ee54221327d3b', '您的注册验证码为409587,请勿泄露!', '4', '13472925305', '1', '2015-03-07 21:24:55', '20150307212455', null, null, null, null, '2015-03-07 21:24:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a01cbdb0ce3c44a9a6e9661e99cad015', '您的注册验证码为777044,请勿泄露!', '4', '13369613520', '1', '2015-03-08 12:56:53', '20150308125653', null, null, null, null, '2015-03-08 12:56:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a0522d03b0af42dd9f07bd479d3ddc4c', '您的注册验证码为264042,请勿泄露!', '4', '13843387071', '1', '2015-03-08 13:36:17', '20150308133617', null, null, null, null, '2015-03-08 13:36:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a0835b11dc514e2193f37a6a6048db21', '您的注册验证码为633457,请勿泄露!', '4', '18631161667', '1', '2015-03-08 12:48:37', '20150308124837', null, null, null, null, '2015-03-08 12:48:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a088b8b526164b1fb14a4a88a33c3af6', '您好！XXX用户预约了2014-10-13 14:12:50的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 14:12:54', '20141011141254', null, null, null, '16', '2014-10-11 14:12:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a0f0f3cae03a44ad9166d180922c501a', '您的注册验证码为649782,请勿泄露!', '4', '13909822549', '1', '2015-03-07 21:26:09', '20150307212609', null, null, null, null, '2015-03-07 21:26:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a2118671f9ee4829a6f6abcd0cbb4853', '您的注册验证码为972466,请勿泄露!', '4', '13369613520', '1', '2015-03-08 13:01:26', '20150308130126', null, null, null, null, '2015-03-08 13:01:26', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a21ee3c7b5aa4dbd860cc19ffec21845', '您的注册验证码为707087,请勿泄露!', '4', '18731558180', '1', '2015-03-08 13:32:14', '20150308133214', null, null, null, null, '2015-03-08 13:32:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a29b4ca258634ec1ab99a4f9f7523b92', '您的注册验证码为655696,请勿泄露!', '4', '13069898987', '1', '2015-03-08 13:10:30', '20150308131030', null, null, null, null, '2015-03-08 13:10:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a29dbed374d24bdf9ef5c5ab5b481cef', '您的注册验证码为178848,请勿泄露!', '4', '18230335555', '1', '2015-03-08 13:00:11', '20150308130011', null, null, null, null, '2015-03-08 13:00:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a2d2443490b24da4b57164472d93d096', null, '3', null, '1', '2014-10-09 17:27:12', '20141009172712', null, null, null, '16', '2014-10-09 17:27:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a3af4d658b58468daca2a303c2d25c3b', '您的注册验证码为732858,请勿泄露!', '4', '13315573068', '1', '2015-03-07 21:30:28', '20150307213028', null, null, null, null, '2015-03-07 21:30:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a430fd5b75ea45c5a570f86d3868a2b0', '您的注册验证码为937142,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:07:44', '20150308130744', null, null, null, null, '2015-03-08 13:07:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a44965d3b2ac40f1a718ac5617fd27fe', '您的注册验证码为404340,请勿泄露!', '4', '18633439443', '1', '2015-03-07 22:17:02', '20150307221702', null, null, null, null, '2015-03-07 22:17:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a467677179f44f3898c64acaa7b868f3', '您的注册验证码为181440,请勿泄露!', '4', '15903152661', '1', '2015-03-08 13:25:07', '20150308132507', null, null, null, null, '2015-03-08 13:25:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a4a07b10132d48f0b081d66d07cc4bd9', '您的注册验证码为531118,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:25:38', '20150308122538', null, null, null, null, '2015-03-08 12:25:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a4dd1407556640aebe13949859f516f2', '您的注册验证码为778609,请勿泄露!', '4', '13069898987', '1', '2015-03-08 12:58:39', '20150308125839', null, null, null, null, '2015-03-08 12:58:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a4dd20143d92430585a3cda96e1fb69b', '您的注册验证码为722657,请勿泄露!', '4', '13933458660', '1', '2015-03-08 12:10:23', '20150308121023', null, null, null, null, '2015-03-08 12:10:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a53d95b92aec4f8fb5757f47e367cf7b', '长春周玉芬，您好！您的订单2015030812580463782已提交，我们将在工作日24小时内与您联系。', '4', '13944163782', '1', '2015-03-08 12:58:04', '20150308125804', null, null, null, null, '2015-03-08 12:58:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a5a39c2ae23d4c25b385c97311d09edf', '您的注册验证码为778475,请勿泄露!', '4', '15899428772', '1', '2015-03-07 21:26:47', '20150307212647', null, null, null, null, '2015-03-07 21:26:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a68d928cfd1d415dab8fbe67c0e6cde5', '您的注册验证码为739592,请勿泄露!', '4', '17001224086', '1', '2015-03-07 18:13:45', '20150307181345', null, null, null, null, '2015-03-07 18:13:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a695d4eb2c3e436bac7c5d93d83e5a9c', '您的注册验证码为787943,请勿泄露!', '4', '13832465978', '1', '2015-03-08 12:49:48', '20150308124948', null, null, null, null, '2015-03-08 12:49:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a6ec535b54874fa48b5f6b3bd94c2745', '您的注册验证码为919316,请勿泄露!', '4', '18940980695', '1', '2015-03-08 12:19:32', '20150308121932', null, null, null, null, '2015-03-08 12:19:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a732a686a58149d6ad8e5d8f6b21cbdf', '您的注册验证码为212791,请勿泄露!', '4', '15027677036', '1', '2015-03-08 12:13:01', '20150308121301', null, null, null, null, '2015-03-08 12:13:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a77935ddf8ef46cf9e63cfe5a4e5037d', null, '3', '234', '6', '2014-10-09 17:26:49', '20141009172649', null, null, null, '16', '2014-10-09 17:26:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a77d71c09c5f47579b1aee16d16ffe0b', '您的注册验证码为579047,请勿泄露!', '4', '18602222746', '1', '2015-03-08 09:01:14', '20150308090114', null, null, null, null, '2015-03-08 09:01:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a7895db7421c4877b300cabadc47bae4', '您的注册验证码为705607,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:42:51', '20150308124251', null, null, null, null, '2015-03-08 12:42:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a8399ad83937424e8fbfe4d79345d35a', '您的注册验证码为755419,请勿泄露!', '4', '18063522929', '1', '2015-03-08 13:20:14', '20150308132014', null, null, null, null, '2015-03-08 13:20:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a86827fbd9d6448dabb8cb163edbaa94', '234', '3', '234', '6', '2014-10-10 09:37:28', '20141010093728', null, null, null, '16', '2014-10-10 09:37:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a9367d18687e485b88c6f9d2579a2f94', 'halo', '3', '18513705559', '1', '2014-10-25 11:25:37', '20141025112537', null, null, null, '16', '2014-10-25 11:25:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a9dcdb3f25554eaa936e5b96dae5c942', '您的注册验证码为771580,请勿泄露!', '4', '18904769855', '1', '2015-03-08 12:44:38', '20150308124438', null, null, null, null, '2015-03-08 12:44:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('a9f735381bb34e988e403ffe1b60cb6d', '您的注册验证码为546293,请勿泄露!', '4', '13579923285', '1', '2015-03-08 12:14:38', '20150308121438', null, null, null, null, '2015-03-08 12:14:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('aa1cc3d568824dae99f69f0018c01617', '您的注册验证码为896192,请勿泄露!', '4', '13585106688', '1', '2015-03-08 12:53:12', '20150308125312', null, null, null, null, '2015-03-08 12:53:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('aa21b29047f24aebbf12d304c9dade69', '您的注册验证码为665970,请勿泄露!', '4', '18668968517', '1', '2015-03-08 12:55:55', '20150308125555', null, null, null, null, '2015-03-08 12:55:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('aa8a9e12209b4949b6c232f361cf67cd', '您的注册验证码为618813,请勿泄露!', '4', '13911365763', '1', '2015-03-08 13:06:10', '20150308130610', null, null, null, null, '2015-03-08 13:06:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('aa9f95eeca8d46db99c22b7ee4b1cd34', '234234', '3', '234234234', '2', '2014-10-10 09:37:42', '20141010093742', null, null, null, '16', '2014-10-10 09:37:42', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('aaaa696acfb74448a7c3fbd4a9894706', '您好！test用户预约了的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），请注意查看!', '1', '18600062729', '7', '2014-10-25 19:36:48', '20141025193648', null, null, null, null, '2014-10-25 19:36:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ab251e91a57f467bacd57df84d4f9d1b', '您的注册验证码为675022,请勿泄露!', '4', '15865814688', '1', '2015-03-08 12:56:00', '20150308125600', null, null, null, null, '2015-03-08 12:56:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('aba9a93c54a94ee9887b89be49079121', '您的注册验证码为597992,请勿泄露!', '4', '18099138080', '1', '2015-03-08 12:15:38', '20150308121538', null, null, null, null, '2015-03-08 12:15:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ac4dd93c1c2740a481e1d94775d3a37f', '您好！null用户预约了2014-10-14 18:50:22的如下项目：X光检查，', '1', '18600062729', '7', '2014-10-20 18:50:36', '20141020185036', null, null, null, null, '2014-10-20 18:50:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('accb4c8c000142508516257b716556df', '您好!Mon Oct 20 18:53:00 CST 2014，有人发来留言，请注意查收!', '2', '15001378541', '7', '2014-10-20 18:53:10', '20141020185310', null, null, null, null, '2014-10-20 18:53:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ad4603b1647f4db7b32c5446d16647e9', '您的注册验证码为534005,请勿泄露!', '4', '18631593179', '1', '2015-03-07 21:27:40', '20150307212740', null, null, null, null, '2015-03-07 21:27:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ad5aa7920e9b40f3aa9d9ba83057adb0', '您好！null用户预约了2015-11-13 19:03:40的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），', '1', '15001378541', '7', '2014-10-20 19:04:01', '20141020190401', null, null, null, '16', '2014-10-20 19:04:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ad68fde947554e0da1786c6fc9d288a7', '穆德旺，您好！您的订单2015030813440456669已提交，我们将在工作日24小时内与您联系。', '4', '15713056669', '1', '2015-03-08 13:44:04', '20150308134404', null, null, null, null, '2015-03-08 13:44:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ada753a61170436c8d4ad84f6fc58b26', '何伟，您好！您的订单2015030719233856617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 19:23:38', '20150307192338', null, null, null, null, '2015-03-07 19:23:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('adee1a5c836e4e45805a11de30548936', '您的注册验证码为981961,请勿泄露!', '4', '18954486085', '1', '2015-03-08 13:40:03', '20150308134003', null, null, null, null, '2015-03-08 13:40:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ae15c12a8cd04d91a84ad2068051b8e3', '您好!2014-10-29 11:59:07，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-29 11:59:07', '20141029115907', null, null, null, '16', '2014-10-29 11:59:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ae94412cb5fa4c0cbbf0df2a293f480b', '您的注册验证码为227965,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:38:40', '20150308123840', null, null, null, null, '2015-03-08 12:38:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('aeb8e4e3122f4866bba5541c402581e9', '您的注册验证码为309585,请勿泄露!', '4', '15993812888', '1', '2015-03-08 12:10:59', '20150308121059', null, null, null, null, '2015-03-08 12:10:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b0436472253f439eb852ff1073476c85', '您的注册验证码为397224,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:33:49', '20150307203349', null, null, null, null, '2015-03-07 20:33:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b0ee0e7f2f8e4027b8500e4145214258', '您的注册验证码为422101,请勿泄露!', '4', '15055707442', '1', '2015-03-08 13:44:00', '20150308134400', null, null, null, null, '2015-03-08 13:44:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b1bdfa9353b24eee8111ebeda9fdafd2', '您好！test用户预约了2014-10-19  10:13:18的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18600062729', '1', '2014-10-25 10:14:19', '20141025101419', null, null, null, null, '2014-10-25 10:14:19', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b26ceb38df5544cf95f5b06fb8726006', '您的注册验证码为362972,请勿泄露!', '4', '13840061165', '1', '2015-03-07 22:01:07', '20150307220107', null, null, null, null, '2015-03-07 22:01:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b2d3808b281d44cd823a2bace1515f02', '您好!2014-10-28 15:51:57，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-28 15:51:57', '20141028155157', null, null, null, null, '2014-10-28 15:51:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b2fc0d680d074ca781b262e5defd1da3', '您的注册验证码为725021,请勿泄露!', '4', '13652116552', '1', '2015-03-08 13:23:32', '20150308132332', null, null, null, null, '2015-03-08 13:23:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b309a5bd66274d41b735fb032595d3e8', '您好！test用户预约了2014-11-11 20:57:07的如下项目：X光检查，X线计算机断层扫描（CT），请注意查看!', '1', '18600062729', '7', '2014-11-05 20:57:10', '20141105205710', null, null, null, '16', '2014-11-05 20:57:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b4196bd986a844e6b700dbda935ed0d1', '您的注册验证码为817468,请勿泄露!', '4', '13911365763', '1', '2015-03-08 13:05:26', '20150308130526', null, null, null, null, '2015-03-08 13:05:26', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b42975acfa994062a70391595a258fe7', '测试信息！！', '3', '18511156617', '1', '2014-12-07 15:32:24', '20141207153224', null, null, null, '1', '2014-12-07 15:32:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b43393aff3fe4f2ca5ccc9fe65307ff2', '您好！张三1sad用户预约了2014-11-11 22:08:32的如下项目：X光检查，请注意查看!', '1', '18600062729', '7', '2014-11-22 22:08:34', '20141122220834', null, null, null, '1', '2014-11-22 22:08:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b45c6925e44f485c86980cb909fdeead', '您的注册验证码为475825,请勿泄露!', '4', '13851503598', '1', '2015-03-08 13:34:52', '20150308133451', null, null, null, null, '2015-03-08 13:34:52', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b467c685acb341d9ba0d474fce875f99', '李福新，您好！您的订单2015030719201567867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:20:15', '20150307192015', null, null, null, null, '2015-03-07 19:20:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b4a28dd7b93b4264995d579bb6abc363', '您的注册验证码为620229,请勿泄露!', '4', '', '4', '2015-03-08 12:46:21', '20150308124621', null, null, null, null, '2015-03-08 12:46:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b4a64dbf6517446cbb6fc3346b91884e', '您的注册验证码为705043,请勿泄露!', '4', '13965085152', '1', '2015-03-07 21:25:56', '20150307212556', null, null, null, null, '2015-03-07 21:25:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b510fd880e7f495b9015145482379cd8', '您好！woqu用户预约了2014-10-13 10:30:59的如下项目：X光检查，请注意查看!', '1', '18513705559', '7', '2014-10-28 10:31:02', '20141028103102', null, null, null, '16', '2014-10-28 10:31:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b625399d35ab4fef98e74f27fc4fec7d', '您的注册验证码为834382,请勿泄露!', '4', '13831496272', '1', '2015-03-08 12:44:17', '20150308124417', null, null, null, null, '2015-03-08 12:44:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b6514ca259f942638c9359656a3a0ee2', '郝国钟，您好！您的订单2015030721325508900已提交，我们将在工作日24小时内与您联系。', '4', '18712808900', '1', '2015-03-07 21:32:55', '20150307213255', null, null, null, null, '2015-03-07 21:32:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b65a1c2584c34eacbb26d1fd6708b714', '您的注册验证码为755650,请勿泄露!', '4', '15132598076', '1', '2015-03-08 13:44:26', '20150308134426', null, null, null, null, '2015-03-08 13:44:26', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b67549a8e8eb4912a919a42e1df4e28c', '您好！xxx用户预约了2014-10-28  09:28:13的如下项目：X光检查，X线计算机断层扫描（CT），各类化验，请注意查看!', '1', '18600062729', '1', '2014-10-25 09:28:24', '20141025092824', null, null, null, null, '2014-10-25 09:28:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b67df7cb7644450dac0f76a814b777e0', '您的注册验证码为775716,请勿泄露!', '4', '13859383033', '1', '2015-03-08 12:49:43', '20150308124943', null, null, null, null, '2015-03-08 12:49:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b6ad0ac3ac7f4c88a82ecdad99a3ffb8', '您的注册验证码为381052,请勿泄露!', '4', '18712808900', '1', '2015-03-07 21:29:09', '20150307212909', null, null, null, null, '2015-03-07 21:29:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b6dee864856a4b069af557f12228dd0c', '您的注册验证码为119536,请勿泄露!', '4', '13966713458', '1', '2015-03-08 13:57:16', '20150308135716', null, null, null, null, '2015-03-08 13:57:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b6e9141ca65644a6add72ae2b124927e', '您好，你的注册验证码为：911052，请勿泄露!', '4', '18600062729', '7', '2014-11-17 15:46:16', '20141117154616', null, null, null, null, '2014-11-17 15:46:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b6f1d41a46724493ae6aa1d8a5a6b604', '您的注册验证码为722585,请勿泄露!', '4', '15231432616', '1', '2015-03-08 12:48:42', '20150308124842', null, null, null, null, '2015-03-08 12:48:42', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b744d6d325234f3aa494aebe6285041e', '您好！XXX用户预约了2014-10-12 12:44:38的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '18600062729', '7', '2014-10-15 12:44:40', '20141015124440', null, null, null, '16', '2014-10-15 12:44:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b7de21c1612b4def9a21ef6104e2f751', '您的注册验证码为180401,请勿泄露!', '4', '15993812888', '1', '2015-03-08 13:12:22', '20150308131222', null, null, null, null, '2015-03-08 13:12:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b7e144d6627045b0b2d572f2472acc42', '您的注册验证码为163072,请勿泄露!', '4', '18945941638', '1', '2015-03-07 17:53:16', '20150307175316', null, null, null, null, '2015-03-07 17:53:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b7e8d1e46ca54c5b8b92f7295be3ce22', '您的注册验证码为865599,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:57:35', '20150308125735', null, null, null, null, '2015-03-08 12:57:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b8bccfde9dcc445e93cac7e1f71c4219', '您的注册验证码为305164,请勿泄露!', '4', '18617861122', '1', '2015-03-07 20:58:38', '20150307205838', null, null, null, null, '2015-03-07 20:58:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b910dd7a4c8a46b7b64ecaf37f5c03a7', '您的注册验证码为215282,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:14:05', '20150308121405', null, null, null, null, '2015-03-08 12:14:05', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b922d43c0d5946c4be59c5f806acc15d', '您好！XXX用户预约了2014-10-18  14:09:44的如下项目：彩色多普勒超声检查，各类化验，。手机号为***********', '1', '18600062729', '7', '2014-10-18 14:09:49', '20141018140949', null, null, null, '16', '2014-10-18 14:09:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('b9ae5d133ce84ac98713a32b3655a894', null, '1', null, '1', '2014-10-09 17:06:03', '20141009170603', null, null, null, '16', '2014-10-09 17:06:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bb072624b1144a47b85a13a8f04d6864', '您好！228295289用户预约了2014-10-14  16:59:31的如下项目：X光检查，各类化验，健康檢查，请注意查看!', '1', '18600062729', '7', '2014-10-28 16:59:35', '20141028165935', null, null, null, null, '2014-10-28 16:59:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bb4a73e5e62444d685fb9c4c4a35f3e4', '您好！test用户预约了2014-11-11 20:57:07的如下项目：X光检查，X线计算机断层扫描（CT），请注意查看!', '1', '18513705559', '7', '2014-11-05 20:57:10', '20141105205710', null, null, null, '16', '2014-11-05 20:57:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bb552b4c4916463cb9a7d94b1c35d77f', '您的注册验证码为531504,请勿泄露!', '4', '18600062729', '1', '2015-03-07 22:29:03', '20150307222903', null, null, null, null, '2015-03-07 22:29:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bbec003a3b2c438a9c0acfa634cc40c9', '您的注册验证码为300787,请勿泄露!', '4', '13856097839', '1', '2015-03-08 12:41:27', '20150308124127', null, null, null, null, '2015-03-08 12:41:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bc5a54ba5ba04357991ee99830f5e42c', '极富新，您好！您的订单2015030720463661122已提交，我们将在工作日24小时内与您联系。', '4', '18617861122', '1', '2015-03-07 20:46:36', '20150307204636', null, null, null, null, '2015-03-07 20:46:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bc83fb4d245a4b6b95734ac737c10283', '您的注册验证码为720028,请勿泄露!', '4', '18624427766', '1', '2015-03-08 13:06:00', '20150308130600', null, null, null, null, '2015-03-08 13:06:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bd087d3b032c4f98a2d4ab5ceda3f96b', '您的注册验证码为605028,请勿泄露!', '4', '15150648868', '1', '2015-03-08 12:13:44', '20150308121344', null, null, null, null, '2015-03-08 12:13:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bd20a43058d841caa9a184e3216c058c', '您好!2014-10-29 12:07:48，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-29 12:07:49', '20141029120749', null, null, null, '16', '2014-10-29 12:07:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bdc5d40b038f4faf93af502ecbd7fcb0', '您的注册验证码为611979,请勿泄露!', '4', '15832174444', '1', '2015-03-08 13:05:15', '20150308130515', null, null, null, null, '2015-03-08 13:05:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('be04b5752fce4bdb9506abd93ec16785', '您的注册验证码为941455,请勿泄露!', '4', '15832174444', '1', '2015-03-08 13:25:23', '20150308132523', null, null, null, null, '2015-03-08 13:25:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('be3b0e9688634764b37c0906a8485be3', '您的注册验证码为854745,请勿泄露!', '4', '15081528389', '1', '2015-03-08 13:05:08', '20150308130508', null, null, null, null, '2015-03-08 13:05:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('be79000e70c54caeba5de6b3a316fc65', '您好！null用户预约了2015-11-13 19:03:40的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），', '1', '18600062729', '7', '2014-10-20 19:04:00', '20141020190400', null, null, null, '16', '2014-10-20 19:04:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bef5a33b6ee34cc398e52f2ef6fe54f1', '韩佳岐，您好！您的订单2015030813210314752已提交，我们将在工作日24小时内与您联系。', '4', '13842814752', '1', '2015-03-08 13:21:03', '20150308132103', null, null, null, null, '2015-03-08 13:21:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('bfb1f0e4f34d474bb9cfc29ec5be46b8', '您的注册验证码为441650,请勿泄露!', '4', '13842814752', '1', '2015-03-08 13:19:32', '20150308131932', null, null, null, null, '2015-03-08 13:19:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c02b4aa6406d44ec8ba103b9547c76f3', '您的注册验证码为121269,请勿泄露!', '4', '15801500283', '1', '2015-03-08 10:24:41', '20150308102441', null, null, null, null, '2015-03-08 10:24:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c068cf42982744a0b55523534d2281db', '您好!2014-10-29 13:14:42，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-29 13:14:43', '20141029131442', null, null, null, '16', '2014-10-29 13:14:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c0c5f179549b4353aad1f8ccd8a36f1a', '您的注册验证码为236397,请勿泄露!', '4', '13700845298', '1', '2015-03-08 12:38:05', '20150308123805', null, null, null, null, '2015-03-08 12:38:05', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c1024b26efc049eda445977c749f82b5', '您的注册验证码为541414,请勿泄露!', '4', '13873160878', '1', '2015-03-08 12:10:50', '20150308121050', null, null, null, null, '2015-03-08 12:10:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c10465809c2c405d8cb302e9afb7d5d6', '您的注册验证码为584196,请勿泄露!', '4', '13514182795', '1', '2015-03-07 21:27:19', '20150307212719', null, null, null, null, '2015-03-07 21:27:19', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c10b7edc530242e0943d016aab7489ff', '您的注册验证码为271717,请勿泄露!', '4', '18712808900', '1', '2015-03-07 21:32:10', '20150307213210', null, null, null, null, '2015-03-07 21:32:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c1288cd6957a43ffb0575acc5fc2271e', '韩佳岐，您好！您的订单2015030813204114752已提交，我们将在工作日24小时内与您联系。', '4', '13842814752', '1', '2015-03-08 13:20:41', '20150308132041', null, null, null, null, '2015-03-08 13:20:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c1f0a4c11afe418691de9a80f6d26de6', '您的注册验证码为608268,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:36:39', '20150307203639', null, null, null, null, '2015-03-07 20:36:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c1f0c337e6434838b19ec6b4076446a9', '您的注册验证码为304113,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:09:08', '20150308130908', null, null, null, null, '2015-03-08 13:09:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c2f6c901db23482db0dfcbb8e456da83', '您的注册验证码为510646,请勿泄露!', '4', '15230925588', '1', '2015-03-08 12:13:40', '20150308121340', null, null, null, null, '2015-03-08 12:13:40', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c30b5b3a49274b239e0411ac19d20c50', '您的注册验证码为852604,请勿泄露!', '4', '13230810666', '1', '2015-03-08 13:08:51', '20150308130851', null, null, null, null, '2015-03-08 13:08:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c37309dec9d9463aa71c9c24cc997e33', '您的注册验证码为583497,请勿泄露!', '4', '13803306215', '1', '2015-03-08 13:57:47', '20150308135747', null, null, null, null, '2015-03-08 13:57:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c4312dc64f2d44518ec3057480c28003', '您的注册验证码为445849,请勿泄露!', '4', '18631593179', '1', '2015-03-07 21:27:07', '20150307212707', null, null, null, null, '2015-03-07 21:27:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c435f668fef04cdc869c161797bf6aa5', '张羽，您好！您的订单2015030812572251615已提交，我们将在工作日24小时内与您联系。', '4', '15930951615', '1', '2015-03-08 12:57:22', '20150308125722', null, null, null, null, '2015-03-08 12:57:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c5177ea1321f45bca9fd4583f87c5454', '测试信息！！', '3', '18511156617', '7', '2014-12-07 15:31:56', '20141207153155', null, null, null, '1', '2014-12-07 15:31:56', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c5804daa9dca43a19c694656809b0a3e', '何伟，您好！您的订单2015030719235756617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 19:23:57', '20150307192357', null, null, null, null, '2015-03-07 19:23:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c5807b0e2b6240a49751959facf96cd6', '您的注册验证码为632454,请勿泄露!', '4', '18634322780', '1', '2015-03-08 13:49:31', '20150308134931', null, null, null, null, '2015-03-08 13:49:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c63b6ed8a7b04b8f9ec49f01a4ab11a9', '赵芹，您好！您的订单2015030813083813520已提交，我们将在工作日24小时内与您联系。', '4', '13369613520', '1', '2015-03-08 13:08:38', '20150308130838', null, null, null, null, '2015-03-08 13:08:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c6a84a3e3f8348d4a6e519e15367d7ec', '您的注册验证码为279737,请勿泄露!', '4', '', '4', '2015-03-08 12:33:36', '20150308123336', null, null, null, null, '2015-03-08 12:33:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c6bd488d172d4d46886787541783baef', '杨迎，您好！您的订单2015030721353725305已提交，我们将在工作日24小时内与您联系。', '4', '13472925305', '1', '2015-03-07 21:35:37', '20150307213537', null, null, null, null, '2015-03-07 21:35:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c6be8602cb6c499d85633b59db540905', '杨海兵，您好！您的订单2015030721283847997已提交，我们将在工作日24小时内与您联系。', '4', '13303247997', '1', '2015-03-07 21:28:38', '20150307212838', null, null, null, null, '2015-03-07 21:28:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c6bfc1d6cd284a1bb979e2ba833a73ab', '4580', '3', '18600062729', '1', '2014-12-07 18:12:21', '20141207181221', null, null, null, '1', '2014-12-07 18:12:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c6c07d72d41f4accbebddd0184305633', '您的注册验证码为100485,请勿泄露!', '4', '18842300593', '1', '2015-03-08 06:57:22', '20150308065722', null, null, null, null, '2015-03-08 06:57:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c7cf0287190644b1a27107df1c450ea2', '您的注册验证码为276367,请勿泄露!', '4', '15130515888', '1', '2015-03-08 08:22:59', '20150308082258', null, null, null, null, '2015-03-08 08:22:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c7fb73061fa64a61ae547fe38d80493d', '您好！sunJingYang2用户预约了2015-11-10 11:19:41的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，请注意查看!', '1', '18600062729', '1', '2014-10-25 11:19:47', '20141025111947', null, null, null, '16', '2014-10-25 11:19:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c83a5338378c436f87100d9dee650747', '您的注册验证码为203273,请勿泄露!', '4', '18622927320', '1', '2015-03-08 13:56:26', '20150308135626', null, null, null, null, '2015-03-08 13:56:26', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c856732d24b843a69afa9cd98c61389b', '您的注册验证码为995943,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:01:21', '20150308130121', null, null, null, null, '2015-03-08 13:01:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c8daba1c7d7e417bad588255ca0d40a1', '您的注册验证码为214990,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:08:27', '20150308130827', null, null, null, null, '2015-03-08 13:08:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('c97fefa31b57486ab356a466985646bc', '李松，您好！您的订单2015030722173539443已提交，我们将在工作日24小时内与您联系。', '4', '18633439443', '1', '2015-03-07 22:17:35', '20150307221735', null, null, null, null, '2015-03-07 22:17:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ca3495d0313f461da80c4bbc3980a0f6', '您的注册验证码为706855,请勿泄露!', '4', '', '4', '2015-03-08 12:48:16', '20150308124816', null, null, null, null, '2015-03-08 12:48:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cadfefa93e4f4b7fa303561428246413', '您的注册验证码为559148,请勿泄露!', '4', '13069898987', '1', '2015-03-08 13:49:42', '20150308134942', null, null, null, null, '2015-03-08 13:49:42', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('caf035ea7658440d8d358b54faa7b9df', '您好！xrn用户预约了2014-10-27  09:43:02的如下项目：彩色多普勒超声检查，X线计算机断层扫描（CT），请注意查看!', '1', '18513705559', '7', '2014-10-27 09:43:04', '20141027094304', null, null, null, '16', '2014-10-27 09:43:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cb03d17645ea4caca3b67407d6e4109a', '您好！XXX用户预约了2014-10-05 20:26:51的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 20:26:55', '20141011202654', null, null, null, '16', '2014-10-11 20:26:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cb2f728b56a443c5b2782f04ecb23d79', '赵盛宇，您好！您的订单2015030813142116999已提交，我们将在工作日24小时内与您联系。', '4', '13149116999', '1', '2015-03-08 13:14:21', '20150308131421', null, null, null, null, '2015-03-08 13:14:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cb947ee8314748a9886486030add7630', '您好！cn.tvcms.cms.pojo.Member@916ab8用户预约了2017-10-20 19:07:26的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，', '1', '18600062729', '7', '2014-10-20 19:07:31', '20141020190731', null, null, null, '16', '2014-10-20 19:07:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cbb0bce75b81454fbe83c03b0f2a1cec', '您好!2014-10-29 11:59:07，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-29 11:59:07', '20141029115907', null, null, null, '16', '2014-10-29 11:59:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cbd9d6172f23452099ad2a7b06af9817', '您好!2014-10-28 15:51:57，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-28 15:51:57', '20141028155157', null, null, null, null, '2014-10-28 15:51:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cbdc58a9cbed4acb9b01b602f1b364fa', 'xu，您好！您的订单2015030809390962729已提交，我们将在工作日24小时内与您联系。', '4', '18600062729', '1', '2015-03-08 09:39:09', '20150308093909', null, null, null, null, '2015-03-08 09:39:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cbf608f054a44161896f2041ee5a9d09', '您的注册验证码为708585,请勿泄露!', '4', '15100567867', '1', '2015-03-07 18:58:48', '20150307185848', null, null, null, null, '2015-03-07 18:58:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cc61837018f94d40924d22b2ca5b31a9', '您的注册验证码为344412,请勿泄露!', '4', '15922122358', '1', '2015-03-08 12:36:37', '20150308123637', null, null, null, null, '2015-03-08 12:36:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cc99da7028f7486a974e1f1be73f88fc', '您的注册验证码为857443,请勿泄露!', '4', '13911365763', '1', '2015-03-08 13:07:18', '20150308130718', null, null, null, null, '2015-03-08 13:07:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ccf36fb0354e4f9c91d5e4a00534851d', '您好！228295289用户预约了2014-10-22  14:30:11的如下项目：各类化验，请注意查看!', '1', '18513705559', '7', '2014-10-28 14:30:20', '20141028143020', null, null, null, '16', '2014-10-28 14:30:20', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ccff61b5642f4e8e9a815dffd6884341', '您好！test用户预约了2014-10-30  22:13:17的如下项目：各类化验，健康檢查，请注意查看!', '1', '18513705559', '7', '2014-10-26 22:13:22', '20141026221322', null, null, null, null, '2014-10-26 22:13:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cd7f0aa4e16d429393cb995263f51e44', '您的注册验证码为333779,请勿泄露!', '4', '13324117982', '1', '2015-03-08 12:19:25', '20150308121924', null, null, null, null, '2015-03-08 12:19:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cd9a6b247c4d49cfa6001e9f1d02c145', '您好！XXX用户预约了2014-10-20 20:22:23的如下项目：项目2，项目3，项目5，。手机号为***********', '1', '18600062729', '7', '2014-10-14 20:22:25', '20141014202225', null, null, null, '16', '2014-10-14 20:22:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cde8c86fa91c47c995b5357fccb1c790', '您的注册验证码为820214,请勿泄露!', '4', '186315931791', '6', '2015-03-07 21:26:44', '20150307212644', null, null, null, null, '2015-03-07 21:26:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cecc9ec0c218422a8277ff87bf16b4b3', '何伟，您好！您的订单2015030719212356617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 19:21:23', '20150307192123', null, null, null, null, '2015-03-07 19:21:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('cedeb406748040f3826656f38fb0b75d', '您的注册验证码为246106,请勿泄露!', '4', '13230810666', '1', '2015-03-08 12:56:41', '20150308125641', null, null, null, null, '2015-03-08 12:56:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d027bd6957e0400f8850e4c63dccf05b', '您的注册验证码为214550,请勿泄露!', '4', '13886720916', '1', '2015-03-08 12:15:31', '20150308121531', null, null, null, null, '2015-03-08 12:15:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d1795337a81a44f4802bdd629cc8ed27', '您的注册验证码为138330,请勿泄露!', '4', '', '4', '2015-03-08 12:42:47', '20150308124247', null, null, null, null, '2015-03-08 12:42:47', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d22a22d5d9e04dc9834238342aba7a8c', '您好!2014-10-24 19:10:19，有人发来留言，请注意查收!', '2', '18600062729', '1', '2014-10-24 19:10:20', '20141024191020', null, null, null, '16', '2014-10-24 19:10:20', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d277fa5536e14bebb3468718060eb41a', '您的注册验证码为798433,请勿泄露!', '4', '13355319900', '1', '2015-03-08 13:24:59', '20150308132459', null, null, null, null, '2015-03-08 13:24:59', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d2b1268485984a419f1bfb20436c2518', '您的注册验证码为286215,请勿泄露!', '4', '13610936334', '1', '2015-03-08 12:42:25', '20150308124225', null, null, null, null, '2015-03-08 12:42:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d2b60cc2623d4d9dba01acd6a94bf6b8', '您的注册验证码为958606,请勿泄露!', '4', '18630137465', '1', '2015-03-07 21:25:50', '20150307212550', null, null, null, null, '2015-03-07 21:25:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d33c320725824412b02fe3cb273223ed', '您的注册验证码为106348,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:24:43', '20150308132443', null, null, null, null, '2015-03-08 13:24:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d345fa70e1d544a2808eac7063df800f', '您的注册验证码为715393,请勿泄露!', '4', '18842300593', '1', '2015-03-07 21:26:17', '20150307212617', null, null, null, null, '2015-03-07 21:26:17', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d38b1b6d2a524c99ae0835b6f2065b68', '张玉刚，您好！您的订单2015030812184371000已提交，我们将在工作日24小时内与您联系。', '4', '13220171000', '1', '2015-03-08 12:18:43', '20150308121843', null, null, null, null, '2015-03-08 12:18:43', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d4982f4d1e4f4326acb604f37d64ecd9', '您好!2014-10-25 19:04:37，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-25 19:04:38', '20141025190438', null, null, null, '16', '2014-10-25 19:04:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d49fb89566644b138d4161b12cd6e67e', '张宇，您好！您的订单2015030812294170225已提交，我们将在工作日24小时内与您联系。', '4', '13663370225', '1', '2015-03-08 12:29:41', '20150308122941', null, null, null, null, '2015-03-08 12:29:41', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d589f2d703c646438f4f37759e0fd9e7', '您的注册验证码为497147,请勿泄露!', '4', '18609658373', '1', '2015-03-08 12:42:37', '20150308124237', null, null, null, null, '2015-03-08 12:42:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d5f428ed7b774f5c8b694b27977f2599', '龚二伟，您好！您的订单2015030813335438419已提交，我们将在工作日24小时内与您联系。', '4', '13780538419', '1', '2015-03-08 13:33:54', '20150308133354', null, null, null, null, '2015-03-08 13:33:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d64b85689d45406e857308c048a747ca', '王梁，您好！您的订单2015030813103235555已提交，我们将在工作日24小时内与您联系。', '4', '18230335555', '1', '2015-03-08 13:10:32', '20150308131032', null, null, null, null, '2015-03-08 13:10:32', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d65abb6dd4604600b22422993be3543d', '闫东明，您好！您的订单2015030721275007017已提交，我们将在工作日24小时内与您联系。', '4', '18611407017', '1', '2015-03-07 21:27:50', '20150307212750', null, null, null, null, '2015-03-07 21:27:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d6a1f5b7ed604dd6a31f7f4753ee91d8', '您的注册验证码为418762,请勿泄露!', '4', '', '4', '2015-03-08 12:47:04', '20150308124704', null, null, null, null, '2015-03-08 12:47:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d7415dc85c984869aeba880ac35905cd', '您的注册验证码为139622,请勿泄露!', '4', '18660190225', '1', '2015-03-08 13:06:09', '20150308130608', null, null, null, null, '2015-03-08 13:06:09', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d801a1e20ed844f28f3b1dae8ade00bd', '您的注册验证码为857832,请勿泄露!', '4', '13909281287', '1', '2015-03-08 12:12:53', '20150308121253', null, null, null, null, '2015-03-08 12:12:53', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d884ef7001eb4cde987f48cf0f424b26', '您好，你的注册验证码为：568231，请勿泄露!', '4', '18513705559', '7', '2014-11-17 11:46:05', '20141117114605', null, null, null, '1', '2014-11-17 11:46:05', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d8c5e83c21b24924b68c8a68f02f9a04', '您的注册验证码为737244,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:38:24', '20150308123824', null, null, null, null, '2015-03-08 12:38:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('d8d0f16ab44e44cbbc705abc921cbb35', '您的注册验证码为253740,请勿泄露!', '4', '13279837776', '1', '2015-03-08 12:17:58', '20150308121757', null, null, null, null, '2015-03-08 12:17:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('da1894641c8943f49693bf9b6aecabb2', '李志军，您好！您的订单2015030721384578365已提交，我们将在工作日24小时内与您联系。', '4', '13582578365', '1', '2015-03-07 21:38:45', '20150307213845', null, null, null, null, '2015-03-07 21:38:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('da6b615f679f4c52800b82416de1b37f', '您的注册验证码为371402,请勿泄露!', '4', '13803306215', '1', '2015-03-08 13:53:24', '20150308135324', null, null, null, null, '2015-03-08 13:53:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('dae2cd1dc761411798d1db983e8998d2', '何伟，您好！您的订单2015030813093956617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-08 13:09:39', '20150308130939', null, null, null, null, '2015-03-08 13:09:39', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('db045a6241894cd4ae8b175cce264c09', '您的注册验证码为808551,请勿泄露!', '4', '13772644666', '1', '2015-03-08 12:11:33', '20150308121133', null, null, null, null, '2015-03-08 12:11:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('db09fec2a43e4bdfb3eed7d15aada73c', '您的注册验证码为997404,请勿泄露!', '4', '13369613520', '1', '2015-03-08 12:59:58', '20150308125958', null, null, null, null, '2015-03-08 12:59:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('db8342d6e9e942969c56980647c8a000', '您的注册验证码为883778,请勿泄露!', '4', '', '4', '2015-03-08 12:44:25', '20150308124425', null, null, null, null, '2015-03-08 12:44:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('db85f7065e18405d9182d889886ab77e', '您的注册验证码为635049,请勿泄露!', '4', '13944163782', '1', '2015-03-08 12:57:04', '20150308125704', null, null, null, null, '2015-03-08 12:57:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('dcfb431e61d446b5834a60f52599d8b9', '您的注册验证码为821047,请勿泄露!', '4', '15304004666', '1', '2015-03-08 11:21:38', '20150308112138', null, null, null, null, '2015-03-08 11:21:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('dd44e41663a74c48a9a1f40f24a7e6b2', '您的注册验证码为849013,请勿泄露!', '4', '15041715151', '1', '2015-03-08 08:19:57', '20150308081957', null, null, null, null, '2015-03-08 08:19:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('dd89e14e296049d49d4b3ceded534a04', '您的注册验证码为450534,请勿泄露!', '4', '13315513180', '1', '2015-03-08 13:01:37', '20150308130137', null, null, null, null, '2015-03-08 13:01:37', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('dd972114f0574ec48149677bcd25d3d8', '张鹏，您好！您的订单2015030721285789876已提交，我们将在工作日24小时内与您联系。', '4', '15830489876', '1', '2015-03-07 21:28:57', '20150307212857', null, null, null, null, '2015-03-07 21:28:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('de25e6c30d3144f993f0071647545708', '您的注册验证码为631418,请勿泄露!', '4', '18901354888', '1', '2015-03-07 21:50:33', '20150307215033', null, null, null, null, '2015-03-07 21:50:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('deb1c2f715bf4d2aa5fd7f8543833637', '您的注册验证码为780065,请勿泄露!', '4', '18945941638', '1', '2015-03-07 19:15:14', '20150307191514', null, null, null, null, '2015-03-07 19:15:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('dedf2ceae57d44d484eada5ac7e0d268', '您的注册验证码为547993,请勿泄露!', '4', '13859383033', '1', '2015-03-08 12:18:13', '20150308121813', null, null, null, null, '2015-03-08 12:18:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('df57b9e728924bac94317338035640fc', '李福新，您好！您的订单2015030719233667867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:23:36', '20150307192336', null, null, null, null, '2015-03-07 19:23:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('dfff218541f84dbd86d5c3e5faa3449c', '您好!2014-10-29 11:39:59，有人发来留言，请注意查收!', '2', '18600062729', '7', '2014-10-29 11:40:00', '20141029114000', null, null, null, '16', '2014-10-29 11:40:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e03fda4cf1b749a1ab49f2f5d4010547', '您的注册验证码为537781,请勿泄露!', '4', '18538071921', '1', '2015-03-08 13:44:08', '20150308134408', null, null, null, null, '2015-03-08 13:44:08', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e0531822320b43a58e9b600b4043b71f', '您的注册验证码为472413,请勿泄露!', '4', '15713056669', '1', '2015-03-08 13:43:25', '20150308134325', null, null, null, null, '2015-03-08 13:43:25', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e0bf19ab39da4c79b7ea71f418d4756a', '您的注册验证码为779511,请勿泄露!', '4', '13663370225', '1', '2015-03-08 12:17:52', '20150308121752', null, null, null, null, '2015-03-08 12:17:52', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e13bd941e7894a24b9e675f53136461c', '您好！sunJingYang1用户预约了2014-10-13 11:10:53的如下项目：彩色多普勒超声检查，X光检查，请注意查看!', '1', '18513705559', '1', '2014-10-25 11:10:55', '20141025111055', null, null, null, '16', '2014-10-25 11:10:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e190421828234ba0953a47a45c1bf036', '您的注册验证码为574082,请勿泄露!', '4', '13199445353', '1', '2015-03-08 13:01:04', '20150308130103', null, null, null, null, '2015-03-08 13:01:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e1c5ca296f964e60ba0f15c7a928ed9e', '您好！sunjinyang用户预约了2014-10-05 21:16:27的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，请注意查看!', '1', '18600062729', '7', '2014-10-27 21:16:31', '20141027211631', null, null, null, '16', '2014-10-27 21:16:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e243166dd104466fb9d97f746106a87b', '您的注册验证码为738470,请勿泄露!', '4', '18611729283', '1', '2015-03-08 12:48:51', '20150308124851', null, null, null, null, '2015-03-08 12:48:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e26ef8293f324305b282a80be615f1d1', '您的注册验证码为746884,请勿泄露!', '4', '18999836205', '1', '2015-03-08 12:48:12', '20150308124812', null, null, null, null, '2015-03-08 12:48:12', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e2bd154ccd72495c8a1c10dd2b6e757b', '您的注册验证码为559140,请勿泄露!', '4', '13287916780', '1', '2015-03-08 13:08:36', '20150308130836', null, null, null, null, '2015-03-08 13:08:36', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e4576e42250b4be4bb14bdfc45e9da19', '您的注册验证码为257344,请勿泄露!', '4', '15899428772', '1', '2015-03-07 21:34:13', '20150307213413', null, null, null, null, '2015-03-07 21:34:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e470a849580e4997b6370f6ac266ea6a', '您的注册验证码为216567,请勿泄露!', '4', '15899428772', '1', '2015-03-07 21:28:50', '20150307212850', null, null, null, null, '2015-03-07 21:28:50', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e49c81d91f174b07ac17af8561314b23', '您好！sunjinyang用户预约了2014-10-06 11:10:11的如下项目：彩色多普勒超声检查，X光检查，X线计算机断层扫描（CT），各类化验，健康檢查，消化系统检测，请注意查看!', '1', '18600062729', '7', '2014-10-28 11:10:15', '20141028111015', null, null, null, null, '2014-10-28 11:10:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e4a36739566e49a2ab5fa211a3d7d700', '您好！XXX用户预约了2014-10-20 09:03:14的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-13 09:03:18', '20141013090318', null, null, null, '16', '2014-10-13 09:03:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e5797ca52c634711a35f075565c94532', 'xu，您好！您的订单2015030722312262729已提交，我们将在工作日24小时内与您联系。', '4', '18600062729', '1', '2015-03-07 22:31:22', '20150307223122', null, null, null, null, '2015-03-07 22:31:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e5fed5483f99489da3971909e3ac12e4', '何伟，您好！您的订单2015030719210256617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-07 19:21:02', '20150307192102', null, null, null, null, '2015-03-07 19:21:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e68f34fbc42e4967848ad4c5f0d96a2e', '您的注册验证码为404607,请勿泄露!', '4', '18668968517', '1', '2015-03-08 12:59:03', '20150308125903', null, null, null, null, '2015-03-08 12:59:03', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e6e80a43ddfd44a59e6cd74bb4ec8369', '您的注册验证码为693225,请勿泄露!', '4', '18602222746', '1', '2015-03-08 09:06:07', '20150308090607', null, null, null, null, '2015-03-08 09:06:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e710639ada1d4fd3bb62581a20c09ad5', '您的注册验证码为640351,请勿泄露!', '4', '18364656000', '1', '2015-03-08 13:51:16', '20150308135116', null, null, null, null, '2015-03-08 13:51:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e76eddd4042b43bd968f5e7f3d992676', '您的注册验证码为652500,请勿泄露!', '4', '18604599368', '1', '2015-03-08 13:21:13', '20150308132113', null, null, null, null, '2015-03-08 13:21:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e784491fef6e4f44beb357a1a576e4aa', '您好，你的注册验证码为：344539，请勿泄露!', '4', '18513705559', '7', '2014-11-17 11:25:15', '20141117112515', null, null, null, '1', '2014-11-17 11:25:15', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e969b56b72cc430688f174e3e01bf7d1', '您的注册验证码为201135,请勿泄露!', '4', '18712808900', '1', '2015-03-07 21:30:18', '20150307213018', null, null, null, null, '2015-03-07 21:30:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e969f72432f343e785c2e226e30b94ff', null, '3', '1', '6', '2014-10-09 17:27:00', '20141009172700', null, null, null, '16', '2014-10-09 17:27:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('e9ebf8fd286248e793ed2a01871654fb', '刘博，您好！您的订单2015030813080224086已提交，我们将在工作日24小时内与您联系。', '4', '17001224086', '1', '2015-03-08 13:08:02', '20150308130802', null, null, null, null, '2015-03-08 13:08:02', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('eab54178f2de4651b0d3f7725056357a', '您的注册验证码为750923,请勿泄露!', '4', '15998526077', '1', '2015-03-08 13:56:51', '20150308135651', null, null, null, null, '2015-03-08 13:56:51', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('eb1cebc073c64c1d8e5d99fffad45c5a', null, '3', '234234234', '6', '2014-10-09 17:26:49', '20141009172649', null, null, null, '16', '2014-10-09 17:26:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ec2a3b4a1f4545dca8b604237bf87197', '您的注册验证码为648603,请勿泄露!', '4', '15832174444', '1', '2015-03-08 13:01:06', '20150308130106', null, null, null, null, '2015-03-08 13:01:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ec53e804167e4389b283d859a119bc1f', '郭飞，您好！您的订单2015030806575800593已提交，我们将在工作日24小时内与您联系。', '4', '18842300593', '1', '2015-03-08 06:57:58', '20150308065758', null, null, null, null, '2015-03-08 06:57:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ec905f63f7a14a02a2f88754df3c88c1', '您的注册验证码为536931,请勿泄露!', '4', '13298880666', '1', '2015-03-08 13:05:07', '20150308130507', null, null, null, null, '2015-03-08 13:05:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ecf6c2b2bd1540e4b8f7e3156d4efd52', '您的注册验证码为291065,请勿泄露!', '4', '18842300593', '1', '2015-03-07 21:25:16', '20150307212516', null, null, null, null, '2015-03-07 21:25:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ed6eaaf739044ccc82c96af3f3180886', '您的注册验证码为559851,请勿泄露!', '4', '18230335555', '1', '2015-03-08 13:09:07', '20150308130907', null, null, null, null, '2015-03-08 13:09:07', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('eeeaee1d20b7425f9476ab1a9f020c52', '您的注册验证码为223273,请勿泄露!', '4', '13069898987', '1', '2015-03-08 13:09:14', '20150308130914', null, null, null, null, '2015-03-08 13:09:14', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ef1fd991b0b142dda946e47d2faf4bc0', '您的注册验证码为605593,请勿泄露!', '4', '13804675266', '1', '2015-03-08 12:15:55', '20150308121555', null, null, null, null, '2015-03-08 12:15:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ef660bb94e3545dead30cbff7148426c', '您的注册验证码为844478,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:27:13', '20150308122713', null, null, null, null, '2015-03-08 12:27:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('efb67e77f4bd4d9c8530092d2acf3dfe', '您的注册验证码为165665,请勿泄露!', '4', '13199445353', '1', '2015-03-08 12:48:01', '20150308124801', null, null, null, null, '2015-03-08 12:48:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f0125643b29841bbbae2fbd3349b3ad2', '张华伟，您好！您的订单2015030808125441149已提交，我们将在工作日24小时内与您联系。', '4', '13832941149', '1', '2015-03-08 08:12:54', '20150308081254', null, null, null, null, '2015-03-08 08:12:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f025903b096747c1af3df620ce14f099', '您的注册验证码为437784,请勿泄露!', '4', '15100567867', '1', '2015-03-07 20:48:19', '20150307204819', null, null, null, null, '2015-03-07 20:48:19', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f050bbe6f107433cbcf3335e463ec8c7', '您的注册验证码为670952,请勿泄露!', '4', '17001224086', '1', '2015-03-07 18:12:33', '20150307181233', null, null, null, null, '2015-03-07 18:12:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f076cf0417e648c798977e2ecc58fa0f', '苗，您好！您的订单2015030719345782775已提交，我们将在工作日24小时内与您联系。', '4', '18515282775', '1', '2015-03-07 19:34:57', '20150307193457', null, null, null, null, '2015-03-07 19:34:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f0f59729037e414eaa67b9c1b94a17fb', '您的注册验证码为779883,请勿泄露!', '4', '13801374318', '1', '2015-03-08 13:25:30', '20150308132530', null, null, null, null, '2015-03-08 13:25:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f14ef1bb12574993b379d9d5e66d5f37', '王雨冰，您好！您的订单2015030721330182795已提交，我们将在工作日24小时内与您联系。', '4', '13514182795', '1', '2015-03-07 21:33:01', '20150307213301', null, null, null, null, '2015-03-07 21:33:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f1618175bd0b43ee9e19b7558b6aaef5', '您的注册验证码为712154,请勿泄露!', '4', '18842300593', '1', '2015-03-07 21:27:11', '20150307212711', null, null, null, null, '2015-03-07 21:27:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f194ce677481417a82ea35b7eb842026', '您的注册验证码为501581,请勿泄露!', '4', '18731558180', '1', '2015-03-08 13:50:45', '20150308135045', null, null, null, null, '2015-03-08 13:50:45', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f1b7bd4e2ca54f02b869c48066448907', '张剑，您好！您的订单2015030721300993179已提交，我们将在工作日24小时内与您联系。', '4', '18631593179', '1', '2015-03-07 21:30:10', '20150307213009', null, null, null, null, '2015-03-07 21:30:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f1c0ec9755c845db954b962fc8449ca4', '您的注册验证码为149869,请勿泄露!', '4', '15993812888', '1', '2015-03-08 12:51:04', '20150308125104', null, null, null, null, '2015-03-08 12:51:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f2611cf812684139a5975f4d13758d15', '您好！woqu用户预约了2014-10-08 17:36:41的如下项目：X光检查，各类化验，请注意查看!', '1', '18513705559', '7', '2014-10-27 17:36:44', '20141027173644', null, null, null, '16', '2014-10-27 17:36:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f2917d67251541ba8fa91f9758b4fc5f', 'retg', '3', '13126620198', '7', '2014-11-08 15:10:23', '20141108151023', null, null, null, '16', '2014-11-08 15:10:23', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f30fa68a3e9e43f38b92440e0b6b7107', '您好!2014-10-29 11:39:59，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-29 11:40:00', '20141029114000', null, null, null, '16', '2014-10-29 11:40:00', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f34f082fb43e4ae4873f2699c3c6b681', '您的注册验证码为944875,请勿泄露!', '4', '18641102778', '1', '2015-03-08 13:38:57', '20150308133856', null, null, null, null, '2015-03-08 13:38:57', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f3854bdd5f0542029d3f272170a99259', '您好！XXX用户预约了的如下项目：X光检查，。手机号为***********', '1', '18600062729', '7', '2014-10-17 19:10:58', '20141017191058', null, null, null, '16', '2014-10-17 19:10:58', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f3cec6bbfb114663be68da9bf9d7efa1', '您的注册验证码为913600,请勿泄露!', '4', '18230335555', '1', '2015-03-08 12:50:44', '20150308125043', null, null, null, null, '2015-03-08 12:50:44', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f3f40d220ea54934bb81960753763ca1', '您的注册验证码为327702,请勿泄露!', '4', '18842300593', '1', '2015-03-07 21:25:30', '20150307212530', null, null, null, null, '2015-03-07 21:25:30', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f4252f1720f34b5bb5a1780c6b7bc4fb', '您的注册验证码为540031,请勿泄露!', '4', '17001224086', '1', '2015-03-07 19:15:48', '20150307191548', null, null, null, null, '2015-03-07 19:15:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f4ee9bfde995413c9515ad1f5676bbef', '您的注册验证码为210297,请勿泄露!', '4', '13909281287', '1', '2015-03-08 12:13:34', '20150308121334', null, null, null, null, '2015-03-08 12:13:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f5d11d09d23f4951a141d36bee4c36dc', '您的注册验证码为984292,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:33:48', '20150308123348', null, null, null, null, '2015-03-08 12:33:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f657b86fa1d14af49534b5a98952148c', '您的注册验证码为765568,请勿泄露!', '4', '18624427766', '1', '2015-03-08 12:16:28', '20150308121628', null, null, null, null, '2015-03-08 12:16:28', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f7019ccd76ac406995090a591174b753', '韩旭，您好！您的订单2015030812200680695已提交，我们将在工作日24小时内与您联系。', '4', '18940980695', '1', '2015-03-08 12:20:06', '20150308122006', null, null, null, null, '2015-03-08 12:20:06', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f70d8bbb5db24288b3841d99e97954e6', '何永杰，您好！您的订单2015030812444820090已提交，我们将在工作日24小时内与您联系。', '4', '15176620090', '1', '2015-03-08 12:44:48', '20150308124448', null, null, null, null, '2015-03-08 12:44:48', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f7276d6ec2e440a6a95ff1e729b10d91', 'k;jjhlkj', '3', '18513705559', '7', '2014-11-08 15:11:22', '20141108151122', null, null, null, '16', '2014-11-08 15:11:22', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f7fb669bbeeb4fd68408e8be563c9c59', '王梁，您好！您的订单2015030813113135555已提交，我们将在工作日24小时内与您联系。', '4', '18230335555', '1', '2015-03-08 13:11:31', '20150308131131', null, null, null, null, '2015-03-08 13:11:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f8fcbb1322ab4b48b1acfb7ddbd0ca47', '您的注册验证码为115281,请勿泄露!', '4', '13930660556', '1', '2015-03-08 13:28:21', '20150308132821', null, null, null, null, '2015-03-08 13:28:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f91350e9f4a44ff98ec56999a5638d34', '您的注册验证码为441081,请勿泄露!', '4', '18230335555', '1', '2015-03-08 13:06:10', '20150308130610', null, null, null, null, '2015-03-08 13:06:10', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f940b5ca04274118a94a2949835dc79b', '您的注册验证码为892811,请勿泄露!', '4', '15176620090', '1', '2015-03-08 12:27:27', '20150308122727', null, null, null, null, '2015-03-08 12:27:27', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f96e234e8f934da09f3b18ee58b09722', '您好!2014-10-29 12:07:48，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-29 12:07:49', '20141029120748', null, null, null, '16', '2014-10-29 12:07:49', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f9864283ae3e4a4294f6398c4c3e9e27', '您好！XXX用户预约了2014-10-13  16:08:32的如下项目：彩色多普勒超声检查，X光检查，健康檢查，。手机号为***********', '1', '18600062729', '7', '2014-10-17 16:08:35', '20141017160835', null, null, null, '16', '2014-10-17 16:08:35', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('f9fd6505f5f74dd29e2985adc59411d4', '李福新，您好！您的订单2015030719201667867已提交，我们将在工作日24小时内与您联系。', '4', '15100567867', '1', '2015-03-07 19:20:16', '20150307192016', null, null, null, null, '2015-03-07 19:20:16', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fa35e3cbfc9a48d58298c95c83b304c5', '何伟，您好！您的订单2015030810235456617已提交，我们将在工作日24小时内与您联系。', '4', '18511156617', '1', '2015-03-08 10:23:55', '20150308102354', null, null, null, null, '2015-03-08 10:23:55', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fa55155a54a34c95ac490abf238279ca', '才长龙，您好！您的订单2015030721293356541已提交，我们将在工作日24小时内与您联系。', '4', '15930856541', '1', '2015-03-07 21:29:34', '20150307212933', null, null, null, null, '2015-03-07 21:29:34', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fa618f936b9d43ff8fa677c34fb4d54e', '极富新，您好！您的订单2015030720441161122已提交，我们将在工作日24小时内与您联系。', '4', '18617861122', '1', '2015-03-07 20:44:11', '20150307204411', null, null, null, null, '2015-03-07 20:44:11', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fa919fe7d4d648b88f8b77bbb80d51a9', '您的注册验证码为307472,请勿泄露!', '4', '13899895168', '1', '2015-03-08 13:24:54', '20150308132454', null, null, null, null, '2015-03-08 13:24:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fab4069c94e14f6ebb3d2261859b6cb8', '您的注册验证码为840287,请勿泄露!', '4', '13932490028', '1', '2015-03-08 13:16:18', '20150308131618', null, null, null, null, '2015-03-08 13:16:18', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fabf2201c6fb409ea4e8066e6b2bd160', '您好!2014-10-25 19:04:37，有人发来留言，请注意查收!', '2', '18513705559', '7', '2014-10-25 19:04:38', '20141025190438', null, null, null, '16', '2014-10-25 19:04:38', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fb431a7613c54d6d9bc39f8a6b7a616f', '您的注册验证码为980206,请勿泄露!', '4', '13920417981', '1', '2015-03-08 12:43:33', '20150308124333', null, null, null, null, '2015-03-08 12:43:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fb8bc0b1c3f346d08f65e4d8c508cea7', '您的注册验证码为245218,请勿泄露!', '4', '15100555599', '1', '2015-03-08 13:55:33', '20150308135533', null, null, null, null, '2015-03-08 13:55:33', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fb9e5079d3e3497a9e392a617cf95037', '您的注册验证码为440928,请勿泄露!', '4', '15732537188', '1', '2015-03-08 12:18:21', '20150308121821', null, null, null, null, '2015-03-08 12:18:21', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fbb6d0a4c8294fcfaf30491098a6f2db', '您的注册验证码为746953,请勿泄露!', '4', '15081528389', '1', '2015-03-08 13:47:13', '20150308134713', null, null, null, null, '2015-03-08 13:47:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fc607bb3eea44cb296aea782ccd38bf9', '您的注册验证码为329704,请勿泄露!', '4', '13069898987', '1', '2015-03-08 12:57:24', '20150308125724', null, null, null, null, '2015-03-08 12:57:24', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fc7d1500dd0a4991ac7ff1d3fe78cf17', '您的注册验证码为805776,请勿泄露!', '4', '18931499257', '1', '2015-03-08 13:59:04', '20150308135904', null, null, null, null, '2015-03-08 13:59:04', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fda1a5e6d1e44b8da9db2a74e2559d62', '您好！228295289用户预约了2014-10-22  14:30:11的如下项目：各类化验，请注意查看!', '1', '18600062729', '7', '2014-10-28 14:30:20', '20141028143020', null, null, null, '16', '2014-10-28 14:30:20', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fdffa288a22945978be876b445c9794f', '您的注册验证码为304215,请勿泄露!', '4', '18604599368', '1', '2015-03-08 13:31:01', '20150308133101', null, null, null, null, '2015-03-08 13:31:01', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fe30e92d51e04114a4b81c97a978f970', '您的注册验证码为379796,请勿泄露!', '4', '13683148044', '1', '2015-03-08 13:29:54', '20150308132954', null, null, null, null, '2015-03-08 13:29:54', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fe8e402aec844a849c53349cbd5ee0d8', '您的注册验证码为111130,请勿泄露!', '4', '15830489876', '1', '2015-03-07 21:24:31', '20150307212431', null, null, null, null, '2015-03-07 21:24:31', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('fecba595998c4ca58b24c160d30591e6', '您好！XXX用户预约了2014-10-13 17:59:11的如下项目：项目1，项目2，项目3，项目5，。手机号为***********', '1', '', '4', '2014-10-11 17:59:13', '20141011175913', null, null, null, '16', '2014-10-11 17:59:13', null, null);
INSERT INTO `tvcms_send_sms_record` VALUES ('ff842f357f6a4fff95585ac2235a3ded', '您的注册验证码为893661,请勿泄露!', '4', '13039044888', '1', '2015-03-08 13:02:17', '20150308130217', null, null, null, null, '2015-03-08 13:02:17', null, null);

-- ----------------------------
-- Table structure for `tvcms_smsplatform_set`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_smsplatform_set`;
CREATE TABLE `tvcms_smsplatform_set` (
  `id` int(11) NOT NULL auto_increment,
  `sms_name` varchar(50) default NULL COMMENT '用户名',
  `sms_pwd` varchar(50) default NULL COMMENT '密码',
  `sign` varchar(50) default NULL COMMENT '签名',
  `send_phone` varchar(200) default NULL COMMENT '发送手机号',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='短信平台配置表';

-- ----------------------------
-- Records of tvcms_smsplatform_set
-- ----------------------------
INSERT INTO `tvcms_smsplatform_set` VALUES ('1', 'tvdns', '84673345', '特维网讯', '18513705559,18600062729', null, null, null, '1', '2015-03-25 11:36:07', null, null);

-- ----------------------------
-- Table structure for `tvcms_sms_mail_list`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_sms_mail_list`;
CREATE TABLE `tvcms_sms_mail_list` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `name` varchar(20) default NULL COMMENT '名称',
  `pinyin` varchar(300) default NULL COMMENT '姓名所对应的拼音',
  `phone` varchar(20) default NULL COMMENT '手机号',
  `remarks` varchar(300) default NULL COMMENT '备注',
  `mail_list_group_id` int(11) default NULL COMMENT '分组id',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`),
  KEY `fk_list_group_id` (`mail_list_group_id`),
  CONSTRAINT `fk_list_group_id` FOREIGN KEY (`mail_list_group_id`) REFERENCES `tvcms_sms_mail_list_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_sms_mail_list
-- ----------------------------
INSERT INTO `tvcms_sms_mail_list` VALUES ('2', '孙劲扬', 'sunjingyang,sunjinyang', '18513705559', '公司职员', '1', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list` VALUES ('7', '张国立', 'zhangguoli', '14534565', '撒旦撒旦', '10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list` VALUES ('8', '周星驰', 'zhouxingchi', '23543534', '阿斯顿撒旦', '10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list` VALUES ('9', '李小龙', 'lixiaolong', '423432423', '撒大声地', '11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list` VALUES ('10', '孙劲扬', 'sunjingyang,sunjinyang', '1312545652121', '的撒旦撒旦', '10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list` VALUES ('11', '孙中山', 'sunzhongshan', '324234234', '盛大撒旦', '11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list` VALUES ('12', '孙中国', 'sunzhongguo', '32423423423', '撒旦撒旦', '11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list` VALUES ('19', '王闯', 'wangchuang', '18201362643', '18201362643', '11', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_sms_mail_list_group`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_sms_mail_list_group`;
CREATE TABLE `tvcms_sms_mail_list_group` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `title` varchar(30) default NULL COMMENT '分组名称',
  `remarks` varchar(300) default NULL COMMENT '备注',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_sms_mail_list_group
-- ----------------------------
INSERT INTO `tvcms_sms_mail_list_group` VALUES ('1', '未分组', '所有没有分组的联系人以及删除分组后的联系人', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list_group` VALUES ('10', '家人', 'sad', null, null, null, null, null, null, null);
INSERT INTO `tvcms_sms_mail_list_group` VALUES ('11', '同事', '同事', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_sms_send_record`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_sms_send_record`;
CREATE TABLE `tvcms_sms_send_record` (
  `id` int(11) NOT NULL auto_increment,
  `txt` varchar(1000) default NULL COMMENT '短信内容',
  `type` varchar(20) default NULL COMMENT '类型',
  `mobile` varchar(20) default NULL COMMENT '手机号码',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送记录';

-- ----------------------------
-- Records of tvcms_sms_send_record
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_source`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_source`;
CREATE TABLE `tvcms_source` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) default NULL COMMENT '文章来源',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_source
-- ----------------------------
INSERT INTO `tvcms_source` VALUES ('1', '新华网');
INSERT INTO `tvcms_source` VALUES ('2', '新浪');
INSERT INTO `tvcms_source` VALUES ('3', '腾讯');
INSERT INTO `tvcms_source` VALUES ('4', '人人');

-- ----------------------------
-- Table structure for `tvcms_sys_power`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_sys_power`;
CREATE TABLE `tvcms_sys_power` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `code` varchar(10) default NULL COMMENT '权限编号',
  `name` varchar(100) default NULL COMMENT '权限名称',
  `enter_url` varchar(100) default NULL COMMENT '功能URL',
  `other_url` varchar(1000) default NULL COMMENT '其他URL',
  `sort` int(11) default NULL COMMENT '排序',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  `parent_id` int(11) default NULL,
  `power_type` varchar(2) default NULL COMMENT '权限类型(1功能,2按钮)',
  `is_visible` decimal(1,0) default NULL COMMENT '是否显示',
  `img_path` varchar(50) default NULL COMMENT '图片路径',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='系统权限';

-- ----------------------------
-- Records of tvcms_sys_power
-- ----------------------------
INSERT INTO `tvcms_sys_power` VALUES ('1', null, '系统', '', '', '1', '0', null, null, '16', '2014-11-03 09:24:09', null, null, null, '1', '1', 'fa fa-cog');
INSERT INTO `tvcms_sys_power` VALUES ('2', null, '内容', '', '', '2', '0', null, null, '1', '2015-04-16 19:28:31', '1', '2015-03-04 19:19:44', null, '1', '1', 'fa fa-file-text');
INSERT INTO `tvcms_sys_power` VALUES ('3', null, '栏目', '', '', '3', '0', null, null, '1', '2015-04-16 19:28:40', '1', '2015-03-04 19:19:05', null, '1', '1', 'fa fa-align-justify');
INSERT INTO `tvcms_sys_power` VALUES ('4', null, '模板', '', '', '4', '0', null, null, '1', '2015-04-16 19:28:50', '1', '2015-03-04 19:19:09', null, '1', '1', 'fa fa-th');
INSERT INTO `tvcms_sys_power` VALUES ('5', null, '用户', '', '', '6', '0', null, null, '16', '2014-09-29 16:10:30', null, null, null, '1', '1', 'fa fa-user');
INSERT INTO `tvcms_sys_power` VALUES ('6', null, '生成', '', '', '5', '0', null, null, '16', '2014-09-29 16:10:35', '1', '2015-03-04 19:23:15', null, '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('7', null, '系统设置', null, null, '1', '0', null, null, null, null, null, null, '1', '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('8', null, '数据备份还原', null, null, '2', '1', null, null, null, null, '1', '2015-03-10 17:55:20', '1', '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('9', null, '基本属性', '/system/setting.html', '/system/setting/saveorupdate', '1', '0', null, null, '16', '2014-09-20 10:03:16', null, null, '7', '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('10', null, '用户设置', '/system/UserSettings.html', '/system/saveUserSet', '2', '0', null, null, '16', '2014-09-22 14:45:07', null, null, '7', '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('11', null, '系统用户管理', '', '', '1', '0', null, null, null, '2014-06-18 23:28:51', null, null, '5', '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('12', null, '权限设置', '/system/PowerSetting.html', '/system/PowerSetting/load.json\n/system/PowerSetting/save.json\n/system/PowerSetting/del.json', '2', '0', null, null, '16', '2014-09-06 16:13:44', null, null, '11', '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('13', null, '用户组管理', '/user/group.html', '/user/group/detail.json\n/user/group/save.json\n/user/group/del.json\n/system/PowerSetting/load.json\n/user/group.html', '3', '0', null, null, '16', '2014-09-24 11:54:30', null, null, '11', '1', '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('14', null, '系统用户管理', '', '', '1', '1', null, '2014-06-18 23:07:11', null, null, '1', '2015-03-10 17:55:01', '11', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('15', null, '系统用户管理', '', '', '1', '1', null, '2014-06-18 23:29:05', null, null, '1', '2015-03-10 17:54:55', '11', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('16', null, '系统用户', '/user/userController/findAll.html', '/user/userController/findById/*.html\n/user/userController/delete/*.html\n/user/userController/addUserOrUpdate\n/user/userController/userName.json', '1', '0', null, '2014-06-20 22:55:38', '16', '2014-09-26 20:19:58', null, null, '11', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('17', null, '', '', '', null, '1', null, '2014-07-18 11:39:13', null, null, '1', '2015-03-04 19:18:44', null, null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('18', null, '测试', '/upload/upload.jps', '', '1', '1', null, '2014-07-24 11:55:26', null, '2014-07-24 11:56:01', '1', '2015-03-10 17:55:39', '7', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('19', null, '生成管理', '', '', '1', '0', null, '2014-08-23 10:39:52', '16', '2014-09-29 10:52:32', '1', '2015-03-04 19:23:19', '6', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('20', null, '静态化', '/system/static.html', '/system/makeStatic.json\n', '1', '0', null, '2014-08-23 10:41:50', '16', '2014-09-24 17:20:36', '1', '2015-03-04 19:23:12', '19', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('21', null, '', '', '', null, '1', '16', '2014-09-06 15:35:44', null, null, '1', '2015-03-04 19:18:48', null, null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('22', null, '会员管理', '', '', '5', '0', '16', '2014-09-20 09:57:41', null, null, null, null, '5', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('23', null, '会员管理', '/member/memberController/findAll.html', '/member/memberController/findById/*.html\n/member/memberController/addUserOrUpdate\n/member/memberController/userName.json', '5', '0', '16', '2014-09-20 09:58:28', '16', '2014-09-26 17:56:21', null, null, '22', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('24', null, '系统登录日志', '/user/userController/queryLoginLog.html', '/user/userController/dele/*.html', '1', '0', '16', '2014-09-20 09:59:46', '16', '2014-09-23 10:18:02', null, null, '11', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('25', null, '会员字段管理', '/user/userController/findUserField.html', '', '5', '0', '16', '2014-09-20 10:01:14', '16', '2014-10-08 09:40:38', null, null, '22', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('26', null, '创建索引', '/search_index/show.html', '/search_index/create.json', '2', '1', '16', '2014-09-20 13:13:14', null, null, '1', '2015-03-04 19:23:54', '19', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('27', null, '搜索', '/search/index.html', '', '3', '1', '16', '2014-09-20 15:17:54', null, null, '1', '2015-03-04 19:24:00', '19', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('28', null, '2222', '', '', '1', '1', '16', '2014-09-22 13:36:10', null, null, '1', '2015-03-10 17:55:08', '11', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('29', null, '内容', '', '/cont/cont.html\n/cont/load.json\n/cont/findById/*.html\n/cont/addCont/*.html\n/cont/dele/*/*.html\n/cont/savecont\n/cont/findId/*.html', '2', '1', '16', '2014-09-23 09:11:18', null, null, '1', '2015-03-04 19:19:37', '2', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('30', null, '代码项管理', '', '', '1', '0', '16', '2014-09-24 11:06:02', '16', '2014-09-26 17:50:41', null, null, '1', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('31', null, '留言板管理', '/plugin/messageBoardController/findAllMessage', '/plugin/messageBoardController/updateMsg', '1', '0', '16', '2014-09-25 16:15:58', '16', '2014-09-25 21:24:19', '1', '2015-03-04 19:23:23', '19', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('32', null, '服务项目类别', '/system/codeItem.html', '/system/load.json\n/system/codeItemLeft\n/system/codeItemRight\n/system/codeItemRight/*.html\n/system/codeItemRight/dele/*/*.html\n/system/codeItemRightUpdate/*/*.html\n/system/codeItemRight/findScById/* ', '1', '0', '16', '2014-09-26 10:37:39', '16', '2014-10-26 22:23:43', null, null, '30', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('33', null, '插件', '', '', '7', '0', '16', '2014-09-29 10:21:14', '16', '2014-09-29 10:21:25', '1', '2015-03-04 19:24:05', null, null, '1', 'fa fa-headphones');
INSERT INTO `tvcms_sys_power` VALUES ('34', null, '留言板管理', '', '', '1', '1', '16', '2014-09-29 10:21:51', '16', '2014-09-29 10:49:03', '1', '2015-03-04 19:27:41', '33', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('35', null, '留言管理', '/plugin/messageBoardController/findAllMessage', '/plugin/messageBoardController/updateMsg', '1', '1', '16', '2014-09-29 10:49:10', '16', '2014-09-29 10:51:06', '1', '2015-03-04 19:27:44', '34', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('36', null, '留言管理', '/plugin/messageBoardController/findAllMessage', '/plugin/messageBoardController/updateMsg', '1', '1', '16', '2014-09-29 10:49:20', null, null, '1', '2015-03-04 19:19:00', null, null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('37', null, '广告系统', '', '', '2', '1', '16', '2014-09-29 10:49:50', null, null, '1', '2015-03-04 19:28:02', '33', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('38', null, '广告管理', '/plugin/advertController/findAll.html', '/plugin/advertController/findById/*.html\n/plugin/advertController/deleAd/*.html\n/plugin/updateAdvert.jsp\n/plugin/showImage/*/*.html', '1', '0', '16', '2014-09-29 10:50:03', '16', '2014-09-30 14:42:53', '1', '2015-03-04 19:27:58', '37', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('39', null, '评论管理', '/plugin/messageBoardController/findAllComment.html', '', '3', '1', '16', '2014-09-29 10:53:08', '16', '2014-10-13 11:45:06', '1', '2015-03-04 19:27:53', '34', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('40', null, '留言板字段管理', '/plugin/messageBoardController/findMsgField.html', '', '2', '1', '16', '2014-09-29 10:54:10', '16', '2014-10-08 09:41:27', '1', '2015-03-04 19:27:50', '34', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('41', null, '短信平台管理', '', '', '3', '0', '16', '2014-09-29 16:09:07', null, null, null, null, '33', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('42', null, '发送短信', '/plugin/smsplatformcontroller/sendsmsPage', '', '2', '0', '16', '2014-09-29 16:09:24', '16', '2014-10-03 00:48:09', null, null, '41', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('43', null, '发送记录', '/plugin/smsplatformcontroller/smsRecordFindAll.html', '', '3', '0', '16', '2014-09-29 16:09:34', '16', '2014-10-05 03:26:03', null, null, '41', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('44', null, '平台配置', '/plugin/smsplatformcontroller/smsPlat.html', '', '1', '0', '16', '2014-09-29 16:10:54', '16', '2014-10-05 03:07:28', null, null, '41', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('45', null, '预约管理', '', '', '4', '1', '16', '2014-09-30 09:59:15', null, null, '1', '2015-03-04 19:28:08', '33', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('46', null, '预约查询', '', '', '1', '1', '16', '2014-09-30 10:00:27', null, null, '1', '2015-03-04 19:28:12', '45', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('47', null, '医院管理', '', '', '8', '1', '16', '2014-09-30 10:12:59', null, null, '1', '2015-03-04 19:28:21', null, null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('48', null, '预约管理', '', '', '1', '1', '16', '2014-09-30 10:13:14', null, null, '1', '2015-03-04 19:29:29', '47', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('49', null, '预约查询', '/hospital/bookingController/findAllBooking.html', '/hospital/bookingController/checkSc/*.html', '1', '1', '16', '2014-09-30 10:13:26', '16', '2014-10-09 17:17:40', '1', '2015-03-04 19:29:35', '48', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('50', null, '医生管理', '', '', '2', '1', '16', '2014-10-08 09:37:04', '16', '2014-10-08 13:09:38', '1', '2015-03-04 19:29:26', '47', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('51', null, '介绍医生管理', '/hospital/doctorController/findAllDoctor.html', '/hospital/doctorController/findById/*.html\n/hospital/doctorController/deleDoctor/*.html', '8', '1', '16', '2014-10-08 09:37:13', '16', '2014-11-22 11:55:11', '1', '2015-03-04 19:29:39', '50', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('52', null, '查询管理', '', '', '3', '1', '16', '2014-10-08 13:09:30', '16', '2014-10-08 13:09:42', '1', '2015-03-04 19:28:26', '47', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('53', null, '综合查询', '/hospital/statisticsController/findScCountBySc.html', '/hospital/statisticsController/load.json', '3', '1', '16', '2014-10-08 13:09:57', '16', '2014-10-17 12:35:10', '1', '2015-03-04 19:28:29', '52', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('54', null, '结果管理', '/hospital/bookingController/findAllExamine.html', '', '2', '1', '16', '2014-10-08 13:14:27', '16', '2014-10-11 17:11:51', '1', '2015-03-04 19:29:33', '48', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('56', null, '系统', '', '', '1', '1', '16', '2014-11-03 09:22:55', null, null, '1', '2015-03-10 17:55:29', '1', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('57', null, '数据库管理', '', '', '1', '0', '16', '2014-11-03 09:24:25', null, null, null, null, '1', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('58', null, '查看数据库', '/system/dbManagementController/findAllDB.html', '/system/dbManagementController/findAllField/*.html', '1', '0', '16', '2014-11-03 09:24:42', '16', '2014-11-03 11:35:12', null, null, '57', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('59', null, '通讯录分组管理', '/plugin/smsplatformcontroller/findMailListGroup.html', '', '3', '0', '16', '2014-11-06 10:04:43', '16', '2014-11-06 15:12:29', null, null, '41', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('60', null, '通讯录', '/plugin/smsplatformcontroller/findMailList.html', '', '3', '0', '16', '2014-11-06 10:05:03', '16', '2014-11-06 12:15:00', null, null, '41', null, '1', null);
INSERT INTO `tvcms_sys_power` VALUES ('61', null, '系统公告', '', '', '1', '0', '1', '2014-12-15 16:33:13', null, null, null, null, '1', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('62', null, '授权信息', '/system/MessagePushController/findAuth.html', '', '1', '0', '1', '2014-12-15 16:33:35', null, null, null, null, '61', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('63', null, '系统消息', '/system/MessagePushController/findMessagePush.html', '', '1', '0', '1', '2014-12-15 16:34:01', null, null, null, null, '61', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('64', null, '商城', '', '', '8', '0', '1', '2014-12-26 13:27:59', null, null, '1', '2015-03-04 19:28:35', null, null, '1', ' fa fa-shopping-cart');
INSERT INTO `tvcms_sys_power` VALUES ('65', null, '商品详情', '', '', '8', '0', '1', '2014-12-26 13:28:43', '1', '2014-12-26 13:40:48', '1', '2015-03-04 19:29:09', '64', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('66', null, '商品列表', '/shop/product/list', '', '8', '0', '1', '2014-12-26 13:33:19', '1', '2015-04-14 10:39:02', '1', '2015-03-04 19:29:15', '65', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('67', null, '商品分类', '', '', '8', '0', '1', '2014-12-29 11:45:10', null, null, '1', '2015-03-04 19:28:59', '64', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('68', null, '分类列表', '/shop/productClassify/list', '', '8', '0', '1', '2014-12-29 11:47:05', '1', '2014-12-31 13:02:25', '1', '2015-03-04 19:29:06', '67', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('69', null, '添加分类', '/shop/productClassify/toAddOrUpdate', '', '8', '0', '1', '2014-12-29 13:20:37', '1', '2014-12-31 13:02:47', '1', '2015-03-04 19:29:03', '67', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('70', null, '商品品牌', '', '', '8', '0', '1', '2014-12-30 10:06:24', null, null, '1', '2015-03-04 19:28:48', '64', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('71', null, '品牌列表', '/shop/brand/list', '', '8', '0', '1', '2014-12-30 12:04:39', null, null, '1', '2015-03-04 19:28:56', '70', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('72', null, '添加品牌', '/shop/brand/toAddOrUpdate', '', '8', '0', '1', '2014-12-30 14:34:32', null, null, '1', '2015-03-04 19:28:52', '70', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('73', null, '商品类型', '', '', '8', '0', '1', '2015-01-07 14:50:36', null, null, '1', '2015-03-04 19:28:38', '64', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('74', null, '类型列表', '/shop/productModel/list', '', '8', '0', '1', '2015-01-07 14:51:01', '1', '2015-01-07 14:57:32', '1', '2015-03-04 19:28:45', '73', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('75', null, '添加类型', '/shop/productModel/toAddOrUpdate', '', '8', '0', '1', '2015-01-07 17:11:32', null, null, '1', '2015-03-04 19:28:42', '73', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('76', null, '添加商品', '/shop/product/toAddOrUpdate', '', '8', '0', '1', '2015-01-19 13:34:04', null, null, '1', '2015-03-04 19:29:12', '65', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('77', null, '自定义菜单', '', '', null, '1', '1', '2015-03-05 12:06:10', null, null, '1', '2015-03-10 17:55:50', null, null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('78', null, '自定义菜单', '', '', null, '1', '1', '2015-03-05 12:06:23', null, null, '1', '2015-03-10 17:55:59', '77', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('79', null, '所有菜单', '/custom/findAll', '', null, '1', '1', '2015-03-05 12:06:41', '1', '2015-03-05 12:07:05', '1', '2015-03-10 17:55:55', '78', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('84', null, '内容管理', '/cont/cont.html', '', '1', '0', '1', '2015-04-16 19:24:41', '1', '2015-04-16 19:30:53', null, null, '2', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('86', null, '栏目管理', '/column/column.html', '', '1', '0', '1', '2015-04-16 19:25:27', '1', '2015-04-16 19:29:03', null, null, '3', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('87', null, '模板管理', '/template/sidebar.html', '', '1', '0', '1', '2015-04-16 19:25:48', '1', '2015-04-16 19:29:06', null, null, '4', null, '1', '');
INSERT INTO `tvcms_sys_power` VALUES ('88', null, '系统用户管理2', '', '', '1', '1', '1', '2015-05-27 17:06:06', null, null, null, null, '11', null, '1', '');

-- ----------------------------
-- Table structure for `tvcms_sys_type`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_sys_type`;
CREATE TABLE `tvcms_sys_type` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `website_name` varchar(400) default NULL COMMENT '站点名称',
  `website_url` varchar(60) default NULL COMMENT '网站地址',
  `keyword` varchar(400) default NULL COMMENT '关键字',
  `description` varchar(1000) default NULL COMMENT '网站描述',
  `index_mode` decimal(1,0) default NULL COMMENT '页面模式，1为静态页面，2为动态页面',
  `html_savepath` varchar(400) default NULL COMMENT '文档HTML默认保存路径',
  `img_savepath` varchar(400) default NULL COMMENT '图片/上传文件默认路径',
  `verify_num` decimal(1,0) default NULL COMMENT '验证码，1为数字，2为字母，3为数字加字母',
  `verify_bgcolor` varchar(10) default NULL COMMENT '验证码背景色',
  `verify_num_color` varchar(10) default NULL COMMENT '验证码颜色',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  `web_mode` int(1) default '0' COMMENT '整站模式',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统设置基本属性';

-- ----------------------------
-- Records of tvcms_sys_type
-- ----------------------------
INSERT INTO `tvcms_sys_type` VALUES ('1', '特维网讯1', 'http://www.tvdns.cn', '特维网讯', '特维网讯1', '1', '/templateFile', '/pictureFile', '2', null, null, null, null, null, null, null, null, null, '2');

-- ----------------------------
-- Table structure for `tvcms_template`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_template`;
CREATE TABLE `tvcms_template` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `template_name` varchar(80) default NULL COMMENT '模板名称',
  `catalog_id` int(11) default NULL COMMENT '模板父节点',
  `record_two_content` mediumtext COMMENT '最近第二次记录模板内容',
  `record_two_time` datetime default NULL COMMENT '最近第二次修改模板时间',
  `record_one_time` datetime default NULL COMMENT '最近一次修改模板记录时间',
  `record_one_content` mediumtext COMMENT '最近一次修改记录模板内容',
  `filename` varchar(40) default NULL COMMENT '文件名',
  `var_name` varchar(40) default NULL COMMENT '变量名',
  `template_content` mediumtext COMMENT '文件内容',
  `manageid` int(11) default NULL COMMENT '管理分类id',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`),
  KEY `FK_tvcms_model_2` (`catalog_id`),
  KEY `fk_tvcms_model_1` (`manageid`),
  CONSTRAINT `fk_tvcms_model_1` FOREIGN KEY (`manageid`) REFERENCES `tvcms_manage_classification` (`id`),
  CONSTRAINT `FK_tvcms_model_2` FOREIGN KEY (`catalog_id`) REFERENCES `tvcms_templatecatalog` (`catalog_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='模板';

-- ----------------------------
-- Records of tvcms_template
-- ----------------------------
INSERT INTO `tvcms_template` VALUES ('8', '首页模板', '1', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n\r\n<title><tvcms:systemSetting attr=\"websiteName\"></tvcms:systemSetting></title>\r\n<meta name=\"Keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"></tvcms:systemSetting>\">\r\n<meta name=\"Description\" content=\"<tvcms:systemSetting attr=\"description\"></tvcms:systemSetting>\">\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<tvcms:contList columnId=\"20\" contNum=\"10\" subtitle=\"5\" toutiao=\"1\" releaseTime=\"desc\"> \r\n\r\n\r\n\r\n</tvcms:contList>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n', '2015-05-26 15:37:07', '2015-05-26 15:37:47', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n\r\n<title><tvcms:systemSetting attr=\"websiteName\"></tvcms:systemSetting></title>\r\n<meta name=\"Keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"></tvcms:systemSetting>\">\r\n<meta name=\"Description\" content=\"<tvcms:systemSetting attr=\"description\"></tvcms:systemSetting>\">\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<tvcms:contList columnId=\"20\"  releaseTime=\"desc\"> \r\n\r\n<tvcms:cont attr=\"title\"></tvcms:cont> \r\n\r\n<tvcms:cont attr=\"author\"></tvcms:cont> \r\n\r\n<tvcms:cont attr=\"contAbs\"></tvcms:cont> \r\n\r\n</tvcms:contList>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n', 'index.html', '', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n\r\n<title><tvcms:systemSetting attr=\"websiteName\"></tvcms:systemSetting></title>\r\n<meta name=\"Keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"></tvcms:systemSetting>\">\r\n<meta name=\"Description\" content=\"<tvcms:systemSetting attr=\"description\"></tvcms:systemSetting>\">\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<tvcms:contList columnId=\"20\"  releaseTime=\"desc\"> \r\n\r\n<tvcms:cont attr=\"title\"></tvcms:cont> \r\n\r\n<tvcms:cont attr=\"author\"></tvcms:cont> \r\n\r\n<tvcms:cont attr=\"contAbs\"></tvcms:cont> \r\n\r\n</tvcms:contList>\r\n\r\n\r\n\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n', null, '0', null, '2014-07-06 13:38:25', '1', '2015-05-26 15:37:56', null, null);
INSERT INTO `tvcms_template` VALUES ('11', '服务案例案例模板', '2', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title><tvcms:systemSetting attr=\"websiteName\"></tvcms:systemSetting></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"></tvcms:systemSetting>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"></tvcms:systemSetting>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\">ss/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\">/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\">/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\">/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" ></tvcms:includ>\r\n<tvcms:includ var=\"daohang\" ></tvcms:includ>\r\n<tvcms:includ var=\"myfocus\" ></tvcms:includ>\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\"></tvcms:includ>\r\n<div class=\"fl list-left\">\r\n    <div class=\"content-content\">\r\n    <!--<div class=\"news-tit\"><h3>新聞列表</h3></div>-->\r\n		<h1><tvcms:cont attr=\"title\"></tvcms:cont></h1>\r\n        <p class=\"datetime\">發布時間:<tvcms:cont attr=\"releaseTime\"></tvcms:cont>   作者:<tvcms:cont attr=\"author\"></tvcms:cont></p>\r\n		<tvcms:cont attr=\"newContent\"></tvcms:cont>\r\n    </div>\r\n</div>\r\n</div>\r\n<tvcms:includ var=\"footer\"></tvcms:includ>\r\n</body>\r\n</html>\r\n', '2015-04-07 16:16:46', '2015-04-07 16:17:43', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title><tvcms:systemSetting attr=\"websiteName\"></tvcms:systemSetting></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"></tvcms:systemSetting>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"></tvcms:systemSetting>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\">/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\">/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\">/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\">/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" ></tvcms:includ>\r\n<tvcms:includ var=\"daohang\" ></tvcms:includ>\r\n<tvcms:includ var=\"myfocus\" ></tvcms:includ>\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\"></tvcms:includ>\r\n<div class=\"fl list-left\">\r\n    <div class=\"content-content\">\r\n    <!--<div class=\"news-tit\"><h3>新聞列表</h3></div>-->\r\n		<h1><tvcms:cont attr=\"title\"></tvcms:cont></h1>\r\n        <p class=\"datetime\">發布時間:<tvcms:cont attr=\"releaseTime\"></tvcms:cont>   作者:<tvcms:cont attr=\"author\"></tvcms:cont></p>\r\n		<tvcms:cont attr=\"newContent\"></tvcms:cont>\r\n    </div>\r\n</div>\r\n</div>\r\n<tvcms:includ var=\"footer\"></tvcms:includ>\r\n</body>\r\n</html>\r\n', 'wldemo', '', ' <!doctype html>\r\n<!--[if lt IE 7]> <html class=\"ie6 oldie\"> <![endif]-->\r\n<!--[if IE 7]>    <html class=\"ie7 oldie\"> <![endif]-->\r\n<!--[if IE 8]>    <html class=\"ie8 oldie\"> <![endif]-->\r\n<!--[if gt IE 8]><!-->\r\n<html class=\"\">\r\n<!--<![endif]-->\r\n<head>\r\n<tvcms:includ var=\"heade\" />\r\n</head>\r\n<body>\r\n<div class=\"gridContainer clearfix\">\r\n  <div id=\"LayoutDiv1\">\r\n    <tvcms:includ var=\"wl_nav\" />\r\n  	<tvcms:includ var=\"touchsider\" />\r\n  	<tvcms:includ var=\"cat\" />\r\n    <div class=\"clearfix\">\r\n    	<div class=\"anli-tit\"><h3>服务案例</h3></div>\r\n        <div class=\"anli-nav\">\r\n        </div>\r\n    </div>\r\n    \r\n		<div class=\"clearfix anli-item\">\r\n    	<dl>\r\n        	<dt><h3><tvcms:cont attr=\"title\"></tvcms:cont></h3></dt>\r\n            <dd><p><tvcms:cont attr=\"newContent\"></tvcms:cont></p></dd>\r\n        </dl>\r\n    </div>\r\n    \r\n    \r\n		<tvcms:includ var=\"servqiye\" />\r\n		<tvcms:includ var=\"footer\" />\r\n<!--在这之前-->\r\n  </div>\r\n  \r\n</div>\r\n\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n', null, '1', null, '2014-08-10 15:20:02', '1', '2015-04-07 16:43:44', '1', '2015-04-07 19:40:39');
INSERT INTO `tvcms_template` VALUES ('18', '关于我们', '4', null, null, null, null, 'about.html', '', '<html>\r\n<head>\r\n<title>关于我们</title>\r\n</head>\r\n<body>\r\nTVCMS\r\n</body>\r\n</html>', null, '1', '16', '2014-09-14 17:44:02', '16', '2014-09-20 16:16:40', '16', '2014-10-25 18:03:44');
INSERT INTO `tvcms_template` VALUES ('31', '留言模板4', '5', '<form action=\"/tvcms/plugin/messageboard\" method=\"post\">\r\n    <table>\r\n        <tr>\r\n          <td>标题：</td>\r\n          <td><input type=\"text\" name=\"name\"/></td>\r\n        </tr>\r\n         <tr>\r\n          <td>联系方式：</td>\r\n          <td><input type=\"text\" name=\"contact\"/></td>\r\n        </tr>\r\n         <tr>\r\n          <td>正文：</td>\r\n          <td><textarea name=\"message\"></textarea></td>\r\n        </tr>\r\n        <tr>\r\n          <td><input type=\"submit\" value=\"提交\"/></td>\r\n          <td><input type=\"reset\" value=\"重置\"/></td>\r\n        </tr>\r\n    </table>\r\n</form>', '2014-09-24 17:53:02', '2014-10-31 18:37:07', '<form action=\"/tvcms/plugin/messageboard\" method=\"post\">\r\n    <table>\r\n        <tr>\r\n          <td>標題：</td>\r\n          <td><input type=\"text\" name=\"name\"/></td>\r\n        </tr>\r\n         <tr>\r\n          <td>聯系方式：</td>\r\n          <td><input type=\"text\" name=\"contact\"/></td>\r\n        </tr>\r\n         <tr>\r\n          <td>正文：</td>\r\n          <td><textarea name=\"message\"></textarea></td>\r\n        </tr>\r\n        <tr>\r\n          <td><input type=\"submit\" value=\"提交\"/></td>\r\n          <td><input type=\"reset\" value=\"重置\"/></td>\r\n        </tr>\r\n    </table>\r\n</form>', 'ssss.html', 'liuyan1', '<form action=\"/tvcms/plugin/messageboard\" method=\"post\">\r\n    <table>\r\n        <tr>\r\n          <td>標題：</td>\r\n          <td><input type=\"text\" name=\"name\"/></td>\r\n        </tr>\r\n         <tr>\r\n          <td>聯系方式：</td>\r\n          <td><input type=\"text\" name=\"contact\"/></td>\r\n        </tr>\r\n         <tr>\r\n          <td>正文：</td>\r\n          <td><textarea name=\"message\"></textarea></td>\r\n        </tr>\r\n        <tr>\r\n          <td><input type=\"submit\" value=\"提交\"/></td>\r\n          <td><input type=\"reset\" value=\"重置\"/></td>\r\n        </tr>\r\n    </table>\r\n</form>', null, '1', '16', '2014-09-24 17:53:02', '16', '2014-11-04 10:43:54', '1', '2015-05-12 16:02:44');
INSERT INTO `tvcms_template` VALUES ('33', '在线预约1', '5', null, null, '2014-10-21 21:04:52', '<html>\r\n<head>\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/js/My97DatePicker/WdatePicker.js\"></script>\r\n<script src=\"<tvcms:systemSetting attr=\"root\"/>/assets/js/jquery-1.10.2.min.js\">\r\n <script type=\"text/javascript\">\r\n $(document).ready(\r\n\r\nfunction() {\r\n 	$(\"#form\").submit(function() {\r\n		var checkArray = \"\";//获取选择的数据\r\n			$(\"input[name=\'bookings\']:checked\").each(function(i) {\r\n				if (i == 0) {\r\n					checkArray = $(this).val()\r\n				} else {\r\n					checkArray = checkArray + \",\" + $(this).val();\r\n				}\r\n			});\r\n			if (checkArray == \"\") {\r\n				alert(\"请选择数据！\");\r\n				return false;\r\n			}\r\n		\r\n			$(\"#servicesIds\").val(checkArray);\r\n			\r\n			return true;\r\n\r\n		})\r\n});\r\n </script>\r\n</head>\r\n<body>\r\n\r\n<form action=\"/hospital/bookingController/addBooking\" method=\"post\" id=\"form\">\r\n<tvcms:services superiorId=\"1\">\r\n <input type=\"checkbox\"   name=\"bookings\" value=\"<tvcms:service attr=\"id\"/> \"/><tvcms:service attr=\"name\"/> \r\n</tvcms:services>\r\n     <br/>\r\n     选择检查时间：<input class=\"Wdate\" name=\"bookingTime\" type=\"text\" onClick=\"WdatePicker()\">  \r\n     <input type=\"submit\" value=\"提交预约\"/>\r\n</form>\r\n\r\n</body>\r\n</html>', 'booking1.html', 'booking1', '<html>\r\n<head>\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/js/My97DatePicker/WdatePicker.js\"></script>\r\n<script src=\"<tvcms:systemSetting attr=\"root\"/>/assets/js/jquery-1.10.2.min.js\">\r\n <script type=\"text/javascript\">\r\n $(document).ready(\r\n\r\nfunction() {\r\n 	$(\"#form\").submit(function() {\r\n		var checkArray = \"\";//獲取選擇的數據\r\n			$(\"input[name=\'bookings\']:checked\").each(function(i) {\r\n				if (i == 0) {\r\n					checkArray = $(this).val()\r\n				} else {\r\n					checkArray = checkArray + \",\" + $(this).val();\r\n				}\r\n			});\r\n			if (checkArray == \"\") {\r\n				alert(\"請選擇數據！\");\r\n				return false;\r\n			}\r\n		\r\n			$(\"#servicesIds\").val(checkArray);\r\n			\r\n			return true;\r\n\r\n		})\r\n});\r\n </script>\r\n</head>\r\n<body>\r\n\r\n<form action=\"/hospital/bookingController/addBooking\" method=\"post\" id=\"form\">\r\n<tvcms:services superiorId=\"1\">\r\n <input type=\"checkbox\"   name=\"bookings\" value=\"<tvcms:service attr=\"id\"/> \"/><tvcms:service attr=\"name\"/> \r\n</tvcms:services>\r\n     <br/>\r\n     選擇檢查時間：<input class=\"Wdate\" name=\"bookingTime\" type=\"text\" onClick=\"WdatePicker()\">  \r\n     <input type=\"submit\" value=\"提交預約\"/>\r\n</form>\r\n\r\n</body>\r\n</html>', null, '1', '16', '2014-10-09 11:51:11', '16', '2014-10-31 18:37:19', '1', '2015-05-12 16:02:42');
INSERT INTO `tvcms_template` VALUES ('34', '在线预约', '4', null, null, null, null, 'booking3.html', '', '<html>\r\n<head>\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/js/My97DatePicker/WdatePicker.js\"></script>\r\n<script src=\"<tvcms:systemSetting attr=\"root\"/>/assets/js/jquery-1.10.2.min.js\"></script>\r\n <script type=\"text/javascript\">\r\n $(document).ready(\r\n\r\nfunction() {\r\n 	$(\"#form\").submit(function() {\r\n		var checkArray = \"\";//获取选择的数据\r\n			$(\"input[name=\'bookings\']:checked\").each(function(i) {\r\n				if (i == 0) {\r\n					checkArray = $(this).val()\r\n				} else {\r\n					checkArray = checkArray + \",\" + $(this).val();\r\n				}\r\n			});\r\n			if (checkArray == \"\") {\r\n				alert(\"请选择数据！\");\r\n				return false;\r\n			}\r\n		\r\n			$(\"#servicesIds\").val(checkArray);\r\n			\r\n			return true;\r\n\r\n		})\r\n});\r\n </script>\r\n</head>\r\n<body>\r\n\r\n<form action=\"/tvcms/hospital/bookingController/addBooking/0/add\" method=\"post\" id=\"form\">\r\n<input type=\"hidden\" id=\"servicesIds\" name=\"servicesIds\" />\r\n<tvcms:services superiorId=\"1\">\r\n <input type=\"checkbox\"   name=\"bookings\" value=\"<tvcms:service attr=\"id\"/>\"/><tvcms:service attr=\"name\"/> \r\n</tvcms:services>\r\n     <br/>\r\n     选择检查时间：<input class=\"Wdate\" name=\"bookingTimes\" type=\"text\" onClick=\"WdatePicker({dateFmt:\'yyyy-MM-dd  HH:mm:ss\'})\">  \r\n     <input type=\"submit\" value=\"提交预约\"/>\r\n</form>\r\n\r\n</body>\r\n</html>', null, '1', '16', '2014-10-09 11:58:52', '16', '2014-10-09 14:43:25', '16', '2014-10-23 12:09:24');
INSERT INTO `tvcms_template` VALUES ('37', '会员登录', '4', null, null, '2014-10-23 21:59:26', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>用户登录</title>\r\n<style type=\"text/css\">\r\nbody { padding:0; margin:0;}	\r\n.rel { position:relative;}\r\n.abs { position:absolute;}\r\n.bg { right:0; left:0; width:100%; height:100%；}\r\n.login-main { padding:0; margin:0; width:780px; height:370px; margin-left:-390px; top:200px; left:50%;}\r\n.login-main h3{ height:40px; line-height:40px; font-size:18px; color:#fff; margin:0;}\r\n.login-text { border-radius:10px; background:#fff; padding:5px 10px;filter:alpha(opacity=70); -moz-opacity:0.7; -khtml-opacity: 0.7; opacity: 0.7;}\r\n.login-text ul { width:400px; margin:100px auto; padding:0;}\r\n.login-text ul li{ list-style:none; height:42px; line-height:42px; margin-bottom:10px;}\r\n.login-text ul li label { width:65px; display:block; text-align:right; float:left; height:16px; margin-right:20px;}\r\n.login-text ul li .text { float:left; height:16px; padding:10px 10px; background:#cfe0f6; border-radius:5px; border:1px solid #95a7bd; width:270px;}\r\n.login-text ul li .button { border:0; height:42px; line-height:42px; padding:0; background:#0a3265; width:292px; border-radius:5px; font-size:14px; color:#fff;}\r\n.login-text ul li a { color:#0a3265;font-size:14px;}.\r\n.clearfix:after { visibility: hidden;display: block;font-size: 0;content: \" \";clear: both;height: 0;}\r\n.clearfix { display: inline-table; }/* Hides from IE-mac \\*/\r\n* html .clearfix { height: 1%; }\r\n.clearfix { display: block; }/* End hide from IE-mac */\r\n\r\n</style>\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n</head>\r\n\r\n<body class=\"rel\">\r\n<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/bg.jpg\" class=\"abs bg\" />\r\n<div class=\"login-main abs\">\r\n	<h3>會員登錄</h3>\r\n    \r\n    <div class=\"login-text clearfix\">\r\n    <form action=\"<tvcms:systemSetting attr=\"root\"/>/member/userlogin\" method=\"post\">\r\n    	<ul class=\"clearfix\">\r\n        	<li><label>用戶名:</label><input type=\"text\" name=\"username\" class=\"text\" /></li>\r\n        	<li><label>密碼:</label><input type=\"password\" name=\"password\" class=\"text\" /></li>\r\n            <li><label></label><button class=\"button\">提交</button></li>\r\n			<li><label></label><a href=\"<tvcms:systemSetting attr=\"root\"/>/register.html\" style=\"cursor:pointer;\">免費註冊</a></li>\r\n        </ul>\r\n        </form>\r\n\r\n    </div>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n', 'userlogin2.html', 'userlogin2', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>用戶登錄</title>\r\n<style type=\"text/css\">\r\nbody { padding:0; margin:0;}	\r\n.rel { position:relative;}\r\n.abs { position:absolute;}\r\n.bg { right:0; left:0; width:100%; height:100%；}\r\n.login-main { padding:0; margin:0; width:780px; height:370px; margin-left:-390px; top:200px; left:50%;}\r\n.login-main h3{ height:40px; line-height:40px; font-size:18px; color:#fff; margin:0;}\r\n.login-text { border-radius:10px; background:#fff; padding:5px 10px;filter:alpha(opacity=70); -moz-opacity:0.7; -khtml-opacity: 0.7; opacity: 0.7;}\r\n.login-text ul { width:400px; margin:100px auto; padding:0;}\r\n.login-text ul li{ list-style:none; height:42px; line-height:42px; margin-bottom:10px;}\r\n.login-text ul li label { width:65px; display:block; text-align:right; float:left; height:16px; margin-right:20px;}\r\n.login-text ul li .text { float:left; height:16px; padding:10px 10px; background:#cfe0f6; border-radius:5px; border:1px solid #95a7bd; width:270px;}\r\n.login-text ul li .button { border:0; height:42px; line-height:42px; padding:0; background:#0a3265; width:292px; border-radius:5px; font-size:14px; color:#fff;}\r\n.login-text ul li a { color:#0a3265;font-size:14px;}.\r\n.clearfix:after { visibility: hidden;display: block;font-size: 0;content: \" \";clear: both;height: 0;}\r\n.clearfix { display: inline-table; }/* Hides from IE-mac \\*/\r\n* html .clearfix { height: 1%; }\r\n.clearfix { display: block; }/* End hide from IE-mac */\r\n\r\n</style>\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n</head>\r\n\r\n<body class=\"rel\">\r\n<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/bg.jpg\" class=\"abs bg\" />\r\n<div class=\"login-main abs\">\r\n	<h3>會員登錄</h3>\r\n    \r\n    <div class=\"login-text clearfix\">\r\n    <form action=\"<tvcms:systemSetting attr=\"root\"/>/member/userlogin\" method=\"post\">\r\n    	<ul class=\"clearfix\">\r\n        	<li><label>用戶名:</label><input type=\"text\" name=\"username\" class=\"text\" /></li>\r\n        	<li><label>密碼:</label><input type=\"password\" name=\"password\" class=\"text\" /></li>\r\n            <li><label></label><button class=\"button\">提交</button></li>\r\n			<li><label></label><a href=\"<tvcms:systemSetting attr=\"root\"/>/register.html\" style=\"cursor:pointer;\">免費註冊</a></li>\r\n        </ul>\r\n        </form>\r\n\r\n    </div>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-11 15:50:27', '16', '2014-10-31 18:33:37', null, null);
INSERT INTO `tvcms_template` VALUES ('40', '新闻列表模板', '3', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/index1.css\" />\r\n<title>国家安全生产物联网（非煤领域）检测认证公共平台</title>\r\n</head>\r\n\r\n<body>\r\n <!--/*top/-->\r\n     <div class=\"top\">\r\n       <div class=\"date\">\r\n       </div>\r\n       <div class=\"denglu\">\r\n        <a href=\"login1.html\">用户登录</a>  |  <a href=\"#\">企业注册</a>  |   <a href=\"#\">找回密码</a>\r\n       </div>\r\n     </div>\r\n  <!--/*top end/-->\r\n  \r\n  <!--/*banner*/-->\r\n     <div class=\"banner\">\r\n      <!-- <div class=\"search\">\r\n        <div class=\"search-cont\">\r\n           <input type=\"text\" value=\"相关下载\" /><a href=\"#\"><img src=\"images/search.png\" /></a>\r\n          </div>\r\n        </div>-->\r\n        <div id=\"top_search\">\r\n        <form action=\"\" target=\"_blank\" name=\"form1\" method=\"post\">\r\n   <ul>\r\n     <li>\r\n     <input name=\"fullText\" value=\"请输入您要搜索的关键词\" type=\"text\" onfocus=\"if (value ==\'请输入您要搜索的关键词\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'请输入您要搜索的关键词\'}\" id=\"top_search_input\">\r\n\r\n    <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/search-btn.png\" name=\"top_search_button\" border=\"0\" id=\"top_search_button\"></a></li>\r\n   </ul>\r\n</form>\r\n\r\n        </div>\r\n     </div>\r\n     <div class=\"clear\"></div>\r\n  <!--/*banner end*/-->\r\n  \r\n   <!--/*menu*/-->\r\n     <div id=\"menu\">\r\n      <div class=\"cen\">\r\n       <div id=\"tabsK\"> \r\n	     <ul id=\"nav\"> \r\n		  <li><a href=\"index.html\"><span>首页</span></a></li> \r\n	  	  <li><a href=\"#\"><span>平台介绍</span></a></li>\r\n          <li><a href=\"#\"><span>政策法规</span></a></li>\r\n          <li><a href=\"#\"><span>安全监察</span></a></li>\r\n          <li><a href=\"#\"><span>标准规范</span></a></li>\r\n          <li><a href=\"#\"><span>信息服务</span></a></li>\r\n          <li><a href=\"#\"><span>工作情况</span></a></li>\r\n          <li><a href=\"#\"><span>范本公示</span></a></li>\r\n          <li><a href=\"#\"><span>相关下载</span></a></li> \r\n         </ul> \r\n		</div>\r\n	 </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  <!--/*menu end*/-->\r\n  \r\n  \r\n  <!--/*notice*/-->\r\n     <div class=\"notice\">\r\n       <div class=\"notice-pic\">\r\n        <img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/notic.jpg\" />\r\n       </div>\r\n      <div class=\"marquee_news\">\r\n        <marquee onmouseover=\"this.stop()\" onmouseout=\"this.start()\" scrollDelay=\"60\" scrollAmount=\"2\"  direction=left>\r\n         <a href=\"#\">·我院承担的北京市科技计划《矿山边坡合成孔径雷达监测预警系统研制》顺利通过验收</a>\r\n        <a href=\"#\">·中国安科院与中国人民财产保险股份有限公司签署战略合作协议 </a>\r\n        <a href=\"#\">·国家安全监管总局副局长李兆前一行莅临安科院检查指导工作</a>\r\n       \r\n        </marquee>\r\n     </div>\r\n      \r\n     </div>\r\n      <div class=\"clear\"></div>\r\n  <!--/*notice end*/-->\r\n  <!--/*main*/-->\r\n   <div class=\"main\">\r\n     <div class=\"left\">\r\n       <div class=\"left-tit\">\r\n         <dl>\r\n           <dt>标准规范</dt>\r\n         </dl>\r\n       </div>\r\n       <div class=\"left-cont\">\r\n         <ul>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准法律法规</a></li>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准动态</a></li>\r\n           <li><a href=\"#\" ><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准查询</a></li>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准相关下载</a></li>\r\n         </ul>\r\n       </div>\r\n     </div>  \r\n     <div class=\"right\">\r\n       <div class=\"right-top\">\r\n        <div class=\"postion2\">\r\n         <span>\r\n            您现在的位置 &gt; <a href=\"index.html\">首页</a> &gt; <a href=\"index1.html\">标准规范</a> &gt; <a href=\"#\">讲话</a>\r\n         </span>\r\n       </div>\r\n      \r\n        <div class=\"right-list\">\r\n         <ul>\r\n           <li><a href=\"index1-1.html\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;中华人民共和国安全生产法...</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;煤层冲击倾向性</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;危险化学品安全实验室</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;中华人民共和国安全生产法...</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;中华人民共和国安全生产法...</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;中华人民共和国安全生产法...</a>2015-04-09</li>\r\n             <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;交通安全实验室</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;中华人民共和国安全生产法...</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;安全生产事故分析管理系统</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;重大危险源监控安全实验室</a>2015-04-09</li>\r\n           <li><a href=\"#\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;职业危害与劳动防护实验室...</a>2015-04-09</li>\r\n          </ul>\r\n      </div>\r\n       <div class=\"fenye\">\r\n         <table cellpadding=\"0\" cellspacing=\"0\" class=\"right-tab\">\r\n          <tr>\r\n          <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img1.png\" /></a>\r\n          </td>\r\n          <td>\r\n           <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img2.png\" /></a>\r\n          </td>\r\n          <td>\r\n           <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img3.png\" /></a>\r\n          </td>\r\n          <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img4.png\" /></a>\r\n          </td>\r\n          <td style=\"width:44px;\">\r\n          <a href=\"#\"><input type=\"text\" value=\"1\" style=\"width:30px;\"/></a>\r\n          </td>\r\n           <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img5.png\" /></a>\r\n          </td>\r\n       <td style=\"width:90px\">共 条记录</td>\r\n       <td>第？页</td>\r\n       <td>第？页</td>\r\n         </tr>\r\n         </table>\r\n       </div>\r\n     </div>\r\n    </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n     \r\n <!--/*main end*/-->\r\n  <!--/*footer*/-->\r\n     <div class=\"footer\">\r\n       <div class=\"youqing\">\r\n        <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tab2\">\r\n  <tbody>\r\n  <tr>\r\n    <td style=\"width:140px;\"><span style=\"font-size:12px;color:#FFF; padding-left:40px;\">网站链接</span></td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select\"><option>安委会成员单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/newpage/\">安全监管总局</option>\r\n<option value=\"http://www.sdpc.gov.cn/\">国家发展和改革委员会</option>\r\n<option value=\"http://www.moe.edu.cn\">教育部</option>\r\n<option value=\"http://www.most.gov.cn\">科学技术部</option>\r\n<option value=\"http://www.costind.gov.cn\">国防科工委</option>\r\n<option value=\"http://www.moj.gov.cn/\">司法部</option>\r\n<option value=\"http://www.mps.gov.cn\">公安部</option>  \r\n</select>\r\n    </td>\r\n    \r\n    <td >\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select2\"><option>总局直属单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局调度中心</option>    \r\n    <option value=\"http://www.ncics.org.cn/\">国际交流合作中心 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局档案馆 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监服务中心 </option>    \r\n </select>\r\n    </td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select3\"><option>总局管理协会</option>\r\n<option value=\"http://www.cosha.org.cn/\">中国职业健康安全协会</option> \r\n<option value=\"http://www.chemicalsafety.org.cn/\">中国化学品研究协会  </option>                                     \r\n  </select>\r\n    </td>\r\n    <td width=\"150\">\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select4\"><option>国际安全生产</option>\r\n<option value=\"http://www.msha.gov/\">美国矿山安全</option>\r\n<option value=\"http://www.nsc.org/pages/home.aspx\">美国安全生产委员会</option>\r\n   </select>\r\n   </td>\r\n   </tr>\r\n</tbody>\r\n</table>\r\n\r\n       </div>\r\n       <div class=\"zhinan\">\r\n         <p style=\"text-align:center;color:#2381bd;\">\r\n         <a href=\"#\">联系我们</a>  |  <a href=\"#\">帮助指南</a>  |   <a href=\"#\">电子邮箱</a>  |   <a href=\"#\">网站地图</a>  |   <a href=\"#\">申诉投诉</a>\r\n         </p>\r\n         <p>主   办   单   位：国家安全生产监督管理总局 </p>\r\n         <p>承   办   单   位：中国安全生产科学研究院 </p>\r\n         <p>京ICP备05009670号   京公网安备11010502026200</p>\r\n         <p>联系地址：北京市朝阳区北苑路32号院甲1号楼安全大厦 邮编：100012 </p>\r\n         <p>  电话：010-84911329 010-84911334 </p>\r\n         \r\n       </div>\r\n     </div>\r\n  <!--/*footer end*/-->\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n', '2015-05-11 18:02:15', '2015-05-11 18:12:56', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/index1.css\" />\r\n<title>国家安全生产物联网（非煤领域）检测认证公共平台</title>\r\n</head>\r\n\r\n<body>\r\n <!--/*top/-->\r\n     <div class=\"top\">\r\n       <div class=\"date\">\r\n       </div>\r\n       <div class=\"denglu\">\r\n        <a href=\"login1.html\">用户登录</a>  |  <a href=\"#\">企业注册</a>  |   <a href=\"#\">找回密码</a>\r\n       </div>\r\n     </div>\r\n  <!--/*top end/-->\r\n  \r\n  <!--/*banner*/-->\r\n     <div class=\"banner\">\r\n      <!-- <div class=\"search\">\r\n        <div class=\"search-cont\">\r\n           <input type=\"text\" value=\"相关下载\" /><a href=\"#\"><img src=\"images/search.png\" /></a>\r\n          </div>\r\n        </div>-->\r\n        <div id=\"top_search\">\r\n        <form action=\"\" target=\"_blank\" name=\"form1\" method=\"post\">\r\n   <ul>\r\n     <li>\r\n     <input name=\"fullText\" value=\"请输入您要搜索的关键词\" type=\"text\" onfocus=\"if (value ==\'请输入您要搜索的关键词\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'请输入您要搜索的关键词\'}\" id=\"top_search_input\">\r\n\r\n    <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/search-btn.png\" name=\"top_search_button\" border=\"0\" id=\"top_search_button\"></a></li>\r\n   </ul>\r\n</form>\r\n\r\n        </div>\r\n     </div>\r\n     <div class=\"clear\"></div>\r\n  <!--/*banner end*/-->\r\n  \r\n   <!--/*menu*/-->\r\n     <div id=\"menu\">\r\n      <div class=\"cen\">\r\n       <div id=\"tabsK\"> \r\n	     <ul id=\"nav\"> \r\n		  <li><a href=\"index.html\"><span>首页</span></a></li> \r\n	  	  <li><a href=\"#\"><span>平台介绍</span></a></li>\r\n          <li><a href=\"#\"><span>政策法规</span></a></li>\r\n          <li><a href=\"#\"><span>安全监察</span></a></li>\r\n          <li><a href=\"#\"><span>标准规范</span></a></li>\r\n          <li><a href=\"#\"><span>信息服务</span></a></li>\r\n          <li><a href=\"#\"><span>工作情况</span></a></li>\r\n          <li><a href=\"#\"><span>范本公示</span></a></li>\r\n          <li><a href=\"#\"><span>相关下载</span></a></li> \r\n         </ul> \r\n		</div>\r\n	 </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  <!--/*menu end*/-->\r\n  \r\n  \r\n  <!--/*notice*/-->\r\n     <div class=\"notice\">\r\n       <div class=\"notice-pic\">\r\n        <img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/notic.jpg\" />\r\n       </div>\r\n      <div class=\"marquee_news\">\r\n        <marquee onmouseover=\"this.stop()\" onmouseout=\"this.start()\" scrollDelay=\"60\" scrollAmount=\"2\"  direction=left>\r\n         <a href=\"#\">·我院承担的北京市科技计划《矿山边坡合成孔径雷达监测预警系统研制》顺利通过验收</a>\r\n        <a href=\"#\">·中国安科院与中国人民财产保险股份有限公司签署战略合作协议 </a>\r\n        <a href=\"#\">·国家安全监管总局副局长李兆前一行莅临安科院检查指导工作</a>\r\n       \r\n        </marquee>\r\n     </div>\r\n      \r\n     </div>\r\n      <div class=\"clear\"></div>\r\n  <!--/*notice end*/-->\r\n  <!--/*main*/-->\r\n   <div class=\"main\">\r\n     <div class=\"left\">\r\n       <div class=\"left-tit\">\r\n         <dl>\r\n           <dt>标准规范</dt>\r\n         </dl>\r\n       </div>\r\n       <div class=\"left-cont\">\r\n         <ul>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准法律法规</a></li>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准动态</a></li>\r\n           <li><a href=\"#\" ><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准查询</a></li>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />&nbsp;&nbsp;标准相关下载</a></li>\r\n         </ul>\r\n       </div>\r\n     </div>  \r\n     <div class=\"right\">\r\n       <div class=\"right-top\">\r\n        <div class=\"postion2\">\r\n         <span>\r\n            您现在的位置 &gt; <a href=\"index.html\">首页</a> &gt; <a href=\"index1.html\">标准规范</a> &gt; <a href=\"#\">讲话</a>\r\n         </span>\r\n       </div>\r\n      \r\n        <div class=\"right-list\">\r\n         <ul>\r\n         \r\n         <tvcms:contList releaseTime=\"desc\">\r\n           <li><a href=\"<tvcms:cont attr=\"url\" />\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" />&nbsp;<tvcms:cont attr=\"title\"></tvcms:cont>...</a><tvcms:cont attr=\"releaseTime\"></tvcms:cont></li>\r\n</tvcms:contList>\r\n           \r\n           \r\n          </ul>\r\n      </div>\r\n       <div class=\"fenye\">\r\n         <table cellpadding=\"0\" cellspacing=\"0\" class=\"right-tab\">\r\n          <tr>\r\n          <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img1.png\" /></a>\r\n          </td>\r\n          <td>\r\n           <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img2.png\" /></a>\r\n          </td>\r\n          <td>\r\n           <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img3.png\" /></a>\r\n          </td>\r\n          <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img4.png\" /></a>\r\n          </td>\r\n          <td style=\"width:44px;\">\r\n          <a href=\"#\"><input type=\"text\" value=\"1\" style=\"width:30px;\"/></a>\r\n          </td>\r\n           <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img5.png\" /></a>\r\n          </td>\r\n       <td style=\"width:90px\">共 条记录</td>\r\n       <td>第？页</td>\r\n       <td>第？页</td>\r\n         </tr>\r\n         </table>\r\n       </div>\r\n     </div>\r\n    </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n     \r\n <!--/*main end*/-->\r\n  <!--/*footer*/-->\r\n     <div class=\"footer\">\r\n       <div class=\"youqing\">\r\n        <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tab2\">\r\n  <tbody>\r\n  <tr>\r\n    <td style=\"width:140px;\"><span style=\"font-size:12px;color:#FFF; padding-left:40px;\">网站链接</span></td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select\"><option>安委会成员单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/newpage/\">安全监管总局</option>\r\n<option value=\"http://www.sdpc.gov.cn/\">国家发展和改革委员会</option>\r\n<option value=\"http://www.moe.edu.cn\">教育部</option>\r\n<option value=\"http://www.most.gov.cn\">科学技术部</option>\r\n<option value=\"http://www.costind.gov.cn\">国防科工委</option>\r\n<option value=\"http://www.moj.gov.cn/\">司法部</option>\r\n<option value=\"http://www.mps.gov.cn\">公安部</option>  \r\n</select>\r\n    </td>\r\n    \r\n    <td >\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select2\"><option>总局直属单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局调度中心</option>    \r\n    <option value=\"http://www.ncics.org.cn/\">国际交流合作中心 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局档案馆 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监服务中心 </option>    \r\n </select>\r\n    </td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select3\"><option>总局管理协会</option>\r\n<option value=\"http://www.cosha.org.cn/\">中国职业健康安全协会</option> \r\n<option value=\"http://www.chemicalsafety.org.cn/\">中国化学品研究协会  </option>                                     \r\n  </select>\r\n    </td>\r\n    <td width=\"150\">\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select4\"><option>国际安全生产</option>\r\n<option value=\"http://www.msha.gov/\">美国矿山安全</option>\r\n<option value=\"http://www.nsc.org/pages/home.aspx\">美国安全生产委员会</option>\r\n   </select>\r\n   </td>\r\n   </tr>\r\n</tbody>\r\n</table>\r\n\r\n       </div>\r\n       <div class=\"zhinan\">\r\n         <p style=\"text-align:center;color:#2381bd;\">\r\n         <a href=\"#\">联系我们</a>  |  <a href=\"#\">帮助指南</a>  |   <a href=\"#\">电子邮箱</a>  |   <a href=\"#\">网站地图</a>  |   <a href=\"#\">申诉投诉</a>\r\n         </p>\r\n         <p>主   办   单   位：国家安全生产监督管理总局 </p>\r\n         <p>承   办   单   位：中国安全生产科学研究院 </p>\r\n         <p>京ICP备05009670号   京公网安备11010502026200</p>\r\n         <p>联系地址：北京市朝阳区北苑路32号院甲1号楼安全大厦 邮编：100012 </p>\r\n         <p>  电话：010-84911329 010-84911334 </p>\r\n         \r\n       </div>\r\n     </div>\r\n  <!--/*footer end*/-->\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n', 'newslist', 'newslist', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/index1.css\" />\r\n<title>国家安全生产物联网（非煤领域）检测认证公共平台</title>\r\n</head>\r\n\r\n<body>\r\n <!--/*top/-->\r\n     <div class=\"top\">\r\n       <div class=\"date\">\r\n       </div>\r\n       <div class=\"denglu\">\r\n        <a href=\"login1.html\">用户登录</a>  |  <a href=\"#\">企业注册</a>  |   <a href=\"#\">找回密码</a>\r\n       </div>\r\n     </div>\r\n  <!--/*top end/-->\r\n  \r\n  <!--/*banner*/-->\r\n     <div class=\"banner\">\r\n      <!-- <div class=\"search\">\r\n        <div class=\"search-cont\">\r\n           <input type=\"text\" value=\"相关下载\" /><a href=\"#\"><img src=\"images/search.png\" /></a>\r\n          </div>\r\n        </div>-->\r\n        <div id=\"top_search\">\r\n        <form action=\"\" target=\"_blank\" name=\"form1\" method=\"post\">\r\n   <ul>\r\n     <li>\r\n     <input name=\"fullText\" value=\"请输入您要搜索的关键词\" type=\"text\" onfocus=\"if (value ==\'请输入您要搜索的关键词\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'请输入您要搜索的关键词\'}\" id=\"top_search_input\">\r\n\r\n    <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/search-btn.png\" name=\"top_search_button\" border=\"0\" id=\"top_search_button\"></a></li>\r\n   </ul>\r\n</form>\r\n\r\n        </div>\r\n     </div>\r\n     <div class=\"clear\"></div>\r\n  <!--/*banner end*/-->\r\n  \r\n   <!--/*menu*/-->\r\n     <div id=\"menu\">\r\n      <div class=\"cen\">\r\n       <div id=\"tabsK\"> \r\n	     <ul id=\"nav\"> \r\n				  <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/index.html\"><span>首页</span></a></li> \r\n	  	  <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/xinwen/index.html\"><span>平台介绍</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/zcfg/index.html\"><span>政策法规</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/aqjc/index.html\"><span>安全监察</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/bzgf/index.html\" target=\"_blank\"><span>标准规范</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/xxfw/index.html\"><span>信息服务</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/gzqk/index.html\"><span>工作情况</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/fbgs/index.html\"><span>范本公示</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/xgxz/index.html\"><span>相关下载</span></a></li> \r\n\r\n         </ul> \r\n		</div>\r\n	 </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  <!--/*menu end*/-->\r\n  \r\n  \r\n  <!--/*notice*/-->\r\n     <div class=\"notice\">\r\n       <div class=\"notice-pic\">\r\n        <img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/notic.jpg\" />\r\n       </div>\r\n      <div class=\"marquee_news\">\r\n        <marquee onmouseover=\"this.stop()\" onmouseout=\"this.start()\" scrollDelay=\"60\" scrollAmount=\"2\"  direction=left>\r\n         <a href=\"#\">·我院承担的北京市科技计划《矿山边坡合成孔径雷达监测预警系统研制》顺利通过验收</a>\r\n        <a href=\"#\">·中国安科院与中国人民财产保险股份有限公司签署战略合作协议 </a>\r\n        <a href=\"#\">·国家安全监管总局副局长李兆前一行莅临安科院检查指导工作</a>\r\n       \r\n        </marquee>\r\n     </div>\r\n      \r\n     </div>\r\n      <div class=\"clear\"></div>\r\n  <!--/*notice end*/-->\r\n  <!--/*main*/-->\r\n   <div class=\"main\">\r\n     <div class=\"left\">\r\n       <div class=\"left-tit\">\r\n         <dl>\r\n           <dt>标准规范</dt>\r\n         </dl>\r\n       </div>\r\n       <div class=\"left-cont\">\r\n         <ul>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />  标准法律法规</a></li>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />  标准动态</a></li>\r\n           <li><a href=\"#\" ><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />  标准查询</a></li>\r\n           <li><a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon5.png\" />  标准相关下载</a></li>\r\n         </ul>\r\n       </div>\r\n     </div>  \r\n     <div class=\"right\">\r\n       <div class=\"right-top\">\r\n        <div class=\"postion2\">\r\n         <span>\r\n            您现在的位置 > <a href=\"index.html\">首页</a> > <a href=\"index1.html\">标准规范</a> > <a href=\"#\">讲话</a>\r\n         </span>\r\n       </div>\r\n      \r\n        <div class=\"right-list\">\r\n         <ul>\r\n         \r\n         <tvcms:contList releaseTime=\"desc\">\r\n           <li><a href=\"<tvcms:cont attr=\"url\" ></a>\" target=\"_blank\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/icon11.png\" /> <tvcms:cont attr=\"title\"></tvcms:cont>...</a><tvcms:cont attr=\"releaseTime\"></tvcms:cont></li>\r\n</tvcms:contList>\r\n           \r\n           \r\n          </ul>\r\n      </div>\r\n       <div class=\"fenye\">\r\n         <table cellpadding=\"0\" cellspacing=\"0\" class=\"right-tab\">\r\n          <tr>\r\n          <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img1.png\" /></a>\r\n          </td>\r\n          <td>\r\n           <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img2.png\" /></a>\r\n          </td>\r\n          <td>\r\n           <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img3.png\" /></a>\r\n          </td>\r\n          <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img4.png\" /></a>\r\n          </td>\r\n          <td style=\"width:44px;\">\r\n          <a href=\"#\"><input type=\"text\" value=\"1\" style=\"width:30px;\"/></a>\r\n          </td>\r\n           <td>\r\n          <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/left-img5.png\" /></a>\r\n          </td>\r\n       <td style=\"width:90px\">共 条记录</td>\r\n       <td>第？页</td>\r\n       <td>第？页</td>\r\n         </tr>\r\n         </table>\r\n       </div>\r\n     </div>\r\n    </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n     \r\n <!--/*main end*/-->\r\n  <!--/*footer*/-->\r\n     <div class=\"footer\">\r\n       <div class=\"youqing\">\r\n        <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tab2\">\r\n  <tbody>\r\n  <tr>\r\n    <td style=\"width:140px;\"><span style=\"font-size:12px;color:#FFF; padding-left:40px;\">网站链接</span></td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select\"><option>安委会成员单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/newpage/\">安全监管总局</option>\r\n<option value=\"http://www.sdpc.gov.cn/\">国家发展和改革委员会</option>\r\n<option value=\"http://www.moe.edu.cn\">教育部</option>\r\n<option value=\"http://www.most.gov.cn\">科学技术部</option>\r\n<option value=\"http://www.costind.gov.cn\">国防科工委</option>\r\n<option value=\"http://www.moj.gov.cn/\">司法部</option>\r\n<option value=\"http://www.mps.gov.cn\">公安部</option>  \r\n</select>\r\n    </td>\r\n    \r\n    <td >\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select2\"><option>总局直属单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局调度中心</option>    \r\n    <option value=\"http://www.ncics.org.cn/\">国际交流合作中心 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局档案馆 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监服务中心 </option>    \r\n </select>\r\n    </td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select3\"><option>总局管理协会</option>\r\n<option value=\"http://www.cosha.org.cn/\">中国职业健康安全协会</option> \r\n<option value=\"http://www.chemicalsafety.org.cn/\">中国化学品研究协会  </option>                                     \r\n  </select>\r\n    </td>\r\n    <td width=\"150\">\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select4\"><option>国际安全生产</option>\r\n<option value=\"http://www.msha.gov/\">美国矿山安全</option>\r\n<option value=\"http://www.nsc.org/pages/home.aspx\">美国安全生产委员会</option>\r\n   </select>\r\n   </td>\r\n   </tr>\r\n</tbody>\r\n</table>\r\n\r\n       </div>\r\n       <div class=\"zhinan\">\r\n         <p style=\"text-align:center;color:#2381bd;\">\r\n         <a href=\"#\">联系我们</a>  |  <a href=\"#\">帮助指南</a>  |   <a href=\"#\">电子邮箱</a>  |   <a href=\"#\">网站地图</a>  |   <a href=\"#\">申诉投诉</a>\r\n         </p>\r\n         <p>主   办   单   位：国家安全生产监督管理总局 </p>\r\n         <p>承   办   单   位：中国安全生产科学研究院 </p>\r\n         <p>京ICP备05009670号   京公网安备11010502026200</p>\r\n         <p>联系地址：北京市朝阳区北苑路32号院甲1号楼安全大厦 邮编：100012 </p>\r\n         <p>  电话：010-84911329 010-84911334 </p>\r\n         \r\n       </div>\r\n     </div>\r\n  <!--/*footer end*/-->\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-16 17:28:01', '1', '2015-05-13 20:38:08', null, null);
INSERT INTO `tvcms_template` VALUES ('41', 'Footer', '5', '<div class=\"clearfix footer\">\r\n	<div class=\"w1000 mar0 footer-main\">\r\n    	<div class=\"fr\">\r\n        	<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/weixin.png\" width=\"138\" height=\"138\" />\r\n            <p>微信號：DengMeiYao88</p>\r\n            <div class=\"sahos\">\r\n            	<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/F.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/t.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/g.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/in.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/wei.png\" width=\"36\" height=\"36\" />\r\n            </div>\r\n        </div>\r\n        <div class=\"fl\">\r\n        	<dl class=\"clearfix\">\r\n            	<dt>公司地址</dt>\r\n                <dd>澳門筷子基南街44號多寶花園地下J鋪（筷子基衛生中心後面）</dd>\r\n            </dl>\r\n        	<dl class=\"clearfix\">\r\n            	<dt>辦公時間</dt>\r\n                <dd>上午9時至下午1時，下午2時30分至下午6時30分星期日休息</dd>\r\n            </dl>\r\n        	<dl class=\"clearfix\">\r\n            	<dt>聯系電話</dt>\r\n                <dd>電話：2831 6891傳真：2825 2556</dd>\r\n            </dl>\r\n            \r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\" src=\"js/DD_belatedPNG.js\"></script>\r\n<script type=\"text/javascript\">\r\nDD_belatedPNG.fix(\'.Nav-logo,.cat-box ul li a,.footer-logo,.mF_kdui .prev, .mF_kdui .next,.rollBox .LeftBotton\');\r\n</script>\r\n<![endif]-->\r\n', '2014-10-31 18:37:33', '2014-11-04 11:05:20', '<div class=\"clearfix footer\">\r\n	<div class=\"w1000 mar0 footer-main\">\r\n    	<div class=\"fr\">\r\n        	<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/weixin.png\" width=\"138\" height=\"138\" />\r\n            <p>微信號：Macau-Clinic</p>\r\n            <div class=\"sahos\">\r\n            	<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/F.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/t.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/g.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/in.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/wei.png\" width=\"36\" height=\"36\" />\r\n            </div>\r\n        </div>\r\n        <div class=\"fl\">\r\n        	<dl class=\"clearfix\">\r\n            	<dt>公司地址</dt>\r\n                <dd>澳門筷子基南街44號多寶花園地下J鋪（筷子基衛生中心後面）</dd>\r\n            </dl>\r\n        	<dl class=\"clearfix\">\r\n            	<dt>辦公時間</dt>\r\n                <dd>上午9時至下午1時，下午2時30分至下午6時30分星期日休息</dd>\r\n            </dl>\r\n        	<dl class=\"clearfix\">\r\n            	<dt>聯系電話</dt>\r\n                <dd>電話：2831 6891傳真：2825 2556</dd>\r\n            </dl>\r\n            \r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\" src=\"js/DD_belatedPNG.js\"></script>\r\n<script type=\"text/javascript\">\r\nDD_belatedPNG.fix(\'.Nav-logo,.cat-box ul li a,.footer-logo,.mF_kdui .prev, .mF_kdui .next,.rollBox .LeftBotton\');\r\n</script>\r\n<![endif]-->\r\n', 'footer', 'footer', '<div class=\"clearfix footer\">\r\n	<div class=\"w1000 mar0 footer-main\">\r\n    	<div class=\"fr\">\r\n        	<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/weixin.png\" width=\"138\" height=\"138\" />\r\n            <p>微信號：Macau-Clinic</p>\r\n            <div class=\"sahos\">\r\n            	<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/F.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/t.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/g.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/in.png\" width=\"36\" height=\"36\" />\r\n                <img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/wei.png\" width=\"36\" height=\"36\" />\r\n            </div>\r\n        </div>\r\n        <div class=\"fl\">\r\n        	<dl class=\"clearfix\">\r\n            	<dt>公司地址</dt>\r\n                <dd>澳門筷子基南街44號多寶花園地下J鋪（筷子基衛生中心後面）</dd>\r\n            </dl>\r\n        	<dl class=\"clearfix\">\r\n            	<dt>辦公時間</dt>\r\n                <dd>上午9時至下午1時，下午2時30分至下午6時30分星期日休息</dd>\r\n            </dl>\r\n        	<dl class=\"clearfix\">\r\n            	<dt>聯系電話</dt>\r\n                <dd>電話：2831 6891傳真：2825 2556</dd>\r\n            </dl>\r\n            \r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<!--[if IE 6]>\r\n<script type=\"text/javascript\" src=\"js/DD_belatedPNG.js\"></script>\r\n<script type=\"text/javascript\">\r\nDD_belatedPNG.fix(\'.Nav-logo,.cat-box ul li a,.footer-logo,.mF_kdui .prev, .mF_kdui .next,.rollBox .LeftBotton\');\r\n</script>\r\n<![endif]-->\r\n', null, '1', '16', '2014-10-16 18:48:08', '16', '2014-11-04 11:14:40', '1', '2015-05-12 16:02:40');
INSERT INTO `tvcms_template` VALUES ('44', '价格查询', '4', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n		<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n		<meta name=\"description\"\r\n			content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1371});</script>\r\n</head>\r\n<body>\r\n\r\n		<tvcms:includ var=\"top1\" />\r\n		<tvcms:includ var=\"daohang\" />\r\n\r\n<div class=\"clearfix mar0 w1000 list\">\r\n  <div class=\"jiage\">\r\n    <div class=\"rel jiage-main\">\r\n     <style type=\"text/css\">\r\n	  .select-form select{ float:left; display:block;}\r\n     </style>\r\n      <div class=\"select-form\" >\r\n      <label style=\" float:left; margin-top:5px; margin-right:10px;\">请输入查询选项</label>\r\n        	<select class=\"select-box sbox\" id=\"root\">\r\n            \r\n        	<option value=\"\" > 请选择</option>\r\n            	<tvcms:services superiorId=\"1\" >\r\n    <option value=\"<tvcms:service attr=\'id\'/>\" > <tvcms:service attr=\'name\'/></option>\r\n    </tvcms:services>\r\n            </select>\r\n            \r\n        	<select class=\"select-box sbox1\" id=\"two\">\r\n            	<option value=\"\" > 请选择</option>\r\n            </select>\r\n            \r\n            \r\n            <button class=\"button\" id=\"sub\" style=\"margin-left:10px;\">查詢</button>\r\n     </div>\r\n     \r\n     \r\n     \r\n\r\n\r\n\r\n<div class=\"search abs\">\r\n	<input type=\"text\" class=\"text\" id=\"term\"/>\r\n    <button class=\"button\" id=\"termSub\">查詢</button>\r\n</div>\r\n\r\n    </div>\r\n   \r\n    <table class=\"jiage-table\" id=\"tab\">\r\n      <tr>\r\n        <th>项目名</th>\r\n        <th>價格（元）</th>\r\n      </tr>\r\n       <tvcms:services superiorId=\"1\">\r\n      <tr>\r\n        <td><tvcms:service attr=\'name\'/> <b></b></td>\r\n        <td><tvcms:service attr=\'price\'/></td>\r\n      </tr>\r\n       </tvcms:services>\r\n    </table>\r\n  </div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n\r\n <script type=\"text/javascript\">\r\n  $(document).ready(function() {\r\n     $(\"#root\").change(function(){\r\n		 var checked=$(\"#root\").val();\r\n		\r\n		 $(\"#two\").text(\"\");\r\n		 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScById/\"+checked+\".json\",\r\n			 cache:false,\r\n			 success:function(data){\r\n				\r\n                for(var i=0;i<data.length;i++){\r\n                     $(\"#two\").append(\"<option value=\'\"+data[i].id+\"\'>\"+data[i].itemsName+\"</option>\");\r\n				}\r\n			 }\r\n		 });\r\n	 });\r\n	 $(\"#sub\").click(function(){\r\n		 \r\n		 var rootId=$(\"#root\").val();\r\n		 var twoId=$(\"#two\").val();\r\n		 if(twoId==\"\"||twoId==null){\r\n			 alert(\"请选择二级分类\");\r\n			 return;\r\n		 }\r\n		 var id=twoId;\r\n		 if(twoId==\"\"||twoId==null){\r\n              id=rootId\r\n		 }\r\n	\r\n			 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScById/\"+id+\".json\",\r\n			 cache:false,\r\n			 success:function(data){\r\n				$(\"#tab\").empty();\r\n            	$(\"#tab\").append(\"<tr><th>项目名</th><th>价格</th></tr>\");\r\n                for(var i=0;i<data.length;i++){\r\n                     $(\"#tab\").append(\"<tr><td>\"+data[i].itemsName+\"</td><td>\"+data[i].price+\"</td></tr>\");\r\n					 $(\"#tab tr:odd\").addClass(\"even\");\r\n				}\r\n			 }\r\n		 });\r\n      });\r\n		\r\n		 $(\"#termSub\").click(function(){\r\n		var term=$(\"#term\").val();\r\n		if(term==\"\"||term==null){\r\n			alert(\"请输入查询条件\");\r\n			return;\r\n		}\r\n				 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScByTerm.json\",\r\n			 data:{ter:term},\r\n			 type:\"post\",\r\n			 cache:false,\r\n			 success:function(list){\r\n				\r\n				$(\"#tab\").empty();\r\n            	$(\"#tab\").append(\"<tr><th>项目名</th><th>价格</th></tr>\");\r\n                for(var i=0;i<list.length;i++){\r\n                     $(\"#tab\").append(\"<tr><td>\"+list[i].itemsName+\"</td><td>\"+list[i].price+\"</td></tr>\");\r\n				}\r\n			 }\r\n		});\r\n	 });\r\n\r\n});\r\n\r\n\r\n\r\n\r\n$(\".jiage-table tr:odd\").addClass(\"even\");\r\n\r\n\r\n  </script>\r\n\r\n</body>\r\n</html>\r\n', '2014-10-30 14:39:24', '2014-10-31 18:34:07', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n		<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n		<meta name=\"description\"\r\n			content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1371});</script>\r\n</head>\r\n<body>\r\n\r\n		<tvcms:includ var=\"top1\" />\r\n		<tvcms:includ var=\"daohang\" />\r\n\r\n<div class=\"clearfix mar0 w1000 list\">\r\n  <div class=\"jiage\">\r\n    <div class=\"rel jiage-main\">\r\n     <style type=\"text/css\">\r\n	  .select-form select{ float:left; display:block;}\r\n     </style>\r\n      <div class=\"select-form\" >\r\n      <label style=\" float:left; margin-top:5px; margin-right:10px;\">請輸入查詢選項</label>\r\n        	<select class=\"select-box sbox\" id=\"root\">\r\n            \r\n        	<option value=\"\" > 請選擇</option>\r\n            	<tvcms:services superiorId=\"1\" >\r\n    <option value=\"<tvcms:service attr=\'id\'/>\" > <tvcms:service attr=\'name\'/></option>\r\n    </tvcms:services>\r\n            </select>\r\n            \r\n        	<select class=\"select-box sbox1\" id=\"two\">\r\n            	<option value=\"\" > 請選擇</option>\r\n            </select>\r\n            \r\n            \r\n            <button class=\"button\" id=\"sub\" style=\"margin-left:10px;\">查詢</button>\r\n     </div>\r\n     \r\n     \r\n     \r\n\r\n\r\n\r\n<div class=\"search abs\">\r\n	<input type=\"text\" class=\"text\" id=\"term\"/>\r\n    <button class=\"button\" id=\"termSub\">查詢</button>\r\n</div>\r\n\r\n    </div>\r\n   \r\n    <table class=\"jiage-table\" id=\"tab\">\r\n      <tr>\r\n        <th>項目名</th>\r\n        <th>價格（元）</th>\r\n      </tr>\r\n       <tvcms:services superiorId=\"1\">\r\n      <tr>\r\n        <td><tvcms:service attr=\'name\'/> <b></b></td>\r\n        <td><tvcms:service attr=\'price\'/></td>\r\n      </tr>\r\n       </tvcms:services>\r\n    </table>\r\n  </div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n\r\n <script type=\"text/javascript\">\r\n  $(document).ready(function() {\r\n     $(\"#root\").change(function(){\r\n		 var checked=$(\"#root\").val();\r\n		\r\n		 $(\"#two\").text(\"\");\r\n		 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScById/\"+checked+\".json\",\r\n			 cache:false,\r\n			 success:function(data){\r\n				\r\n                for(var i=0;i<data.length;i++){\r\n                     $(\"#two\").append(\"<option value=\'\"+data[i].id+\"\'>\"+data[i].itemsName+\"</option>\");\r\n				}\r\n			 }\r\n		 });\r\n	 });\r\n	 $(\"#sub\").click(function(){\r\n		 \r\n		 var rootId=$(\"#root\").val();\r\n		 var twoId=$(\"#two\").val();\r\n		 if(twoId==\"\"||twoId==null){\r\n			 alert(\"請選擇二級分類\");\r\n			 return;\r\n		 }\r\n		 var id=twoId;\r\n		 if(twoId==\"\"||twoId==null){\r\n              id=rootId\r\n		 }\r\n	\r\n			 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScById/\"+id+\".json\",\r\n			 cache:false,\r\n			 success:function(data){\r\n				$(\"#tab\").empty();\r\n            	$(\"#tab\").append(\"<tr><th>項目名</th><th>價格</th></tr>\");\r\n                for(var i=0;i<data.length;i++){\r\n                     $(\"#tab\").append(\"<tr><td>\"+data[i].itemsName+\"</td><td>\"+data[i].price+\"</td></tr>\");\r\n					 $(\"#tab tr:odd\").addClass(\"even\");\r\n				}\r\n			 }\r\n		 });\r\n      });\r\n		\r\n		 $(\"#termSub\").click(function(){\r\n		var term=$(\"#term\").val();\r\n		if(term==\"\"||term==null){\r\n			alert(\"請輸入查詢條件\");\r\n			return;\r\n		}\r\n				 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScByTerm.json\",\r\n			 data:{ter:term},\r\n			 type:\"post\",\r\n			 cache:false,\r\n			 success:function(list){\r\n				\r\n				$(\"#tab\").empty();\r\n            	$(\"#tab\").append(\"<tr><th>項目名</th><th>價格</th></tr>\");\r\n                for(var i=0;i<list.length;i++){\r\n                     $(\"#tab\").append(\"<tr><td>\"+list[i].itemsName+\"</td><td>\"+list[i].price+\"</td></tr>\");\r\n				}\r\n			 }\r\n		});\r\n	 });\r\n\r\n});\r\n\r\n\r\n\r\n\r\n$(\".jiage-table tr:odd\").addClass(\"even\");\r\n\r\n\r\n  </script>\r\n\r\n</body>\r\n</html>\r\n', 'price.html', '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n		<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n		<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n		<meta name=\"description\"\r\n			content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1371});</script>\r\n</head>\r\n<body>\r\n\r\n		<tvcms:includ var=\"top1\" />\r\n		<tvcms:includ var=\"daohang\" />\r\n\r\n<div class=\"clearfix mar0 w1000 list\">\r\n  <div class=\"jiage\">\r\n    <div class=\"rel jiage-main\">\r\n     <style type=\"text/css\">\r\n	  .select-form select{ float:left; display:block;}\r\n     </style>\r\n      <div class=\"select-form\" >\r\n      <label style=\" float:left; margin-top:5px; margin-right:10px;\">請輸入查詢選項</label>\r\n        	<select class=\"select-box sbox\" id=\"root\">\r\n            \r\n        	<option value=\"\" > 請選擇</option>\r\n            	<tvcms:services superiorId=\"1\" >\r\n    <option value=\"<tvcms:service attr=\'id\'/>\" > <tvcms:service attr=\'name\'/></option>\r\n    </tvcms:services>\r\n            </select>\r\n            \r\n        	<select class=\"select-box sbox1\" id=\"two\">\r\n            	<option value=\"\" > 請選擇</option>\r\n            </select>\r\n            \r\n            \r\n            <button class=\"button\" id=\"sub\" style=\"margin-left:10px;\">查詢</button>\r\n     </div>\r\n     \r\n     \r\n     \r\n\r\n\r\n\r\n<div class=\"search abs\">\r\n	<input type=\"text\" class=\"text\" id=\"term\"/>\r\n    <button class=\"button\" id=\"termSub\">查詢</button>\r\n</div>\r\n\r\n    </div>\r\n   \r\n    <table class=\"jiage-table\" id=\"tab\">\r\n      <tr>\r\n        <th>項目名</th>\r\n		<th>EnglishProjectName</th>\r\n        <th>價格（元）</th>\r\n      </tr>\r\n       <tvcms:services superiorId=\"1\">\r\n      <tr>\r\n        <td><tvcms:service attr=\'name\'/> <b></b></td>\r\n		<td><tvcms:service attr=\'enItemsName\'/> <b></b></td>\r\n        <td><tvcms:service attr=\'price\'/></td>\r\n      </tr>\r\n       </tvcms:services>\r\n    </table>\r\n  </div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n\r\n <script type=\"text/javascript\">\r\n  $(document).ready(function() {\r\n     $(\"#root\").change(function(){\r\n		 var checked=$(\"#root\").val();\r\n		\r\n		 $(\"#two\").text(\"\");\r\n		 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScById/\"+checked+\".json\",\r\n			 cache:false,\r\n			 success:function(data){\r\n				\r\n                for(var i=0;i<data.length;i++){\r\n                     $(\"#two\").append(\"<option value=\'\"+data[i].id+\"\'>\"+data[i].itemsName+\"</option>\");\r\n				}\r\n			 }\r\n		 });\r\n	 });\r\n	 $(\"#sub\").click(function(){\r\n		 \r\n		 var rootId=$(\"#root\").val();\r\n		 var twoId=$(\"#two\").val();\r\n		 if(twoId==\"\"||twoId==null){\r\n			 alert(\"請選擇二級分類\");\r\n			 return;\r\n		 }\r\n		 var id=twoId;\r\n		 if(twoId==\"\"||twoId==null){\r\n              id=rootId\r\n		 }\r\n	\r\n			 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScById/\"+id+\".json\",\r\n			 cache:false,\r\n			 success:function(data){\r\n				$(\"#tab\").empty();\r\n            	$(\"#tab\").append(\"<tr><th>項目名</th><th>EnglishProjectName</th><th>價格</th></tr>\");\r\n                for(var i=0;i<data.length;i++){\r\n                     $(\"#tab\").append(\"<tr><td>\"+data[i].itemsName+\"</td><td>\"+data[i].enItemsName+\"</td><td>\"+data[i].price+\"</td></tr>\");\r\n					 $(\"#tab tr:odd\").addClass(\"even\");\r\n				}\r\n			 }\r\n		 });\r\n      });\r\n		\r\n		 $(\"#termSub\").click(function(){\r\n		var term=$(\"#term\").val();\r\n		if(term==\"\"||term==null){\r\n			alert(\"請輸入查詢條件\");\r\n			return;\r\n		}\r\n				 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/hospital/codeItemRight/findScByTerm.json\",\r\n			 data:{ter:term},\r\n			 type:\"post\",\r\n			 cache:false,\r\n			 success:function(list){\r\n				\r\n				$(\"#tab\").empty();\r\n            	$(\"#tab\").append(\"<tr><th>項目名</th><th>EnglishProjectName</th><th>價格</th></tr>\");\r\n                for(var i=0;i<list.length;i++){\r\n                     $(\"#tab\").append(\"<tr><td>\"+list[i].itemsName+\"</td><td>\"+list[i].enItemsName+\"</td><td>\"+list[i].price+\"</td></tr>\");\r\n				}\r\n			 }\r\n		});\r\n	 });\r\n\r\n});\r\n\r\n\r\n\r\n\r\n$(\".jiage-table tr:odd\").addClass(\"even\");\r\n\r\n\r\n  </script>\r\n\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-18 09:30:13', '16', '2014-11-12 16:39:15', null, null);
INSERT INTO `tvcms_template` VALUES ('45', 'top', '5', '<div class=\"top\">\r\n  <div class=\"top-login w1000 mar0 clearfix\">\r\n    <div class=\"login-show\" style=\"display:none;\" loginname=\"${memberName}\">歡迎您:<b id=\"usrName\"></b><button class=\"logout\">退出</button></div>\r\n    <div id=\"MyForm\" name=\"MyForm\" class=\"top-login-text rel fr\">\r\n      <label class=\"abs login-username\">用戶名 :</label>\r\n      <input type=\"text\" name=\"username\" class=\"tex tex1 abs\"  value=\"${memberName}\"/>\r\n      <label class=\"abs login-password\" name=\"password\">密碼 :</label>\r\n      <input type=\"password\" name=\"password\" class=\"tex tex2 abs\" />\r\n      <button class=\"abs deng\">登錄</button>\r\n      <a href=\"#\" class=\"login-text-reg abs\">註冊</a> </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\nfunction getCookieValue(cookieName){\r\n	  var cookies=document.cookie;\r\n	  var cookieIndex = cookies.indexOf(cookieName+\"=\");\r\n	  if(cookieIndex != -1){\r\n	    var cookieValueStart = cookieIndex + cookieName.length + 1;\r\n		var cookieValueEnd = cookies.indexOf(\";\",cookieValueStart);\r\n		\r\n	  		if(cookieValueEnd == -1){\r\n		  		cookieValueEnd=cookies.length;\r\n		  }\r\n	  //獲取cookie的值\r\n	  var cookieValue = cookies.substring(cookieValueStart,cookieValueEnd);\r\n	  return cookieValue;\r\n	}\r\n}\r\n\r\n	var loginname = getCookieValue(\'memberName\');\r\n	if(loginname == \"0\" || loginname == undefined ){\r\n		$(\".top-login-text\").show();\r\n		$(\".login-show\").hide();\r\n		}else{\r\n			$(\"#usrName\").html(loginname);\r\n			$(\".top-login-text\").hide();\r\n			$(\".login-show\").show();\r\n			}\r\n			\r\n	$(\".logout\").click(function(){\r\n			if($(\"#usrName\").html(loginname)!=\"0\"){\r\n				  $.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/exitLogin.json\",					\r\n				})\r\n\r\n				  $(\"#usrName\").html(\"\");\r\n				  $(\".top-login-text\").show();\r\n				$(\".login-show\").hide();\r\n			}\r\n		});\r\n			\r\n	\r\n  \r\n		 $(\'input[name=password]\').bind(\'keypress\',function(event){\r\n            if(event.keyCode == \"13\")    \r\n            {\r\n                var usrName = $(\"#MyForm input[name=username]\");\r\n		var usrPwd = $(\"#MyForm input[name=password]\");\r\n		if ( usrName.val() == \"\") {\r\n					alert(\"用戶名不能為空！\");\r\n					usrName.focus();\r\n					return;\r\n				}\r\n				if (usrPwd.val() == \"\") {\r\n					alert(\"密碼不能為空！\");\r\n					usrPwd.focus();\r\n					return;\r\n				}\r\n		$.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/login.json\",\r\n					data :{\r\n						userName : usrName.val(),\r\n						pwd : usrPwd.val()\r\n					},\r\n					success : function(msg) {\r\n						if (msg.loginFalg == \"false\") {\r\n							alert(\"用戶名和密碼錯誤!\");\r\n							return ;		\r\n						} else {\r\n							$(\"#usrName\").html(msg.memberName);\r\n							$(\".top-login-text\").hide();\r\n							$(\".login-show\").show();\r\n						}\r\n					}\r\n				})\r\n            }\r\n        });\r\n		\r\n</script>', '2014-10-31 18:38:04', '2014-12-27 12:02:43', '<div class=\"top\">\r\n  <div class=\"top-login w1000 mar0 clearfix\">\r\n    <div class=\"login-show\" style=\"display:none;\" loginname=\"${memberName}\">歡迎您:<b id=\"usrName\"></b><button class=\"logout\">退出</button></div>\r\n    <div id=\"MyForm\" name=\"MyForm\" class=\"top-login-text rel fr\">\r\n      <label class=\"abs login-username\">用戶名 :</label>\r\n      <input type=\"text\" name=\"username\" class=\"tex tex1 abs\"  value=\"${memberName}\"/>\r\n      <label class=\"abs login-password\" name=\"password\">密碼 :</label>\r\n      <input type=\"password\" name=\"password\" class=\"tex tex2 abs\" />\r\n      <button class=\"abs deng\">登錄</button>\r\n      <a href=\"#\" class=\"login-text-reg abs\">註冊</a> </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\nfunction getCookieValue(cookieName){\r\n	  var cookies=document.cookie;\r\n	  var cookieIndex = cookies.indexOf(cookieName+\"=\");\r\n	  if(cookieIndex != -1){\r\n	    var cookieValueStart = cookieIndex + cookieName.length + 1;\r\n		var cookieValueEnd = cookies.indexOf(\";\",cookieValueStart);\r\n		\r\n	  		if(cookieValueEnd == -1){\r\n		  		cookieValueEnd=cookies.length;\r\n		  }\r\n	  //獲取cookie的值\r\n	  var cookieValue = cookies.substring(cookieValueStart,cookieValueEnd);\r\n	  return cookieValue;\r\n	}\r\n}\r\n\r\n	var loginname = getCookieValue(\'memberName\');\r\n	if(loginname == \"0\" || loginname == undefined ){\r\n		$(\".top-login-text\").show();\r\n		$(\".login-show\").hide();\r\n		}else{\r\n			$(\"#usrName\").html(loginname);\r\n			$(\".top-login-text\").hide();\r\n			$(\".login-show\").show();\r\n			}\r\n			\r\n	$(\".logout\").click(function(){\r\n			if($(\"#usrName\").html(loginname)!=\"0\"){\r\n				  $.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/exitLogin.json\",					\r\n				})\r\n\r\n				  $(\"#usrName\").html(\"\");\r\n				  $(\".top-login-text\").show();\r\n				$(\".login-show\").hide();\r\n			}\r\n		});\r\n			\r\n	\r\n  \r\n		 $(\'input[name=password]\').bind(\'keypress\',function(event){\r\n            if(event.keyCode == \"13\")    \r\n            {\r\n                var usrName = $(\"#MyForm input[name=username]\");\r\n		var usrPwd = $(\"#MyForm input[name=password]\");\r\n		if ( usrName.val() == \"\") {\r\n					alert(\"用戶名不能為空！\");\r\n					usrName.focus();\r\n					return;\r\n				}\r\n				if (usrPwd.val() == \"\") {\r\n					alert(\"密碼不能為空！\");\r\n					usrPwd.focus();\r\n					return;\r\n				}\r\n		$.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/login.json\",\r\n					data :{\r\n						userName : usrName.val(),\r\n						pwd : usrPwd.val()\r\n					},\r\n					success : function(msg) {\r\n						if (msg.loginFalg == \"false\") {\r\n							alert(\"用戶名和密碼錯誤!\");\r\n							return ;		\r\n						} else {\r\n							$(\"#usrName\").html(msg.memberName);\r\n							$(\".top-login-text\").hide();\r\n							$(\".login-show\").show();\r\n						}\r\n					}\r\n				})\r\n            }\r\n        });\r\n		\r\n</script>', 'top.html', 'top', '<div class=\"top\">\r\n  <div class=\"top-login w1000 mar0 clearfix\">\r\n    <div class=\"login-show\" style=\"display:none;\" loginname=\"${memberName}\">歡迎您:<b id=\"usrName\"></b><button class=\"logout\">退出</button></div>\r\n    <div id=\"MyForm\" name=\"MyForm\" class=\"top-login-text rel fr\">\r\n      <label class=\"abs login-username\">用戶名 :</label>\r\n      <input type=\"text\" name=\"username\" class=\"tex tex1 abs\"  value=\"${memberName}\"/>\r\n      <label class=\"abs login-password\" name=\"password\">密碼 :</label>\r\n      <input type=\"password\" name=\"password\" class=\"tex tex2 abs\" />\r\n      <button class=\"abs deng\">登錄</button>\r\n      <a href=\"#\" class=\"login-text-reg abs\">註冊</a> </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\nfunction getCookieValue(cookieName){\r\n	  var cookies=document.cookie;\r\n	  var cookieIndex = cookies.indexOf(cookieName+\"=\");\r\n	  if(cookieIndex != -1){\r\n	    var cookieValueStart = cookieIndex + cookieName.length + 1;\r\n		var cookieValueEnd = cookies.indexOf(\";\",cookieValueStart);\r\n		\r\n	  		if(cookieValueEnd == -1){\r\n		  		cookieValueEnd=cookies.length;\r\n		  }\r\n	  //獲取cookie的值\r\n	  var cookieValue = cookies.substring(cookieValueStart,cookieValueEnd);\r\n	  return cookieValue;\r\n	}\r\n}\r\n\r\n	var loginname = getCookieValue(\'memberName\');\r\n	if(loginname == \"0\" || loginname == undefined ){\r\n		$(\".top-login-text\").show();\r\n		$(\".login-show\").hide();\r\n		}else{\r\n			$(\"#usrName\").html(loginname);\r\n			$(\".top-login-text\").hide();\r\n			$(\".login-show\").show();\r\n			}\r\n			\r\n	$(\".logout\").click(function(){\r\n			if($(\"#usrName\").html(loginname)!=\"0\"){\r\n				  $.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/exitLogin.json\",					\r\n				})\r\n\r\n				  $(\"#usrName\").html(\"\");\r\n				  $(\".top-login-text\").show();\r\n				$(\".login-show\").hide();\r\n			}\r\n		});\r\n			\r\n	\r\n  \r\n		 $(\'input[name=password]\').bind(\'keypress\',function(event){\r\n            if(event.keyCode == \"13\")    \r\n            {\r\n                var usrName = $(\"#MyForm input[name=username]\");\r\n		var usrPwd = $(\"#MyForm input[name=password]\");\r\n		if ( usrName.val() == \"\") {\r\n					alert(\"用戶名不能為空！\");\r\n					usrName.focus();\r\n					return;\r\n				}\r\n				if (usrPwd.val() == \"\") {\r\n					alert(\"密碼不能為空！\");\r\n					usrPwd.focus();\r\n					return;\r\n				}\r\n		$.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/login.json\",\r\n					data :{\r\n						userName : usrName.val(),\r\n						pwd : usrPwd.val()\r\n					},\r\n					success : function(msg) {\r\n						if (msg.loginFalg == \"false\") {\r\n							alert(\"用戶名和密碼錯誤!\");\r\n							return ;		\r\n						} else {\r\n							$(\"#usrName\").html(msg.memberName);\r\n							$(\".top-login-text\").hide();\r\n							$(\".login-show\").show();\r\n						}\r\n					}\r\n				})\r\n            }\r\n        });\r\n		\r\n</script>', null, '1', '16', '2014-10-18 13:43:12', '1', '2014-12-27 12:18:22', '1', '2015-05-12 16:02:39');
INSERT INTO `tvcms_template` VALUES ('47', 'myfocus', '5', '<div class=\"clearfix myfocus\">\r\n<div id=\"myFocus\" class=\"flash\">\r\n  <div class=\"loading\"></div><!--載入畫面(可刪除)-->\r\n  <div class=\"pic\"><!--圖片列表-->\r\n  	<ul>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash1.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-1\">\r\n            	<dt>服务项目</dt>\r\n                <dd>\r\n                	<span>1、彩色多普勒超聲檢查</span>\r\n                	<span>2、X光檢查</span>\r\n                    <span>3、X線計算断瞄（CT）</span>\r\n                    <span>4、各類化驗</span>\r\n                    <span>5、健康檢查</span>\r\n                    <span>6、消化系统影像检测</span>\r\n                </dd>\r\n            </dl>\r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash2.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-2\">\r\n            	<dt>B超检测</dt>\r\n                <dd>如您已在本中心参加了体检，可在此查阅您的体检报告,(需体检后48小时后才有您的信息，如未登录，请先登录方可查询)</dd>\r\n            </dl>\r\n            \r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash3.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-3\">\r\n            	<dt>消化系统影像检测介绍</dt>\r\n                <dd>本书系统叙述了各种消化系统疾病的病理、临床表现、影像学表现，重点阐述了X线平片、造影、CT、MRI和超声成像的有关技术和方法，以及这些技术和方法所显示的消化系统实质性和中空性脏器的正常与异常表现，并且还探讨了如何根据这些表现作出恰当的影像学诊断。</dd>\r\n            </dl>\r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash4.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-4\">\r\n            	<dt>美国GE-Voluson+730 四维彩色超声诊断仪</dt>\r\n                <dd>Voluson730建立在数字平台之上，利用先进的信号处理技术，保证能够获得高分辨率的二维图像，并获得立体的三维图像和实时动态的四维图像。</dd>\r\n            </dl>\r\n        </li>\r\n  	</ul>\r\n</div>\r\n</div>\r\n</div>', '2014-10-31 17:22:59', '2014-10-31 18:38:19', '<div class=\"clearfix myfocus\">\r\n<div id=\"myFocus\" class=\"flash\">\r\n  <div class=\"loading\"></div><!--載入畫面(可刪除)-->\r\n  <div class=\"pic\"><!--圖片列表-->\r\n  	<ul>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash1.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-1\">\r\n            	<dt>服務項目</dt>\r\n                <dd>\r\n                	<span>1、彩色多普勒超聲檢查</span>\r\n                	<span>2、X光檢查</span>\r\n                    <span>3、X線計算斷瞄（CT）</span>\r\n                    <span>4、各類化驗</span>\r\n                    <span>5、健康檢查</span>\r\n                    <span>6、消化系統影像檢測</span>\r\n                </dd>\r\n            </dl>\r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash2.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-2\">\r\n            	<dt>B超檢測</dt>\r\n                <dd>如您已在本中心參加了體檢，可在此查閱您的體檢報告,(需體檢後48小時後才有您的信息，如未登錄，請先登錄方可查詢)</dd>\r\n            </dl>\r\n            \r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash3.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-3\">\r\n            	<dt>消化系統影像檢測介紹</dt>\r\n                <dd>本書系統敘述了各種消化系統疾病的病理、臨床表現、影像學表現，重點闡述了X線平片、造影、CT、MRI和超聲成像的有關技術和方法，以及這些技術和方法所顯示的消化系統實質性和中空性臟器的正常與異常表現，並且還探討了如何根據這些表現作出恰當的影像學診斷。</dd>\r\n            </dl>\r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash4.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-4\">\r\n            	<dt>美國GE-Voluson+730 四維彩色超聲診斷儀</dt>\r\n                <dd>Voluson730建立在數字平臺之上，利用先進的信號處理技術，保證能夠獲得高分辨率的二維圖像，並獲得立體的三維圖像和實時動態的四維圖像。</dd>\r\n            </dl>\r\n        </li>\r\n  	</ul>\r\n</div>\r\n</div>\r\n</div>', 'myfocus.html', 'myfocus', '<div class=\"clearfix myfocus\">\r\n<div id=\"myFocus\" class=\"flash\">\r\n  <div class=\"loading\"></div><!--載入畫面(可刪除)-->\r\n  <div class=\"pic\"><!--圖片列表-->\r\n  	<ul>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash1.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-1\">\r\n            	<dt>服務項目</dt>\r\n                <dd>\r\n                	<span>1、彩色多普勒超聲檢查</span>\r\n                	<span>2、X光檢查</span>\r\n                    <span>3、X線計算斷瞄（CT）</span>\r\n                    <span>4、各類化驗</span>\r\n                    <span>5、健康檢查</span>\r\n                    <span>6、消化系統影像檢測</span>\r\n                </dd>\r\n            </dl>\r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash2.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-2\">\r\n            	<dt>B超檢測</dt>\r\n                <dd>如您已在本中心參加了體檢，可在此查閱您的體檢報告,(需體檢後48小時後才有您的信息，如未登錄，請先登錄方可查詢)</dd>\r\n            </dl>\r\n            \r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash3.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-3\">\r\n            	<dt>消化系統影像檢測介紹</dt>\r\n                <dd>近年來呼氣試驗在消化內科領域被廣泛應用於幽門螺桿菌感染檢測、胰腺外分泌功能檢測、肝臟儲備功能檢測、胃排空檢測、小腸吸收功能檢測等，因其非侵入性、簡單、方便受到人們的青睞。  </dd>\r\n            </dl>\r\n        </li>\r\n        <li class=\"rel\">\r\n        	<a href=\"javascript:;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/flash4.jpg\" width=\"1200\" height=\"430\" /></a>\r\n            <dl class=\"my-dl my-dl-4\">\r\n            	<dt>美國GE-Voluson+730 四維彩色超聲診斷儀</dt>\r\n                <dd>Voluson730建立在數字平臺之上，利用先進的信號處理技術，保證能夠獲得高分辨率的二維圖像，並獲得立體的三維圖像和實時動態的四維圖像。</dd>\r\n            </dl>\r\n        </li>\r\n  	</ul>\r\n</div>\r\n</div>\r\n</div>', null, '1', '16', '2014-10-18 13:44:39', '16', '2014-11-03 17:03:51', '1', '2015-05-12 16:02:37');
INSERT INTO `tvcms_template` VALUES ('48', 'catbox', '5', '<div class=\"cat-box w1000 mar0\">\r\n	<ul>\r\n    	<li class=\"lv\">\r\n        	<h3>預約</h3>\r\n            <p>如您需要檢驗，請使用在線預約，這樣會節省您更多的時間。</p>\r\n            <a href=\"javascript:;\" onClick=\"showPopTop();\">在線預定</a>\r\n        </li>\r\n        \r\n    	<li class=\"lv2\">\r\n        	<h3>報告查詢</h3>\r\n            <p>如您已在本中心參加了體檢，可在此查閱您的體檢報告,如未登錄，請先登錄方可查詢。</p>\r\n            <a href=\"javascript:;\" id=\"zxcy\">在線查詢</a>\r\n        </li>\r\n        \r\n    	<li class=\"lan\">\r\n        	<h3>價格查詢</h3>\r\n            <p>本中心體檢項目多樣化，價格根據不同的體檢項目中具體的體檢類目有所不同，如想要了解具體的價目詳情，請點擊查詢。</p>\r\n            <a href=\"<tvcms:systemSetting attr=\"root\"/>/price.html\">價格查詢</a>\r\n        </li>\r\n    </ul>\r\n</div>', '2014-11-03 11:08:45', '2014-12-27 12:22:21', '<div class=\"cat-box w1000 mar0\">\r\n	<ul>\r\n    	<li class=\"lv\">\r\n        	<h3>預約11</h3>\r\n            <p>如您需要檢驗，請使用在線預約，這樣會節省您更多的時間。</p>\r\n            <a href=\"javascript:;\" onClick=\"showPopTop();\">在線預定</a>\r\n        </li>\r\n        \r\n    	<li class=\"lv2\">\r\n        	<h3>報告查詢</h3>\r\n            <p>如您已在本中心參加了體檢，可在此查閱您的體檢報告,如未登錄，請先登錄方可查詢。</p>\r\n            <a href=\"javascript:;\" id=\"zxcy\">在線查詢</a>\r\n        </li>\r\n        \r\n    	<li class=\"lan\">\r\n        	<h3>價格查詢</h3>\r\n            <p>本中心體檢項目多樣化，價格根據不同的體檢項目中具體的體檢類目有所不同，如想要了解具體的價目詳情，請點擊查詢。</p>\r\n            <a href=\"<tvcms:systemSetting attr=\"root\"/>/price.html\">價格查詢</a>\r\n        </li>\r\n    </ul>\r\n</div>', 'catbox.html', 'catbox', '<div class=\"cat-box w1000 mar0\">\r\n	<ul>\r\n    	<li class=\"lv\">\r\n        	<h3>預約</h3>\r\n            <p>如您需要檢驗，請使用在線預約，這樣會節省您更多的時間。</p>\r\n            <a href=\"javascript:;\" onClick=\"showPopTop();\">在線預定</a>\r\n        </li>\r\n        \r\n    	<li class=\"lv2\">\r\n        	<h3>報告查詢</h3>\r\n            <p>如您已在本中心參加了體檢，可在此查閱您的體檢報告,如未登錄，請先登錄方可查詢。</p>\r\n            <a href=\"javascript:;\" id=\"zxcy\">在線查詢</a>\r\n        </li>\r\n        \r\n    	<li class=\"lan\">\r\n        	<h3>價格查詢</h3>\r\n            <p>本中心體檢項目多樣化，價格根據不同的體檢項目中具體的體檢類目有所不同，如想要了解具體的價目詳情，請點擊查詢。</p>\r\n            <a href=\"<tvcms:systemSetting attr=\"root\"/>/price.html\">價格查詢</a>\r\n        </li>\r\n    </ul>\r\n</div>', null, '1', '16', '2014-10-18 13:45:34', '1', '2014-12-27 12:22:27', '1', '2015-05-12 16:02:35');
INSERT INTO `tvcms_template` VALUES ('49', 'right', '5', '<div class=\"fr list-right\">\r\n	<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/gg.jpg\" />\r\n    <div class=\"service-hot\">\r\n    	<h3>服務項目</h3>\r\n        <ul>\r\n        	<li class=\"Blue\"><i>1</i><a href=\"#\">彩色多普勒超聲檢查</a></li>\r\n        	<li class=\"even Blue\"><i>2</i><a href=\"#\">彩色多普勒超聲檢查</a></li>\r\n        	<li class=\"Blue2\"><i>3</i><a href=\"#\">彩色多普勒超聲檢查</a></li>\r\n        	<li class=\"even Blue3\"><i>4</i><a href=\"#\">彩色多普勒超聲檢查</a></li>\r\n        	<li class=\"Blue3\"><i>5</i><a href=\"#\">彩色多普勒超聲檢查</a></li>\r\n        </ul>\r\n    </div>\r\n</div>', '2014-10-18 16:36:14', '2014-10-27 13:14:39', '<div class=\"fr list-right\">\r\n	<a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/gg.jpg\" width=\"250\" height=\"78\" /></a>\r\n    <div class=\"service-hot\">\r\n    	<h3>服務項目</h3>\r\n        <ul class=\"ser\">\r\n           <tvcms:contList columnId=\"32\" contNum=\"6\" releaseTime=\"desc\">\r\n			<li class=\"Blue\"><i>1</i><a href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\"><tvcms:cont attr=\"title\"></tvcms:cont></a></li>\r\n    		</tvcms:contList>\r\n            \r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n	$(\".ser li:odd\").addClass(\"even\");\r\n</script>', 'right.html', 'right', '<div class=\"fr list-right\">\r\n	<a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/gg.jpg\" width=\"250\" height=\"78\" /></a>\r\n    <div class=\"service-hot\">\r\n    	<h3>服務項目</h3>\r\n        <ul class=\"ser\">\r\n           <tvcms:contList columnId=\"32\" contNum=\"6\" releaseTime=\"desc\">\r\n			<li class=\"Blue\"><a href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\"><tvcms:cont attr=\"title\"></tvcms:cont></a></li>\r\n    		</tvcms:contList>\r\n            \r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n	$(\".ser li:odd\").addClass(\"even\");\r\n</script>', null, '1', '16', '2014-10-18 16:36:14', '16', '2014-10-27 13:19:02', '1', '2015-05-12 16:02:34');
INSERT INTO `tvcms_template` VALUES ('50', '评论', '4', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1371});</script>\r\n\r\n\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<div class=\"pj-title rel\"><h3 class=\"abs\">用戶評價</h3></div>\r\n<tvcms:comments all=\"ss\">\r\n<dl class=\"pl-clist\">\r\n	<dt><tvcms:comment attr=\"title\"/></dt>\r\n    <dd><tvcms:comment attr=\"content\"/></dd>\r\n    <p>評論時間：<b><tvcms:comment attr=\"reviewTime\"/></b></p>\r\n    <p>評論人:<b><tvcms:comment attr=\"member\"/></b></p>\r\n</dl>\r\n</tvcms:comments>\r\n<form action=\"<tvcms:systemSetting attr=\"root\"/>/plugin/messageBoardController/addComment\" method=\"post\">\r\n<div class=\"pl-text-wrap clearfix\">\r\n	<div class=\"pl-text-tit rel\"><h3>發表評論</h3><p class=\"abs\">文明上網，理性發言，請遵守用戶評論服務協議</p></div>\r\n    <div class=\"rel\">\r\n        <input type=\"text\" class=\"pl-text\" value=\"填寫標題:\" onfocus=\"if (value ==\'填寫標題:\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'填寫標題:\'}\" name=\"title\"/>\r\n        <span class=\"text-area-span clearfix\">\r\n            <textarea class=\"text-area\" onfocus=\"if (value ==\'期待您的評價!\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'期待您的評價!\'}\"   name=\"content\">期待您的評價!</textarea>\r\n        </span>\r\n    </div>\r\n    <select name=\"isNull\" style=\"margin-top:10px;\">\r\n	  <option value=\"1\">使用匿名評論</option>\r\n	  <option value=\"2\" id=\"no\">不使用匿名</option>\r\n	</select>\r\n    <button type=\"submit\" class=\"button fabiao\">發表評論</button>    \r\n</div>\r\n</form>\r\n\r\n</div>\r\n\r\n<tvcms:include var=\"footer\" />\r\n<script type=\"text/javascript\">\r\n\r\n\r\n$(function(){\r\n	var memberName = $(\"#usrName\").html();\r\n	if(memberName==\"0\"||memberName==\"\" ){\r\n       $(\"#no\").hide();\r\n	}\r\n	\r\n	$(\".fabiao\").click(function(){\r\n		if($(\".pl-text\").val()==\"填寫標題:\"){\r\n			alert(\"标题不能为空!\");\r\n			return false;\r\n		}else if($(\".text-area\").val()==\"期待您的評價!\"){\r\n			alert(\"内容不能为空!\");\r\n			return false;\r\n		}\r\n		\r\n	});\r\n	\r\n});\r\n</script>\r\n</body>\r\n</html>\r\n', '2014-10-29 13:36:53', '2014-10-30 13:53:36', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n\r\n\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<div class=\"pj-title rel\"><h3 class=\"abs\">用戶評價</h3></div>\r\n<tvcms:comments all=\"ss\">\r\n<dl class=\"pl-clist\">\r\n	<dt><tvcms:comment attr=\"title\"/></dt>\r\n    <dd><tvcms:comment attr=\"content\"/></dd>\r\n    <p>評論時間：<b><tvcms:comment attr=\"reviewTime\"/></b></p>\r\n    <p>評論人:<b><tvcms:comment attr=\"member\"/></b></p>\r\n</dl>\r\n</tvcms:comments>\r\n<form action=\"<tvcms:systemSetting attr=\"root\"/>/plugin/messageBoardController/addComment\" method=\"post\">\r\n<div class=\"pl-text-wrap clearfix\">\r\n	<div class=\"pl-text-tit rel\"><h3>發表評論</h3><p class=\"abs\">文明上網，理性發言，請遵守用戶評論服務協議</p></div>\r\n    <div class=\"rel\">\r\n        <input type=\"text\" class=\"pl-text\" value=\"填寫標題:\" onfocus=\"if (value ==\'填寫標題:\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'填寫標題:\'}\" name=\"title\"/>\r\n        <span class=\"text-area-span clearfix\">\r\n            <textarea class=\"text-area\" onfocus=\"if (value ==\'期待您的評價!\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'期待您的評價!\'}\"   name=\"content\">期待您的評價!</textarea>\r\n        </span>\r\n    </div>\r\n    <select name=\"isNull\" style=\"margin-top:10px;\">\r\n	  <option value=\"1\">使用匿名評論</option>\r\n	  <option value=\"2\" id=\"no\">不使用匿名</option>\r\n	</select>\r\n    <button type=\"submit\" class=\"button fabiao\">發表評論</button>    \r\n</div>\r\n</form>\r\n\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n<script type=\"text/javascript\">\r\n\r\n\r\n$(function(){\r\n	var memberName = $(\"#usrName\").html();\r\n	if(memberName==\"0\"||memberName==\"\" ){\r\n       $(\"#no\").hide();\r\n	}\r\n	\r\n	$(\".fabiao\").click(function(){\r\n		if($(\".pl-text\").val()==\"填寫標題:\"){\r\n			alert(\"标题不能为空!\");\r\n			return false;\r\n		}else if($(\".text-area\").val()==\"期待您的評價!\"){\r\n			alert(\"内容不能为空!\");\r\n			return false;\r\n		}\r\n		\r\n	});\r\n	\r\n});\r\n</script>\r\n</body>\r\n</html>\r\n', 'comment.html', '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n\r\n\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<div class=\"pj-title rel\"><h3 class=\"abs\">用戶評價</h3></div>\r\n<tvcms:comments all=\"ss\">\r\n<dl class=\"pl-clist\">\r\n	<dt><tvcms:comment attr=\"title\"/></dt>\r\n    <dd><tvcms:comment attr=\"content\"/></dd>\r\n    <p>評論時間：<b><tvcms:comment attr=\"reviewTime\"/></b></p>\r\n    <p>評論人:<b><tvcms:comment attr=\"member\"/></b></p>\r\n</dl>\r\n</tvcms:comments>\r\n<form action=\"<tvcms:systemSetting attr=\"root\"/>/plugin/messageBoardController/addComment\" method=\"post\">\r\n<div class=\"pl-text-wrap clearfix\">\r\n	<div class=\"pl-text-tit rel\"><h3>發表評論</h3><p class=\"abs\">文明上網，理性發言，請遵守用戶評論服務協議</p></div>\r\n    <div class=\"rel\">\r\n        <input type=\"text\" class=\"pl-text\" value=\"填寫標題:\" onfocus=\"if (value ==\'填寫標題:\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'填寫標題:\'}\" name=\"title\"/>\r\n        <span class=\"text-area-span clearfix\">\r\n            <textarea class=\"text-area\" onfocus=\"if (value ==\'期待您的評價!\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'期待您的評價!\'}\"   name=\"content\">期待您的評價!</textarea>\r\n        </span>\r\n    </div>\r\n    <select name=\"isNull\" style=\"margin-top:10px;\">\r\n	  <option value=\"1\">使用匿名評論</option>\r\n	  <option value=\"2\" id=\"no\">不使用匿名</option>\r\n	</select>\r\n    <button type=\"submit\" class=\"button fabiao\">發表評論</button>    \r\n</div>\r\n</form>\r\n\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n<script type=\"text/javascript\">\r\n\r\n\r\n$(function(){\r\n	var memberName = $(\"#usrName\").html();\r\n	if(memberName==\"0\"||memberName==\"\" ){\r\n       $(\"#no\").hide();\r\n	}\r\n	\r\n	$(\".fabiao\").click(function(){\r\n		if($(\".pl-text\").val()==\"填寫標題:\"){\r\n			alert(\"標題不能為空!\");\r\n			return false;\r\n		}else if($(\".text-area\").val()==\"期待您的評價!\"){\r\n			alert(\"內容不能為空!\");\r\n			return false;\r\n		}\r\n		\r\n	});\r\n	\r\n});\r\n</script>\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-20 16:09:13', '16', '2014-10-31 18:34:38', null, null);
INSERT INTO `tvcms_template` VALUES ('51', '会员注册', '4', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title>\r\n<tvcms:systemSetting attr=\"websiteName\" />\r\n</title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/js/My97DatePicker/WdatePicker.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n  <div class=\"reg-tit\">\r\n    <h3>會員註冊</h3>\r\n  </div>\r\n  <div class=\"reg-main clearfix\">\r\n    <form action=\"<tvcms:systemSetting attr=\"root\"/>/member/memberController/addUserOrUpdate.html\" method=\"post\">\r\n    <input type=\"hidden\" name=\"type\" value=\"reception\"/>\r\n    <div class=\"reg-top rel clearfix\">\r\n      <h3>密碼設置</h3>\r\n      <ul>\r\n        <li>\r\n          <label>用戶名:</label>\r\n          <input type=\"text\" class=\"text\" name=\"username\" id=\"username\"/><span id=\"msg\" ></span>\r\n          <!--<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/dui.jpg\" class=\"dui\" width=\"30\" height=\"30\" />-->\r\n          \r\n            </li>\r\n        <li>\r\n          <label>密碼:</label>\r\n          <input type=\"password\" class=\"text\" name=\"password\" id=\"pass1\" />\r\n        </li>\r\n        <li>\r\n          <label>重復密碼:</label>\r\n          <input type=\"password\" class=\"text\" name=\"pwd\" id=\"pass2\"/>\r\n        </li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"reg-info rel clearfix\">\r\n      <h3>密碼設置</h3>\r\n      <ul>\r\n        <li>\r\n          <label>姓名:</label>\r\n          <input type=\"text\" class=\"text\" name=\"trueName\"/>\r\n        </li>\r\n        <li>\r\n          <label>性別:</label>\r\n          <input type=\"radio\" name=\"radio\" class=\"radio\" name=\"gender\"   value=\"2\"/>\r\n          女\r\n          <input type=\"radio\" name=\"radio\" class=\"radio\" name=\"gender\" value=\"1\"/>\r\n          男 </li>\r\n        <li>\r\n          <label>出生日期:</label>\r\n          <input class=\"text\" name=\"birthDates\" type=\"text\" onClick=\"WdatePicker({dateFmt:\'yyyy-MM-dd\'})\">\r\n        </li>\r\n        <li>\r\n          <label>地址:</label>\r\n          <input type=\"text\" class=\"text\" name=\"address\"/>\r\n        </li>\r\n        <li>\r\n          <label>郵箱:</label>\r\n          <input type=\"text\" class=\"text\" name=\"email\"/>\r\n        </li>\r\n        <li>\r\n          <label>電話:</label>\r\n          <input type=\"text\" class=\"text\" name=\"phone\"/>\r\n        </li>\r\n      </ul>\r\n      <button class=\"button\" type=\"submit\">提交</button>\r\n    </div>\r\n    </form>\r\n  </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n\r\n\r\n\r\n$(function(){ \r\n	 $(\".button\").click(function(){\r\n		if($(\"#username\").val()==\"\"){\r\n			alert(\"用戶名或不能為空!\");\r\n				return false;\r\n			}else if($(\"#msg\").val()==\"\"){\r\n				alert(\"這個用戶名太熱門了，換壹個吧。\");\r\n				}else if($(\"#pass1\").val()==\"\"){\r\n				alert(\"密碼不能為空!\")\r\n				return false;\r\n				}else if($(\"#pass1\").val() != $(\"#pass2\").val()){\r\n					alert(\"兩次輸入的密碼不壹致!\");\r\n					return false;\r\n			}\r\n	});\r\n\r\n    $(\"#username\").blur(function(){\r\n		name=$(\"#username\").val();\r\n		 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/member/memberController/isRepeat.json\",\r\n			 data:{username:name},\r\n			 cache:false,\r\n			 success:function(list){\r\n				\r\n                 if(list[0]==\"0\"){\r\n					\r\n					 $(\"#msg\").text(\"用戶名已存在\");\r\n				 }else{\r\n                     $(\"#msg\").text(\"\");\r\n				 }\r\n			 }\r\n		 });\r\n	});\r\n});\r\n</script>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n</body>\r\n</html>\r\n', '2014-10-31 20:40:33', '2014-10-31 20:41:09', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title>\r\n<tvcms:systemSetting attr=\"websiteName\" />\r\n</title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/js/My97DatePicker/WdatePicker.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n  <div class=\"reg-tit\">\r\n    <h3>會員註冊</h3>\r\n  </div>\r\n  <div class=\"reg-main clearfix\">\r\n    <form action=\"<tvcms:systemSetting attr=\"root\"/>/member/memberController/addUserOrUpdate.html\" method=\"post\">\r\n    <input type=\"hidden\" name=\"type\" value=\"reception\"/>\r\n    <div class=\"reg-top rel clearfix\">\r\n      <h3>密碼設置</h3>\r\n      <ul>\r\n        <li>\r\n          <label>用戶名:</label>\r\n          <input type=\"text\" class=\"text\" name=\"username\" id=\"username\"/><span id=\"msg\" ></span>\r\n          <!--<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/dui.jpg\" class=\"dui\" width=\"30\" height=\"30\" />-->\r\n          \r\n            </li>\r\n        <li>\r\n          <label>密碼:</label>\r\n          <input type=\"password\" class=\"text\" name=\"password\" id=\"pass1\" />\r\n        </li>\r\n        <li>\r\n          <label>重復密碼:</label>\r\n          <input type=\"password\" class=\"text\" name=\"pwd\" id=\"pass2\"/>\r\n        </li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"reg-info rel clearfix\">\r\n      <h3>密碼設置</h3>\r\n      <ul>\r\n        <li>\r\n          <label>姓名:</label>\r\n          <input type=\"text\" class=\"text\" name=\"trueName\"/>\r\n        </li>\r\n        <li>\r\n          <label>性別:</label>\r\n          <input type=\"radio\" name=\"radio\" class=\"radio\" name=\"gender\"   value=\"2\"/>\r\n          女\r\n          <input type=\"radio\" name=\"radio\" class=\"radio\" name=\"gender\" value=\"1\"/>\r\n          男 </li>\r\n        <li>\r\n          <label>出生日期:</label>\r\n          <input class=\"text\" name=\"birthDates\" type=\"text\" onClick=\"WdatePicker({dateFmt:\'yyyy-MM-dd\'})\">\r\n        </li>\r\n        <li>\r\n          <label>地址:</label>\r\n          <input type=\"text\" class=\"text\" name=\"address\"/>\r\n        </li>\r\n        <li>\r\n          <label>郵箱:</label>\r\n          <input type=\"text\" class=\"text\" name=\"email\"/>\r\n        </li>\r\n        <li>\r\n          <label>電話:</label>\r\n          <input type=\"text\" class=\"text\" name=\"phone\"/>\r\n        </li>\r\n      </ul>\r\n      <button class=\"button\" type=\"submit\">提交</button>\r\n    </div>\r\n    </form>\r\n  </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n\r\n\r\n\r\n$(function(){ \r\n	 $(\".button\").click(function(){\r\n		if($(\"#username\").val()==\"\"){\r\n			alert(\"用戶名或不能為空!\");\r\n				return false;\r\n			}else if($(\"#msg\").val()==\"\"){\r\n				alert(\"這個用戶名太熱門了，換壹個吧。\");\r\n				return false;\r\n				}else if($(\"#pass1\").val()==\"\"){\r\n				alert(\"密碼不能為空!\")\r\n				return false;\r\n				}else if($(\"#pass1\").val() != $(\"#pass2\").val()){\r\n					alert(\"兩次輸入的密碼不壹致!\");\r\n					return false;\r\n			}\r\n	});\r\n\r\n    $(\"#username\").blur(function(){\r\n		name=$(\"#username\").val();\r\n		 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/member/memberController/isRepeat.json\",\r\n			 data:{username:name},\r\n			 cache:false,\r\n			 success:function(list){\r\n				\r\n                 if(list[0]==\"0\"){\r\n					\r\n					 $(\"#msg\").text(\"用戶名已存在\");\r\n				 }else{\r\n                     $(\"#msg\").text(\"\");\r\n				 }\r\n			 }\r\n		 });\r\n	});\r\n});\r\n</script>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n</body>\r\n</html>\r\n', 'register.html', '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title>\r\n<tvcms:systemSetting attr=\"websiteName\" />\r\n</title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/js/My97DatePicker/WdatePicker.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n  <div class=\"reg-tit\">\r\n    <h3>會員註冊</h3>\r\n  </div>\r\n  <div class=\"reg-main clearfix\">\r\n    <form action=\"<tvcms:systemSetting attr=\"root\"/>/member/memberController/addUserOrUpdate.html\" method=\"post\">\r\n    <input type=\"hidden\" name=\"type\" value=\"reception\"/>\r\n    <div class=\"reg-top rel clearfix\">\r\n      <h3>密碼設置</h3>\r\n      <ul>\r\n        <li>\r\n          <label>用戶名:</label>\r\n          <input type=\"text\" class=\"text\" name=\"username\" id=\"username\"/><span id=\"msg\" ></span>\r\n          <!--<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/dui.jpg\" class=\"dui\" width=\"30\" height=\"30\" />-->\r\n          \r\n            </li>\r\n        <li>\r\n          <label>密碼:</label>\r\n          <input type=\"password\" class=\"text\" name=\"password\" id=\"pass1\" />\r\n        </li>\r\n        <li>\r\n          <label>重復密碼:</label>\r\n          <input type=\"password\" class=\"text\" name=\"pwd\" id=\"pass2\"/>\r\n        </li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"reg-info rel clearfix\">\r\n      <h3>密碼設置</h3>\r\n      <ul>\r\n        <li>\r\n          <label>姓名:</label>\r\n          <input type=\"text\" class=\"text\" name=\"trueName\"/>\r\n        </li>\r\n        <li>\r\n          <label>性別:</label>\r\n          <input type=\"radio\" name=\"radio\" class=\"radio\" name=\"gender\"   value=\"2\"/>\r\n          女\r\n          <input type=\"radio\" name=\"radio\" class=\"radio\" name=\"gender\" value=\"1\"/>\r\n          男 </li>\r\n        <li>\r\n          <label>出生日期:</label>\r\n          <input class=\"text\" name=\"birthDates\" type=\"text\" onClick=\"WdatePicker({dateFmt:\'yyyy-MM-dd\'})\">\r\n        </li>\r\n        <li>\r\n          <label>地址:</label>\r\n          <input type=\"text\" class=\"text\" name=\"address\"/>\r\n        </li>\r\n        <li>\r\n          <label>郵箱:</label>\r\n          <input type=\"text\" class=\"text\" name=\"email\"/>\r\n        </li>\r\n        <li>\r\n          <label>電話:</label>\r\n          <input type=\"text\" class=\"text\" name=\"phone\"/>\r\n        </li>\r\n      </ul>\r\n      <button class=\"button\" type=\"submit\">提交</button>\r\n    </div>\r\n    </form>\r\n  </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n\r\n\r\n\r\n$(function(){ \r\n	 $(\".button\").click(function(){\r\n		if($(\"#username\").val()==\"\"){\r\n			alert(\"用戶名或不能為空!\");\r\n				return false;\r\n			}else if($(\"#msg\").text()==\"用戶名已存在\"){\r\n				alert(\"這個用戶名太熱門了，換壹個吧。\");\r\n				return false;\r\n				}else if($(\"#pass1\").val()==\"\"){\r\n				alert(\"密碼不能為空!\")\r\n				return false;\r\n				}else if($(\"#pass1\").val() != $(\"#pass2\").val()){\r\n					alert(\"兩次輸入的密碼不壹致!\");\r\n					return false;\r\n			}\r\n	});\r\n\r\n    $(\"#username\").blur(function(){\r\n		name=$(\"#username\").val();\r\n		 $.ajax({\r\n			 url:\"<tvcms:systemSetting attr=\"root\"/>/member/memberController/isRepeat.json\",\r\n			 data:{username:name},\r\n			 cache:false,\r\n			 success:function(list){\r\n				\r\n                 if(list[0]==\"0\"){\r\n					\r\n					 $(\"#msg\").text(\"用戶名已存在\");\r\n				 }else{\r\n                     $(\"#msg\").text(\"\");\r\n				 }\r\n			 }\r\n		 });\r\n	});\r\n});\r\n</script>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-21 09:40:04', '16', '2014-11-03 10:37:51', null, null);
INSERT INTO `tvcms_template` VALUES ('52', '查询预约', '4', '<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\"%>\r\n<%@ taglib prefix=\"fmt\" uri=\"http://java.sun.com/jsp/jstl/fmt\"%>\r\n<!DOCTYPE HTML>\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n        <title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n        <meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n        <meta name=\"description\"\r\n        content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n		<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\">\r\n</script>\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\">\r\n</script>\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\">\r\n</script>\r\n		<script type=\"text/javascript\">\r\nmyFocus.set( {\r\n	id : \'myFocus\',\r\n	pattern : \'mF_kdui\',\r\n	width : 1200\r\n});</script>\r\n	</head>\r\n	<body>\r\n\r\n	<tvcms:includ var=\"top1\" />\r\n    <tvcms:includ var=\"daohang\" />\r\n		<tvcms:include var=\"myfocus\" />\r\n		<div class=\"clearfix mar0 w1000 list\">\r\n			<div class=\"baogao-tit\">\r\n				<h3>\r\n					您成功预约的是如下项目\r\n				</h3>\r\n				<b>Your reservation is the following project success</b>\r\n			</div>\r\n			<div class=\"clearfix addrs\">\r\n				澳門筷子基南街多寶花園44號地下J舖 電話 : 28316891，28252556\r\n			</div>\r\n\r\n			<div class=\"clearfix\">\r\n				<table class=\"baogao-table\">\r\n					<tr>\r\n						<th>\r\n							<b>序 号</b>\r\n							<i>EXAMINATION OF</i>\r\n						</th>\r\n						<th>\r\n							<b>预约时间</b>\r\n							<i>RESULT</i>\r\n						</th>\r\n						<th>\r\n							<b>预约项目</b>\r\n							<i>Unit</i>\r\n						</th>\r\n						<th>\r\n							<b>结果查询</b>\r\n							<i>Unit</i>\r\n						</th>\r\n					</tr>\r\n					<c:forEach var=\"bk\" items=\"${paging.object}\" varStatus=\"rownum\">\r\n						<tr>\r\n							<td>\r\n								${rownum.index+1+paging.paging.start}\r\n							</td>\r\n							<td>\r\n								<fmt:formatDate value=\"${bk.bookingTime}\" type=\"both\" />\r\n							</td>\r\n							<td>\r\n								<c:forEach items=\"${bk.services}\" var=\"sc\">\r\n													${sc.itemsName}<br />\r\n								</c:forEach>\r\n							</td>\r\n							<td>\r\n								<a\r\n									href=\"<tvcms:systemSetting attr=\"root\"/>/hospital/bookingController/findErByIdByMember/${bk.id}.html\">查看结果</a>\r\n							</td>\r\n						</tr>\r\n					</c:forEach>\r\n				</table>\r\n\r\n				\r\n			</div>\r\n\r\n		</div>\r\n\r\n<tvcms:include var=\"footer\" />\r\n	</body>\r\n</html>\r\n', '2014-10-25 18:23:16', '2014-10-30 13:51:31', '<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\"%>\r\n<%@ taglib prefix=\"fmt\" uri=\"http://java.sun.com/jsp/jstl/fmt\"%>\r\n<!DOCTYPE HTML>\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n        <title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n        <meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n        <meta name=\"description\"\r\n        content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n		<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\">\r\n</script>\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\">\r\n</script>\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\">\r\n</script>\r\n		<script type=\"text/javascript\">\r\nmyFocus.set( {\r\n	id : \'myFocus\',\r\n	pattern : \'mF_kdui\',\r\n	width : 1200\r\n});</script>\r\n	</head>\r\n	<body>\r\n\r\n	<tvcms:includ var=\"top1\" />\r\n    <tvcms:includ var=\"daohang\" />\r\n		<tvcms:includ var=\"myfocus\" />\r\n		<div class=\"clearfix mar0 w1000 list\">\r\n			<div class=\"baogao-tit\">\r\n				<h3>\r\n					您成功预约的是如下项目\r\n				</h3>\r\n				<b>Your reservation is the following project success</b>\r\n			</div>\r\n			<div class=\"clearfix addrs\">\r\n				澳門筷子基南街多寶花園44號地下J舖 電話 : 28316891，28252556\r\n			</div>\r\n\r\n			<div class=\"clearfix\">\r\n				<table class=\"baogao-table\">\r\n					<tr>\r\n						<th>\r\n							<b>序 号</b>\r\n							<i>EXAMINATION OF</i>\r\n						</th>\r\n						<th>\r\n							<b>预约时间</b>\r\n							<i>RESULT</i>\r\n						</th>\r\n						<th>\r\n							<b>预约项目</b>\r\n							<i>Unit</i>\r\n						</th>\r\n						<th>\r\n							<b>结果查询</b>\r\n							<i>Unit</i>\r\n						</th>\r\n					</tr>\r\n					<c:forEach var=\"bk\" items=\"${paging.object}\" varStatus=\"rownum\">\r\n						<tr>\r\n							<td>\r\n								${rownum.index+1+paging.paging.start}\r\n							</td>\r\n							<td>\r\n								<fmt:formatDate value=\"${bk.bookingTime}\" type=\"both\" />\r\n							</td>\r\n							<td>\r\n								<c:forEach items=\"${bk.services}\" var=\"sc\">\r\n													${sc.itemsName}<br />\r\n								</c:forEach>\r\n							</td>\r\n							<td>\r\n								<a\r\n									href=\"<tvcms:systemSetting attr=\"root\"/>/hospital/bookingController/findErByIdByMember/${bk.id}.html\">查看结果</a>\r\n							</td>\r\n						</tr>\r\n					</c:forEach>\r\n				</table>\r\n\r\n				\r\n			</div>\r\n\r\n		</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n	</body>\r\n</html>\r\n', 'booking.html', 'booking', '<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\"%>\r\n<%@ taglib prefix=\"fmt\" uri=\"http://java.sun.com/jsp/jstl/fmt\"%>\r\n<!DOCTYPE HTML>\r\n<html>\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n        <title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n        <meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n        <meta name=\"description\"\r\n        content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n		<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\">\r\n</script>\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\">\r\n</script>\r\n		<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\">\r\n</script>\r\n		<script type=\"text/javascript\">\r\nmyFocus.set( {\r\n	id : \'myFocus\',\r\n	pattern : \'mF_kdui\',\r\n	width : 1200\r\n});</script>\r\n	</head>\r\n	<body>\r\n\r\n	<tvcms:includ var=\"top1\" />\r\n    <tvcms:includ var=\"daohang\" />\r\n		<tvcms:includ var=\"myfocus\" />\r\n		<div class=\"clearfix mar0 w1000 list\">\r\n			<div class=\"baogao-tit\">\r\n				<h3>\r\n					您成功預約的是如下項目\r\n				</h3>\r\n				<b>Your reservation is the following project success</b>\r\n			</div>\r\n			<div class=\"clearfix addrs\">\r\n				澳門筷子基南街多寶花園44號地下J舖 電話 : 28316891，28252556\r\n			</div>\r\n\r\n			<div class=\"clearfix\">\r\n				<table class=\"baogao-table\">\r\n					<tr>\r\n						<th>\r\n							<b>序 號</b>\r\n							<i>EXAMINATION OF</i>\r\n						</th>\r\n						<th>\r\n							<b>預約時間</b>\r\n							<i>RESULT</i>\r\n						</th>\r\n						<th>\r\n							<b>預約項目</b>\r\n							<i>Unit</i>\r\n						</th>\r\n						<th>\r\n							<b>結果查詢</b>\r\n							<i>Unit</i>\r\n						</th>\r\n					</tr>\r\n					<c:forEach var=\"bk\" items=\"${paging.object}\" varStatus=\"rownum\">\r\n						<tr>\r\n							<td>\r\n								${rownum.index+1+paging.paging.start}\r\n							</td>\r\n							<td>\r\n								<fmt:formatDate value=\"${bk.bookingTime}\" type=\"both\" />\r\n							</td>\r\n							<td>\r\n								<c:forEach items=\"${bk.services}\" var=\"sc\">\r\n													${sc.itemsName}<br />\r\n								</c:forEach>\r\n							</td>\r\n							<td>\r\n								<a\r\n									href=\"<tvcms:systemSetting attr=\"root\"/>/hospital/bookingController/findErByIdByMember/${bk.id}.html\">查看結果</a>\r\n							</td>\r\n						</tr>\r\n					</c:forEach>\r\n				</table>\r\n\r\n				\r\n			</div>\r\n\r\n		</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n	</body>\r\n</html>\r\n', null, '0', '16', '2014-10-21 15:36:54', '16', '2014-10-31 18:35:37', null, null);
INSERT INTO `tvcms_template` VALUES ('53', '联系我们', '4', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\"\r\ncontent=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body onload=\"initialize()\">\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n    <div class=\"about-con\">\r\n	<div class=\"about-tit about rel\"><h3 class=\"abs\">聯系方式</h3></div>\r\n    <p>公司地址: 澳門筷子基南街44號多寶花園地下J鋪（筷子基衛生中心後面）</p>\r\n	<p>辦公時間: 上午9時至下午1時，下午2時30分至下午6時30分星期日休息</p>\r\n	<p>聯系電話: 電話：2831 6891傳真：2825 2556</p>\r\n\r\n</p>\r\n\r\n			<div class=\"about-tit map rel\"><h3 class=\"abs\">地圖</h3></div>\r\n            <div class=\"clearfix\">\r\n               <div style=\"width: 725px; height: 210px;border:#ccc solid 1px;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/map.jpg\" width=\"725\" /></div>\r\n            </div>\r\n			<div class=\"about-tit message rel\"><h3 class=\"abs\">在線留言</h3></div>\r\n            <div class=\"clearfix about-ly\">\r\n			<form action=\"<tvcms:systemSetting attr=\"root\"/>/plugin/messageboard\"\r\n            	<span>\r\n                	<label>姓名</label>\r\n                    <input type=\"text\" class=\"tex uname\" name=\"name\" />\r\n                	<label>服務項目</label>\r\n                    <input type=\"text\" class=\"tex\" name=\"servicesName\"/>\r\n                	<label>聯系方式</label>\r\n                    <input type=\"text\" class=\"tex ulianxi\" name=\"contact\" />\r\n                </span>\r\n                <textarea class=\"umess\" name=\"message\"></textarea>\r\n                <button class=\"button fayan\">發表留言</button>\r\n			</form>\r\n            </div>\r\n    </div>\r\n</div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n<script type=\"text/javascript\">  \r\n	$(\".fayan\").click(function(){\r\n		if($(\".uname\").val()==\"\"){\r\n			alert(\"姓名不能为空!\");\r\n			return false;\r\n		}else if($(\".ulianxi\").val()==\"\"){\r\n			alert(\"联系方式不能为空!\");\r\n			return false;\r\n		}else if($(\".umess\").val()==\"\"){\r\n			alert(\"留言不能为空!\");\r\n			return false;\r\n		}\r\n	});\r\n</script>\r\n</body>\r\n</html>\r\n', '2014-10-31 18:27:52', '2014-10-31 18:28:32', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\"\r\ncontent=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body onload=\"initialize()\">\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n    <div class=\"about-con\">\r\n	<div class=\"about-tit about rel\"><h3 class=\"abs\">聯系方式</h3></div>\r\n    <p>公司地址: 澳門筷子基南街44號多寶花園地下J鋪（筷子基衛生中心後面）</p>\r\n	<p>辦公時間: 上午9時至下午1時，下午2時30分至下午6時30分星期日休息</p>\r\n	<p>聯系電話: 電話：2831 6891傳真：2825 2556</p>\r\n\r\n</p>\r\n\r\n			<div class=\"about-tit map rel\"><h3 class=\"abs\">地圖</h3></div>\r\n            <div class=\"clearfix\">\r\n               <div style=\"width: 725px; height: 289px;border:#ccc solid 1px;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/map.jpg\" width=\"725\" height=\"289\" /></div>\r\n            </div>\r\n			<div class=\"about-tit message rel\"><h3 class=\"abs\">在線留言</h3></div>\r\n            <div class=\"clearfix about-ly\">\r\n			<form action=\"<tvcms:systemSetting attr=\"root\"/>/plugin/messageboard\"\r\n            	<span>\r\n                	<label>姓名</label>\r\n                    <input type=\"text\" class=\"tex uname\" name=\"name\" />\r\n                	<label>服務項目</label>\r\n                    <input type=\"text\" class=\"tex\" name=\"servicesName\"/>\r\n                	<label>聯系方式</label>\r\n                    <input type=\"text\" class=\"tex ulianxi\" name=\"contact\" />\r\n                </span>\r\n                <textarea class=\"umess\" name=\"message\"></textarea>\r\n                <button class=\"button fayan\">發表留言</button>\r\n			</form>\r\n            </div>\r\n    </div>\r\n</div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n<script type=\"text/javascript\">  \r\n	$(\".fayan\").click(function(){\r\n		if($(\".uname\").val()==\"\"){\r\n			alert(\"姓名不能为空!\");\r\n			return false;\r\n		}else if($(\".ulianxi\").val()==\"\"){\r\n			alert(\"联系方式不能为空!\");\r\n			return false;\r\n		}else if($(\".umess\").val()==\"\"){\r\n			alert(\"留言不能为空!\");\r\n			return false;\r\n		}\r\n	});\r\n</script>\r\n</body>\r\n</html>\r\n', 'lianxiwomen.html', '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\"\r\ncontent=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body onload=\"initialize()\">\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n    <div class=\"about-con\">\r\n	<div class=\"about-tit about rel\"><h3 class=\"abs\">聯系方式</h3></div>\r\n    <p>公司地址: 澳門筷子基南街44號多寶花園地下J鋪（筷子基衛生中心後面）</p>\r\n	<p>辦公時間: 上午9時至下午1時，下午2時30分至下午6時30分星期日休息</p>\r\n	<p>聯系電話: 電話：2831 6891傳真：2825 2556</p>\r\n\r\n</p>\r\n\r\n			<div class=\"about-tit map rel\"><h3 class=\"abs\">地圖</h3></div>\r\n            <div class=\"clearfix\">\r\n               <div style=\"width: 725px; height: 289px;border:#ccc solid 1px;\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/map.jpg\" width=\"725\" height=\"289\" /></div>\r\n            </div>\r\n			<div class=\"about-tit message rel\"><h3 class=\"abs\">在線留言</h3></div>\r\n            <div class=\"clearfix about-ly\">\r\n			<form action=\"<tvcms:systemSetting attr=\"root\"/>/plugin/messageboard\"\r\n            	<span>\r\n                	<label>姓名</label>\r\n                    <input type=\"text\" class=\"tex uname\" name=\"name\" />\r\n                	<label>服務項目</label>\r\n                    <input type=\"text\" class=\"tex\" name=\"servicesName\"/>\r\n                	<label>聯系方式</label>\r\n                    <input type=\"text\" class=\"tex ulianxi\" name=\"contact\" />\r\n                </span>\r\n                <textarea class=\"umess\" name=\"message\"></textarea>\r\n                <button class=\"button fayan\">發表留言</button>\r\n			</form>\r\n            </div>\r\n    </div>\r\n</div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n<script type=\"text/javascript\">  \r\n	$(\".fayan\").click(function(){\r\n		if($(\".uname\").val()==\"\"){\r\n			alert(\"姓名不能為空!\");\r\n			return false;\r\n		}else if($(\".ulianxi\").val()==\"\"){\r\n			alert(\"聯系方式不能為空!\");\r\n			return false;\r\n		}else if($(\".umess\").val()==\"\"){\r\n			alert(\"留言不能為空!\");\r\n			return false;\r\n		}\r\n	});\r\n</script>\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-21 20:16:53', '16', '2014-10-31 18:36:10', null, null);
INSERT INTO `tvcms_template` VALUES ('62', 'nav', '5', null, null, null, null, 'nav.html', 'nav', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#aaaaaaaaaa\">公司介紹</a></li>\r\n            	<li><a href=\"#aaaaaaaa\">服務項目</a></li>\r\n            	<li><a href=\"#aaaaaaaa\">新聞動態</a></li>\r\n            	<li><a href=\"coment.html\">聯系方式</a></li>\r\n            	<li><a href=\"#11\">醫生查詢</a></li>\r\n                <li><a href=\"coment.html\">评论</a></li>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', null, '1', '16', '2014-10-22 09:14:58', '16', '2014-10-22 12:15:59', '1', '2015-05-12 16:02:33');
INSERT INTO `tvcms_template` VALUES ('63', 'include', '5', null, null, null, null, 'include.html', 'includes', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"doctorLogin.html\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', null, '1', '16', '2014-10-22 10:38:44', '16', '2014-10-23 15:20:22', '1', '2015-05-12 16:02:30');
INSERT INTO `tvcms_template` VALUES ('67', '测试2', '4', null, null, null, null, 'ceshi2.html', 'ceshi2', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"itemsName\"/></a></li>\r\n				<tvcms:services/>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', null, '1', '16', '2014-10-22 21:51:05', '16', '2014-10-22 21:55:34', '16', '2014-10-23 12:11:31');
INSERT INTO `tvcms_template` VALUES ('69', '测试4', '4', null, null, null, null, 'ceshiceshi.html', '', '撒的撒打算打算打算说大声大声道撒大声地', null, '1', '16', '2014-10-22 21:59:48', '16', '2014-10-25 12:47:44', '16', '2014-10-25 18:03:58');
INSERT INTO `tvcms_template` VALUES ('70', '测试测试测试', '4', null, null, null, null, 'ceshiceshiceshi.html', 'ceshiceshiceshi', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', null, '1', '16', '2014-10-22 22:01:20', '16', '2014-10-22 22:07:07', '16', '2014-10-25 18:04:14');
INSERT INTO `tvcms_template` VALUES ('71', 'ceshi5', '5', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', '2014-10-22 22:12:53', '2014-12-27 12:21:58', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹11</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', 'ceshi5.html', 'ceshi5', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', null, '1', '16', '2014-10-22 22:11:01', '1', '2014-12-27 12:22:05', '1', '2015-05-12 16:02:29');
INSERT INTO `tvcms_template` VALUES ('72', '测试6', '4', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹1</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div> ', '2014-10-25 17:50:40', '2014-10-25 17:51:22', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹1</a></li>\r\n            	<li><a href=\"#\">服務項目1</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div> ', 'ceshi6.html', 'ceshi6', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹1</a></li>\r\n            	<li><a href=\"#\">服務項目1</a></li>\r\n            	<li><a href=\"#\">新聞動態1</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div> ', null, '1', '16', '2014-10-25 17:32:32', '16', '2014-10-25 17:51:45', '16', '2014-10-25 18:04:24');
INSERT INTO `tvcms_template` VALUES ('73', '测试7', '5', null, null, null, null, 'ceshi7.html', 'ceshi7', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"#\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>\">首頁</a></li>\r\n            	<li><a href=\"#\">公司介紹</a></li>\r\n            	<li><a href=\"#\">服務項目</a></li>\r\n            	<li><a href=\"#\">新聞動態</a></li>\r\n            	<li><a href=\"#\">聯系方式</a></li>\r\n            	<li><a href=\"#\">醫生查詢</a></li>\r\n                <li><a href=\"comment.html\">评论</a></li>\r\n				\r\n				<tvcms:services superiorId=\"1\">\r\n				 <li><a><tvcms:service attr=\"name\"/></a></li>\r\n				</tvcms:services>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', null, '1', '16', '2014-10-23 09:46:56', null, null, '1', '2015-05-12 16:02:26');
INSERT INTO `tvcms_template` VALUES ('74', '顶部', '5', '<div class=\"top\">\r\n  <div class=\"top-login w1000 mar0 clearfix\">\r\n    <div class=\"login-show\" style=\"display:none;\" loginname=\"${memberName}\">歡迎您:<b id=\"usrName\"></b><button class=\"logout\">退出</button></div>\r\n    <div id=\"MyForm\" name=\"MyForm\" class=\"top-login-text rel fr\">\r\n      <label class=\"abs login-username\">用戶名 :</label>\r\n      <input type=\"text\" name=\"username\" class=\"tex tex1 abs\"  value=\"${memberName}\"/>\r\n      <label class=\"abs login-password\" name=\"password\">密碼 :</label>\r\n      <input type=\"password\" name=\"password\" class=\"tex tex2 abs\" />\r\n      <button class=\"abs deng\">登錄</button>\r\n      <a href=\"<tvcms:systemSetting attr=\"root\"/>/register.html\" class=\"login-text-reg abs\">註冊</a> </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n\r\nfunction getCookieValue(cookieName){\r\n\r\n    $.ajax({\r\n		url:\'<tvcms:systemSetting attr=\"root\"/>/member/memberController/isLogin.json\',\r\n		success:function(msg){\r\n			return msg[0];\r\n			\r\n		}\r\n	});\r\n}\r\n	var loginname = getCookieValue(\'memberName\');\r\n	if(loginname == \"0\" || loginname == undefined ){\r\n		$(\".top-login-text\").show();\r\n		$(\".login-show\").hide();\r\n		}else{\r\n			$(\"#usrName\").html(loginname);\r\n			$(\".top-login-text\").hide();\r\n			$(\".login-show\").show();\r\n			}\r\n	$(\".logout\").click(function(){\r\n			if($(\"#usrName\").html(loginname)!=\"0\"){\r\n				  $.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/exitLogin.json\",					\r\n				})\r\n				  $(\"#usrName\").html(\"\");\r\n				  $(\".top-login-text\").show();\r\n				$(\".login-show\").hide();\r\n			}\r\n		});\r\n	function loginDeng(){\r\n		var usrName = $(\"#MyForm input[name=username]\");\r\n		var usrPwd = $(\"#MyForm input[name=password]\");\r\n		if ( usrName.val() == \"\") {\r\n					alert(\"用戶名不能為空！\");\r\n					usrName.focus();\r\n					return;\r\n				}\r\n				if (usrPwd.val() == \"\") {\r\n					alert(\"密碼不能為空！\");\r\n					usrPwd.focus();\r\n					return;\r\n				}\r\n		$.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/login.json\",\r\n					data :{\r\n						userName : usrName.val(),\r\n						pwd : usrPwd.val()\r\n					},\r\n					success : function(msg) {\r\n						if (msg.loginFalg == \"false\") {\r\n							alert(\"用戶名和密碼錯誤!\");\r\n							return ;		\r\n						} else {\r\n							$(\"#usrName\").html(msg.memberName);\r\n							$(\".top-login-text\").hide();\r\n							$(\".login-show\").show();\r\n						}\r\n					}\r\n				})\r\n		}\r\n		 $(\'input[name=password]\').bind(\'keypress\',function(event){\r\n            if(event.keyCode == \"13\")    \r\n            {\r\n                loginDeng();\r\n            }\r\n        });\r\n		$(\"button.deng\").click(function(){\r\n				loginDeng();\r\n			});\r\n</script>', '2014-10-31 20:39:30', '2014-10-31 20:41:55', '<div class=\"top\">\r\n  <div class=\"top-login w1000 mar0 clearfix\">\r\n    <div class=\"login-show\" style=\"display:none;\" loginname=\"${memberName}\">歡迎您:<b id=\"usrName\"></b><button class=\"logout\">退出</button></div>\r\n    <div id=\"MyForm\" name=\"MyForm\" class=\"top-login-text rel fr\">\r\n      <label class=\"abs login-username\">用戶名 :</label>\r\n      <input type=\"text\" name=\"username\" class=\"tex tex1 abs\"  value=\"${memberName}\"/>\r\n      <label class=\"abs login-password\" name=\"password\">密碼 :</label>\r\n      <input type=\"password\" name=\"password\" class=\"tex tex2 abs\" />\r\n      <button class=\"abs deng\">登錄</button>\r\n      <a href=\"<tvcms:systemSetting attr=\"root\"/>/register.html\" class=\"login-text-reg abs\">註冊</a> </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n\r\nfunction getCookieValue(cookieName){\r\n    var name=\"\";\r\n    $.ajax({\r\n		url:\'<tvcms:systemSetting attr=\"root\"/>/member/memberController/isLogin.json\',\r\n		success:function(msg){\r\n			name=msg[0];\r\n			\r\n		}\r\n	});\r\n	return name;\r\n}\r\n	var loginname = getCookieValue(\'memberName\');\r\n	if(loginname == \"0\" || loginname == undefined ){\r\n		$(\".top-login-text\").show();\r\n		$(\".login-show\").hide();\r\n		}else{\r\n			$(\"#usrName\").html(loginname);\r\n			$(\".top-login-text\").hide();\r\n			$(\".login-show\").show();\r\n			}\r\n	$(\".logout\").click(function(){\r\n			if($(\"#usrName\").html(loginname)!=\"0\"){\r\n				  $.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/exitLogin.json\",					\r\n				})\r\n				  $(\"#usrName\").html(\"\");\r\n				  $(\".top-login-text\").show();\r\n				$(\".login-show\").hide();\r\n			}\r\n		});\r\n	function loginDeng(){\r\n		var usrName = $(\"#MyForm input[name=username]\");\r\n		var usrPwd = $(\"#MyForm input[name=password]\");\r\n		if ( usrName.val() == \"\") {\r\n					alert(\"用戶名不能為空！\");\r\n					usrName.focus();\r\n					return;\r\n				}\r\n				if (usrPwd.val() == \"\") {\r\n					alert(\"密碼不能為空！\");\r\n					usrPwd.focus();\r\n					return;\r\n				}\r\n		$.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/login.json\",\r\n					data :{\r\n						userName : usrName.val(),\r\n						pwd : usrPwd.val()\r\n					},\r\n					success : function(msg) {\r\n						if (msg.loginFalg == \"false\") {\r\n							alert(\"用戶名和密碼錯誤!\");\r\n							return ;		\r\n						} else {\r\n							$(\"#usrName\").html(msg.memberName);\r\n							$(\".top-login-text\").hide();\r\n							$(\".login-show\").show();\r\n						}\r\n					}\r\n				})\r\n		}\r\n		 $(\'input[name=password]\').bind(\'keypress\',function(event){\r\n            if(event.keyCode == \"13\")    \r\n            {\r\n                loginDeng();\r\n            }\r\n        });\r\n		$(\"button.deng\").click(function(){\r\n				loginDeng();\r\n			});\r\n</script>', 'top1.html', 'top1', '<div class=\"top\">\r\n  <div class=\"top-login w1000 mar0 clearfix\">\r\n    <div class=\"login-show\" style=\"display:none;\" loginname=\"${memberName}\">歡迎您:<b id=\"usrName\"></b><button class=\"logout\">退出</button></div>\r\n    <div id=\"MyForm\" name=\"MyForm\" class=\"top-login-text rel fr\">\r\n      <label class=\"abs login-username\">用戶名 :</label>\r\n      <input type=\"text\" name=\"username\" class=\"tex tex1 abs\"  value=\"${memberName}\"/>\r\n      <label class=\"abs login-password\" name=\"password\">密碼 :</label>\r\n      <input type=\"password\" name=\"password\" class=\"tex tex2 abs\" />\r\n      <button class=\"abs deng\">登錄</button>\r\n      <a href=\"<tvcms:systemSetting attr=\"root\"/>/register.html\" class=\"login-text-reg abs\">註冊</a> </div>\r\n  </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n\r\nfunction getCookieValue(cookieName){\r\n    var name=\"\";\r\n    $.ajax({\r\n		url:\'<tvcms:systemSetting attr=\"root\"/>/member/memberController/isLogin.json\',\r\n		async: false,\r\n		success:function(msg){\r\n			name=msg[0];\r\n			\r\n		}\r\n	});\r\n	return name;\r\n}\r\n	var loginname = getCookieValue(\'memberName\');\r\n	if(loginname == \"0\" || loginname == undefined ||loginname==\"\"){\r\n		$(\".top-login-text\").show();\r\n		$(\".login-show\").hide();\r\n		}else{\r\n			$(\"#usrName\").html(loginname);\r\n			$(\".top-login-text\").hide();\r\n			$(\".login-show\").show();\r\n			}\r\n	$(\".logout\").click(function(){\r\n			if($(\"#usrName\").html(loginname)!=\"0\"){\r\n				  $.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/exitLogin.json\",					\r\n				})\r\n				  $(\"#usrName\").html(\"\");\r\n				  $(\".top-login-text\").show();\r\n				$(\".login-show\").hide();\r\n			}\r\n		});\r\n	function loginDeng(){\r\n		var usrName = $(\"#MyForm input[name=username]\");\r\n		var usrPwd = $(\"#MyForm input[name=password]\");\r\n		if ( usrName.val() == \"\") {\r\n					alert(\"用戶名不能為空！\");\r\n					usrName.focus();\r\n					return;\r\n				}\r\n				if (usrPwd.val() == \"\") {\r\n					alert(\"密碼不能為空！\");\r\n					usrPwd.focus();\r\n					return;\r\n				}\r\n		$.ajax( {\r\n					type : \"GET\",\r\n					url : \"<tvcms:systemSetting attr=\"root\"/>/member/login.json\",\r\n					data :{\r\n						userName : usrName.val(),\r\n						pwd : usrPwd.val()\r\n					},\r\n					success : function(msg) {\r\n						if (msg.loginFalg == \"false\") {\r\n							alert(\"用戶名和密碼錯誤!\");\r\n							return ;		\r\n						} else {\r\n							$(\"#usrName\").html(msg.memberName);\r\n							$(\".top-login-text\").hide();\r\n							$(\".login-show\").show();\r\n						}\r\n					}\r\n				})\r\n		}\r\n		 $(\'input[name=password]\').bind(\'keypress\',function(event){\r\n            if(event.keyCode == \"13\")    \r\n            {\r\n                loginDeng();\r\n            }\r\n        });\r\n		$(\"button.deng\").click(function(){\r\n				loginDeng();\r\n			});\r\n</script>', null, '1', '16', '2014-10-23 11:22:34', '16', '2014-10-31 20:45:48', '1', '2015-05-12 16:02:25');
INSERT INTO `tvcms_template` VALUES ('76', '医生验证', '4', null, null, '2014-10-24 17:44:53', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<style type=\"text/css\">\r\nbody { padding:0; margin:0;}	\r\n.rel { position:relative;}\r\n.abs { position:absolute;}\r\n.bg { right:0; left:0; width:100%; height:100%；}\r\n.login-main { padding:0; margin:0; width:780px; height:370px; margin-left:-390px; top:200px; left:50%;}\r\n.login-main h3{ height:40px; line-height:40px; font-size:18px; color:#fff; margin:0;}\r\n.login-text { border-radius:10px; background:#fff; padding:5px 10px;filter:alpha(opacity=70); -moz-opacity:0.7; -khtml-opacity: 0.7; opacity: 0.7;}\r\n.login-text ul { width:400px; margin:100px auto; padding:0;}\r\n.login-text ul li{ list-style:none; height:42px; line-height:42px; margin-bottom:10px;}\r\n.login-text ul li label { width:65px; display:block; text-align:right; float:left; height:16px; margin-right:20px;}\r\n.login-text ul li .text { float:left; height:16px; padding:10px 10px; background:#cfe0f6; border-radius:5px; border:1px solid #95a7bd; width:270px;}\r\n.login-text ul li .button { border:0; height:42px; line-height:42px; padding:0; background:#0a3265; width:292px; border-radius:5px; font-size:14px; color:#fff;}\r\n.login-text ul li a { color:#0a3265;font-size:14px;}.\r\n.clearfix:after { visibility: hidden;display: block;font-size: 0;content: \" \";clear: both;height: 0;}\r\n.clearfix { display: inline-table; }/* Hides from IE-mac \\*/\r\n* html .clearfix { height: 1%; }\r\n.clearfix { display: block; }/* End hide from IE-mac */\r\n\r\n</style>\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n</head>\r\n\r\n<body class=\"rel\">\r\n<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/bg.jpg\" class=\"abs bg\" />\r\n\r\n<div class=\"login-main abs\">\r\n	<h3>医生验证</h3>\r\n    <form action=\"<tvcms:systemSetting attr=\"root\"/>/hospital/doctorLogin.html\" method=\"post\">\r\n    <div class=\"login-text clearfix\">\r\n    	<ul class=\"clearfix\">\r\n        	<li><label>ID</label><input type=\"text\" class=\"text\" name=\"id\"/></li>\r\n        	<li><label>姓名</label><input type=\"text\" class=\"text\" name=\"name\"/></li>\r\n            <li><label></label><button class=\"button\" type=\"submit\">提交</button></li>\r\n        </ul>\r\n    </div>\r\n	</form>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n', 'doctorLogin.html', 'doctorLogin', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<style type=\"text/css\">\r\nbody { padding:0; margin:0;}	\r\n.rel { position:relative;}\r\n.abs { position:absolute;}\r\n.bg { right:0; left:0; width:100%; height:100%；}\r\n.login-main { padding:0; margin:0; width:780px; height:370px; margin-left:-390px; top:200px; left:50%;}\r\n.login-main h3{ height:40px; line-height:40px; font-size:18px; color:#fff; margin:0;}\r\n.login-text { border-radius:10px; background:#fff; padding:5px 10px;filter:alpha(opacity=70); -moz-opacity:0.7; -khtml-opacity: 0.7; opacity: 0.7;}\r\n.login-text ul { width:400px; margin:100px auto; padding:0;}\r\n.login-text ul li{ list-style:none; height:42px; line-height:42px; margin-bottom:10px;}\r\n.login-text ul li label { width:65px; display:block; text-align:right; float:left; height:16px; margin-right:20px;}\r\n.login-text ul li .text { float:left; height:16px; padding:10px 10px; background:#cfe0f6; border-radius:5px; border:1px solid #95a7bd; width:270px;}\r\n.login-text ul li .button { border:0; height:42px; line-height:42px; padding:0; background:#0a3265; width:292px; border-radius:5px; font-size:14px; color:#fff;}\r\n.login-text ul li a { color:#0a3265;font-size:14px;}.\r\n.clearfix:after { visibility: hidden;display: block;font-size: 0;content: \" \";clear: both;height: 0;}\r\n.clearfix { display: inline-table; }/* Hides from IE-mac \\*/\r\n* html .clearfix { height: 1%; }\r\n.clearfix { display: block; }/* End hide from IE-mac */\r\n\r\n</style>\r\n\r\n\r\n\r\n    \r\n    \r\n    \r\n</head>\r\n\r\n<body class=\"rel\">\r\n<img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/bg.jpg\" class=\"abs bg\" />\r\n\r\n<div class=\"login-main abs\">\r\n	<h3>醫生驗證</h3>\r\n    <form action=\"<tvcms:systemSetting attr=\"root\"/>/hospital/doctorLogin.html\" method=\"post\">\r\n    <div class=\"login-text clearfix\">\r\n    	<ul class=\"clearfix\">\r\n        	<li><label>ID</label><input type=\"text\" class=\"text\" name=\"id\"/></li>\r\n        	<li><label>姓名</label><input type=\"text\" class=\"text\" name=\"name\"/></li>\r\n            <li><label></label><button class=\"button\" type=\"submit\">提交</button></li>\r\n        </ul>\r\n    </div>\r\n	</form>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-23 15:19:30', '16', '2014-10-31 18:36:29', null, null);
INSERT INTO `tvcms_template` VALUES ('77', '导航栏', '5', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"<tvcms:systemSetting attr=\"root\"/>\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"/\">首頁</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/abouts.html \">公司介紹</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/services/index.html\">服務項目</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/newsinfo/index.html\">新聞動態</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/lianxiwomen.html \">聯系我們</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/doctorLogin.html\">醫生查詢</a></li>\r\n                <li><a href=\"<tvcms:systemSetting attr=\"root\"/>/comment.html\">評論</a></li>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', '2014-10-26 22:45:24', '2014-10-30 12:13:21', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"<tvcms:systemSetting attr=\"root\"/>\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"/\">首頁</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/abouts.html \">公司介紹</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/services/index.html\">服務項目</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/newsinfo/index.html\">新聞動態</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/lianxiwomen.html \">聯系我們</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/doctorLogin.html\">醫生查詢</a></li>\r\n                <li><a href=\"<tvcms:systemSetting attr=\"root\"/>/plugin/receptionComment\">評論</a></li>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', 'daohang', 'daohang', '<div class=\"Navsecond clearfix\">\r\n<div class=\"Navsecond-main w1000 mar0 rel\">\r\n    	<div class=\"Nav-logo abs\"><a href=\"<tvcms:systemSetting attr=\"root\"/>\"></a></div>\r\n        <div class=\"Nav-nav\">\r\n        	<ul>\r\n            	<li><a href=\"/\">首頁</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/abouts.html \">公司介紹</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/services/index.html\">服務項目</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/newsinfo/index.html\">新聞動態</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/lianxiwomen.html \">聯系我們</a></li>\r\n            	<li><a href=\"<tvcms:systemSetting attr=\"root\"/>/doctorLogin.html\">醫生查詢</a></li>\r\n                <li><a href=\"<tvcms:systemSetting attr=\"root\"/>/plugin/forwardComment.html\">評論</a></li>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</div>', null, '1', '16', '2014-10-23 15:24:54', '16', '2014-10-30 12:29:57', '1', '2015-05-12 16:02:24');
INSERT INTO `tvcms_template` VALUES ('78', '右侧项目', '5', '<div class=\"fr list-right\">\r\n    <tvcms:adverts superiorId=\"1\">\r\n        <a target=\"_blank\" href=\"<tvcms:advert attr=\"linkAddress\"/>\">\r\n        	<img width=\"250\" height=\"130\" alt=\"<tvcms:advert attr=\"adName\"/>\" src=\"<tvcms:advert attr=\"imageUrl\"/>\">\r\n            </a>\r\n    </tvcms:adverts>\r\n    <div class=\"service-hot\">\r\n    	<h3>服務項目</h3>\r\n        <ul class=\"ser\">\r\n           <tvcms:contList columnId=\"32\" contNum=\"6\" releaseTime=\"desc\">\r\n			<li class=\"Blue\"><a href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\"><tvcms:cont attr=\"title\"></tvcms:cont></a></li>\r\n    		</tvcms:contList>\r\n            \r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n	$(\".ser li:odd\").addClass(\"even\");\r\n</script>', '2014-10-31 16:16:54', '2014-10-31 16:32:46', '<div class=\"fr list-right\">\r\n    <tvcms:adverts superiorId=\"1\">\r\n        <a target=\"_blank\" href=\"<tvcms:advert attr=\"linkAddress\"/>\">\r\n        	<img width=\"250\" height=\"130\" alt=\"<tvcms:advert attr=\"adName\"/>\" src=\"<tvcms:advert attr=\"imageUrl\"/>\">\r\n            </a>\r\n    </tvcms:adverts>\r\n    <div class=\"service-hot\">\r\n    	<h3>服務項目</h3>\r\n        <ul class=\"ser\">\r\n           <tvcms:contList columnId=\"32\" contNum=\"6\" releaseTime=\"desc\">\r\n			<li class=\"Blue\"><a href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\"><tvcms:cont attr=\"title\"></tvcms:cont></a></li>\r\n    		</tvcms:contList>\r\n            \r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n	$(\".ser li:odd\").addClass(\"even\");\r\n</script>', 'listr.html', 'listr', '<div class=\"fr list-right\">\r\n    <tvcms:adverts superiorId=\"40\">\r\n        <a target=\"_blank\" href=\"<tvcms:advert attr=\"linkAddress\"/>\">\r\n        	<img width=\"250\" height=\"130\" alt=\"<tvcms:advert attr=\"adName\"/>\" src=\"<tvcms:advert attr=\"imageUrl\"/>\">\r\n            </a>\r\n    </tvcms:adverts>\r\n    <div class=\"service-hot\">\r\n    	<h3>服務項目</h3>\r\n        <ul class=\"ser\">\r\n           <tvcms:contList columnId=\"32\" contNum=\"6\" releaseTime=\"desc\">\r\n			<li class=\"Blue\"><a href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\"><tvcms:cont attr=\"title\"></tvcms:cont></a></li>\r\n    		</tvcms:contList>\r\n            \r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n	$(\".ser li:odd\").addClass(\"even\");\r\n</script>', null, '1', '16', '2014-10-24 18:11:18', '16', '2014-10-31 16:44:52', '1', '2015-05-12 16:02:23');
INSERT INTO `tvcms_template` VALUES ('79', '公司介绍页面', '4', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\"\r\ncontent=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n    <div class=\"about-con\">\r\n	<div class=\"about-tit about rel\"><h3 class=\"abs\">關於我們</h3></div>\r\n        <p>標準醫學診斷（澳門）有限公司成立於1984年，是集現代醫學影像診斷與臨床醫學實驗室診斷為一體的綜合性醫學診斷中心。公司擁有先進的高檔螺旋CT，彩色電腦聲像儀，800MA X光機及全自動血液分析儀等大中型設備30餘臺件及高年資專業技術人員，面向澳門，服務社會。</p>\r\n        <br />        <br />        <br />        <br />\r\n        <div>\r\n        	<img style=\"width: 200px; float: left;\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/voluson+730.jpg\" />\r\n            <img style=\"width: 433px; float: right;\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/cj.jpg\" />\r\n        </div>\r\n    </div>\r\n</div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n\r\n\r\n</body>\r\n</html>\r\n', '2014-10-31 15:46:29', '2014-10-31 18:32:58', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\"\r\ncontent=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n    <div class=\"about-con\">\r\n	<div class=\"about-tit about rel\"><h3 class=\"abs\">關於我們</h3></div>\r\n        <p>標準醫學診斷（澳門）有限公司成立於1984年，是集現代醫學影像診斷與臨床醫學實驗室診斷為壹體的綜合性醫學診斷中心。公司擁有先進的高檔螺旋CT，彩色電腦聲像儀，800MA X光機及全自動血液分析儀等大中型設備30餘臺件及高年資專業技術人員，面向澳門，服務社會。</p>\r\n        <br />        <br />        <br />        <br />\r\n        <div>\r\n        	<img style=\"width: 200px; float: left;\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/voluson+730.jpg\" />\r\n            <img style=\"width: 433px; float: right;\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/cj.jpg\" />\r\n        </div>\r\n    </div>\r\n</div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n\r\n\r\n</body>\r\n</html>\r\n', 'abouts.html', '', '<!DOCTYPE HTML>\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title><tvcms:systemSetting attr=\"websiteName\" /></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\"\r\ncontent=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n    <div class=\"about-con\">\r\n	<div class=\"about-tit about rel\"><h3 class=\"abs\">關於我們</h3></div>\r\n        <p>標準醫學診斷（澳門）有限公司成立於1984年，是集現代醫學影像診斷與臨床醫學實驗室診斷為壹體的綜合性醫學診斷中心。公司擁有先進的高檔螺旋CT，彩色電腦聲像儀，800MA X光機及全自動血液分析儀等大中型設備30餘臺件及高年資專業技術人員，面向澳門，服務社會。</p>\r\n        <br />        <br />        <br />        <br />\r\n        <div>\r\n        	<img style=\"width: 200px; float: left;\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/voluson+730.jpg\" />\r\n            <img style=\"width: 433px; float: right;\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/images/cj.jpg\" />\r\n        </div>\r\n    </div>\r\n</div>\r\n</div>\r\n\r\n<tvcms:includ var=\"footer\" />\r\n\r\n\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-25 18:02:19', '16', '2014-10-31 18:36:46', null, null);
INSERT INTO `tvcms_template` VALUES ('80', '项目列表', '3', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n<!--\r\n	<div class=\"news-tit\">\r\n        <tvcms:columnList> \r\n            <h3><tvcms:column attr=\"title\"></tvcms:column> </h3>\r\n        </tvcms:columnList>\r\n    </div>\r\n-->\r\n    <div class=\"content-list\">\r\n<tvcms:page pageSize=\"10\" >\r\n\r\n<tvcms:contList columnId=\"32\" releaseTime=\"desc\">\r\n        <dl class=\"clearfix\">\r\n                <a href=\"<tvcms:cont attr=\"url\"/>\"><img src=\"<tvcms:systemSetting attr=\"root\"/><tvcms:cont attr=\"titleImg\"/>\" width=\"120\" height=\"80\" /></a>\r\n                   <dt>\r\n                    <a href=\"<tvcms:cont attr=\"url\"/>\"><tvcms:cont attr=\"title\"/></a>\r\n                   </dt>\r\n                   <dd>\r\n                    <tvcms:cont attr=\"contAbs\"/>……\r\n                    <a href=\"<tvcms:cont attr=\"url\"/>\">【詳細】</a>\r\n                   </dd>\r\n            </dl>\r\n</tvcms:contList>\r\n\r\n<div class=\"page\">\r\n共<tvcms:prop attr=\"totalRecords\"/>条 \r\n分<tvcms:prop attr=\"totalPage\"/>页 \r\n当前第<tvcms:prop attr=\"currPage\"/>页\r\n<tvcms:if test=\"currPage==1\">\r\n<span style=\"color:#C0C0C0\">首页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=1\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=1\'><span style=\"color:#000000\">首页</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==1\">\r\n<span style=\"color:#C0C0C0\">上一页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=1\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop expr=\"currPage-1\"/>\'><span style=\"color:#000000\">上一页</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==totalPage\">\r\n<span style=\"color:#C0C0C0\">下一页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=totalPage\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop expr=\"currPage+1\"/>\'><span style=\"color:#000000\">下一页</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==totalPage\">\r\n<span style=\"color:#C0C0C0\">末页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=totalPage\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop attr=\"totalPage\"/>\'><span style=\"color:#000000\">末页</span></a>\r\n</tvcms:if>\r\n\r\n</tvcms:page>\r\n</div>\r\n\r\n\r\n\r\n    </div>\r\n</div>\r\n</div>\r\n<tvcms:includ var=\"footer\"/>\r\n</body>\r\n</html>\r\n', '2014-10-31 10:28:55', '2014-10-31 11:53:09', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n<!--\r\n	<div class=\"news-tit\">\r\n        <tvcms:columnList> \r\n            <h3><tvcms:column attr=\"title\"></tvcms:column> </h3>\r\n        </tvcms:columnList>\r\n    </div>\r\n-->\r\n    <div class=\"content-list\">\r\n<tvcms:page pageSize=\"10\" >\r\n\r\n<tvcms:contList columnId=\"32\" releaseTime=\"desc\">\r\n        <dl class=\"clearfix\">\r\n                <a href=\"<tvcms:cont attr=\"url\"/>\"><img src=\"<tvcms:systemSetting attr=\"root\"/><tvcms:cont attr=\"titleImg\"/>\" width=\"120\" height=\"80\" /></a>\r\n                   <dt>\r\n                    <a href=\"<tvcms:cont attr=\"url\"/>\"><tvcms:cont attr=\"title\"/></a>\r\n                   </dt>\r\n                   <!--\r\n                   <dd>\r\n                    <tvcms:cont attr=\"contAbs\"/>……\r\n                    <a href=\"<tvcms:cont attr=\"url\"/>\">【詳細】</a>\r\n                   </dd>\r\n                   -->\r\n            </dl>\r\n</tvcms:contList>\r\n\r\n<div class=\"page\">\r\n共<tvcms:prop attr=\"totalRecords\"/>条 \r\n分<tvcms:prop attr=\"totalPage\"/>页 \r\n当前第<tvcms:prop attr=\"currPage\"/>页\r\n<tvcms:if test=\"currPage==1\">\r\n<span style=\"color:#C0C0C0\">首页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=1\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=1\'><span style=\"color:#000000\">首页</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==1\">\r\n<span style=\"color:#C0C0C0\">上一页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=1\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop expr=\"currPage-1\"/>\'><span style=\"color:#000000\">上一页</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==totalPage\">\r\n<span style=\"color:#C0C0C0\">下一页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=totalPage\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop expr=\"currPage+1\"/>\'><span style=\"color:#000000\">下一页</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==totalPage\">\r\n<span style=\"color:#C0C0C0\">末页</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=totalPage\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop attr=\"totalPage\"/>\'><span style=\"color:#000000\">末页</span></a>\r\n</tvcms:if>\r\n\r\n</tvcms:page>\r\n</div>\r\n\r\n\r\n\r\n    </div>\r\n</div>\r\n</div>\r\n<tvcms:includ var=\"footer\"/>\r\n</body>\r\n</html>\r\n', 'xmlist', '', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title><tvcms:systemSetting attr=\"websiteName\"/></title>\r\n<meta name=\"keywords\" content=\"<tvcms:systemSetting attr=\"keyword\"/>\">\r\n<meta name=\"description\" content=\"<tvcms:systemSetting attr=\"description\"/>\">\r\n<link rel=\"stylesheet\" href=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/css/sty.css\" />\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/myfocus-2.0.4.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"/>/assets/yiyuan/js/script.js\"></script>\r\n<script type=\"text/javascript\">myFocus.set({id:\'myFocus\',pattern:\'mF_kdui\',width:1200});</script>\r\n</head>\r\n\r\n<body>\r\n<tvcms:includ var=\"top1\" />\r\n<tvcms:includ var=\"daohang\" />\r\n<tvcms:includ var=\"myfocus\" />\r\n<div class=\"clearfix mar0 w1000 list\">\r\n<tvcms:includ var=\"listr\" />\r\n<div class=\"fl list-left\">\r\n<!--\r\n	<div class=\"news-tit\">\r\n        <tvcms:columnList> \r\n            <h3><tvcms:column attr=\"title\"></tvcms:column> </h3>\r\n        </tvcms:columnList>\r\n    </div>\r\n-->\r\n    <div class=\"content-list\">\r\n<tvcms:page pageSize=\"10\" >\r\n\r\n<tvcms:contList columnId=\"32\" releaseTime=\"desc\">\r\n        <dl class=\"clearfix\">\r\n                <a href=\"<tvcms:cont attr=\"url\"/>\"><img src=\"<tvcms:systemSetting attr=\"root\"/><tvcms:cont attr=\"titleImg\"/>\" width=\"120\" height=\"80\" /></a>\r\n                   <dt>\r\n                    <a href=\"<tvcms:cont attr=\"url\"/>\"><tvcms:cont attr=\"title\"/></a>\r\n                   </dt>\r\n                   <!--\r\n                   <dd>\r\n                    <tvcms:cont attr=\"contAbs\"/>……\r\n                    <a href=\"<tvcms:cont attr=\"url\"/>\">【詳細】</a>\r\n                   </dd>\r\n                   -->\r\n            </dl>\r\n</tvcms:contList>\r\n\r\n<div class=\"page\">\r\n共<tvcms:prop attr=\"totalRecords\"/>條 \r\n分<tvcms:prop attr=\"totalPage\"/>頁 \r\n當前第<tvcms:prop attr=\"currPage\"/>頁\r\n<tvcms:if test=\"currPage==1\">\r\n<span style=\"color:#C0C0C0\">首頁</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=1\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=1\'><span style=\"color:#000000\">首頁</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==1\">\r\n<span style=\"color:#C0C0C0\">上壹頁</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=1\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop expr=\"currPage-1\"/>\'><span style=\"color:#000000\">上壹頁</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==totalPage\">\r\n<span style=\"color:#C0C0C0\">下壹頁</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=totalPage\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop expr=\"currPage+1\"/>\'><span style=\"color:#000000\">下壹頁</span></a>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage==totalPage\">\r\n<span style=\"color:#C0C0C0\">末頁</span>\r\n</tvcms:if>\r\n<tvcms:if test=\"currPage!=totalPage\">\r\n<a href=\'<tvcms:systemSetting attr=\"url\"/>?currPage=<tvcms:prop attr=\"totalPage\"/>\'><span style=\"color:#000000\">末頁</span></a>\r\n</tvcms:if>\r\n\r\n</tvcms:page>\r\n</div>\r\n\r\n\r\n\r\n    </div>\r\n</div>\r\n</div>\r\n<tvcms:includ var=\"footer\"/>\r\n</body>\r\n</html>\r\n', null, '0', '16', '2014-10-29 20:18:46', '16', '2014-10-31 18:32:09', null, null);
INSERT INTO `tvcms_template` VALUES ('81', '123', '5', null, null, null, null, '123', '123', '<div class=\"wrap clearfix cat\">\r\n    	<div class=\"cat-item cit1\">\r\n        	<div class=\"cat-itme-pic\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/wuliu/images/cat1.jpg\" /><div class=\"zhe\"></div></div>\r\n            <div class=\"cat-item-flow\"></div>\r\n            <div class=\"show-a\"><a href=\"project.html\">价格查询</a></div>\r\n            <a href=\"project.html\" class=\"info-a\">价格查询</a>\r\n        </div>	\r\n        \r\n    	<div class=\"cat-item cit2\">\r\n        	<div class=\"cat-itme-pic\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/wuliu/images/cat1.jpg\" /><div class=\"zhe\"></div></div>\r\n            <div class=\"cat-item-flow\"></div>\r\n            <div class=\"show-a\"><a href=\"track.html\">物流跟踪</a></div>\r\n            <a href=\"track.html\" class=\"info-a\">物流跟踪</a>\r\n        </div>	\r\n        \r\n    	<div class=\"cat-item cit3\">\r\n        	<div class=\"cat-itme-pic\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/wuliu/images/cat1.jpg\" /><div class=\"zhe\"></div></div>\r\n            <div class=\"cat-item-flow\"></div>\r\n            <div class=\"show-a\"><a href=\"down.html\">上传下载</a></div>\r\n            <a href=\"down.html\" class=\"info-a\">上传下载</a>\r\n        </div>	\r\n         \r\n    	<div class=\"cat-item cit4\">\r\n        	<div class=\"cat-itme-pic\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/wuliu/images/cat1.jpg\" /><div class=\"zhe\"></div></div>\r\n            <div class=\"cat-item-flow\"></div>\r\n            <div class=\"show-a\"><a href=\"login.html\">会员登录</a></div>\r\n            <a href=\"login.html\" class=\"info-a\">会员登录</a>\r\n        </div>	\r\n        \r\n    	<div class=\"cat-item cit5\">\r\n        	<div class=\"cat-itme-pic\"><img src=\"<tvcms:systemSetting attr=\"root\"/>/assets/wuliu/images/cat1.jpg\" /><div class=\"zhe\"></div></div>\r\n            <div class=\"cat-item-flow\"></div>\r\n            <div class=\"show-a\"><a href=\"contact.html\">联系我们</a></div>\r\n            <a href=\"contact.html\" class=\"info-a\">联系我们</a>\r\n        </div>	\r\n                \r\n    </div>\r\n\r\n\r\n\r\n<script type=\"text/javascript\">\r\n    $(function(){\r\n        $(\".cat-item\").hover(function(){\r\n            $(this).find(\".show-a\").css({\"top\":\"0\"});\r\n        },function() {\r\n            $(this).find(\".show-a\").css({\"top\":\"145px\"});\r\n        });\r\n    });\r\n</script>', null, '1', '1', '2014-12-27 12:26:46', null, null, '1', '2014-12-27 12:27:16');
INSERT INTO `tvcms_template` VALUES ('82', '123', '3', null, null, null, null, '2', '123', '123', null, '1', '1', '2015-03-25 10:56:45', null, null, '1', '2015-03-25 10:56:53');
INSERT INTO `tvcms_template` VALUES ('83', '测试2', '6', '测试1', '2015-03-25 10:57:44', '2015-03-25 10:58:11', '测试2', '测试2', '测试2', '测试1 ', null, '1', '1', '2015-03-25 10:57:44', '1', '2015-03-25 10:58:33', '1', '2015-03-25 10:59:02');
INSERT INTO `tvcms_template` VALUES ('84', '服务项目内容模板', '2', null, null, null, null, 'xmcontg', '', ' <!doctype html>\r\n<!--[if lt IE 7]> <html class=\"ie6 oldie\"> <![endif]-->\r\n<!--[if IE 7]>    <html class=\"ie7 oldie\"> <![endif]-->\r\n<!--[if IE 8]>    <html class=\"ie8 oldie\"> <![endif]-->\r\n<!--[if gt IE 8]><!-->\r\n<html class=\"\">\r\n<!--<![endif]-->\r\n<head>\r\n<tvcms:includ var=\"heade\" />\r\n</head>\r\n<body>\r\n<div class=\"gridContainer clearfix\">\r\n  <div id=\"LayoutDiv1\">\r\n    <tvcms:includ var=\"wl_nav\" />\r\n  	<tvcms:includ var=\"touchsider\" />\r\n  	<tvcms:includ var=\"cat\" />\r\n    <div class=\"clearfix\">\r\n    	<div class=\"anli-tit\"><h3>服务项目</h3></div>\r\n    </div>\r\n    \r\n    	<div class=\"clearfix project bgf9\">\r\n        	\r\n        	<div class=\"clearfix project-left\">\r\n				<div id=\"firstpane\" class=\"menu_list\">\r\n                \r\n                    <h3 class=\"menu_head current\">艺术品物流</h3>\r\n                    <div style=\"display:block\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"34\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n                    \r\n                    <h3 class=\"menu_head\">展览和巡演</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"35\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n                    \r\n                    <h3 class=\"menu_head\">专业搬迁</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"36\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n                    \r\n                    <h3 class=\"menu_head\">精密仪器运输</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"37\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n                    \r\n                    <h3 class=\"menu_head\">项目物流</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"38\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n                    \r\n                    <h3 class=\"menu_head\">仓储服务</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"45\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n\r\n\r\n                    <h3 class=\"menu_head\">进出口代理</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"46\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n\r\n\r\n                    <h3 class=\"menu_head\">国际运输</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"47\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n\r\n\r\n                    <h3 class=\"menu_head\">专业包装</h3>\r\n                    <div style=\"display:none\" class=\"menu_body\">\r\n                        <tvcms:contList columnId=\"48\" contNum=\"10\" subTitle=\"15\" releaseTime=\"desc\">\r\n                            <a id=\"cor_<tvcms:cont attr=\"id\"></tvcms:cont>\" href=\"<tvcms:cont attr=\"url\"></tvcms:cont>\" ><tvcms:cont	attr=\"title\"></tvcms:cont></a>\r\n                        </tvcms:contList>\r\n                    </div>\r\n\r\n\r\n                </div>\r\n            </div>\r\n            \r\n            \r\n            \r\n            <div class=\"clearfix project-right\">\r\n            	<h2><tvcms:cont attr=\"title\"></tvcms:cont></h2>\r\n				<tvcms:cont attr=\"newContent\"></tvcms:cont> \r\n            </div>\r\n            \r\n            \r\n            \r\n        </div>\r\n            \r\n    \r\n    \r\n    \r\n    \r\n		<tvcms:includ var=\"servqiye\" />\r\n		<tvcms:includ var=\"footer\" />\r\n<!--在这之前-->\r\n  </div>\r\n  \r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n$(document).ready(function(){\r\n	\r\n	var pageNavUrl = window.location.href;\r\n	var pageNav = $(\"#firstpane .menu_body\");\r\n	/*根据当前url 获得高亮*/\r\n	if(pageNavUrl.indexOf(\"yishu\")>0){\r\n		pageNav.eq(0).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"zhanlan\")>0){\r\n		pageNav.eq(1).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"banjia\")>0){\r\n		pageNav.eq(2).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"huoyun\")>0){\r\n		pageNav.eq(3).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"xmwl\")>0){\r\n		pageNav.eq(4).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"cangchufuwu\")>0){\r\n		pageNav.eq(5).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"jinchukoudaili\")>0){\r\n		pageNav.eq(6).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"guojiyunshu\")>0){\r\n		pageNav.eq(7).show().siblings(\".menu_body\").hide();\r\n		}else if(pageNavUrl.indexOf(\"zhuanyebaozhuang\")>0){\r\n		pageNav.eq(8).show().siblings(\".menu_body\").hide();\r\n		}\r\n		\r\n		\r\n	/*获取url  中  具体文章id  地址*/\r\n	var curIdUrl = pageNavUrl.substring(0,pageNavUrl.indexOf(\".html\"));\r\n	var curId = curIdUrl.substring(curIdUrl.lastIndexOf(\"/\")+1);\r\n	/**************/\r\n\r\n	$(\"#firstpane .menu_body a\").each(function() {\r\n		\r\n		if($(this).attr(\"id\") == \"cor_\"+curId){\r\n			$(this).addClass(\"hover\");\r\n			return false;\r\n		}\r\n		\r\n    });\r\n\r\n		\r\n		\r\n\r\n	//$(\"#firstpane .menu_body:eq(0)\").show();\r\n	$(\"#firstpane h3.menu_head\").click(function(){\r\n		$(this).addClass(\"current\").next(\"div.menu_body\").slideToggle(500).siblings(\"div.menu_body\").slideUp(\"slow\");\r\n		$(this).siblings().removeClass(\"current\");\r\n	});\r\n	\r\n	//$(\"#secondpane .menu_body:eq(0)\").show();\r\n	$(\"#secondpane h3.menu_head\").mouseover(function(){\r\n		$(this).addClass(\"current\").next(\"div.menu_body\").slideDown(500).siblings(\"div.menu_body\").slideUp(\"slow\");\r\n		$(this).siblings().removeClass(\"current\");\r\n	});\r\n	\r\n});\r\n\r\n</script>\r\n\r\n</body>\r\n</html>\r\n', null, '1', '1', '2015-04-07 16:43:01', null, null, '1', '2015-04-07 19:40:42');
INSERT INTO `tvcms_template` VALUES ('85', '新建模板', '2', null, null, null, null, 'xinjian', '', 'asdasdas', null, '1', '1', '2015-04-07 18:39:25', null, null, '1', '2015-04-07 19:40:45');
INSERT INTO `tvcms_template` VALUES ('86', 'xinjian', '2', null, null, null, null, 'xin', '', 'asdasd', null, '1', '1', '2015-04-07 18:40:46', null, null, '1', '2015-04-07 19:40:47');
INSERT INTO `tvcms_template` VALUES ('87', '', '2', null, null, null, null, '', '', '', null, '1', '1', '2015-04-07 18:41:03', null, null, '1', '2015-04-07 19:40:49');
INSERT INTO `tvcms_template` VALUES ('88', 'qweq', '2', null, null, null, null, '', '', 'qweqw', null, '1', '1', '2015-04-07 18:41:30', null, null, '1', '2015-04-07 19:40:52');
INSERT INTO `tvcms_template` VALUES ('89', 'qweq', '2', null, null, null, null, '', '', 'qweqw', null, '1', '1', '2015-04-07 18:42:00', null, null, '1', '2015-04-07 19:40:55');
INSERT INTO `tvcms_template` VALUES ('90', 'asdasd', '2', null, null, null, null, 'asdasd', '', 'asdasd', null, '1', '1', '2015-04-07 18:42:47', null, null, '1', '2015-04-07 19:40:57');
INSERT INTO `tvcms_template` VALUES ('91', '11231', '2', null, null, null, null, '123', '', '123', null, '1', '1', '2015-04-07 18:43:42', null, null, '1', '2015-04-07 19:40:59');
INSERT INTO `tvcms_template` VALUES ('92', '11231', '2', null, null, null, null, '123', '', '123', null, '1', '1', '2015-04-07 18:44:55', null, null, '1', '2015-04-07 19:41:03');
INSERT INTO `tvcms_template` VALUES ('93', 'qwewqe', '2', null, null, null, null, 'qwe', 'qweqwe', 'eqwe', null, '1', '1', '2015-04-07 18:50:17', null, null, '1', '2015-04-07 19:41:05');
INSERT INTO `tvcms_template` VALUES ('94', 'asdasd', '2', null, null, null, null, 'asdasd', 'asdasd', 'asd', null, '1', '1', '2015-04-07 18:52:38', null, null, '1', '2015-05-04 10:18:31');
INSERT INTO `tvcms_template` VALUES ('95', 'ContentNews', '2', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<link rel=\"stylesheet\" type=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/text/css\" href=\"css/index1-1.css\" />\r\n<title>国家安全生产物联网（非煤领域）检测认证公共平台</title>\r\n</head>\r\n\r\n<body>\r\n <!--/*top/-->\r\n     <div class=\"top\">\r\n       <div class=\"date\">\r\n       </div>\r\n       <div class=\"denglu\">\r\n        <a href=\"login1.html\">用户登录</a>  |  <a href=\"#\">企业注册</a>  |   <a href=\"#\">找回密码</a>\r\n       </div>\r\n     </div>\r\n  <!--/*top end/-->\r\n  \r\n  <!--/*banner*/-->\r\n     <div class=\"banner\">\r\n      <!-- <div class=\"search\">\r\n        <div class=\"search-cont\">\r\n           <input type=\"text\" value=\"相关下载\" /><a href=\"#\"><img src=\"images/search.png\" /></a>\r\n          </div>\r\n        </div>-->\r\n        <div id=\"top_search\">\r\n        <form action=\"\" target=\"_blank\" name=\"form1\" method=\"post\">\r\n   <ul>\r\n     <li>\r\n     <input name=\"fullText\" value=\"请输入您要搜索的关键词\" type=\"text\" onfocus=\"if (value ==\'请输入您要搜索的关键词\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'请输入您要搜索的关键词\'}\" id=\"top_search_input\">\r\n\r\n    <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/search-btn.png\" name=\"top_search_button\" border=\"0\" id=\"top_search_button\"></a></li>\r\n   </ul>\r\n</form>\r\n\r\n        </div>\r\n     </div>\r\n     <div class=\"clear\"></div>\r\n  <!--/*banner end*/-->\r\n  \r\n   <!--/*menu*/-->\r\n     <div id=\"menu\">\r\n      <div class=\"cen\">\r\n       <div id=\"tabsK\"> \r\n	     <ul id=\"nav\"> \r\n		  <li><a href=\"index.html\"><span>首页</span></a></li> \r\n	  	  <li><a href=\"#\"><span>平台介绍</span></a></li>\r\n          <li><a href=\"#\"><span>政策法规</span></a></li>\r\n          <li><a href=\"#\"><span>安全监察</span></a></li>\r\n          <li><a href=\"#\"><span>标准规范</span></a></li>\r\n          <li><a href=\"#\"><span>信息服务</span></a></li>\r\n          <li><a href=\"#\"><span>工作情况</span></a></li>\r\n          <li><a href=\"#\"><span>范本公示</span></a></li>\r\n          <li><a href=\"#\"><span>相关下载</span></a></li> \r\n         </ul> \r\n		</div>\r\n	 </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  <!--/*menu end*/-->\r\n  \r\n  \r\n  <!--/*notice*/-->\r\n     <div class=\"notice\">\r\n       <div class=\"notice-pic\">\r\n        <img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/notic.jpg\" />\r\n       </div>\r\n      <div class=\"marquee_news\">\r\n        <marquee onmouseover=\"this.stop()\" onmouseout=\"this.start()\" scrollDelay=\"60\" scrollAmount=\"2\"  direction=left>\r\n         <a href=\"#\">·我院承担的北京市科技计划《矿山边坡合成孔径雷达监测预警系统研制》顺利通过验收</a>\r\n        <a href=\"#\">·中国安科院与中国人民财产保险股份有限公司签署战略合作协议 </a>\r\n        <a href=\"#\">·国家安全监管总局副局长李兆前一行莅临安科院检查指导工作</a>\r\n       \r\n        </marquee>\r\n     </div>\r\n      \r\n     </div>\r\n      <div class=\"clear\"></div>\r\n  <!--/*notice end*/-->\r\n  \r\n  <!--/*neirong*/-->\r\n    <div  class=\"neirong\">\r\n      <div class=\"postion\">\r\n         <span>\r\n            您现在的位置 > <a href=\"index.html\">首页</a> > <a href=\"index1.html\">标准规范</a> > <a href=\"#\">讲话</a>\r\n         </span>\r\n      </div>\r\n      <p class=\"clr\">\r\n      </p>\r\n         <div class=\"wz\">\r\n                <div class=\"wz-a\">\r\n                    <h1><tvcms:cont attr=\"title\"></tvcms:cont></h1>\r\n                    <p>\r\n                        <span style=\"padding-left:20px;\">日期：<tvcms:cont attr=\"releaseTime\"></tvcms:cont></span>\r\n                     </p>\r\n                </div>\r\n                <div class=\"wz-b\">\r\n                    <div id=\"news_content\" class=\"wz-s\">\r\n                         <tvcms:cont attr=\"newContent\"></tvcms:cont>                           \r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n  <div class=\"clear\"></div>\r\n    </div>\r\n <!--/*neirong end*/-->\r\n  <!--/*footer*/-->\r\n     <div class=\"footer\">\r\n       <div class=\"youqing\">\r\n        <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tab2\">\r\n  <tbody>\r\n  <tr>\r\n    <td style=\"width:140px;\"><span style=\"font-size:12px;color:#FFF; padding-left:40px;\">网站链接</span></td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select\"><option>安委会成员单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/newpage/\">安全监管总局</option>\r\n<option value=\"http://www.sdpc.gov.cn/\">国家发展和改革委员会</option>\r\n<option value=\"http://www.moe.edu.cn\">教育部</option>\r\n<option value=\"http://www.most.gov.cn\">科学技术部</option>\r\n<option value=\"http://www.costind.gov.cn\">国防科工委</option>\r\n<option value=\"http://www.moj.gov.cn/\">司法部</option>\r\n<option value=\"http://www.mps.gov.cn\">公安部</option>  \r\n</select>\r\n    </td>\r\n    \r\n    <td >\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select2\"><option>总局直属单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局调度中心</option>    \r\n    <option value=\"http://www.ncics.org.cn/\">国际交流合作中心 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局档案馆 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监服务中心 </option>    \r\n </select>\r\n    </td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select3\"><option>总局管理协会</option>\r\n<option value=\"http://www.cosha.org.cn/\">中国职业健康安全协会</option> \r\n<option value=\"http://www.chemicalsafety.org.cn/\">中国化学品研究协会  </option>                                     \r\n  </select>\r\n    </td>\r\n    <td width=\"150\">\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select4\"><option>国际安全生产</option>\r\n<option value=\"http://www.msha.gov/\">美国矿山安全</option>\r\n<option value=\"http://www.nsc.org/pages/home.aspx\">美国安全生产委员会</option>\r\n   </select>\r\n   </td>\r\n   </tr>\r\n</tbody>\r\n</table>\r\n\r\n       </div>\r\n       <div class=\"zhinan\">\r\n         <p style=\"text-align:center;color:#2381bd;\">\r\n         <a href=\"#\">联系我们</a>  |  <a href=\"#\">帮助指南</a>  |   <a href=\"#\">电子邮箱</a>  |   <a href=\"#\">网站地图</a>  |   <a href=\"#\">申诉投诉</a>\r\n         </p>\r\n         <p>主   办   单   位：国家安全生产监督管理总局 </p>\r\n         <p>承   办   单   位：中国安全生产科学研究院 </p>\r\n         <p>京ICP备05009670号   京公网安备11010502026200</p>\r\n         <p>联系地址：北京市朝阳区北苑路32号院甲1号楼安全大厦 邮编：100012 </p>\r\n         <p>  电话：010-84911329 010-84911334 </p>\r\n         \r\n       </div>\r\n     </div>\r\n  <!--/*footer end*/-->\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n', '2015-05-11 18:30:57', '2015-05-11 18:32:39', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/index1-1.css\" />\r\n<title>国家安全生产物联网（非煤领域）检测认证公共平台</title>\r\n</head>\r\n\r\n<body>\r\n <!--/*top/-->\r\n     <div class=\"top\">\r\n       <div class=\"date\">\r\n       </div>\r\n       <div class=\"denglu\">\r\n        <a href=\"login1.html\">用户登录</a>  |  <a href=\"#\">企业注册</a>  |   <a href=\"#\">找回密码</a>\r\n       </div>\r\n     </div>\r\n  <!--/*top end/-->\r\n  \r\n  <!--/*banner*/-->\r\n     <div class=\"banner\">\r\n      <!-- <div class=\"search\">\r\n        <div class=\"search-cont\">\r\n           <input type=\"text\" value=\"相关下载\" /><a href=\"#\"><img src=\"images/search.png\" /></a>\r\n          </div>\r\n        </div>-->\r\n        <div id=\"top_search\">\r\n        <form action=\"\" target=\"_blank\" name=\"form1\" method=\"post\">\r\n   <ul>\r\n     <li>\r\n     <input name=\"fullText\" value=\"请输入您要搜索的关键词\" type=\"text\" onfocus=\"if (value ==\'请输入您要搜索的关键词\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'请输入您要搜索的关键词\'}\" id=\"top_search_input\">\r\n\r\n    <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/search-btn.png\" name=\"top_search_button\" border=\"0\" id=\"top_search_button\"></a></li>\r\n   </ul>\r\n</form>\r\n\r\n        </div>\r\n     </div>\r\n     <div class=\"clear\"></div>\r\n  <!--/*banner end*/-->\r\n  \r\n   <!--/*menu*/-->\r\n     <div id=\"menu\">\r\n      <div class=\"cen\">\r\n       <div id=\"tabsK\"> \r\n	     <ul id=\"nav\"> \r\n		  <li><a href=\"index.html\"><span>首页</span></a></li> \r\n	  	  <li><a href=\"#\"><span>平台介绍</span></a></li>\r\n          <li><a href=\"#\"><span>政策法规</span></a></li>\r\n          <li><a href=\"#\"><span>安全监察</span></a></li>\r\n          <li><a href=\"#\"><span>标准规范</span></a></li>\r\n          <li><a href=\"#\"><span>信息服务</span></a></li>\r\n          <li><a href=\"#\"><span>工作情况</span></a></li>\r\n          <li><a href=\"#\"><span>范本公示</span></a></li>\r\n          <li><a href=\"#\"><span>相关下载</span></a></li> \r\n         </ul> \r\n		</div>\r\n	 </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  <!--/*menu end*/-->\r\n  \r\n  \r\n  <!--/*notice*/-->\r\n     <div class=\"notice\">\r\n       <div class=\"notice-pic\">\r\n        <img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/notic.jpg\" />\r\n       </div>\r\n      <div class=\"marquee_news\">\r\n        <marquee onmouseover=\"this.stop()\" onmouseout=\"this.start()\" scrollDelay=\"60\" scrollAmount=\"2\"  direction=left>\r\n         <a href=\"#\">·我院承担的北京市科技计划《矿山边坡合成孔径雷达监测预警系统研制》顺利通过验收</a>\r\n        <a href=\"#\">·中国安科院与中国人民财产保险股份有限公司签署战略合作协议 </a>\r\n        <a href=\"#\">·国家安全监管总局副局长李兆前一行莅临安科院检查指导工作</a>\r\n       \r\n        </marquee>\r\n     </div>\r\n      \r\n     </div>\r\n      <div class=\"clear\"></div>\r\n  <!--/*notice end*/-->\r\n  \r\n  <!--/*neirong*/-->\r\n    <div  class=\"neirong\">\r\n      <div class=\"postion\">\r\n         <span>\r\n            您现在的位置 > <a href=\"index.html\">首页</a> > <a href=\"index1.html\">标准规范</a> > <a href=\"#\">讲话</a>\r\n         </span>\r\n      </div>\r\n      <p class=\"clr\">\r\n      </p>\r\n         <div class=\"wz\">\r\n                <div class=\"wz-a\">\r\n                    <h1><tvcms:cont attr=\"title\"></tvcms:cont></h1>\r\n                    <p>\r\n                        <span style=\"padding-left:20px;\">日期：<tvcms:cont attr=\"releaseTime\"></tvcms:cont></span>\r\n                     </p>\r\n                </div>\r\n                <div class=\"wz-b\">\r\n                    <div id=\"news_content\" class=\"wz-s\">\r\n                         <tvcms:cont attr=\"newContent\"></tvcms:cont>                           \r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n  <div class=\"clear\"></div>\r\n    </div>\r\n <!--/*neirong end*/-->\r\n  <!--/*footer*/-->\r\n     <div class=\"footer\">\r\n       <div class=\"youqing\">\r\n        <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tab2\">\r\n  <tbody>\r\n  <tr>\r\n    <td style=\"width:140px;\"><span style=\"font-size:12px;color:#FFF; padding-left:40px;\">网站链接</span></td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select\"><option>安委会成员单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/newpage/\">安全监管总局</option>\r\n<option value=\"http://www.sdpc.gov.cn/\">国家发展和改革委员会</option>\r\n<option value=\"http://www.moe.edu.cn\">教育部</option>\r\n<option value=\"http://www.most.gov.cn\">科学技术部</option>\r\n<option value=\"http://www.costind.gov.cn\">国防科工委</option>\r\n<option value=\"http://www.moj.gov.cn/\">司法部</option>\r\n<option value=\"http://www.mps.gov.cn\">公安部</option>  \r\n</select>\r\n    </td>\r\n    \r\n    <td >\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select2\"><option>总局直属单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局调度中心</option>    \r\n    <option value=\"http://www.ncics.org.cn/\">国际交流合作中心 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局档案馆 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监服务中心 </option>    \r\n </select>\r\n    </td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select3\"><option>总局管理协会</option>\r\n<option value=\"http://www.cosha.org.cn/\">中国职业健康安全协会</option> \r\n<option value=\"http://www.chemicalsafety.org.cn/\">中国化学品研究协会  </option>                                     \r\n  </select>\r\n    </td>\r\n    <td width=\"150\">\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select4\"><option>国际安全生产</option>\r\n<option value=\"http://www.msha.gov/\">美国矿山安全</option>\r\n<option value=\"http://www.nsc.org/pages/home.aspx\">美国安全生产委员会</option>\r\n   </select>\r\n   </td>\r\n   </tr>\r\n</tbody>\r\n</table>\r\n\r\n       </div>\r\n       <div class=\"zhinan\">\r\n         <p style=\"text-align:center;color:#2381bd;\">\r\n         <a href=\"#\">联系我们</a>  |  <a href=\"#\">帮助指南</a>  |   <a href=\"#\">电子邮箱</a>  |   <a href=\"#\">网站地图</a>  |   <a href=\"#\">申诉投诉</a>\r\n         </p>\r\n         <p>主   办   单   位：国家安全生产监督管理总局 </p>\r\n         <p>承   办   单   位：中国安全生产科学研究院 </p>\r\n         <p>京ICP备05009670号   京公网安备11010502026200</p>\r\n         <p>联系地址：北京市朝阳区北苑路32号院甲1号楼安全大厦 邮编：100012 </p>\r\n         <p>  电话：010-84911329 010-84911334 </p>\r\n         \r\n       </div>\r\n     </div>\r\n  <!--/*footer end*/-->\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n', 'ContentNews', '', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/index1-1.css\" />\r\n<title>国家安全生产物联网（非煤领域）检测认证公共平台</title>\r\n</head>\r\n\r\n<body>\r\n <!--/*top/-->\r\n     <div class=\"top\">\r\n       <div class=\"date\">\r\n       </div>\r\n       <div class=\"denglu\">\r\n        <a href=\"login1.html\">用户登录</a>  |  <a href=\"#\">企业注册</a>  |   <a href=\"#\">找回密码</a>\r\n       </div>\r\n     </div>\r\n  <!--/*top end/-->\r\n  \r\n  <!--/*banner*/-->\r\n     <div class=\"banner\">\r\n      <!-- <div class=\"search\">\r\n        <div class=\"search-cont\">\r\n           <input type=\"text\" value=\"相关下载\" /><a href=\"#\"><img src=\"images/search.png\" /></a>\r\n          </div>\r\n        </div>-->\r\n        <div id=\"top_search\">\r\n        <form action=\"\" target=\"_blank\" name=\"form1\" method=\"post\">\r\n   <ul>\r\n     <li>\r\n     <input name=\"fullText\" value=\"请输入您要搜索的关键词\" type=\"text\" onfocus=\"if (value ==\'请输入您要搜索的关键词\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'请输入您要搜索的关键词\'}\" id=\"top_search_input\">\r\n\r\n    <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/search-btn.png\" name=\"top_search_button\" border=\"0\" id=\"top_search_button\"></a></li>\r\n   </ul>\r\n</form>\r\n\r\n        </div>\r\n     </div>\r\n     <div class=\"clear\"></div>\r\n  <!--/*banner end*/-->\r\n  \r\n   <!--/*menu*/-->\r\n     <div id=\"menu\">\r\n      <div class=\"cen\">\r\n       <div id=\"tabsK\"> \r\n	     <ul id=\"nav\"> \r\n		 		  <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/index.html\"><span>首页</span></a></li> \r\n	  	  <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/xinwen/index.html\"><span>平台介绍</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/zcfg/index.html\"><span>政策法规</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/aqjc/index.html\"><span>安全监察</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/bzgf/index.html\" target=\"_blank\"><span>标准规范</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/xxfw/index.html\"><span>信息服务</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/gzqk/index.html\"><span>工作情况</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/fbgs/index.html\"><span>范本公示</span></a></li>\r\n          <li><a href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/xgxz/index.html\"><span>相关下载</span></a></li> \r\n\r\n         </ul> \r\n		</div>\r\n	 </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  <!--/*menu end*/-->\r\n  \r\n  \r\n  <!--/*notice*/-->\r\n     <div class=\"notice\">\r\n       <div class=\"notice-pic\">\r\n        <img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/notic.jpg\" />\r\n       </div>\r\n      <div class=\"marquee_news\">\r\n        <marquee onmouseover=\"this.stop()\" onmouseout=\"this.start()\" scrollDelay=\"60\" scrollAmount=\"2\"  direction=left>\r\n         <a href=\"#\">·我院承担的北京市科技计划《矿山边坡合成孔径雷达监测预警系统研制》顺利通过验收</a>\r\n        <a href=\"#\">·中国安科院与中国人民财产保险股份有限公司签署战略合作协议 </a>\r\n        <a href=\"#\">·国家安全监管总局副局长李兆前一行莅临安科院检查指导工作</a>\r\n       \r\n        </marquee>\r\n     </div>\r\n      \r\n     </div>\r\n      <div class=\"clear\"></div>\r\n  <!--/*notice end*/-->\r\n  \r\n  <!--/*neirong*/-->\r\n    <div  class=\"neirong\">\r\n      <div class=\"postion\">\r\n         <span>\r\n            您现在的位置 > <a href=\"index.html\">首页</a> > <a href=\"index1.html\">标准规范</a> > <a href=\"#\">讲话</a>\r\n         </span>\r\n      </div>\r\n      <p class=\"clr\">\r\n      </p>\r\n         <div class=\"wz\">\r\n                <div class=\"wz-a\">\r\n                    <h1><tvcms:cont attr=\"title\"></tvcms:cont></h1>\r\n                    <p>\r\n                        <span style=\"padding-left:20px;\">日期：<tvcms:cont attr=\"releaseTime\"></tvcms:cont></span>\r\n                     </p>\r\n                </div>\r\n                <div class=\"wz-b\">\r\n                    <div id=\"news_content\" class=\"wz-s\">\r\n                         <tvcms:cont attr=\"newContent\"></tvcms:cont>                           \r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n  <div class=\"clear\"></div>\r\n    </div>\r\n <!--/*neirong end*/-->\r\n  <!--/*footer*/-->\r\n     <div class=\"footer\">\r\n       <div class=\"youqing\">\r\n        <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tab2\">\r\n  <tbody>\r\n  <tr>\r\n    <td style=\"width:140px;\"><span style=\"font-size:12px;color:#FFF; padding-left:40px;\">网站链接</span></td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select\"><option>安委会成员单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/newpage/\">安全监管总局</option>\r\n<option value=\"http://www.sdpc.gov.cn/\">国家发展和改革委员会</option>\r\n<option value=\"http://www.moe.edu.cn\">教育部</option>\r\n<option value=\"http://www.most.gov.cn\">科学技术部</option>\r\n<option value=\"http://www.costind.gov.cn\">国防科工委</option>\r\n<option value=\"http://www.moj.gov.cn/\">司法部</option>\r\n<option value=\"http://www.mps.gov.cn\">公安部</option>  \r\n</select>\r\n    </td>\r\n    \r\n    <td >\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select2\"><option>总局直属单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局调度中心</option>    \r\n    <option value=\"http://www.ncics.org.cn/\">国际交流合作中心 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局档案馆 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监服务中心 </option>    \r\n </select>\r\n    </td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select3\"><option>总局管理协会</option>\r\n<option value=\"http://www.cosha.org.cn/\">中国职业健康安全协会</option> \r\n<option value=\"http://www.chemicalsafety.org.cn/\">中国化学品研究协会  </option>                                     \r\n  </select>\r\n    </td>\r\n    <td width=\"150\">\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select4\"><option>国际安全生产</option>\r\n<option value=\"http://www.msha.gov/\">美国矿山安全</option>\r\n<option value=\"http://www.nsc.org/pages/home.aspx\">美国安全生产委员会</option>\r\n   </select>\r\n   </td>\r\n   </tr>\r\n</tbody>\r\n</table>\r\n\r\n       </div>\r\n       <div class=\"zhinan\">\r\n         <p style=\"text-align:center;color:#2381bd;\">\r\n         <a href=\"#\">联系我们</a>  |  <a href=\"#\">帮助指南</a>  |   <a href=\"#\">电子邮箱</a>  |   <a href=\"#\">网站地图</a>  |   <a href=\"#\">申诉投诉</a>\r\n         </p>\r\n         <p>主   办   单   位：国家安全生产监督管理总局 </p>\r\n         <p>承   办   单   位：中国安全生产科学研究院 </p>\r\n         <p>京ICP备05009670号   京公网安备11010502026200</p>\r\n         <p>联系地址：北京市朝阳区北苑路32号院甲1号楼安全大厦 邮编：100012 </p>\r\n         <p>  电话：010-84911329 010-84911334 </p>\r\n         \r\n       </div>\r\n     </div>\r\n  <!--/*footer end*/-->\r\n\r\n\r\n\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n', null, '0', '1', '2015-04-07 19:04:55', '1', '2015-05-13 20:38:25', null, null);
INSERT INTO `tvcms_template` VALUES ('96', 'qweqwe', '2', null, null, null, null, 'qweq', 'weqwe', 'qwe', null, '1', '1', '2015-04-07 19:07:29', null, null, '1', '2015-04-29 11:37:36');
INSERT INTO `tvcms_template` VALUES ('97', 'qwewqe', '2', null, null, null, null, 'qweqw', 'eqwe', 'qweqw', null, '1', '1', '2015-04-07 19:14:33', null, null, '1', '2015-04-29 11:37:34');
INSERT INTO `tvcms_template` VALUES ('98', 'asd', '2', null, null, null, null, 'asd', 'asd', 'asd', null, '1', '1', '2015-04-07 19:18:47', null, null, '1', '2015-04-29 11:37:31');
INSERT INTO `tvcms_template` VALUES ('99', 'dads', '2', null, null, null, null, 'fdsfd', 'gfdgf', 'gfdg', null, '1', '1', '2015-04-07 19:32:14', null, null, '1', '2015-04-29 11:37:29');
INSERT INTO `tvcms_template` VALUES ('100', '123', '2', null, null, null, null, '123', '1231', '23', null, '1', '1', '2015-04-07 19:38:47', null, null, '1', '2015-04-29 11:37:26');
INSERT INTO `tvcms_template` VALUES ('101', 'qweqeqweqeqweqw', '2', null, null, null, null, 'qweqweqwe', '', 'qweqwewqe', null, '1', '1', '2015-04-07 19:42:21', null, null, '1', '2015-04-29 11:37:23');
INSERT INTO `tvcms_template` VALUES ('102', 'akyhead', '5', null, null, null, null, 'akyhead.html', 'akyhead', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/index.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/tabqieh.css\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/css/zzsc.css\"/>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/js/jquery-1.7.2.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/js/jquery.1.4.2-min.js\"></script>\r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/js/jquery.SuperSlide.js\"></script>\r\n<title>国家安全生产物联网（非煤领域）检测认证公共平台</title>\r\n</head>', null, '0', '1', '2015-05-12 16:03:37', null, null, null, null);
INSERT INTO `tvcms_template` VALUES ('103', 'akybodytop', '5', null, null, null, null, 'akybodytop.html', 'akybodytop', '<body>\r\n  <!--/*top/-->\r\n     <div class=\"top\">\r\n       <div class=\"date\">\r\n       </div>\r\n       <div class=\"denglu\">\r\n        <a href=\"login1.html\" target=\"_blank\">用户登录</a>  |  <a href=\"#\">企业注册</a>  |   <a href=\"#\">找回密码</a>\r\n       </div>\r\n     </div>\r\n  <!--/*top end/-->\r\n  \r\n  <!--/*banner*/-->\r\n   <div class=\"banner\">\r\n      <!-- <div class=\"search\">\r\n        <div class=\"search-cont\">\r\n           <input type=\"text\" value=\"相关下载\" /><a href=\"#\"><img src=\"images/search.png\" /></a>\r\n          </div>\r\n        </div>-->\r\n        <div id=\"top_search\">\r\n        <form action=\"\" target=\"_blank\" name=\"form1\" method=\"post\">\r\n   <ul>\r\n     <li>\r\n     <input name=\"fullText\" value=\"请输入您要搜索的关键词\" type=\"text\" onfocus=\"if (value ==\'请输入您要搜索的关键词\'){value =\'\'}\" onblur=\"if (value ==\'\'){value=\'请输入您要搜索的关键词\'}\" id=\"top_search_input\">\r\n\r\n    <a href=\"#\"><img src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/images/search-btn.png\" name=\"top_search_button\" border=\"0\" id=\"top_search_button\"></a></li>\r\n   </ul>\r\n</form>\r\n\r\n        </div>\r\n     </div>\r\n     <div class=\"clear\"></div>\r\n  <!--/*banner end*/-->\r\n  \r\n   <!--/*menu*/-->\r\n     <div id=\"menu\">\r\n      <div class=\"cen\">\r\n       <div id=\"tabsK\"> \r\n	     <ul id=\"nav\"> \r\n		  <li><a href=\"#\"><span>首页</span></a></li> \r\n	  	  <li><a href=\"#\"><span>平台介绍</span></a></li>\r\n          <li><a href=\"#\"><span>政策法规</span></a></li>\r\n          <li><a href=\"#\"><span>安全监察</span></a></li>\r\n          <li><a href=\"index1.html\" target=\"_blank\"><span>标准规范</span></a></li>\r\n          <li><a href=\"#\"><span>信息服务</span></a></li>\r\n          <li><a href=\"#\"><span>工作情况</span></a></li>\r\n          <li><a href=\"#\"><span>范本公示</span></a></li>\r\n          <li><a href=\"#\"><span>相关下载</span></a></li> \r\n         </ul> \r\n		</div>\r\n	 </div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  <!--/*menu end*/-->', null, '0', '1', '2015-05-12 16:04:41', null, null, null, null);
INSERT INTO `tvcms_template` VALUES ('104', 'akyfooter', '5', null, null, null, null, 'akyfooter.html', 'akyfooter', '  <!--/*footer*/-->\r\n     <div class=\"footer\">\r\n       <div class=\"youqing\">\r\n        <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tab2\">\r\n  <tbody>\r\n  <tr>\r\n    <td style=\"width:140px;\"><span style=\"font-size:12px;color:#FFF; padding-left:40px;\">网站链接</span></td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select\"><option>安委会成员单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/newpage/\">安全监管总局</option>\r\n<option value=\"http://www.sdpc.gov.cn/\">国家发展和改革委员会</option>\r\n<option value=\"http://www.moe.edu.cn\">教育部</option>\r\n<option value=\"http://www.most.gov.cn\">科学技术部</option>\r\n<option value=\"http://www.costind.gov.cn\">国防科工委</option>\r\n<option value=\"http://www.moj.gov.cn/\">司法部</option>\r\n<option value=\"http://www.mps.gov.cn\">公安部</option>  \r\n</select>\r\n    </td>\r\n    \r\n    <td >\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select2\"><option>总局直属单位</option>\r\n<option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局调度中心</option>    \r\n    <option value=\"http://www.ncics.org.cn/\">国际交流合作中心 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监总局档案馆 </option>    \r\n    <option value=\"http://www.chinasafety.gov.cn/zhishudanwei.htm\">安监服务中心 </option>    \r\n </select>\r\n    </td>\r\n    <td>\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select3\"><option>总局管理协会</option>\r\n<option value=\"http://www.cosha.org.cn/\">中国职业健康安全协会</option> \r\n<option value=\"http://www.chemicalsafety.org.cn/\">中国化学品研究协会  </option>                                     \r\n  </select>\r\n    </td>\r\n    <td width=\"150\">\r\n    <select onchange=\"javascript:window.open(this.options[this.selectedIndex].value)\" name=\"select4\"><option>国际安全生产</option>\r\n<option value=\"http://www.msha.gov/\">美国矿山安全</option>\r\n<option value=\"http://www.nsc.org/pages/home.aspx\">美国安全生产委员会</option>\r\n   </select>\r\n   </td>\r\n   </tr>\r\n</tbody>\r\n</table>\r\n\r\n       </div>\r\n       <div class=\"zhinan\">\r\n         <p style=\"text-align:center;color:#2381bd;\">\r\n         <a href=\"#\">联系我们</a>  |  <a href=\"#\">帮助指南</a>  |   <a href=\"#\">电子邮箱</a>  |   <a href=\"#\">网站地图</a>  |   <a href=\"#\">申诉投诉</a>\r\n         </p>\r\n         <p>主   办   单   位：国家安全生产监督管理总局 </p>\r\n         <p>承   办   单   位：中国安全生产科学研究院 </p>\r\n         <p>京ICP备05009670号   京公网安备11010502026200</p>\r\n         <p>联系地址：北京市朝阳区北苑路32号院甲1号楼安全大厦 邮编：100012 </p>\r\n         <p>  电话：010-84911329 010-84911334 </p>\r\n         \r\n       </div>\r\n     </div>\r\n  <!--/*footer end*/-->\r\n     \r\n<script type=\"text/javascript\" src=\"<tvcms:systemSetting attr=\"root\"></tvcms:systemSetting>/assets/web/js/jquery.tabso_yeso.js\"></script>\r\n<script type=\"text/javascript\">\r\n$(document).ready(function($){\r\n	//默认选项卡切换\r\n	$(\"#normaltab\").tabso({\r\n		cntSelect:\"#normalcon\",\r\n		tabEvent:\"mouseover\",\r\n		tabStyle:\"normal\"\r\n	});\r\n	\r\n		$(\"#normaltab1\").tabso({\r\n		cntSelect:\"#normalcon1\",\r\n		tabEvent:\"mouseover\",\r\n		tabStyle:\"normal\"\r\n	});\r\n	$(\"#normaltab2\").tabso({\r\n		cntSelect:\"#normalcon2\",\r\n		tabEvent:\"mouseover\",\r\n		tabStyle:\"normal\"\r\n	});\r\n	\r\n});\r\n</script>\r\n<script type=\"text/javascript\">\r\njQuery(\".focusBox\").slide({ titCell:\".num li\", mainCell:\".pic\",effect:\"fold\", autoPlay:true,trigger:\"click\",startFun:function(i){jQuery(\".focusBox .txt li\").eq(i).animate({\"bottom\":0}).siblings().animate({\"bottom\":-36});}});\r\n</script>\r\n\r\n</body>\r\n</html>\r\n', null, '0', '1', '2015-05-12 16:06:03', null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_templatecatalog`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_templatecatalog`;
CREATE TABLE `tvcms_templatecatalog` (
  `catalog_ID` int(11) NOT NULL auto_increment,
  `catalog_name` varchar(50) default NULL,
  `top_catalogID` int(11) default NULL,
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`catalog_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='模板目录';

-- ----------------------------
-- Records of tvcms_templatecatalog
-- ----------------------------
INSERT INTO `tvcms_templatecatalog` VALUES ('1', '首页', null, '0', null, '2014-06-22 17:53:00', null, null, null, null);
INSERT INTO `tvcms_templatecatalog` VALUES ('2', '内容', null, '0', null, null, null, null, null, null);
INSERT INTO `tvcms_templatecatalog` VALUES ('3', '列表', null, '0', null, '2014-06-29 15:09:16', null, '2014-06-29 15:56:21', null, null);
INSERT INTO `tvcms_templatecatalog` VALUES ('4', '单页面', null, '0', null, '2014-07-07 22:30:09', null, null, null, '2014-07-07 22:30:28');
INSERT INTO `tvcms_templatecatalog` VALUES ('5', '其他', null, '0', null, '2014-07-13 17:34:38', null, null, null, null);
INSERT INTO `tvcms_templatecatalog` VALUES ('6', 'q', null, '0', '1', '2015-03-24 16:27:14', null, null, null, null);
INSERT INTO `tvcms_templatecatalog` VALUES ('7', '', null, '0', '1', '2015-03-24 17:52:51', null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_user`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_user`;
CREATE TABLE `tvcms_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) default NULL,
  `password` varchar(50) default NULL,
  `true_name` varchar(50) default NULL,
  `sex` decimal(1,0) default NULL,
  `email` varchar(30) default NULL,
  `group_id` int(11) default NULL,
  `dept_id` int(11) default NULL,
  `is_disabled` decimal(1,0) default NULL,
  `login_times` int(11) default '0' COMMENT '登陆次数',
  `last_login_time` datetime default NULL,
  `last_modpwd_time` datetime default NULL,
  `is_deleted` decimal(1,0) unsigned zerofill default '0' COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  `last_login_ip` varchar(40) default NULL COMMENT '最后登录IP',
  PRIMARY KEY  (`id`),
  KEY `fk_tvcms_user_2` (`group_id`),
  KEY `fk_tvcms_user_1` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of tvcms_user
-- ----------------------------
INSERT INTO `tvcms_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '1', '13106070@qq.com', '3', null, null, '1325', '2015-05-29 16:16:05', null, null, null, null, null, null, null, null, '127.0.0.1');
INSERT INTO `tvcms_user` VALUES ('9', 'userset', 'B1CF054A4E86BC495EAB5A893060C872', '111', '1', '13106070@qq.com', '8', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_user_group`;
CREATE TABLE `tvcms_user_group` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `name` varchar(100) default NULL COMMENT '名称',
  `sort` int(11) default NULL COMMENT '排序',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='系统用户组';

-- ----------------------------
-- Records of tvcms_user_group
-- ----------------------------
INSERT INTO `tvcms_user_group` VALUES ('1', '11', null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('2', '哈哈', null, '0', null, '2014-07-06 13:58:21', '1', '2015-04-07 12:25:40', null, null);
INSERT INTO `tvcms_user_group` VALUES ('3', '管理员', null, '0', '14', '2014-09-06 14:07:20', '1', '2015-03-10 17:56:52', null, null);
INSERT INTO `tvcms_user_group` VALUES ('4', null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('5', '', null, '1', '16', '2014-10-29 20:48:34', null, null, '16', '2014-10-29 20:48:41');
INSERT INTO `tvcms_user_group` VALUES ('6', null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('7', '工作人员', null, '0', '16', '2014-11-12 10:24:07', null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('8', '就是扩大建设', null, '0', '1', '2014-11-29 15:28:15', null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('9', null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('10', null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('11', null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('12', null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('13', null, null, null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_group` VALUES ('14', 'aa', null, '1', '1', '2015-04-01 17:07:48', null, null, '1', '2015-04-01 17:09:53');
INSERT INTO `tvcms_user_group` VALUES ('15', 'q', null, '1', '1', '2015-04-02 15:24:03', null, null, '1', '2015-04-02 15:24:06');

-- ----------------------------
-- Table structure for `tvcms_user_group_power`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_user_group_power`;
CREATE TABLE `tvcms_user_group_power` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `power_id` int(11) default NULL COMMENT '权限ID',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  `group_id` int(11) default NULL COMMENT '用户组ID',
  PRIMARY KEY  (`id`),
  KEY `fk_tvcms_user_group_power_2` (`power_id`),
  KEY `fk_tvcms_user_group_power_1` (`group_id`),
  CONSTRAINT `fk_tvcms_user_group_power_1` FOREIGN KEY (`group_id`) REFERENCES `tvcms_user_group` (`id`),
  CONSTRAINT `fk_tvcms_user_group_power_2` FOREIGN KEY (`power_id`) REFERENCES `tvcms_sys_power` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='系统用户组权限关系表';

-- ----------------------------
-- Records of tvcms_user_group_power
-- ----------------------------
INSERT INTO `tvcms_user_group_power` VALUES ('1', '1', '0', null, '2014-07-06 13:58:21', null, null, null, null, '2');
INSERT INTO `tvcms_user_group_power` VALUES ('2', '7', '0', null, '2014-07-06 13:58:21', null, null, null, null, '2');
INSERT INTO `tvcms_user_group_power` VALUES ('3', '9', '0', null, '2014-07-06 13:58:21', null, null, null, null, '2');
INSERT INTO `tvcms_user_group_power` VALUES ('4', '10', '0', null, '2014-07-06 13:58:21', null, null, null, null, '2');
INSERT INTO `tvcms_user_group_power` VALUES ('6', '1', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('7', '7', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('8', '9', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('9', '10', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('14', '5', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('15', '11', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('16', '16', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('17', '12', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('18', '13', '0', '14', '2014-09-06 14:07:20', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('22', '1', '0', '16', '2014-09-06 14:10:49', null, null, null, null, '4');
INSERT INTO `tvcms_user_group_power` VALUES ('23', '7', '0', '16', '2014-09-06 14:10:49', null, null, null, null, '4');
INSERT INTO `tvcms_user_group_power` VALUES ('24', '9', '0', '16', '2014-09-06 14:10:49', null, null, null, null, '4');
INSERT INTO `tvcms_user_group_power` VALUES ('25', '2', '0', '16', '2014-09-06 14:10:49', null, null, null, null, '4');
INSERT INTO `tvcms_user_group_power` VALUES ('26', '3', '0', '16', '2014-09-06 14:10:49', null, null, null, null, '4');
INSERT INTO `tvcms_user_group_power` VALUES ('27', '4', '0', '16', '2014-09-06 14:10:49', null, null, null, null, '4');
INSERT INTO `tvcms_user_group_power` VALUES ('28', '22', '0', '16', '2014-09-20 09:58:45', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('29', '23', '0', '16', '2014-09-20 09:58:45', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('30', '24', '0', '16', '2014-09-20 10:01:23', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('31', '25', '0', '16', '2014-09-20 10:01:23', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('34', '30', '0', '16', '2014-09-25 16:16:12', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('45', '32', '0', '16', '2014-09-29 10:55:01', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('59', '57', '0', '16', '2014-11-03 09:26:28', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('60', '58', '0', '16', '2014-11-03 09:26:28', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('63', '1', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('64', '7', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('65', '9', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('66', '10', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('67', '30', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('68', '32', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('69', '57', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('70', '58', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('71', '2', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('72', '3', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('73', '6', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('74', '19', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('75', '20', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('76', '26', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('77', '27', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('78', '5', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('79', '11', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('80', '16', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('81', '24', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('82', '12', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('83', '13', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('84', '22', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('85', '23', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('86', '25', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('87', '33', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('88', '34', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('89', '35', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('90', '40', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('91', '39', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('92', '37', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('93', '38', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('94', '41', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('95', '44', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('96', '42', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('97', '43', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('98', '59', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('99', '60', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('100', '47', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('101', '48', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('102', '49', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('103', '54', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('104', '50', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('105', '51', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('106', '52', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('107', '53', '0', '16', '2014-11-08 14:56:31', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('108', '4', '0', '1', '2014-11-25 12:04:25', null, null, null, null, '6');
INSERT INTO `tvcms_user_group_power` VALUES ('114', '61', '0', '1', '2015-03-05 12:07:21', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('115', '62', '0', '1', '2015-03-05 12:07:21', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('116', '63', '0', '1', '2015-03-05 12:07:21', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('117', '2', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('118', '3', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('119', '41', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('120', '44', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('121', '42', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('122', '43', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('123', '59', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('124', '60', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('125', '4', '0', '1', '2015-03-10 17:56:52', null, null, null, null, '3');
INSERT INTO `tvcms_user_group_power` VALUES ('126', '1', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('127', '7', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('128', '9', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('129', '10', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('130', '30', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('131', '32', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('132', '57', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('133', '58', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('134', '61', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('135', '62', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');
INSERT INTO `tvcms_user_group_power` VALUES ('136', '63', '0', '1', '2015-04-01 17:07:48', null, null, null, null, '14');

-- ----------------------------
-- Table structure for `tvcms_user_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_user_login_log`;
CREATE TABLE `tvcms_user_login_log` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `user_name` varchar(50) default NULL COMMENT '用户ID',
  `login_state` decimal(1,0) default NULL COMMENT '登录状态，0表示失败，1表示成功',
  `login_ip` varchar(15) default NULL COMMENT '登录IP',
  `login_time` datetime default NULL COMMENT '登录时间',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`),
  KEY `fk_tvcms_user_login_log_1` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2017 DEFAULT CHARSET=utf8 COMMENT='系统用户登录日志';

-- ----------------------------
-- Records of tvcms_user_login_log
-- ----------------------------
INSERT INTO `tvcms_user_login_log` VALUES ('13', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 10:25:29', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('15', 'userset', '3', '0:0:0:0:0:0:0:1', '2014-09-23 10:27:47', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('16', 'userset', '3', '0:0:0:0:0:0:0:1', '2014-09-23 10:28:02', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('19', 'dsadasdsa', '3', '0:0:0:0:0:0:0:1', '2014-09-23 10:29:22', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('20', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 10:29:33', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('23', 'dsdsad', '2', '0:0:0:0:0:0:0:1', '2014-09-23 10:40:09', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('24', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 10:40:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('25', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 11:00:37', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('26', 'sadf', '2', '0:0:0:0:0:0:0:1', '2014-09-23 11:02:25', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('27', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 11:02:33', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('28', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 11:10:12', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('29', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:36:28', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('30', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:39:58', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('31', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:44:33', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('33', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:54:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('34', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:54:30', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('35', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:54:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('36', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:54:56', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('37', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 15:55:04', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('43', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 16:20:27', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('44', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 17:46:34', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('45', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-23 18:47:52', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('46', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 09:04:17', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('47', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 09:13:38', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('48', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 09:28:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('49', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 09:31:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('50', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 09:53:48', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('51', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 10:02:19', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('52', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 10:08:28', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('53', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 10:08:55', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('54', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 10:26:58', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('55', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 11:03:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('56', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 11:06:53', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('57', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 11:26:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('58', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 11:52:25', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('59', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 11:53:40', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('60', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 11:55:21', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('61', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 12:17:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('62', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 12:29:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('63', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 13:01:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('64', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 13:57:15', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('65', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:20:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('66', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:20:41', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('67', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:20:57', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('68', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-09-24 14:28:36', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('69', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:29:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('70', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:57:15', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('71', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:57:24', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('72', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:57:36', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('73', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 14:59:52', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('74', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 15:04:14', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('75', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 15:37:32', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('76', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 15:39:24', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('77', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 16:04:31', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('78', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 16:26:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('79', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 16:49:53', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('80', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 16:51:14', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('81', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 17:18:30', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('82', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 17:42:07', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('83', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 17:46:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('84', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 17:48:37', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('85', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 17:50:36', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('86', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 18:05:48', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('87', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 19:04:13', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('88', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-24 19:39:45', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('89', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 15:39:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('93', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 17:05:21', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('94', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 17:31:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('95', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 17:48:35', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('96', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 17:59:48', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('97', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 18:01:23', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('98', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 18:36:17', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('99', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 18:37:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('100', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 18:37:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('101', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 19:00:17', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('102', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 19:11:37', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('103', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 20:10:22', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('104', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 20:25:17', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('105', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 20:39:35', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('106', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 20:42:35', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('107', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:02:04', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('108', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:05:04', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('109', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:06:50', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('110', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:09:14', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('111', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:13:23', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('112', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:20:13', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('113', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:24:05', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('114', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:25:00', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('115', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:26:43', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('116', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:32:42', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('117', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:36:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('118', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:42:19', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('119', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:48:38', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('120', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-25 21:53:28', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('121', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:13:46', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('122', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:14:35', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('123', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:16:23', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('124', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:16:34', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('125', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:18:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('126', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:22:42', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('127', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:23:54', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('128', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:27:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('129', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:27:34', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('130', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:30:29', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('131', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:42:35', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('132', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:43:40', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('133', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 09:47:09', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('134', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:01:34', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('135', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:02:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('136', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:02:13', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('137', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:09:38', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('138', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:16:52', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('139', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:19:02', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('140', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:19:14', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('141', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:19:28', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('142', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:21:58', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('143', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:23:07', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('144', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:33:16', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('145', 'test', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:34:50', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('146', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 10:37:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('147', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 11:06:56', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('148', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 11:08:57', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('149', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 11:13:36', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('150', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 11:20:40', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('151', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 11:39:29', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('152', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 11:48:48', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('153', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 12:09:43', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('154', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 12:16:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('155', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 12:29:10', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('156', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 12:34:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('157', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 12:36:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('158', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 12:37:41', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('159', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 13:09:32', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('160', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 13:20:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('161', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 15:35:06', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('162', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 16:24:55', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('163', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 17:24:50', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('164', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 17:47:58', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('165', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 17:50:07', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('166', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:01:41', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('167', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:38:47', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('168', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:41:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('169', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:48:27', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('170', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:52:02', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('171', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:55:38', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('172', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:57:26', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('173', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 18:59:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('174', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:02:03', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('175', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:02:29', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('176', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:03:06', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('177', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:04:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('178', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:09:18', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('179', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:15:38', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('180', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:55:34', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('181', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 19:58:36', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('182', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 21:19:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('183', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 21:21:55', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('184', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-26 21:28:41', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('185', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 09:12:15', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('186', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 09:15:45', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('187', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 09:19:26', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('188', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 09:29:43', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('189', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 09:30:05', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('190', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 10:10:28', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('191', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:20:10', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('192', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:22:50', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('193', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:25:25', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('194', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:25:57', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('195', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:27:12', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('196', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:32:42', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('197', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:38:30', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('198', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:41:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('199', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:44:19', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('200', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 11:44:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('201', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 12:04:21', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('202', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:11:42', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('203', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:16:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('204', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:20:02', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('205', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:23:47', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('206', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:27:28', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('207', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:28:43', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('208', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:32:13', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('209', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 13:53:03', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('210', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:01:29', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('211', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:05:13', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('212', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:06:32', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('213', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:07:04', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('214', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:07:39', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('215', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:08:22', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('216', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:08:38', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('217', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:10:45', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('218', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:11:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('219', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:11:58', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('220', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:12:24', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('221', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:12:45', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('222', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:36:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('223', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:58:34', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('224', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 14:59:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('225', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 15:01:09', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('226', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 15:08:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('227', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 15:31:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('228', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 15:41:30', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('229', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 15:42:42', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('230', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:21:59', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('231', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:26:50', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('232', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:27:02', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('234', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:35:03', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('236', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:40:30', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('237', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:50:41', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('238', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:55:30', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('239', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 17:59:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('240', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:02:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('241', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:05:34', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('242', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:10:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('243', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:11:16', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('244', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:21:17', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('245', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:32:32', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('246', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:35:15', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('247', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:39:07', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('248', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:44:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('249', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:44:19', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('250', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:44:22', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('251', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 18:50:21', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('252', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 19:06:33', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('253', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 19:09:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('254', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-28 19:12:40', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('255', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:06:36', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('256', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:07:05', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('257', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:07:18', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('258', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:07:26', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('259', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:08:15', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('260', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:10:14', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('261', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:12:47', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('262', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:13:16', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('263', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:16:26', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('264', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:17:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('265', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:19:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('266', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:21:48', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('267', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:22:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('268', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:23:35', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('269', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:29:22', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('270', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:45:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('271', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:47:20', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('272', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 09:49:39', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('273', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:13:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('274', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:14:27', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('275', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:22:19', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('276', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:47:44', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('277', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:48:22', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('278', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:52:35', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('279', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:54:37', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('280', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 10:55:03', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('281', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:01:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('282', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:01:29', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('283', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:10:26', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('284', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:11:08', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('285', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:12:21', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('286', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:17:46', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('287', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:17:59', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('288', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:18:16', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('289', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:18:49', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('290', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:19:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('291', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 11:20:50', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('292', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 14:15:07', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('293', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 14:38:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('294', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 15:14:51', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('295', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 15:44:58', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('296', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 15:57:05', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('297', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:02:23', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('298', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:08:01', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('299', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:10:37', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('300', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:12:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('301', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:21:43', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('302', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:54:11', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('303', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:55:05', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('304', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 16:56:23', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('305', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 17:22:32', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('306', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 17:43:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('307', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:07:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('308', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:11:31', '0', null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('309', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:31:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('310', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:32:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('311', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:32:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('312', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:50:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('313', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:59:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('314', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:59:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('315', 'test', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:59:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('316', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 18:59:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('317', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-29 19:02:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('318', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 09:01:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('319', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 09:07:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('320', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 09:41:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('321', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 10:43:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('322', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:17:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('323', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:32:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('324', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:38:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('325', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:42:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('326', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:44:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('327', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:46:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('328', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:48:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('329', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:50:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('330', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 11:51:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('331', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 12:09:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('332', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 12:20:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('333', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 12:21:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('334', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 12:24:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('335', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 14:08:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('336', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 14:31:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('337', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 14:45:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('338', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 14:47:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('339', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 14:48:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('340', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 15:18:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('341', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 15:23:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('342', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 15:25:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('343', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 15:37:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('344', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 15:53:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('345', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 15:54:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('346', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-09-30 15:59:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('347', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-01 00:00:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('348', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-01 00:05:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('349', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-01 00:18:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('350', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-01 11:16:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('351', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-01 14:15:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('352', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-01 14:16:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('353', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-01 23:25:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('354', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 10:55:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('355', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 11:23:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('356', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 15:43:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('357', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 15:59:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('358', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 17:00:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('359', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 17:05:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('360', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 17:08:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('361', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 17:29:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('362', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 17:34:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('363', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 19:21:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('364', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 19:41:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('365', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 22:52:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('366', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 23:06:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('367', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 23:38:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('368', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-02 23:39:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('369', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 00:24:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('370', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 00:47:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('371', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 00:52:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('372', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 01:00:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('373', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 01:42:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('374', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 01:54:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('375', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 01:58:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('376', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 02:05:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('377', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 02:21:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('378', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 02:32:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('379', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-03 02:39:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('380', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-04 23:18:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('381', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 00:13:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('382', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 00:15:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('383', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 00:23:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('384', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 00:33:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('385', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 00:52:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('386', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 01:06:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('387', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 01:10:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('388', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 02:26:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('389', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 03:07:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('390', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 03:30:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('391', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 03:34:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('392', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 03:39:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('393', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 03:57:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('394', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:21:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('395', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:24:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('396', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:35:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('397', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:47:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('398', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:48:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('399', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:50:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('400', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:53:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('401', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:54:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('402', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 04:55:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('403', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-05 05:00:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('404', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-07 18:18:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('405', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-07 21:39:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('406', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-07 22:20:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('407', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-07 23:51:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('408', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-07 23:58:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('409', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 00:00:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('410', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 00:19:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('411', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 00:27:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('412', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 09:17:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('413', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 09:32:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('414', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 09:35:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('415', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 09:43:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('416', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 10:13:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('417', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 11:51:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('418', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 11:55:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('419', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 13:02:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('420', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 14:20:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('421', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 14:51:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('422', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 14:53:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('423', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 14:56:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('424', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 14:57:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('425', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:01:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('426', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:13:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('427', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:27:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('428', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:26:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('429', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:39:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('430', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:51:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('431', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:53:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('432', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:55:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('433', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:58:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('434', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 15:59:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('435', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 16:10:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('436', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 16:12:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('437', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 16:31:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('438', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 17:19:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('439', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 17:32:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('440', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 17:37:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('441', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:03:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('442', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:07:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('443', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:27:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('444', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:32:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('445', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:37:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('446', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:41:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('447', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:45:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('448', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:56:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('449', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 18:59:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('450', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:01:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('451', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:11:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('452', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:12:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('453', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:13:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('454', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:18:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('455', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:19:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('456', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:19:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('457', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:26:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('458', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:51:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('459', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:54:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('460', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 19:59:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('461', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-08 20:04:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('462', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:09:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('463', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:18:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('464', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:19:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('465', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:34:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('466', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:34:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('467', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:36:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('468', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:39:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('469', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 09:44:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('470', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 10:00:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('471', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 10:30:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('472', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 10:35:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('473', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 10:39:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('474', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 10:41:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('475', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 10:44:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('476', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 11:00:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('477', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 11:48:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('478', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 11:50:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('479', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 11:53:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('480', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 11:55:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('481', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 12:20:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('482', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 12:27:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('483', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 12:33:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('484', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 13:07:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('485', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 13:11:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('486', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 13:22:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('487', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 13:30:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('488', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 13:47:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('489', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 13:54:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('490', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 14:02:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('491', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 14:16:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('492', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 14:17:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('493', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 14:33:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('494', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 14:45:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('495', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 14:45:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('496', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 14:56:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('497', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:00:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('498', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:02:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('499', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:05:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('500', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:18:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('501', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:22:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('502', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:23:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('503', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:26:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('504', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 15:38:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('505', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 16:06:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('506', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 16:31:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('507', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 16:34:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('508', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 16:37:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('509', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 16:53:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('510', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 17:02:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('511', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 17:03:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('512', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 17:06:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('513', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 17:15:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('514', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 17:18:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('515', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 17:20:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('516', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-09 17:26:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('517', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 09:31:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('518', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 09:37:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('519', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 09:53:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('520', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 10:07:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('521', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 10:43:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('522', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 10:56:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('523', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 11:15:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('524', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 11:56:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('525', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 11:57:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('526', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 13:03:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('527', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 13:46:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('528', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 15:03:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('529', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 15:08:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('530', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 15:09:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('531', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 15:59:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('532', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 16:20:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('533', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 16:30:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('534', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 17:29:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('535', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 17:41:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('536', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 17:46:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('537', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 18:09:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('538', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 18:29:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('539', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 19:00:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('540', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 19:39:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('541', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 19:39:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('542', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 19:41:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('543', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 19:43:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('544', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 20:03:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('545', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 20:25:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('546', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 20:51:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('547', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 21:06:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('548', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 21:09:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('549', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 21:16:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('550', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 21:20:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('551', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 21:20:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('552', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-10 21:28:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('553', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 09:12:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('554', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 09:21:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('555', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 09:24:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('556', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 10:29:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('557', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 10:31:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('558', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 10:37:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('559', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 10:43:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('560', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 10:52:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('561', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 11:08:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('562', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 11:08:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('563', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 11:11:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('564', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 11:32:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('565', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 11:48:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('566', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 11:53:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('567', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 12:00:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('568', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 14:12:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('569', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 15:07:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('570', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 15:41:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('571', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 15:47:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('572', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 15:49:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('573', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 15:51:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('574', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 16:05:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('575', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 17:11:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('576', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 17:14:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('577', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 17:16:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('578', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 17:41:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('579', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 17:43:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('580', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 17:56:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('581', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 18:08:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('582', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 18:50:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('583', 'admin', '1', '192.168.1.101', '2014-10-11 18:56:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('584', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 19:50:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('585', 'admin', '1', '192.168.1.101', '2014-10-11 20:09:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('586', 'admin', '1', '192.168.1.101', '2014-10-11 20:11:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('587', 'admin', '1', '192.168.1.101', '2014-10-11 20:40:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('588', 'admin', '1', '192.168.1.101', '2014-10-11 21:02:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('589', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 21:04:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('590', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-11 21:49:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('591', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 09:01:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('592', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 09:11:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('593', 'admin', '1', '192.168.1.103', '2014-10-13 09:11:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('594', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 09:39:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('595', 'admin', '1', '192.168.1.103', '2014-10-13 09:47:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('596', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 09:47:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('597', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 09:59:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('598', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 10:09:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('599', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 10:11:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('600', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 11:00:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('601', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 11:01:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('602', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 11:03:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('603', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 11:04:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('604', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 11:42:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('605', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 11:46:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('606', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-13 11:47:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('607', 'admin', '3', '127.0.0.1', '2014-10-13 20:31:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('608', 'admin', '1', '127.0.0.1', '2014-10-13 20:32:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('609', 'admin', '1', '127.0.0.1', '2014-10-13 21:33:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('610', 'admin', '1', '127.0.0.1', '2014-10-14 09:07:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('611', 'admin', '1', '127.0.0.1', '2014-10-14 09:26:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('612', 'admin', '1', '127.0.0.1', '2014-10-14 10:56:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('613', 'admin', '1', '127.0.0.1', '2014-10-14 11:13:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('614', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-14 11:30:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('615', 'admin', '1', '127.0.0.1', '2014-10-14 11:37:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('616', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-14 14:31:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('617', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-14 15:25:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('618', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:03:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('619', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:03:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('620', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:04:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('621', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:04:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('622', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:05:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('623', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:06:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('624', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:16:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('625', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-14 16:16:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('626', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:19:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('627', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-14 16:19:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('628', 'admin', '3', '127.0.0.1', '2014-10-14 16:28:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('629', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-14 16:28:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('630', 'admin', '1', '127.0.0.1', '2014-10-14 16:34:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('631', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-14 16:40:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('632', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-14 16:44:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('633', 'admin', '1', '127.0.0.1', '2014-10-14 18:37:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('634', 'admin', '1', '127.0.0.1', '2014-10-14 20:16:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('635', 'admin', '1', '127.0.0.1', '2014-10-15 09:12:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('636', 'admin', '1', '127.0.0.1', '2014-10-15 09:49:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('637', 'admin', '1', '127.0.0.1', '2014-10-15 11:25:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('638', 'admin', '1', '127.0.0.1', '2014-10-15 11:26:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('639', 'admin', '1', '127.0.0.1', '2014-10-15 11:53:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('640', 'admin', '1', '127.0.0.1', '2014-10-15 11:57:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('641', 'admin', '1', '127.0.0.1', '2014-10-15 12:09:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('642', 'admin', '1', '127.0.0.1', '2014-10-15 12:11:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('643', 'admin', '1', '127.0.0.1', '2014-10-15 12:15:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('644', 'admin', '1', '127.0.0.1', '2014-10-15 12:16:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('645', 'admin', '1', '127.0.0.1', '2014-10-15 12:18:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('646', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 14:10:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('647', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 14:11:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('648', 'admin', '1', '127.0.0.1', '2014-10-15 14:44:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('649', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 14:45:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('650', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 14:47:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('651', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 14:47:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('652', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 14:51:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('653', 'admin', '1', '127.0.0.1', '2014-10-15 16:24:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('654', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 16:30:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('655', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 16:31:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('656', 'admin', '1', '127.0.0.1', '2014-10-15 16:46:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('657', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 17:24:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('658', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 17:25:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('659', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 17:56:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('660', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 18:15:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('661', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 18:16:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('662', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 18:18:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('663', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 18:20:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('664', 'admin', '1', '127.0.0.1', '2014-10-15 18:32:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('665', 'admin', '1', '127.0.0.1', '2014-10-15 19:33:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('666', 'admin', '1', '127.0.0.1', '2014-10-15 20:00:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('667', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 20:37:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('668', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 20:41:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('669', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 20:49:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('670', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 21:14:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('671', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 21:15:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('672', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:16:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('673', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:16:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('674', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:16:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('675', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:16:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('676', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 21:23:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('677', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 21:24:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('678', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:24:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('679', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:24:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('680', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 21:40:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('681', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:40:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('682', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:40:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('683', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-15 21:40:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('684', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 21:41:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('685', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-15 21:59:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('686', 'admin', '1', '127.0.0.1', '2014-10-16 15:20:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('687', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-16 15:55:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('688', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-16 16:36:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('689', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-16 17:11:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('690', 'admin', '1', '127.0.0.1', '2014-10-16 17:51:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('691', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-16 18:45:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('692', 'admin', '1', '127.0.0.1', '2014-10-16 19:30:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('693', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-16 19:43:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('694', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-16 20:58:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('695', 'admin', '1', '127.0.0.1', '2014-10-17 08:59:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('696', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 09:52:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('697', 'admin', '1', '127.0.0.1', '2014-10-17 10:56:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('698', 'admin', '1', '127.0.0.1', '2014-10-17 12:12:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('699', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 12:55:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('700', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 13:36:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('701', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 13:40:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('702', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 14:53:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('703', 'admin', '1', '127.0.0.1', '2014-10-17 14:58:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('704', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 15:24:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('705', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 15:59:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('706', 'admin', '1', '127.0.0.1', '2014-10-17 16:51:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('707', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 17:10:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('708', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 17:45:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('709', 'admin', '1', '127.0.0.1', '2014-10-17 18:30:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('710', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 18:34:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('711', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 18:48:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('712', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-17 19:01:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('713', 'admin', '1', '127.0.0.1', '2014-10-18 09:20:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('714', 'admin', '1', '127.0.0.1', '2014-10-18 09:29:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('715', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 09:29:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('716', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-10-18 09:34:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('717', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 09:34:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('718', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 09:46:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('719', 'admin', '1', '127.0.0.1', '2014-10-18 09:48:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('720', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 09:52:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('721', 'admin', '1', '127.0.0.1', '2014-10-18 10:19:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('722', 'admin', '1', '127.0.0.1', '2014-10-18 10:26:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('723', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 10:36:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('724', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 10:41:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('725', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 10:49:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('726', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 10:51:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('727', 'admin', '1', '127.0.0.1', '2014-10-18 10:59:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('728', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 11:28:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('729', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 11:43:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('730', 'admin', '1', '127.0.0.1', '2014-10-18 11:49:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('731', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 11:49:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('732', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 11:49:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('733', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 11:49:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('734', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 12:12:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('735', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 12:19:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('736', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 13:03:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('737', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 13:10:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('738', 'admin', '1', '127.0.0.1', '2014-10-18 13:17:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('739', 'admin', '1', '127.0.0.1', '2014-10-18 13:26:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('740', 'admin', '1', '127.0.0.1', '2014-10-18 13:26:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('741', 'admin', '1', '127.0.0.1', '2014-10-18 13:28:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('742', 'admin', '1', '127.0.0.1', '2014-10-18 13:44:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('743', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 13:50:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('744', 'admin', '1', '127.0.0.1', '2014-10-18 13:51:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('745', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 13:59:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('746', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:03:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('747', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:03:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('748', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:05:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('749', 'admin', '1', '127.0.0.1', '2014-10-18 14:07:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('750', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:22:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('751', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:37:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('752', 'admin', '1', '127.0.0.1', '2014-10-18 14:40:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('753', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:42:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('754', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:46:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('755', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:48:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('756', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:51:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('757', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:51:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('758', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:53:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('759', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 14:57:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('760', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:05:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('761', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:06:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('762', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:07:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('763', 'admin', '1', '127.0.0.1', '2014-10-18 15:09:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('764', 'admin', '1', '127.0.0.1', '2014-10-18 15:12:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('765', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:16:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('766', 'admin', '1', '127.0.0.1', '2014-10-18 15:19:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('767', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:19:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('768', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:25:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('769', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:29:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('770', 'admin', '3', '127.0.0.1', '2014-10-18 15:29:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('771', 'admin', '1', '127.0.0.1', '2014-10-18 15:29:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('772', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:32:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('773', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:34:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('774', 'admin', '1', '127.0.0.1', '2014-10-18 15:36:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('775', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:38:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('776', 'admin', '1', '127.0.0.1', '2014-10-18 15:47:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('777', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 15:47:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('778', 'admin', '1', '127.0.0.1', '2014-10-18 15:52:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('779', 'admin', '1', '127.0.0.1', '2014-10-18 16:44:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('780', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 16:48:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('781', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 16:49:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('782', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 16:51:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('783', 'admin', '1', '127.0.0.1', '2014-10-18 16:58:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('784', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-18 17:00:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('785', 'admin', '1', '127.0.0.1', '2014-10-18 17:02:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('786', 'admin', '1', '127.0.0.1', '2014-10-20 09:10:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('787', 'test', '1', '0:0:0:0:0:0:0:1', '2014-10-20 10:31:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('788', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 10:31:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('789', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 10:34:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('790', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 10:52:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('791', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 10:52:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('792', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 10:52:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('793', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 11:11:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('794', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 11:32:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('795', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 11:32:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('796', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 11:38:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('797', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 12:53:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('798', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 12:53:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('799', 'admin', '1', '127.0.0.1', '2014-10-20 13:40:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('800', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 13:48:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('801', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 14:40:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('802', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 14:40:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('803', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 15:20:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('804', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 15:23:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('805', 'admin', '1', '127.0.0.1', '2014-10-20 15:30:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('806', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 15:52:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('807', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 15:57:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('808', 'admin', '1', '127.0.0.1', '2014-10-20 16:02:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('809', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 16:43:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('810', 'admin', '1', '127.0.0.1', '2014-10-20 17:25:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('811', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 17:34:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('812', 'admin', '1', '127.0.0.1', '2014-10-20 17:39:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('813', 'admin', '1', '127.0.0.1', '2014-10-20 17:42:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('814', 'admin', '1', '127.0.0.1', '2014-10-20 17:53:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('815', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 18:15:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('816', 'admin', '1', '127.0.0.1', '2014-10-20 18:35:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('817', 'admin', '1', '127.0.0.1', '2014-10-20 18:53:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('818', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 18:57:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('819', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 19:04:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('820', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 19:05:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('821', 'admin', '1', '127.0.0.1', '2014-10-20 19:07:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('822', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 20:35:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('823', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 21:05:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('824', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 21:33:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('825', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 22:59:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('826', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 23:01:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('827', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-20 23:02:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('828', 'admin', '1', '127.0.0.1', '2014-10-21 09:39:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('829', 'admin', '1', '127.0.0.1', '2014-10-21 09:42:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('830', 'admin', '1', '127.0.0.1', '2014-10-21 09:48:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('831', 'admin', '1', '127.0.0.1', '2014-10-21 10:13:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('832', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 10:15:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('833', 'admin', '1', '127.0.0.1', '2014-10-21 10:43:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('834', 'admin', '1', '127.0.0.1', '2014-10-21 11:38:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('835', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 11:43:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('836', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 11:46:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('837', 'admin', '1', '127.0.0.1', '2014-10-21 12:23:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('838', 'admin', '1', '127.0.0.1', '2014-10-21 12:45:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('839', 'admin', '1', '127.0.0.1', '2014-10-21 12:54:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('840', 'admin', '1', '127.0.0.1', '2014-10-21 13:00:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('841', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 15:17:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('842', 'admin', '1', '127.0.0.1', '2014-10-21 15:36:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('843', 'admin', '1', '127.0.0.1', '2014-10-21 15:40:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('844', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 15:46:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('845', 'admin', '1', '127.0.0.1', '2014-10-21 15:47:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('846', 'admin', '1', '127.0.0.1', '2014-10-21 15:51:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('847', 'admin', '1', '127.0.0.1', '2014-10-21 15:56:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('848', 'admin', '1', '127.0.0.1', '2014-10-21 16:03:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('849', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 16:15:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('850', 'admin', '1', '127.0.0.1', '2014-10-21 16:24:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('851', 'admin', '1', '127.0.0.1', '2014-10-21 16:29:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('852', 'admin', '1', '127.0.0.1', '2014-10-21 16:36:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('853', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 16:48:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('854', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 16:50:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('855', 'admin', '1', '127.0.0.1', '2014-10-21 17:04:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('856', 'admin', '1', '127.0.0.1', '2014-10-21 17:52:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('857', 'admin', '1', '127.0.0.1', '2014-10-21 18:04:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('858', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 18:06:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('859', 'admin', '1', '127.0.0.1', '2014-10-21 19:31:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('860', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 19:34:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('861', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 20:21:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('862', 'admin', '1', '127.0.0.1', '2014-10-21 20:25:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('863', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 20:41:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('864', 'admin', '1', '127.0.0.1', '2014-10-21 20:46:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('865', 'admin', '1', '127.0.0.1', '2014-10-21 20:51:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('866', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 21:04:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('867', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 21:09:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('868', 'admin', '1', '127.0.0.1', '2014-10-21 21:19:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('869', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 21:24:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('870', 'admin', '1', '127.0.0.1', '2014-10-21 21:27:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('871', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 21:27:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('872', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 21:31:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('873', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 21:35:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('874', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 21:35:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('875', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 22:03:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('876', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-21 22:05:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('877', 'admin', '1', '127.0.0.1', '2014-10-22 09:13:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('878', 'admin', '1', '127.0.0.1', '2014-10-22 09:21:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('879', 'admin', '1', '127.0.0.1', '2014-10-22 09:33:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('880', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 10:25:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('881', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 10:27:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('882', 'admin', '1', '127.0.0.1', '2014-10-22 10:38:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('883', 'admin', '1', '127.0.0.1', '2014-10-22 10:39:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('884', 'admin', '1', '127.0.0.1', '2014-10-22 10:43:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('885', 'admin', '1', '127.0.0.1', '2014-10-22 10:45:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('886', 'admin', '1', '127.0.0.1', '2014-10-22 10:47:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('887', 'admin', '1', '127.0.0.1', '2014-10-22 10:51:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('888', 'admin', '1', '127.0.0.1', '2014-10-22 10:52:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('889', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 11:06:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('890', 'admin', '1', '127.0.0.1', '2014-10-22 11:14:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('891', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 12:03:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('892', 'admin', '1', '127.0.0.1', '2014-10-22 12:07:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('893', 'admin', '1', '127.0.0.1', '2014-10-22 12:15:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('894', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 12:30:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('895', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 13:52:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('896', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 14:00:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('897', 'admin', '1', '127.0.0.1', '2014-10-22 14:27:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('898', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 14:29:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('899', 'admin', '1', '127.0.0.1', '2014-10-22 14:39:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('900', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 14:40:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('901', 'admin', '1', '127.0.0.1', '2014-10-22 14:42:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('902', 'admin', '1', '127.0.0.1', '2014-10-22 14:53:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('903', 'admin', '1', '127.0.0.1', '2014-10-22 14:54:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('904', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 14:56:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('905', 'admin', '1', '127.0.0.1', '2014-10-22 14:57:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('906', 'admin', '1', '127.0.0.1', '2014-10-22 14:58:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('907', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 15:10:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('908', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 15:10:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('909', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 15:11:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('910', 'admin', '1', '127.0.0.1', '2014-10-22 15:13:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('911', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 15:15:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('912', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 15:17:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('913', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 15:23:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('914', 'admin', '1', '127.0.0.1', '2014-10-22 15:33:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('915', 'admin', '1', '127.0.0.1', '2014-10-22 15:40:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('916', 'admin', '1', '127.0.0.1', '2014-10-22 15:43:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('917', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 15:45:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('918', 'admin', '1', '127.0.0.1', '2014-10-22 15:54:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('919', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 16:24:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('920', 'admin', '1', '127.0.0.1', '2014-10-22 16:25:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('921', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 16:25:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('922', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 16:30:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('923', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 16:31:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('924', 'admin', '1', '127.0.0.1', '2014-10-22 17:39:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('925', 'admin', '1', '127.0.0.1', '2014-10-22 17:42:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('926', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 17:43:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('927', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 19:41:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('928', 'admin', '1', '127.0.0.1', '2014-10-22 19:57:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('929', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 20:08:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('930', 'admin', '1', '127.0.0.1', '2014-10-22 20:21:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('931', 'admin', '1', '127.0.0.1', '2014-10-22 20:40:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('932', 'admin', '1', '127.0.0.1', '2014-10-22 21:07:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('933', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 21:08:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('934', 'admin', '1', '127.0.0.1', '2014-10-22 21:10:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('935', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 21:11:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('936', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 21:14:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('937', 'admin', '1', '127.0.0.1', '2014-10-22 21:16:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('938', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 21:19:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('939', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 21:20:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('940', 'admin', '1', '127.0.0.1', '2014-10-22 21:20:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('941', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 21:26:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('942', 'admin', '1', '127.0.0.1', '2014-10-22 21:27:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('943', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-22 21:30:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('944', 'admin', '1', '127.0.0.1', '2014-10-22 21:46:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('945', 'admin', '1', '127.0.0.1', '2014-10-22 21:50:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('946', 'admin', '1', '127.0.0.1', '2014-10-22 21:58:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('947', 'admin', '1', '127.0.0.1', '2014-10-23 09:20:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('948', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 09:40:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('949', 'admin', '1', '127.0.0.1', '2014-10-23 10:30:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('950', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 10:59:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('951', 'admin', '1', '127.0.0.1', '2014-10-23 11:00:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('952', 'admin', '1', '127.0.0.1', '2014-10-23 11:12:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('953', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 11:20:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('954', 'admin', '1', '127.0.0.1', '2014-10-23 11:24:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('955', 'admin', '1', '127.0.0.1', '2014-10-23 11:25:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('956', 'admin', '1', '127.0.0.1', '2014-10-23 11:29:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('957', 'admin', '1', '127.0.0.1', '2014-10-23 11:31:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('958', 'admin', '1', '127.0.0.1', '2014-10-23 11:36:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('959', 'admin', '1', '127.0.0.1', '2014-10-23 11:40:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('960', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 12:00:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('961', 'admin', '1', '127.0.0.1', '2014-10-23 12:19:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('962', 'admin', '1', '127.0.0.1', '2014-10-23 12:21:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('963', 'admin', '1', '127.0.0.1', '2014-10-23 12:24:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('964', 'admin', '1', '127.0.0.1', '2014-10-23 12:37:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('965', 'admin', '1', '127.0.0.1', '2014-10-23 14:55:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('966', 'admin', '1', '127.0.0.1', '2014-10-23 15:23:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('967', 'admin', '1', '127.0.0.1', '2014-10-23 15:53:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('968', 'admin', '1', '127.0.0.1', '2014-10-23 15:57:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('969', 'admin', '1', '127.0.0.1', '2014-10-23 15:58:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('970', 'admin', '1', '127.0.0.1', '2014-10-23 16:01:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('971', 'admin', '1', '127.0.0.1', '2014-10-23 16:10:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('972', 'admin', '1', '127.0.0.1', '2014-10-23 16:18:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('973', 'admin', '1', '127.0.0.1', '2014-10-23 16:20:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('974', 'admin', '1', '127.0.0.1', '2014-10-23 16:39:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('975', 'admin', '1', '127.0.0.1', '2014-10-23 17:30:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('976', 'admin', '1', '127.0.0.1', '2014-10-23 17:58:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('977', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 18:44:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('978', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 18:59:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('979', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 20:30:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('980', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 21:41:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('981', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 21:43:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('982', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 21:57:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('983', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-23 21:58:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('984', 'admin', '1', '127.0.0.1', '2014-10-23 22:24:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('985', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 10:07:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('986', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 10:46:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('987', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 17:07:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('988', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:07:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('989', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:10:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('990', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:13:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('991', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:14:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('992', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:15:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('993', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:17:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('994', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:33:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('995', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:34:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('996', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:43:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('997', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:46:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('998', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:47:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('999', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:50:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1000', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-24 18:53:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1001', 'admin', '1', '127.0.0.1', '2014-10-25 09:19:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1002', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 09:24:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1003', 'admin', '1', '127.0.0.1', '2014-10-25 09:26:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1004', 'admin', '1', '127.0.0.1', '2014-10-25 09:28:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1005', 'admin', '1', '127.0.0.1', '2014-10-25 09:32:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1006', 'admin', '1', '127.0.0.1', '2014-10-25 09:32:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1007', 'admin', '1', '127.0.0.1', '2014-10-25 09:38:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1008', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 09:39:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1009', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 09:41:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1010', 'admin', '1', '127.0.0.1', '2014-10-25 09:43:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1011', 'admin', '1', '127.0.0.1', '2014-10-25 09:51:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1012', 'admin', '1', '127.0.0.1', '2014-10-25 10:01:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1013', 'admin', '1', '127.0.0.1', '2014-10-25 10:14:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1014', 'admin', '1', '127.0.0.1', '2014-10-25 10:20:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1015', 'admin', '1', '127.0.0.1', '2014-10-25 10:27:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1016', 'admin', '1', '127.0.0.1', '2014-10-25 10:50:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1017', 'admin', '1', '127.0.0.1', '2014-10-25 11:03:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1018', 'admin', '1', '127.0.0.1', '2014-10-25 11:10:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1019', 'admin', '1', '127.0.0.1', '2014-10-25 11:34:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1020', 'admin', '1', '127.0.0.1', '2014-10-25 11:54:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1021', 'admin', '1', '127.0.0.1', '2014-10-25 12:07:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1022', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 12:08:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1023', 'admin', '1', '127.0.0.1', '2014-10-25 12:12:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1024', 'admin', '1', '127.0.0.1', '2014-10-25 12:47:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1025', 'admin', '1', '127.0.0.1', '2014-10-25 13:16:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1026', 'admin', '1', '127.0.0.1', '2014-10-25 14:07:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1027', 'admin', '1', '127.0.0.1', '2014-10-25 14:08:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1028', 'admin', '1', '127.0.0.1', '2014-10-25 14:29:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1029', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 14:37:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1030', 'admin', '1', '127.0.0.1', '2014-10-25 14:59:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1031', 'admin', '1', '127.0.0.1', '2014-10-25 15:36:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1032', 'admin', '1', '127.0.0.1', '2014-10-25 15:44:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1033', 'admin', '1', '192.168.1.10', '2014-10-25 15:45:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1034', 'admin', '1', '127.0.0.1', '2014-10-25 15:47:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1035', 'admin', '1', '192.168.1.10', '2014-10-25 17:09:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1036', 'admin', '1', '127.0.0.1', '2014-10-25 17:20:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1037', 'admin', '1', '127.0.0.1', '2014-10-25 17:23:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1038', 'admin', '1', '127.0.0.1', '2014-10-25 17:28:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1039', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 17:29:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1040', 'admin', '1', '192.168.1.10', '2014-10-25 17:30:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1041', 'admin', '1', '127.0.0.1', '2014-10-25 17:36:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1042', 'admin', '1', '127.0.0.1', '2014-10-25 17:47:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1043', 'admin', '1', '127.0.0.1', '2014-10-25 17:50:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1044', 'admin', '1', '127.0.0.1', '2014-10-25 18:08:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1045', 'admin', '1', '127.0.0.1', '2014-10-25 18:12:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1046', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 18:12:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1047', 'admin', '1', '127.0.0.1', '2014-10-25 18:13:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1048', 'admin', '1', '127.0.0.1', '2014-10-25 18:14:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1049', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 18:16:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1050', 'admin', '1', '127.0.0.1', '2014-10-25 18:24:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1051', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 18:47:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1052', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 18:50:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1053', 'admin', '1', '127.0.0.1', '2014-10-25 18:50:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1054', 'admin', '1', '192.168.1.10', '2014-10-25 18:52:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1055', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 19:00:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1056', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 19:25:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1057', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-25 19:37:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1058', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-26 12:46:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1059', 'admin', '1', '127.0.0.1', '2014-10-26 14:28:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1060', 'admin', '1', '127.0.0.1', '2014-10-26 15:03:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1061', 'admin', '1', '127.0.0.1', '2014-10-26 15:24:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1062', 'admin', '1', '127.0.0.1', '2014-10-26 15:34:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1063', 'admin', '1', '127.0.0.1', '2014-10-26 15:43:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1064', 'admin', '1', '127.0.0.1', '2014-10-26 15:45:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1065', 'admin', '1', '127.0.0.1', '2014-10-26 15:46:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1066', 'admin', '1', '127.0.0.1', '2014-10-26 15:51:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1067', 'admin', '1', '127.0.0.1', '2014-10-26 15:52:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1068', 'admin', '1', '127.0.0.1', '2014-10-26 16:12:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1069', 'admin', '1', '127.0.0.1', '2014-10-26 17:39:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1070', 'admin', '1', '127.0.0.1', '2014-10-26 17:48:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1071', 'admin', '1', '127.0.0.1', '2014-10-26 18:00:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1072', 'admin', '1', '127.0.0.1', '2014-10-26 18:04:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1073', 'admin', '1', '127.0.0.1', '2014-10-26 19:04:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1074', 'admin', '1', '127.0.0.1', '2014-10-26 20:30:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1075', 'admin', '1', '127.0.0.1', '2014-10-26 21:28:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1076', 'admin', '1', '127.0.0.1', '2014-10-26 21:28:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1077', 'admin', '1', '127.0.0.1', '2014-10-26 21:41:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1078', 'admin', '1', '127.0.0.1', '2014-10-26 21:55:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1079', 'admin', '1', '127.0.0.1', '2014-10-26 22:22:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1080', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 09:30:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1081', 'admin', '1', '127.0.0.1', '2014-10-27 09:32:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1082', 'admin', '1', '127.0.0.1', '2014-10-27 09:36:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1083', 'admin', '1', '127.0.0.1', '2014-10-27 09:41:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1084', 'admin', '1', '127.0.0.1', '2014-10-27 10:39:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1085', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 10:52:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1086', 'admin', '1', '127.0.0.1', '2014-10-27 11:08:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1087', 'admin', '1', '127.0.0.1', '2014-10-27 11:10:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1088', 'admin', '1', '127.0.0.1', '2014-10-27 11:12:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1089', 'admin', '1', '127.0.0.1', '2014-10-27 11:33:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1090', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 11:49:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1091', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 12:29:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1092', 'admin', '1', '127.0.0.1', '2014-10-27 12:38:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1093', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 12:40:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1094', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 12:40:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1095', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 12:54:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1096', 'admin', '1', '127.0.0.1', '2014-10-27 13:17:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1097', 'admin', '1', '127.0.0.1', '2014-10-27 13:45:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1098', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 14:37:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1099', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 17:14:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1100', 'admin', '1', '127.0.0.1', '2014-10-27 17:34:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1101', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 19:44:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1102', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-27 19:45:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1103', 'admin', '1', '127.0.0.1', '2014-10-27 19:51:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1104', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-28 09:58:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1105', 'admin', '1', '127.0.0.1', '2014-10-28 10:05:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1106', 'admin', '1', '127.0.0.1', '2014-10-28 10:37:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1107', 'admin', '1', '127.0.0.1', '2014-10-28 11:21:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1108', 'admin', '1', '127.0.0.1', '2014-10-28 12:46:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1109', 'admin', '1', '127.0.0.1', '2014-10-28 12:50:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1110', 'admin', '1', '127.0.0.1', '2014-10-28 12:54:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1111', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-28 13:37:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1112', 'admin', '1', '127.0.0.1', '2014-10-28 13:50:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1113', 'admin', '1', '127.0.0.1', '2014-10-28 14:04:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1114', 'admin', '1', '127.0.0.1', '2014-10-28 14:25:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1115', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-28 15:12:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1116', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-28 15:38:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1117', 'admin', '1', '127.0.0.1', '2014-10-28 15:52:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1118', 'admin', '1', '127.0.0.1', '2014-10-28 17:30:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1119', 'admin', '1', '127.0.0.1', '2014-10-28 17:31:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1120', 'admin', '1', '127.0.0.1', '2014-10-28 17:59:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1121', 'admin', '1', '127.0.0.1', '2014-10-28 18:02:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1122', 'admin', '1', '127.0.0.1', '2014-10-28 18:17:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1123', 'admin', '1', '127.0.0.1', '2014-10-28 18:25:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1124', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-28 18:25:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1125', 'admin', '1', '127.0.0.1', '2014-10-28 18:27:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1126', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-28 18:29:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1127', 'admin', '1', '127.0.0.1', '2014-10-28 18:38:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1128', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-28 19:31:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1129', 'admin', '1', '127.0.0.1', '2014-10-28 21:33:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1130', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 09:47:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1131', 'admin', '1', '127.0.0.1', '2014-10-29 09:51:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1132', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 11:26:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1133', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 12:09:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1134', 'admin', '1', '127.0.0.1', '2014-10-29 13:03:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1135', 'admin', '1', '127.0.0.1', '2014-10-29 13:08:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1136', 'admin', '1', '127.0.0.1', '2014-10-29 13:20:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1137', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 13:46:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1138', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 13:46:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1139', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 13:46:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1140', 'admin', '1', '127.0.0.1', '2014-10-29 14:28:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1141', 'admin', '1', '127.0.0.1', '2014-10-29 14:52:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1142', 'admin', '1', '127.0.0.1', '2014-10-29 15:07:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1143', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 15:24:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1144', 'admin', '1', '127.0.0.1', '2014-10-29 17:00:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1145', 'admin', '1', '127.0.0.1', '2014-10-29 18:42:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1146', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 18:44:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1147', 'admin', '1', '127.0.0.1', '2014-10-29 19:19:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1148', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 19:37:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1149', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 19:46:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1150', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 20:33:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1151', 'admin', '1', '127.0.0.1', '2014-10-29 20:46:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1152', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 21:02:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1153', 'admin', '1', '127.0.0.1', '2014-10-29 21:11:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1154', 'admin', '1', '127.0.0.1', '2014-10-29 21:13:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1155', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 21:15:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1156', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 21:16:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1157', 'admin', '1', '127.0.0.1', '2014-10-29 21:17:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1158', 'admin', '1', '127.0.0.1', '2014-10-29 21:21:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1159', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 21:22:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1160', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 21:28:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1161', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 21:29:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1162', 'admin', '1', '127.0.0.1', '2014-10-29 21:33:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1163', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-29 21:35:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1164', 'admin', '1', '127.0.0.1', '2014-10-29 21:48:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1165', 'admin', '1', '127.0.0.1', '2014-10-29 22:12:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1166', 'admin', '1', '127.0.0.1', '2014-10-29 22:15:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1167', 'admin', '1', '127.0.0.1', '2014-10-30 09:32:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1168', 'admin', '1', '127.0.0.1', '2014-10-30 09:51:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1169', 'admin', '1', '127.0.0.1', '2014-10-30 10:31:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1170', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-30 10:47:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1171', 'admin', '1', '127.0.0.1', '2014-10-30 10:49:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1172', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-30 10:51:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1173', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-30 10:59:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1174', 'admin', '1', '127.0.0.1', '2014-10-30 11:27:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1175', 'admin', '1', '127.0.0.1', '2014-10-30 12:15:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1176', 'admin', '1', '127.0.0.1', '2014-10-30 12:25:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1177', 'admin', '1', '127.0.0.1', '2014-10-30 12:33:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1178', 'admin', '1', '127.0.0.1', '2014-10-30 12:51:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1179', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-30 13:50:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1180', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-30 13:53:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1181', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-30 14:36:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1182', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-30 17:36:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1183', 'admin', '1', '127.0.0.1', '2014-10-30 19:08:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1184', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-31 09:54:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1185', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-31 10:04:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1186', 'admin', '1', '127.0.0.1', '2014-10-31 10:53:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1187', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-31 14:01:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1188', 'admin', '1', '127.0.0.1', '2014-10-31 14:54:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1189', 'admin', '1', '127.0.0.1', '2014-10-31 15:02:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1190', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-31 15:37:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1191', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-31 18:39:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1192', 'admin', '1', '127.0.0.1', '2014-10-31 20:20:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1193', 'admin', '1', '127.0.0.1', '2014-10-31 20:33:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1194', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-31 20:36:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1195', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-10-31 20:37:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1196', 'admin', '1', '127.0.0.1', '2014-10-31 20:45:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1197', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-03 09:21:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1198', 'admin', '1', '127.0.0.1', '2014-11-03 09:21:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1199', 'admin', '1', '127.0.0.1', '2014-11-03 11:12:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1200', 'admin', '1', '127.0.0.1', '2014-11-03 11:29:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1201', 'admin', '1', '127.0.0.1', '2014-11-03 11:38:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1202', 'admin', '1', '127.0.0.1', '2014-11-03 12:12:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1203', 'admin', '1', '127.0.0.1', '2014-11-03 12:22:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1204', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-03 15:00:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1205', 'admin', '1', '127.0.0.1', '2014-11-03 15:30:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1206', 'admin', '1', '127.0.0.1', '2014-11-03 15:31:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1207', 'admin', '1', '127.0.0.1', '2014-11-03 15:32:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1208', 'admin', '1', '127.0.0.1', '2014-11-03 15:34:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1209', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-03 16:00:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1210', 'admin', '1', '127.0.0.1', '2014-11-03 16:07:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1211', 'admin', '1', '127.0.0.1', '2014-11-03 16:09:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1212', 'admin', '1', '127.0.0.1', '2014-11-03 16:10:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1213', 'admin', '1', '127.0.0.1', '2014-11-03 16:14:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1214', 'admin', '1', '127.0.0.1', '2014-11-03 16:16:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1215', 'admin', '1', '127.0.0.1', '2014-11-03 16:19:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1216', 'admin', '1', '127.0.0.1', '2014-11-03 16:24:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1217', 'admin', '1', '127.0.0.1', '2014-11-03 16:25:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1218', 'admin', '1', '127.0.0.1', '2014-11-03 17:58:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1219', 'admin', '1', '127.0.0.1', '2014-11-03 20:22:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1220', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-04 09:26:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1221', 'admin', '1', '127.0.0.1', '2014-11-04 09:41:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1222', 'admin', '1', '127.0.0.1', '2014-11-04 10:05:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1223', 'admin', '1', '127.0.0.1', '2014-11-04 10:46:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1224', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-04 11:04:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1225', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-04 11:52:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1226', 'admin', '1', '127.0.0.1', '2014-11-04 11:57:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1227', 'admin', '1', '127.0.0.1', '2014-11-04 11:59:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1228', 'admin', '1', '127.0.0.1', '2014-11-05 16:11:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1229', 'admin', '1', '127.0.0.1', '2014-11-05 16:14:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1230', 'admin', '1', '127.0.0.1', '2014-11-05 16:29:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1231', 'admin', '1', '127.0.0.1', '2014-11-05 16:35:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1232', 'admin', '1', '127.0.0.1', '2014-11-05 16:37:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1233', 'admin', '1', '127.0.0.1', '2014-11-05 16:39:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1234', 'admin', '1', '127.0.0.1', '2014-11-05 16:45:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1235', 'admin', '1', '127.0.0.1', '2014-11-05 20:55:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1236', 'admin', '1', '127.0.0.1', '2014-11-05 20:56:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1237', 'admin', '1', '127.0.0.1', '2014-11-05 21:08:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1238', 'admin', '1', '127.0.0.1', '2014-11-05 21:28:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1239', 'admin', '1', '127.0.0.1', '2014-11-06 10:03:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1240', 'admin', '1', '127.0.0.1', '2014-11-06 11:46:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1241', 'admin', '1', '127.0.0.1', '2014-11-06 12:14:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1242', 'admin', '1', '127.0.0.1', '2014-11-06 14:23:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1243', 'admin', '1', '127.0.0.1', '2014-11-06 14:38:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1244', 'admin', '1', '127.0.0.1', '2014-11-06 14:48:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1245', 'admin', '1', '127.0.0.1', '2014-11-06 15:12:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1246', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-06 15:16:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1247', 'admin', '1', '127.0.0.1', '2014-11-06 15:24:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1248', 'admin', '1', '127.0.0.1', '2014-11-06 16:06:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1249', 'admin', '1', '127.0.0.1', '2014-11-06 16:11:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1250', 'admin', '1', '127.0.0.1', '2014-11-06 16:55:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1251', 'admin', '1', '127.0.0.1', '2014-11-06 17:22:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1252', 'admin', '1', '127.0.0.1', '2014-11-06 18:26:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1253', 'admin', '1', '127.0.0.1', '2014-11-06 20:43:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1254', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-06 20:43:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1255', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-06 21:17:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1256', 'admin', '1', '127.0.0.1', '2014-11-08 09:15:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1257', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-08 09:59:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1258', 'admin', '1', '127.0.0.1', '2014-11-08 10:23:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1259', 'admin', '1', '127.0.0.1', '2014-11-08 10:32:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1260', 'admin', '1', '127.0.0.1', '2014-11-08 10:56:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1261', 'admin', '1', '127.0.0.1', '2014-11-08 11:10:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1262', 'admin', '1', '127.0.0.1', '2014-11-08 11:16:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1263', 'admin', '1', '127.0.0.1', '2014-11-08 11:19:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1264', 'admin', '1', '127.0.0.1', '2014-11-08 11:23:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1265', 'admin', '1', '127.0.0.1', '2014-11-08 11:26:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1266', 'admin', '1', '127.0.0.1', '2014-11-08 11:28:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1267', 'admin', '1', '127.0.0.1', '2014-11-08 11:31:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1268', 'admin', '1', '127.0.0.1', '2014-11-08 11:36:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1269', 'admin', '1', '127.0.0.1', '2014-11-08 11:38:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1270', 'admin', '1', '127.0.0.1', '2014-11-08 11:41:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1271', 'admin', '1', '127.0.0.1', '2014-11-08 11:49:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1272', 'admin', '1', '127.0.0.1', '2014-11-08 12:53:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1273', 'admin', '1', '127.0.0.1', '2014-11-08 13:22:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1274', 'admin', '1', '127.0.0.1', '2014-11-08 13:53:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1275', 'admin', '1', '127.0.0.1', '2014-11-10 10:17:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1276', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-10 10:38:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1277', 'admin', '1', '127.0.0.1', '2014-11-10 11:13:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1278', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-10 14:28:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1279', 'admin', '1', '127.0.0.1', '2014-11-10 14:52:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1280', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-10 17:44:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1281', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-10 20:27:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1282', 'admin', '1', '127.0.0.1', '2014-11-11 12:28:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1283', 'admin', '1', '127.0.0.1', '2014-11-11 13:47:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1284', 'admin', '1', '127.0.0.1', '2014-11-11 15:11:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1285', 'admin', '1', '127.0.0.1', '2014-11-11 16:42:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1286', 'admin', '1', '127.0.0.1', '2014-11-11 17:11:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1287', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-11 19:29:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1288', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-11 20:36:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1289', 'admin', '1', '127.0.0.1', '2014-11-11 21:08:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1290', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-11 21:09:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1291', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-11 21:56:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1292', 'test1', '1', '0:0:0:0:0:0:0:1', '2014-11-11 22:03:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1293', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-11 22:04:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1294', 'admin', '1', '127.0.0.1', '2014-11-12 09:41:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1295', 'admin', '1', '127.0.0.1', '2014-11-12 10:03:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1296', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-12 10:23:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1297', 'test2', '1', '0:0:0:0:0:0:0:1', '2014-11-12 10:24:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1298', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-12 10:25:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1299', 'test2', '3', '0:0:0:0:0:0:0:1', '2014-11-12 10:26:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1300', 'test2', '3', '0:0:0:0:0:0:0:1', '2014-11-12 10:33:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1301', 'admin', '1', '127.0.0.1', '2014-11-12 10:56:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1302', 'admin', '1', '127.0.0.1', '2014-11-12 16:34:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1303', 'admin', '1', '127.0.0.1', '2014-11-12 18:12:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1304', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-12 20:03:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1305', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-12 21:31:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1306', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-14 09:58:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1307', 'test2', '1', '0:0:0:0:0:0:0:1', '2014-11-14 09:59:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1308', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-14 09:59:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1309', 'test2', '1', '0:0:0:0:0:0:0:1', '2014-11-14 09:59:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1310', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-14 09:59:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1311', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-14 11:21:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1312', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-14 11:48:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1313', 'admin', '1', '127.0.0.1', '2014-11-15 11:00:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1314', 'admin', '1', '127.0.0.1', '2014-11-15 11:57:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1315', 'admin', '1', '127.0.0.1', '2014-11-15 14:56:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1316', 'admin', '1', '127.0.0.1', '2014-11-15 15:03:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1317', 'admin', '1', '127.0.0.1', '2014-11-15 15:48:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1318', 'admin', '1', '127.0.0.1', '2014-11-15 15:57:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1319', 'admin', '1', '127.0.0.1', '2014-11-15 16:01:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1320', 'admin', '1', '127.0.0.1', '2014-11-15 16:02:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1321', 'admin', '1', '127.0.0.1', '2014-11-15 16:06:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1322', 'admin', '1', '127.0.0.1', '2014-11-15 16:13:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1323', 'admin', '1', '127.0.0.1', '2014-11-15 16:23:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1324', 'admin', '1', '127.0.0.1', '2014-11-15 16:25:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1325', 'admin', '1', '127.0.0.1', '2014-11-15 16:28:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1326', 'admin', '1', '127.0.0.1', '2014-11-15 16:47:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1327', 'admin', '1', '127.0.0.1', '2014-11-15 16:53:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1328', 'admin', '3', '127.0.0.1', '2014-11-15 17:01:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1329', 'admin', '3', '127.0.0.1', '2014-11-15 17:01:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1330', 'admin', '1', '127.0.0.1', '2014-11-15 17:02:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1331', 'admin', '1', '127.0.0.1', '2014-11-15 17:03:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1332', 'admin', '1', '127.0.0.1', '2014-11-15 17:06:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1333', 'admin', '1', '127.0.0.1', '2014-11-15 17:14:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1334', 'admin', '1', '127.0.0.1', '2014-11-15 17:17:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1335', 'admin', '1', '127.0.0.1', '2014-11-15 17:21:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1336', 'admin', '1', '127.0.0.1', '2014-11-15 17:42:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1337', 'admin', '1', '127.0.0.1', '2014-11-15 17:44:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1338', 'admin', '3', '127.0.0.1', '2014-11-15 17:45:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1339', 'admin', '3', '127.0.0.1', '2014-11-15 17:45:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1340', 'admin', '1', '127.0.0.1', '2014-11-15 17:45:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1341', 'admin', '1', '127.0.0.1', '2014-11-15 19:07:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1342', 'admin', '1', '127.0.0.1', '2014-11-15 19:41:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1343', 'admin', '1', '127.0.0.1', '2014-11-15 20:07:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1344', 'admin', '1', '127.0.0.1', '2014-11-15 20:29:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1345', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-11-16 11:44:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1346', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-11-16 11:44:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1347', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-11-16 11:44:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1348', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-11-16 11:44:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1349', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-11-16 11:44:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1350', 'admin', '3', '0:0:0:0:0:0:0:1', '2014-11-16 11:44:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1351', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-16 11:45:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1352', 'admin', '1', '127.0.0.1', '2014-11-16 17:07:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1353', 'admin', '1', '127.0.0.1', '2014-11-16 17:49:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1354', 'admin', '1', '127.0.0.1', '2014-11-16 18:09:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1355', 'admin', '1', '127.0.0.1', '2014-11-16 18:23:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1356', 'admin', '1', '127.0.0.1', '2014-11-16 18:25:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1357', 'admin', '1', '127.0.0.1', '2014-11-16 18:31:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1358', 'admin', '1', '127.0.0.1', '2014-11-16 18:46:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1359', 'admin', '1', '127.0.0.1', '2014-11-16 18:49:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1360', 'admin', '1', '127.0.0.1', '2014-11-16 18:53:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1361', 'admin', '1', '127.0.0.1', '2014-11-16 19:19:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1362', 'admin', '1', '127.0.0.1', '2014-11-16 19:29:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1363', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-16 20:24:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1364', 'admin', '1', '127.0.0.1', '2014-11-17 10:13:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1365', 'admin', '1', '127.0.0.1', '2014-11-17 11:35:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1366', 'test', '3', '0:0:0:0:0:0:0:1', '2014-11-17 14:11:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1367', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-17 14:11:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1368', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-17 15:46:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1369', 'admin', '1', '127.0.0.1', '2014-11-17 15:53:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1370', 'admin', '1', '127.0.0.1', '2014-11-17 15:56:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1371', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-17 16:08:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1372', 'admin', '1', '127.0.0.1', '2014-11-18 18:19:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1373', 'admin', '1', '127.0.0.1', '2014-11-18 18:26:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1374', 'admin', '1', '127.0.0.1', '2014-11-18 18:28:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1375', 'admin', '1', '127.0.0.1', '2014-11-19 17:26:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1376', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-19 21:49:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1377', 'admin', '1', '127.0.0.1', '2014-11-20 21:25:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1378', 'admin', '1', '127.0.0.1', '2014-11-20 21:31:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1379', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-20 21:35:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1380', 'admin', '1', '127.0.0.1', '2014-11-22 09:34:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1381', 'admin', '1', '127.0.0.1', '2014-11-22 10:32:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1382', 'admin', '1', '127.0.0.1', '2014-11-22 10:36:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1383', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-22 12:01:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1384', 'admin', '1', '127.0.0.1', '2014-11-22 12:12:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1385', 'admin', '1', '127.0.0.1', '2014-11-22 22:01:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1386', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-24 15:47:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1387', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-24 18:21:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1388', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-25 10:18:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1389', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-25 10:20:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1390', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-26 10:22:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1391', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-26 10:27:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1392', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-28 21:45:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1393', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-29 09:39:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1394', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-29 10:36:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1395', 'admin', '1', '127.0.0.1', '2014-11-29 13:24:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1396', 'admin', '1', '127.0.0.1', '2014-11-29 14:20:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1397', 'admin', '1', '127.0.0.1', '2014-11-29 15:19:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1398', 'admin', '1', '127.0.0.1', '2014-11-29 15:27:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1399', 'admin', '1', '127.0.0.1', '2014-11-29 15:55:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1400', 'admin', '1', '127.0.0.1', '2014-11-29 16:07:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1401', 'admin', '1', '127.0.0.1', '2014-11-29 16:07:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1402', 'admin', '1', '127.0.0.1', '2014-11-29 16:08:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1403', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-11-29 16:11:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1404', 'admin', '1', '127.0.0.1', '2014-11-29 16:14:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1405', 'admin', '1', '127.0.0.1', '2014-11-29 16:21:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1406', 'admin', '1', '127.0.0.1', '2014-11-29 16:27:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1407', 'admin', '1', '127.0.0.1', '2014-11-29 17:37:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1408', 'admin', '1', '127.0.0.1', '2014-11-29 17:41:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1409', 'admin', '1', '127.0.0.1', '2014-11-29 17:45:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1410', 'admin', '1', '127.0.0.1', '2014-11-30 10:33:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1411', 'admin', '1', '127.0.0.1', '2014-11-30 11:05:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1412', 'admin', '1', '127.0.0.1', '2014-11-30 15:01:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1413', 'admin', '1', '127.0.0.1', '2014-11-30 15:06:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1414', 'admin', '1', '127.0.0.1', '2014-11-30 15:07:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1415', 'admin', '1', '127.0.0.1', '2014-11-30 15:09:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1416', 'admin', '1', '127.0.0.1', '2014-11-30 15:24:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1417', 'admin', '1', '127.0.0.1', '2014-11-30 15:24:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1418', 'admin', '1', '127.0.0.1', '2014-11-30 15:35:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1419', 'admin', '1', '127.0.0.1', '2014-11-30 15:39:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1420', 'admin', '1', '127.0.0.1', '2014-11-30 16:06:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1421', 'admin', '1', '127.0.0.1', '2014-11-30 16:56:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1422', 'admin', '1', '127.0.0.1', '2014-11-30 17:10:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1423', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-01 14:51:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1424', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-03 19:26:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1425', 'admin', '1', '127.0.0.1', '2014-12-04 11:34:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1426', 'admin', '1', '127.0.0.1', '2014-12-04 11:39:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1427', 'admin', '1', '127.0.0.1', '2014-12-04 11:41:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1428', 'admin', '1', '127.0.0.1', '2014-12-04 11:52:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1429', 'admin', '1', '127.0.0.1', '2014-12-04 14:29:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1430', 'admin', '1', '127.0.0.1', '2014-12-04 14:36:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1431', 'admin', '1', '127.0.0.1', '2014-12-04 16:21:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1432', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-05 09:45:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1433', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-05 15:43:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1434', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-05 17:49:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1435', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-05 19:33:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1436', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 10:25:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1437', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 10:29:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1438', 'admin', '1', '127.0.0.1', '2014-12-07 11:33:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1439', 'admin', '1', '127.0.0.1', '2014-12-07 11:36:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1440', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 12:31:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1441', 'admin', '1', '127.0.0.1', '2014-12-07 13:01:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1442', 'admin', '1', '127.0.0.1', '2014-12-07 13:13:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1443', '1234', '2', '127.0.0.1', '2014-12-07 13:46:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1444', 'admin', '1', '127.0.0.1', '2014-12-07 13:51:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1445', 'admin', '1', '127.0.0.1', '2014-12-07 13:53:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1446', 'admin', '1', '127.0.0.1', '2014-12-07 14:31:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1447', 'admin', '1', '127.0.0.1', '2014-12-07 14:36:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1448', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 15:29:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1449', 'admin', '1', '127.0.0.1', '2014-12-07 15:34:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1450', 'admin', '1', '127.0.0.1', '2014-12-07 15:40:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1451', 'admin', '1', '127.0.0.1', '2014-12-07 15:49:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1452', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 18:03:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1453', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 18:05:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1454', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 18:11:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1455', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-07 20:56:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1456', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-09 14:07:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1457', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-09 17:07:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1458', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-09 20:43:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1459', 'admin', '1', '127.0.0.1', '2014-12-15 11:09:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1460', 'admin', '1', '127.0.0.1', '2014-12-15 11:17:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1461', 'admin', '1', '127.0.0.1', '2014-12-15 11:26:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1462', 'admin', '1', '127.0.0.1', '2014-12-15 11:30:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1463', 'admin', '1', '127.0.0.1', '2014-12-15 16:31:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1464', 'admin', '1', '127.0.0.1', '2014-12-15 16:50:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1465', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-15 21:18:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1466', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-15 21:31:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1467', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-17 19:29:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1468', 'admin', '1', '127.0.0.1', '2014-12-18 15:06:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1469', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-18 15:18:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1470', 'admin', '1', '127.0.0.1', '2014-12-18 15:55:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1471', 'admin', '1', '127.0.0.1', '2014-12-18 16:11:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1472', 'admin', '1', '127.0.0.1', '2014-12-18 16:16:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1473', 'admin', '1', '127.0.0.1', '2014-12-18 17:18:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1474', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-19 21:03:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1475', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-19 21:18:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1476', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-19 21:50:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1477', 'admin', '1', '127.0.0.1', '2014-12-20 10:35:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1478', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-21 17:40:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1479', 'admin', '1', '192.168.16.114', '2014-12-21 18:00:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1480', 'admin', '1', '192.168.16.114', '2014-12-21 18:08:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1481', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-21 21:31:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1482', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-21 21:57:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1483', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-21 21:58:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1484', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-21 21:58:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1485', 'admin', '1', '0:0:0:0:0:0:0:1', '2014-12-22 15:03:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1486', 'admin', '1', '127.0.0.1', '2014-12-24 10:56:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1487', 'admin', '1', '127.0.0.1', '2014-12-24 11:01:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1488', 'admin', '1', '127.0.0.1', '2014-12-26 13:23:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1489', 'admin', '1', '127.0.0.1', '2014-12-26 13:40:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1490', 'admin', '1', '127.0.0.1', '2014-12-26 13:43:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1491', 'admin', '1', '127.0.0.1', '2014-12-26 16:30:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1492', 'admin', '1', '127.0.0.1', '2014-12-27 12:00:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1493', 'admin', '1', '127.0.0.1', '2014-12-27 15:43:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1494', 'admin', '1', '127.0.0.1', '2014-12-27 16:12:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1495', 'admin', '1', '127.0.0.1', '2014-12-27 16:20:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1496', 'admin', '1', '127.0.0.1', '2014-12-28 14:27:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1497', 'admin', '1', '127.0.0.1', '2014-12-28 15:28:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1498', 'admin', '1', '127.0.0.1', '2014-12-28 15:32:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1499', 'admin', '1', '127.0.0.1', '2014-12-28 18:04:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1500', 'admin', '1', '127.0.0.1', '2014-12-29 11:10:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1501', 'admin', '1', '127.0.0.1', '2014-12-29 11:52:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1502', 'admin', '1', '127.0.0.1', '2014-12-29 13:15:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1503', 'admin', '1', '127.0.0.1', '2014-12-29 13:27:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1504', 'admin', '1', '127.0.0.1', '2014-12-29 14:05:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1505', 'admin', '1', '127.0.0.1', '2014-12-29 14:17:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1506', 'admin', '1', '127.0.0.1', '2014-12-29 14:20:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1507', 'admin', '1', '127.0.0.1', '2014-12-29 14:29:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1508', 'admin', '1', '127.0.0.1', '2014-12-29 14:52:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1509', 'admin', '1', '127.0.0.1', '2014-12-29 15:03:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1510', 'admin', '1', '127.0.0.1', '2014-12-29 15:08:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1511', 'admin', '1', '127.0.0.1', '2014-12-29 15:12:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1512', 'admin', '1', '127.0.0.1', '2014-12-29 15:16:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1513', 'admin', '1', '127.0.0.1', '2014-12-29 15:18:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1514', 'admin', '1', '127.0.0.1', '2014-12-29 15:37:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1515', 'admin', '1', '127.0.0.1', '2014-12-29 15:49:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1516', 'admin', '1', '127.0.0.1', '2014-12-29 15:50:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1517', 'admin', '1', '127.0.0.1', '2014-12-29 15:52:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1518', 'admin', '1', '127.0.0.1', '2014-12-29 16:06:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1519', 'admin', '1', '127.0.0.1', '2014-12-29 16:07:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1520', 'admin', '1', '127.0.0.1', '2014-12-29 16:13:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1521', 'admin', '1', '127.0.0.1', '2014-12-29 16:20:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1522', 'admin', '1', '127.0.0.1', '2014-12-29 16:22:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1523', 'admin', '1', '127.0.0.1', '2014-12-29 16:25:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1524', 'admin', '1', '127.0.0.1', '2014-12-29 17:09:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1525', 'admin', '1', '127.0.0.1', '2014-12-29 17:10:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1526', 'admin', '1', '127.0.0.1', '2014-12-29 17:11:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1527', 'admin', '1', '127.0.0.1', '2014-12-29 17:41:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1528', 'admin', '1', '127.0.0.1', '2014-12-29 17:44:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1529', 'admin', '1', '127.0.0.1', '2014-12-29 17:46:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1530', 'admin', '1', '127.0.0.1', '2014-12-29 17:53:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1531', 'admin', '1', '127.0.0.1', '2014-12-30 10:04:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1532', 'admin', '1', '127.0.0.1', '2014-12-30 11:39:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1533', 'admin', '1', '127.0.0.1', '2014-12-30 12:09:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1534', 'admin', '1', '127.0.0.1', '2014-12-30 12:13:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1535', 'admin', '1', '127.0.0.1', '2014-12-30 14:33:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1536', 'admin', '1', '127.0.0.1', '2014-12-30 15:06:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1537', 'admin', '1', '127.0.0.1', '2014-12-30 16:51:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1538', 'admin', '1', '127.0.0.1', '2014-12-30 16:53:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1539', 'admin', '1', '127.0.0.1', '2014-12-30 16:54:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1540', 'admin', '1', '127.0.0.1', '2014-12-30 17:02:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1541', 'admin', '1', '127.0.0.1', '2014-12-30 17:05:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1542', 'admin', '1', '127.0.0.1', '2014-12-30 17:07:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1543', 'admin', '1', '127.0.0.1', '2014-12-30 17:09:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1544', 'admin', '1', '127.0.0.1', '2014-12-30 17:31:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1545', 'admin', '1', '127.0.0.1', '2014-12-30 18:13:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1546', 'admin', '1', '127.0.0.1', '2014-12-31 10:21:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1547', 'admin', '1', '127.0.0.1', '2014-12-31 10:59:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1548', 'admin', '1', '127.0.0.1', '2014-12-31 11:15:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1549', 'admin', '1', '127.0.0.1', '2014-12-31 12:48:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1550', 'admin', '1', '127.0.0.1', '2014-12-31 13:03:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1551', 'admin', '1', '127.0.0.1', '2014-12-31 13:05:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1552', 'admin', '1', '127.0.0.1', '2014-12-31 14:06:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1553', 'admin', '1', '127.0.0.1', '2014-12-31 14:08:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1554', 'admin', '1', '127.0.0.1', '2014-12-31 14:11:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1555', 'admin', '1', '127.0.0.1', '2014-12-31 15:31:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1556', 'admin', '1', '127.0.0.1', '2015-01-06 15:38:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1557', 'admin', '1', '127.0.0.1', '2015-01-06 15:40:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1558', 'admin', '1', '127.0.0.1', '2015-01-06 15:41:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1559', 'admin', '1', '127.0.0.1', '2015-01-06 15:43:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1560', 'admin', '1', '127.0.0.1', '2015-01-06 15:53:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1561', 'admin', '1', '127.0.0.1', '2015-01-06 15:57:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1562', 'admin', '1', '127.0.0.1', '2015-01-07 14:50:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1563', 'admin', '1', '127.0.0.1', '2015-01-07 14:54:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1564', 'admin', '1', '127.0.0.1', '2015-01-07 15:00:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1565', 'admin', '1', '127.0.0.1', '2015-01-07 15:01:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1566', 'admin', '1', '127.0.0.1', '2015-01-07 15:09:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1567', 'admin', '1', '127.0.0.1', '2015-01-07 15:12:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1568', 'admin', '1', '127.0.0.1', '2015-01-07 17:05:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1569', 'admin', '1', '127.0.0.1', '2015-01-07 17:15:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1570', 'admin', '1', '127.0.0.1', '2015-01-07 20:15:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1571', 'admin', '1', '127.0.0.1', '2015-01-07 20:22:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1572', 'admin', '1', '127.0.0.1', '2015-01-08 14:49:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1573', 'admin', '1', '127.0.0.1', '2015-01-08 15:15:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1574', 'admin', '1', '127.0.0.1', '2015-01-08 15:20:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1575', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-09 02:50:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1576', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-09 02:57:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1577', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-09 03:32:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1578', 'admin', '1', '127.0.0.1', '2015-01-09 10:58:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1579', 'admin', '1', '127.0.0.1', '2015-01-09 18:57:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1580', 'admin', '1', '127.0.0.1', '2015-01-09 18:58:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1581', 'admin', '1', '127.0.0.1', '2015-01-09 19:11:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1582', 'admin', '1', '127.0.0.1', '2015-01-10 12:13:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1583', 'admin', '1', '127.0.0.1', '2015-01-10 13:56:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1584', 'admin', '1', '127.0.0.1', '2015-01-10 14:29:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1585', 'admin', '1', '127.0.0.1', '2015-01-12 10:55:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1586', 'admin', '1', '127.0.0.1', '2015-01-12 11:13:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1587', 'admin', '1', '127.0.0.1', '2015-01-12 11:31:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1588', 'admin', '1', '127.0.0.1', '2015-01-12 11:36:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1589', 'admin', '1', '127.0.0.1', '2015-01-12 14:51:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1590', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 15:24:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1591', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 15:40:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1592', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 16:51:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1593', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 16:52:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1594', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 16:54:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1595', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 16:56:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1596', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 17:01:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1597', 'admin', '1', '127.0.0.1', '2015-01-12 17:16:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1598', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 17:20:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1599', 'admin', '1', '127.0.0.1', '2015-01-12 17:20:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1600', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 17:20:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1601', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 17:22:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1602', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 17:24:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1603', 'admin', '1', '127.0.0.1', '2015-01-12 17:25:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1604', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 17:33:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1605', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 18:17:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1606', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 18:22:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1607', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 18:23:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1608', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 18:26:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1609', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 18:29:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1610', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 20:31:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1611', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 20:38:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1612', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 20:44:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1613', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 20:57:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1614', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 21:00:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1615', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-12 21:35:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1616', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-13 14:41:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1617', 'admin', '1', '127.0.0.1', '2015-01-13 16:59:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1618', 'admin', '1', '127.0.0.1', '2015-01-13 17:06:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1619', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-14 00:32:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1620', 'admin', '1', '127.0.0.1', '2015-01-15 11:45:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1621', 'admin', '1', '127.0.0.1', '2015-01-15 15:04:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1622', 'admin', '1', '127.0.0.1', '2015-01-16 10:59:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1623', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-18 12:48:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1624', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-18 15:48:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1625', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-18 17:06:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1626', 'admin', '1', '127.0.0.1', '2015-01-19 13:23:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1627', 'admin', '1', '127.0.0.1', '2015-01-19 13:39:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1628', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-01-25 14:43:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1629', 'admin', '1', '127.0.0.1', '2015-01-27 11:53:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1630', 'admin', '1', '127.0.0.1', '2015-01-27 15:26:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1631', 'admin', '1', '127.0.0.1', '2015-01-30 14:31:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1632', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-02-02 14:47:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1633', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-02-02 14:48:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1634', 'admin', '1', '127.0.0.1', '2015-02-02 17:08:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1635', 'admin', '1', '127.0.0.1', '2015-02-03 12:35:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1636', 'admin', '1', '127.0.0.1', '2015-02-03 12:45:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1637', 'admin', '1', '127.0.0.1', '2015-02-03 16:15:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1638', 'admin', '1', '127.0.0.1', '2015-02-03 16:15:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1639', 'admin', '1', '127.0.0.1', '2015-02-03 16:18:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1640', 'admin', '1', '127.0.0.1', '2015-02-03 17:19:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1641', 'admin', '1', '127.0.0.1', '2015-02-03 17:39:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1642', 'admin', '1', '127.0.0.1', '2015-02-03 17:43:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1643', 'admin', '1', '127.0.0.1', '2015-02-03 18:34:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1644', 'admin', '1', '127.0.0.1', '2015-02-03 19:18:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1645', 'admin', '1', '127.0.0.1', '2015-02-04 10:16:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1646', 'admin', '1', '127.0.0.1', '2015-02-04 10:25:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1647', 'admin', '1', '127.0.0.1', '2015-02-04 23:28:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1648', 'admin', '1', '127.0.0.1', '2015-02-05 13:11:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1649', 'admin', '1', '127.0.0.1', '2015-02-05 13:12:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1650', 'admin', '1', '127.0.0.1', '2015-03-03 09:56:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1651', 'admin', '1', '127.0.0.1', '2015-03-03 10:48:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1652', 'admin', '1', '127.0.0.1', '2015-03-03 10:57:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1653', 'admin', '1', '127.0.0.1', '2015-03-03 14:24:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1654', 'admin', '1', '127.0.0.1', '2015-03-03 14:44:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1655', 'admin', '1', '127.0.0.1', '2015-03-03 15:31:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1656', 'admin', '1', '127.0.0.1', '2015-03-03 16:08:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1657', 'admin', '1', '127.0.0.1', '2015-03-03 16:40:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1658', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-03 17:37:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1659', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-03 17:52:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1660', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-03 17:57:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1661', 'admin', '1', '127.0.0.1', '2015-03-04 11:27:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1662', 'admin', '1', '127.0.0.1', '2015-03-04 11:30:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1663', 'admin', '1', '127.0.0.1', '2015-03-04 17:18:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1664', 'admin', '1', '127.0.0.1', '2015-03-04 19:18:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1665', 'admin', '1', '127.0.0.1', '2015-03-04 19:29:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1666', 'admin', '1', '127.0.0.1', '2015-03-05 12:05:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1667', 'admin', '1', '127.0.0.1', '2015-03-05 12:07:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1668', 'admin', '1', '127.0.0.1', '2015-03-05 12:10:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1669', 'admin', '1', '127.0.0.1', '2015-03-05 12:19:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1670', 'admin', '1', '127.0.0.1', '2015-03-05 12:25:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1671', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 11:37:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1672', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 11:39:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1673', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 11:50:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1674', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 11:53:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1675', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 13:00:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1676', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 13:02:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1677', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 13:05:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1678', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 13:17:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1679', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 13:42:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1680', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-07 13:45:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1681', 'admin', '1', '127.0.0.1', '2015-03-08 14:11:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1682', 'admin', '1', '127.0.0.1', '2015-03-08 14:21:21', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1683', 'admin', '1', '127.0.0.1', '2015-03-09 11:00:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1684', 'admin', '1', '127.0.0.1', '2015-03-09 11:02:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1685', 'admin', '1', '127.0.0.1', '2015-03-09 13:53:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1686', 'admin', '1', '127.0.0.1', '2015-03-09 14:07:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1687', 'admin', '1', '127.0.0.1', '2015-03-09 15:42:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1688', 'admin', '1', '127.0.0.1', '2015-03-09 15:57:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1689', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-10 17:53:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1690', 'test', '1', '0:0:0:0:0:0:0:1', '2015-03-10 17:56:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1691', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-10 17:56:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1692', 'test', '1', '0:0:0:0:0:0:0:1', '2015-03-10 17:56:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1693', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-10 17:57:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1694', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-10 17:58:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1695', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-11 09:50:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1696', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-11 11:04:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1697', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-11 13:39:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1698', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-11 15:29:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1699', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 10:49:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1700', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 10:50:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1701', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 13:09:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1702', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 13:13:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1703', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 13:55:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1704', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 13:56:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1705', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 13:58:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1706', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 14:01:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1707', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 14:02:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1708', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 14:04:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1709', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 14:07:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1710', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 14:08:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1711', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 14:12:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1712', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-12 14:17:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1713', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-14 11:00:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1714', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-14 11:38:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1715', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-14 16:57:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1716', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-14 16:59:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1717', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-14 17:04:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1718', 'admin', '3', '0:0:0:0:0:0:0:1', '2015-03-16 08:43:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1719', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-16 08:44:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1720', 'admin', '1', '127.0.0.1', '2015-03-17 11:46:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1721', 'admin', '1', '127.0.0.1', '2015-03-17 14:08:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1722', 'admin', '1', '127.0.0.1', '2015-03-17 14:12:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1723', 'admin', '1', '127.0.0.1', '2015-03-17 14:14:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1724', 'admin', '1', '127.0.0.1', '2015-03-17 15:43:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1725', 'admin', '1', '127.0.0.1', '2015-03-17 15:46:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1726', 'admin', '1', '127.0.0.1', '2015-03-17 16:01:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1727', 'admin', '1', '127.0.0.1', '2015-03-17 16:04:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1728', 'admin', '1', '127.0.0.1', '2015-03-17 16:04:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1729', 'admin', '1', '127.0.0.1', '2015-03-17 16:05:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1730', 'admin', '1', '127.0.0.1', '2015-03-17 16:16:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1731', 'admin', '1', '127.0.0.1', '2015-03-17 17:24:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1732', 'admin', '1', '127.0.0.1', '2015-03-18 20:23:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1733', 'admin', '1', '127.0.0.1', '2015-03-19 10:07:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1734', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 09:38:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1735', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 09:38:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1736', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 09:42:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1737', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 09:42:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1738', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 09:43:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1739', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 10:05:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1740', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 10:34:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1741', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 10:51:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1742', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 11:03:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1743', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 11:43:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1744', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 11:52:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1745', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 11:58:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1746', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 12:41:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1747', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 12:46:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1748', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 12:48:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1749', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 13:02:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1750', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 13:03:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1751', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 13:04:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1752', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 14:08:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1753', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-03-21 15:19:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1757', 'admin', '1', '192.168.1.110', '2015-03-24 10:56:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1758', 'admin', '1', '192.168.1.110', '2015-03-24 11:00:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1759', 'admin', '1', '192.168.1.110', '2015-03-24 11:16:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1760', 'admin', '1', '192.168.1.110', '2015-03-24 11:33:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1761', 'admin', '1', '192.168.1.110', '2015-03-24 12:16:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1762', 'admin', '1', '192.168.1.110', '2015-03-24 13:59:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1763', 'admin', '1', '192.168.1.110', '2015-03-24 15:47:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1764', 'admin', '1', '192.168.1.110', '2015-03-24 16:05:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1769', 'admin', '1', '192.168.1.110', '2015-03-25 13:34:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1770', 'admin', '1', '192.168.1.110', '2015-03-25 14:05:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1771', 'admin', '1', '192.168.1.110', '2015-03-25 15:50:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1772', 'admin', '1', '192.168.1.110', '2015-03-25 15:51:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1773', 'admin', '1', '192.168.1.110', '2015-03-25 16:21:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1774', 'admin', '1', '192.168.1.110', '2015-03-25 16:25:54', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1775', 'admin', '1', '192.168.1.110', '2015-03-25 16:32:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1776', 'admin', '1', '192.168.1.110', '2015-03-25 16:38:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1777', 'admin', '1', '192.168.1.110', '2015-03-26 09:09:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1778', 'admin', '1', '192.168.1.110', '2015-03-26 09:10:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1779', 'admin', '1', '127.0.0.1', '2015-03-26 09:29:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1780', 'admin', '1', '192.168.1.110', '2015-03-26 09:34:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1781', 'admin', '1', '192.168.1.110', '2015-03-26 09:56:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1782', 'admin', '1', '192.168.1.110', '2015-03-26 10:25:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1783', 'admin', '1', '192.168.1.110', '2015-03-26 11:02:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1784', 'admin', '1', '192.168.1.110', '2015-03-26 11:46:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1785', 'admin', '1', '192.168.1.110', '2015-03-26 11:47:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1786', 'admin', '1', '192.168.1.110', '2015-03-26 12:50:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1787', 'admin', '1', '192.168.1.110', '2015-03-26 12:50:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1788', 'admin', '1', '192.168.1.110', '2015-03-26 13:06:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1789', 'admin', '1', '192.168.1.110', '2015-03-26 14:19:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1790', 'admin', '1', '127.0.0.1', '2015-03-30 09:59:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1791', 'admin', '1', '127.0.0.1', '2015-03-30 11:11:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1792', 'admin', '3', '127.0.0.1', '2015-03-30 11:15:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1793', 'admin', '3', '127.0.0.1', '2015-03-30 11:15:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1794', 'admin', '1', '127.0.0.1', '2015-03-30 11:15:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1795', 'admin', '1', '127.0.0.1', '2015-03-30 11:16:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1796', 'admin', '1', '127.0.0.1', '2015-03-30 11:17:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1797', 'admin', '1', '127.0.0.1', '2015-03-30 11:18:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1798', 'admin', '1', '127.0.0.1', '2015-03-30 11:20:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1799', 'admin', '1', '127.0.0.1', '2015-03-30 12:27:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1800', 'admin', '1', '127.0.0.1', '2015-03-30 13:14:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1801', 'admin', '1', '127.0.0.1', '2015-03-30 14:01:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1802', 'admin', '1', '127.0.0.1', '2015-03-30 14:31:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1803', 'admin', '1', '127.0.0.1', '2015-03-30 16:40:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1804', 'admin', '1', '127.0.0.1', '2015-03-30 17:33:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1805', 'admin', '1', '127.0.0.1', '2015-03-30 17:42:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1806', 'admin', '3', '127.0.0.1', '2015-03-31 09:11:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1807', 'admin', '1', '127.0.0.1', '2015-03-31 09:11:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1808', 'admin', '1', '127.0.0.1', '2015-03-31 09:12:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1809', 'admin', '1', '127.0.0.1', '2015-03-31 09:44:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1810', 'admin', '1', '127.0.0.1', '2015-03-31 10:12:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1811', 'admin', '1', '127.0.0.1', '2015-03-31 10:13:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1812', 'admin', '1', '127.0.0.1', '2015-03-31 10:14:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1813', 'admin', '1', '127.0.0.1', '2015-03-31 10:44:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1814', 'admin', '1', '127.0.0.1', '2015-03-31 10:48:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1815', 'admin', '1', '127.0.0.1', '2015-03-31 13:08:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1816', 'admin', '1', '127.0.0.1', '2015-03-31 13:37:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1817', 'admin', '1', '127.0.0.1', '2015-03-31 14:00:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1818', 'admin', '1', '127.0.0.1', '2015-03-31 14:39:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1819', 'admin', '1', '127.0.0.1', '2015-03-31 14:49:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1820', 'admin', '1', '127.0.0.1', '2015-03-31 14:50:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1821', 'admin', '1', '127.0.0.1', '2015-03-31 14:58:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1822', 'admin', '1', '127.0.0.1', '2015-03-31 15:00:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1823', 'admin', '1', '127.0.0.1', '2015-03-31 15:00:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1824', 'admin', '1', '127.0.0.1', '2015-03-31 15:01:19', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1825', 'admin', '1', '127.0.0.1', '2015-04-01 09:16:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1826', 'admin', '1', '127.0.0.1', '2015-04-01 09:24:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1827', 'admin', '1', '127.0.0.1', '2015-04-01 10:26:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1828', 'admin', '1', '127.0.0.1', '2015-04-01 10:33:18', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1829', 'admin', '1', '127.0.0.1', '2015-04-01 10:53:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1830', 'admin', '1', '127.0.0.1', '2015-04-01 14:14:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1831', 'admin', '1', '127.0.0.1', '2015-04-01 14:52:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1832', 'admin', '1', '127.0.0.1', '2015-04-01 15:28:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1834', 'admin', '1', '127.0.0.1', '2015-04-01 17:30:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1835', 'admin', '1', '127.0.0.1', '2015-04-02 10:15:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1836', 'admin', '1', '127.0.0.1', '2015-04-02 12:20:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1837', 'admin', '1', '127.0.0.1', '2015-04-02 12:56:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1838', 'admin', '3', '127.0.0.1', '2015-04-02 13:04:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1839', 'admin', '1', '127.0.0.1', '2015-04-02 13:04:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1840', 'admin', '1', '192.168.1.22', '2015-04-02 14:24:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1841', 'admin', '1', '127.0.0.1', '2015-04-02 15:02:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1842', 'admin', '1', '127.0.0.1', '2015-04-03 09:14:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1843', 'admin', '1', '127.0.0.1', '2015-04-03 09:23:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1844', 'admin', '1', '127.0.0.1', '2015-04-03 12:13:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1845', 'admin', '1', '127.0.0.1', '2015-04-03 14:09:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1846', 'admin', '1', '127.0.0.1', '2015-04-03 15:26:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1847', 'admin', '1', '127.0.0.1', '2015-04-03 15:53:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1848', 'admin', '1', '127.0.0.1', '2015-04-03 16:13:01', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1849', 'admin', '1', '127.0.0.1', '2015-04-03 16:28:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1850', 'admin', '1', '127.0.0.1', '2015-04-03 16:59:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1851', 'admin', '1', '127.0.0.1', '2015-04-03 17:02:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1852', 'admin', '1', '127.0.0.1', '2015-04-07 09:18:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1853', 'admin', '1', '192.168.1.22', '2015-04-07 09:49:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1854', 'admin', '1', '127.0.0.1', '2015-04-07 09:58:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1855', 'admin', '1', '127.0.0.1', '2015-04-07 10:15:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1856', 'admin', '1', '127.0.0.1', '2015-04-07 10:23:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1857', 'admin', '1', '127.0.0.1', '2015-04-07 11:11:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1858', 'admin', '1', '127.0.0.1', '2015-04-07 12:55:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1859', 'admin', '1', '127.0.0.1', '2015-04-07 12:57:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1860', 'admin', '1', '127.0.0.1', '2015-04-07 13:04:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1861', 'admin', '1', '127.0.0.1', '2015-04-07 14:06:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1862', 'admin', '1', '127.0.0.1', '2015-04-07 14:35:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1863', 'admin', '1', '127.0.0.1', '2015-04-07 14:50:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1864', 'admin', '1', '127.0.0.1', '2015-04-07 17:43:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1866', 'admin', '1', '127.0.0.1', '2015-04-07 17:59:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1867', 'admin', '1', '127.0.0.1', '2015-04-07 18:03:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1868', 'admin', '1', '127.0.0.1', '2015-04-07 19:31:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1869', 'admin', '1', '127.0.0.1', '2015-04-08 09:36:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1870', 'admin', '1', '127.0.0.1', '2015-04-08 09:49:43', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1871', 'admin', '1', '192.168.1.23', '2015-04-08 11:35:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1872', 'admin', '1', '127.0.0.1', '2015-04-13 09:40:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1873', 'admin', '1', '127.0.0.1', '2015-04-13 11:04:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1874', 'admin', '1', '127.0.0.1', '2015-04-13 13:44:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1875', 'admin', '1', '127.0.0.1', '2015-04-13 14:59:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1876', 'admin', '1', '127.0.0.1', '2015-04-13 17:27:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1877', 'admin', '1', '127.0.0.1', '2015-04-14 10:07:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1878', 'admin', '1', '127.0.0.1', '2015-04-14 10:13:06', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1879', 'admin', '1', '127.0.0.1', '2015-04-14 10:36:11', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1880', 'admin', '1', '127.0.0.1', '2015-04-14 13:20:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1881', 'admin', '1', '127.0.0.1', '2015-04-14 14:41:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1882', 'admin', '1', '127.0.0.1', '2015-04-14 14:58:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1883', 'admin', '1', '127.0.0.1', '2015-04-14 16:14:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1884', 'admin', '1', '127.0.0.1', '2015-04-15 09:29:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1885', 'admin', '1', '127.0.0.1', '2015-04-15 13:19:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1886', 'admin', '1', '127.0.0.1', '2015-04-16 09:13:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1887', 'admin', '1', '127.0.0.1', '2015-04-16 09:29:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1888', 'admin', '1', '192.168.1.22', '2015-04-16 10:09:30', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1889', 'admin', '1', '192.168.1.22', '2015-04-16 11:26:52', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1890', 'admin', '1', '127.0.0.1', '2015-04-16 13:32:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1891', 'admin', '1', '127.0.0.1', '2015-04-16 15:03:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1892', 'admin', '1', '127.0.0.1', '2015-04-16 15:06:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1893', 'admin', '1', '127.0.0.1', '2015-04-16 16:58:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1894', 'admin', '1', '127.0.0.1', '2015-04-16 17:30:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1895', 'admin', '1', '127.0.0.1', '2015-04-16 19:13:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1896', 'admin', '1', '127.0.0.1', '2015-04-16 19:26:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1897', 'admin', '1', '127.0.0.1', '2015-04-16 19:30:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1898', 'admin', '1', '127.0.0.1', '2015-04-16 19:37:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1899', 'admin', '1', '127.0.0.1', '2015-04-16 19:38:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1900', 'admin', '1', '127.0.0.1', '2015-04-17 09:55:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1901', 'admin', '1', '127.0.0.1', '2015-04-17 10:07:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1902', 'admin', '1', '127.0.0.1', '2015-04-17 10:08:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1903', 'admin', '1', '127.0.0.1', '2015-04-17 10:12:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1904', 'admin', '1', '127.0.0.1', '2015-04-17 10:15:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1905', 'admin', '1', '127.0.0.1', '2015-04-17 10:18:42', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1906', 'admin', '1', '127.0.0.1', '2015-04-17 10:19:41', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1907', 'admin', '1', '127.0.0.1', '2015-04-17 10:20:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1908', 'admin', '1', '127.0.0.1', '2015-04-17 10:20:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1909', 'admin', '1', '127.0.0.1', '2015-04-17 10:26:05', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1910', 'admin', '1', '127.0.0.1', '2015-04-17 10:27:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1911', 'admin', '1', '127.0.0.1', '2015-04-17 10:46:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1912', 'admin', '1', '127.0.0.1', '2015-04-17 13:05:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1913', 'admin', '1', '127.0.0.1', '2015-04-17 13:06:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1914', 'admin', '1', '127.0.0.1', '2015-04-17 13:08:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1915', 'admin', '1', '127.0.0.1', '2015-04-17 13:11:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1916', 'admin', '1', '127.0.0.1', '2015-04-17 13:18:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1917', 'admin', '1', '127.0.0.1', '2015-04-17 13:35:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1918', 'admin', '1', '127.0.0.1', '2015-04-17 13:35:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1919', 'admin', '1', '127.0.0.1', '2015-04-17 13:43:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1920', 'admin', '1', '127.0.0.1', '2015-04-17 15:21:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1921', 'admin', '1', '127.0.0.1', '2015-04-17 15:25:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1922', 'admin', '1', '127.0.0.1', '2015-04-17 15:29:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1923', 'admin', '3', '127.0.0.1', '2015-04-17 16:24:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1924', 'admin', '1', '127.0.0.1', '2015-04-17 16:24:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1925', 'admin', '1', '127.0.0.1', '2015-04-17 18:10:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1926', 'admin', '1', '127.0.0.1', '2015-04-17 18:11:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1927', 'admin', '1', '127.0.0.1', '2015-04-17 18:12:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1928', 'admin', '1', '127.0.0.1', '2015-04-18 09:28:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1929', 'admin', '1', '127.0.0.1', '2015-04-18 10:30:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1930', 'admin', '1', '127.0.0.1', '2015-04-18 13:26:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1931', 'admin', '1', '127.0.0.1', '2015-04-18 13:30:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1932', 'admin', '1', '127.0.0.1', '2015-04-18 13:35:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1933', 'admin', '1', '127.0.0.1', '2015-04-18 13:37:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1934', 'admin', '1', '127.0.0.1', '2015-04-18 13:44:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1935', 'admin', '1', '127.0.0.1', '2015-04-18 13:59:17', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1936', 'admin', '1', '127.0.0.1', '2015-04-18 14:05:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1937', 'admin', '1', '127.0.0.1', '2015-04-18 14:34:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1938', 'admin', '1', '127.0.0.1', '2015-04-21 12:19:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1939', 'admin', '1', '127.0.0.1', '2015-04-21 15:41:28', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1940', 'admin', '1', '127.0.0.1', '2015-04-28 15:35:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1941', 'admin', '1', '192.168.1.111', '2015-04-29 11:26:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1942', 'admin', '1', '192.168.1.111', '2015-04-29 11:34:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1943', 'admin', '1', '192.168.1.22', '2015-04-29 11:35:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1944', 'admin', '1', '127.0.0.1', '2015-05-01 20:16:58', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1945', 'admin', '1', '127.0.0.1', '2015-05-01 20:27:47', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1946', 'admin', '1', '192.168.1.121', '2015-05-04 09:20:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1947', 'admin', '3', '192.168.1.121', '2015-05-04 09:56:25', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1948', 'admin', '1', '192.168.1.121', '2015-05-04 09:56:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1949', 'admin', '1', '192.168.1.121', '2015-05-04 10:01:03', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1950', 'admin', '1', '127.0.0.1', '2015-05-04 10:02:31', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1951', 'admin', '1', '127.0.0.1', '2015-05-04 13:13:07', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1952', 'admin', '1', '192.168.1.121', '2015-05-04 14:32:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1953', 'admin', '1', '127.0.0.1', '2015-05-11 10:46:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1954', 'admin', '1', '127.0.0.1', '2015-05-11 15:25:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1955', 'admin', '1', '127.0.0.1', '2015-05-11 16:32:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1956', 'admin', '1', '127.0.0.1', '2015-05-11 17:39:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1957', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-12 09:35:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1958', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-12 13:02:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1959', 'admin', '1', '192.168.1.26', '2015-05-12 15:34:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1960', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-12 16:56:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1961', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-13 20:05:35', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1962', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-14 09:41:29', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1963', 'admin', '1', '127.0.0.1', '2015-05-14 10:34:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1964', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-14 14:21:53', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1965', 'admin', '3', '127.0.0.1', '2015-05-15 14:16:13', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1966', 'admin', '3', '127.0.0.1', '2015-05-15 14:16:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1967', 'admin', '3', '127.0.0.1', '2015-05-15 14:17:46', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1968', '2', '2', '127.0.0.1', '2015-05-15 14:17:57', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1969', '2', '2', '127.0.0.1', '2015-05-15 14:19:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1970', 'admin', '1', '127.0.0.1', '2015-05-15 14:20:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1971', 'admin', '3', '127.0.0.1', '2015-05-15 14:20:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1972', '9', '2', '127.0.0.1', '2015-05-15 14:20:48', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1973', '9', '2', '127.0.0.1', '2015-05-15 14:23:00', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1974', '9', '2', '127.0.0.1', '2015-05-15 14:23:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1975', '9', '2', '127.0.0.1', '2015-05-15 14:24:24', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1976', '2', '2', '127.0.0.1', '2015-05-15 14:26:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1977', '2', '2', '127.0.0.1', '2015-05-15 14:27:59', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1978', '2', '2', '127.0.0.1', '2015-05-15 14:39:40', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1979', '2', '2', '127.0.0.1', '2015-05-15 14:47:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1980', '2', '2', '127.0.0.1', '2015-05-15 14:48:20', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1981', '2', '2', '127.0.0.1', '2015-05-15 14:48:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1982', '2', '2', '127.0.0.1', '2015-05-15 14:50:02', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1983', 'admin', '1', '127.0.0.1', '2015-05-15 15:01:32', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1984', 'admin', '1', '127.0.0.1', '2015-05-18 10:33:27', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1985', 'admin', '1', '192.168.1.113', '2015-05-20 14:41:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1986', 'admin', '1', '127.0.0.1', '2015-05-20 14:45:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1987', 'admin', '1', '127.0.0.1', '2015-05-20 14:46:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1988', 'admin', '1', '192.168.1.113', '2015-05-20 16:31:16', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1989', 'admin', '1', '127.0.0.1', '2015-05-20 17:01:44', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1990', 'admin', '1', '127.0.0.1', '2015-05-26 14:08:15', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1991', 'admin', '1', '192.168.1.130', '2015-05-26 14:30:49', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1992', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-26 14:33:50', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1993', 'admin', '3', '0:0:0:0:0:0:0:1', '2015-05-26 14:43:10', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1994', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-26 14:43:22', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1995', 'admin', '1', '127.0.0.1', '2015-05-26 14:48:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1996', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-26 16:53:55', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1997', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-27 10:18:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1998', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-27 10:59:38', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('1999', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-27 11:39:23', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2000', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-27 14:29:26', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2001', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-27 15:38:12', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2002', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-28 10:23:08', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2003', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-28 15:55:45', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2004', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-28 17:02:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2005', 'admin', '1', '127.0.0.1', '2015-05-28 17:29:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2006', 'admin', '1', '127.0.0.1', '2015-05-28 17:30:36', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2007', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-28 17:45:09', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2008', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-28 17:47:33', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2009', 'admin', '1', '127.0.0.1', '2015-05-28 18:16:34', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2010', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-29 09:26:37', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2011', 'admin', '1', '0:0:0:0:0:0:0:1', '2015-05-29 09:27:56', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2012', 'admin', '1', '127.0.0.1', '2015-05-29 09:52:14', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2013', 'admin', '1', '127.0.0.1', '2015-05-29 14:20:39', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2014', 'admin', '1', '127.0.0.1', '2015-05-29 14:22:04', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2015', 'admin', '1', '127.0.0.1', '2015-05-29 15:06:51', null, null, null, null, null, null, null);
INSERT INTO `tvcms_user_login_log` VALUES ('2016', 'admin', '1', '127.0.0.1', '2015-05-29 16:16:05', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tvcms_user_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_user_oper_log`;
CREATE TABLE `tvcms_user_oper_log` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `oper_state` decimal(1,0) default NULL COMMENT '操作状态，0表示失败，1表示成功',
  `oper_ip` varchar(15) default NULL COMMENT '操作IP',
  `oper_time` datetime default NULL COMMENT '操作时间',
  `action` varchar(50) default NULL COMMENT '动作',
  `oper_object` varchar(200) default NULL COMMENT '操作对象',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `delete_time` datetime default NULL COMMENT '删除时间',
  PRIMARY KEY  (`id`),
  KEY `fk_tvcms_user_oper_log_1` (`user_id`),
  CONSTRAINT `fk_tvcms_user_oper_log_1` FOREIGN KEY (`user_id`) REFERENCES `tvcms_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户操作日志';

-- ----------------------------
-- Records of tvcms_user_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for `tvcms_user_set`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_user_set`;
CREATE TABLE `tvcms_user_set` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `login_num` decimal(1,0) default NULL COMMENT '后台登录验证码，1为开启，2为关闭',
  `login_fre` int(11) default NULL COMMENT '后台登录次数限制',
  `login_time` int(11) default NULL COMMENT '重新登录时间间隔',
  `session_time` int(11) default NULL COMMENT '登录超时限制',
  `member_register` decimal(1,0) default NULL COMMENT '会员注册，1为开启，2为关闭',
  `user_limit_start` int(11) default NULL COMMENT '注册用户名限制开始',
  `user_limit_end` int(11) default NULL COMMENT '注册用户名限制结束',
  `pwd_limit_start` int(11) default NULL COMMENT '注册密码限制开始',
  `pwd_limit_end` int(11) default NULL COMMENT '密码限制结束',
  `user_file_size` int(11) default NULL COMMENT '会员上传文件大小',
  `user_file_type` varchar(400) default NULL COMMENT '会员附件许可的类型',
  `file_coun_size` int(11) default NULL COMMENT '会员附件总大小限制',
  `emal_uniqueness` decimal(1,0) default NULL COMMENT '会员邮箱唯一性检查，1为开启，2为关闭',
  `ipInterval_time` int(11) default NULL COMMENT '同一IP注册间隔限制',
  `reserve_keyword` varchar(800) default NULL COMMENT '用户名保留关键字',
  `login_number` decimal(1,0) default NULL COMMENT '会员登录验证码，1为开启，2为关闭',
  `register_number` decimal(1,0) default NULL COMMENT '会员注册验证码，1为开启，2为关闭',
  `is_deleted` decimal(1,0) default NULL COMMENT '删除标识，0表示未删除，1表示已删除',
  `create_user_id` int(11) default NULL COMMENT '创建用户',
  `create_time` datetime default NULL COMMENT '创建时间',
  `modify_user_id` int(11) default NULL COMMENT '修改用户',
  `modify_time` datetime default NULL COMMENT '修改时间',
  `delete_user_id` int(11) default NULL COMMENT '删除用户',
  `phone_registr` int(11) default NULL COMMENT '电话注册',
  `mail_registr` int(11) default NULL COMMENT '邮件注册',
  `name_registr` int(20) default NULL COMMENT '用户注册',
  `delete_time` datetime default NULL COMMENT '删除时间',
  `is_comments` varchar(10) default '1' COMMENT '是否开启评论',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户设置';

-- ----------------------------
-- Records of tvcms_user_set
-- ----------------------------
INSERT INTO `tvcms_user_set` VALUES ('1', '2', '10', '10', '60', null, '1', '6', '1', '6', null, null, null, '1', null, 'admin,useradmin', '2', '2', null, null, null, null, null, null, '3', '2', '1', null, '1');

-- ----------------------------
-- Table structure for `tvcms_uv_ip_record`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_uv_ip_record`;
CREATE TABLE `tvcms_uv_ip_record` (
  `id` varchar(32) NOT NULL,
  `user_ip` varchar(40) default NULL COMMENT '登录用户ip',
  `cont_id` int(11) NOT NULL COMMENT '内容id',
  `visit_time` int(11) default NULL COMMENT '访问时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_uv_ip_record
-- ----------------------------
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881954ade3b59014ade3bab710000', '127.0.0.1', '3', '20150407');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881964d1ca77f014d1cb000440000', '192.168.1.121', '10', '20150504');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881964d1ca77f014d1cbc24320001', '127.0.0.1', '10', '20150504');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881964d1ca77f014d1cbc75040002', '192.168.1.121', '3', '20150504');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881974d45bffc014d4737f7a50000', '192.168.1.26', '1', '20150512');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881974d45bffc014d4746009b0001', '192.168.1.26', '6', '20150512');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881974d4c7d5b014d4c7f17fa0000', '0:0:0:0:0:0:0:1', '1', '20150513');
INSERT INTO `tvcms_uv_ip_record` VALUES ('4028819a4c7d9358014c7dbb92cb0000', '127.0.0.1', '15', '20150403');
INSERT INTO `tvcms_uv_ip_record` VALUES ('4028819a4c7dc98c014c7dfb18c30000', '127.0.0.1', '24', '20150403');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402881ee4c49fec9014c4a10d4e20000', '192.168.1.110', '1', '20150324');
INSERT INTO `tvcms_uv_ip_record` VALUES ('402890ee4a5c42b2014a5c8072220000', '127.0.0.1', '1', '20150511');

-- ----------------------------
-- Table structure for `tvcms_visit_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `tvcms_visit_statistics`;
CREATE TABLE `tvcms_visit_statistics` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `ip` varchar(15) NOT NULL COMMENT '访问ip',
  `time` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tvcms_visit_statistics
-- ----------------------------
