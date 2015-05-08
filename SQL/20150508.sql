/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.23 : Database - food
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `sn_article` */

DROP TABLE IF EXISTS `sn_article`;

CREATE TABLE `sn_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) DEFAULT NULL,
  `atitle` varchar(150) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `alink` varchar(300) DEFAULT NULL,
  `des` varchar(150) DEFAULT NULL,
  `content` mediumtext,
  `uid` int(10) DEFAULT NULL,
  `count_click` int(10) DEFAULT '0',
  `create_time` int(13) DEFAULT NULL,
  `top` int(2) DEFAULT '0',
  `isyes` int(2) DEFAULT '0',
  `sort` int(3) DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `aid` (`aid`,`acid`,`atitle`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `sn_article` */

insert  into `sn_article`(`aid`,`acid`,`atitle`,`pic`,`keyword`,`alink`,`des`,`content`,`uid`,`count_click`,`create_time`,`top`,`isyes`,`sort`) values (35,15,'手机版下周就上线了','','','','','&lt;p&gt;手机版下周就上线了&lt;/p&gt;',0,0,1396158695,0,0,0),(34,15,'法国楼订餐微信版4月26号正式上线','','','','','&lt;p&gt;法国楼订餐微信版4月26号正式上线&lt;/p&gt;',0,0,1396158528,0,0,0),(31,13,'tretretytrty','','','','','&lt;p&gt;ytryt&lt;/p&gt;',0,0,1396077631,0,0,0),(32,14,'法国楼订餐外卖上线了　','','','','','&lt;p&gt;法国楼订餐外卖上线了　&lt;/p&gt;',0,0,1396087415,0,0,0),(33,15,'法国楼订餐外卖1.0 Bata版上线了','','','','','&lt;p&gt;法国楼订餐外卖1.0 Bata版上线了&lt;/p&gt;',0,0,1396087453,0,0,0),(36,15,'法国楼订餐外卖多城市版开发中','','','','','&lt;p&gt;法国楼订餐外卖开发中&lt;/p&gt;',0,0,1396158734,0,0,0),(37,13,'简单　入手容易　','','','','','&lt;p&gt;简单　入手容易　&lt;br/&gt;&lt;/p&gt;',0,0,1396158788,0,0,0),(38,13,'接受订制　更多功能','','','','','&lt;p&gt;接受订制&lt;/p&gt;&lt;p&gt;电话：13888917328&lt;br/&gt;&lt;/p&gt;',0,0,1396158835,0,0,0);

/*Table structure for table `sn_article_cat` */

DROP TABLE IF EXISTS `sn_article_cat`;

CREATE TABLE `sn_article_cat` (
  `acid` int(11) NOT NULL AUTO_INCREMENT,
  `afid` int(11) DEFAULT NULL,
  `aname` varchar(80) DEFAULT NULL,
  `dir` char(20) DEFAULT NULL,
  `atop` int(2) DEFAULT '0',
  `apic` varchar(300) DEFAULT NULL,
  `wap` int(2) DEFAULT '0',
  `sort` int(2) DEFAULT '0',
  `keyword` char(200) DEFAULT NULL,
  `ades` char(200) DEFAULT NULL,
  `acreate_time` int(13) DEFAULT NULL,
  `ispic` int(2) DEFAULT '0',
  PRIMARY KEY (`acid`),
  KEY `acid` (`acid`,`afid`,`aname`,`dir`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `sn_article_cat` */

insert  into `sn_article_cat`(`acid`,`afid`,`aname`,`dir`,`atop`,`apic`,`wap`,`sort`,`keyword`,`ades`,`acreate_time`,`ispic`) values (13,0,'常见问题','question',0,'',0,0,'','',1396075063,0),(15,0,'优惠活动','youhui',0,'',0,0,'','',1396081003,0);

/*Table structure for table `sn_config` */

DROP TABLE IF EXISTS `sn_config`;

CREATE TABLE `sn_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `cate` int(3) DEFAULT '0' COMMENT '0为基本设置，1为支付设置，2登录设置,3店铺设置,4积分设置',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `sn_config` */

insert  into `sn_config`(`id`,`cate`,`name`,`type`,`title`,`extra`,`remark`,`create_time`,`update_time`,`status`,`value`,`sort`) values (2,0,'title',1,'首页标题','','首页标题',0,0,0,'法国楼',0),(1,0,'name',1,'网站名称','','网站名称或店铺名称',0,0,0,'思远订餐外卖系统',0),(3,0,'url',1,'网站URL','','网站域名,不带/',0,0,0,'http://120.24.173.142:81',0),(4,0,'logo',5,'logo','','logo上传',0,0,0,'/uploads/logo/logo.food.png',0),(5,0,'key',1,'关键字','','网站SEO关键字',0,0,0,'法国楼微信订餐外卖系统',0),(6,0,'des',2,'网站描述','','网站SEO描述',0,0,0,'法国楼微信订餐外卖系统',0),(7,0,'tj',1,'统计','','网站流量统计代码',0,0,0,'fsdf75765666',0),(8,0,'isorder',4,'允许游客下单','1:允许,0:禁止','允许游客下单',0,0,1,'1',1),(9,1,'pos',3,'货到付款','','',0,0,1,'默认为货到付款,',0),(11,4,'points',1,'积分设置','','税分兑换设置,多少元等于1积分',0,0,0,'144',0),(12,0,'icp',1,'网站备案号','','网站备案号',0,0,0,'ICP备19042558号\r\n\r\n',0),(13,3,'address',1,'店铺地址','','店铺详细地址',0,0,0,'红河州个旧市金湖路',0),(14,3,'tel',1,'店铺电话','','店铺电话',0,0,0,'4008-323-323',0),(15,3,'startpay',8,'起送金额','','起送金额',0,0,0,'0',0),(16,3,'pspay',8,'配送费用','','配送费用',0,0,0,'0',0),(17,3,'notice',2,'店铺公告','','店铺公告',0,0,0,'微信订餐，省时省钱，优惠5元，30分钟送达。',0),(18,3,'psarea',2,'配送区域','','配送区域',0,0,0,'红河州：个旧市、蒙自市',0),(27,3,'endtime',7,'','','',0,0,0,'',0),(25,3,'opentime',6,'营业时间','','',0,0,0,'10:00,21:00',0),(28,5,'appid',0,'','','',0,0,0,'12525525852',0),(29,5,'appkey',0,'','','',0,0,0,'88888888855855',0),(10,0,'islogin',4,'产品页展示方式','1:弹窗,0:新页面','产品页展示方式',0,0,0,'0',1),(30,6,'SMTP_HOST',1,'SMTP服务器','','SMTP服务器',0,0,0,'8781111111111111111111111',0),(31,6,'SMTP_PORT',1,'SMTP服务器端口','','SMTP服务器端口',0,0,0,'fgfgfgfgfdgdf',0),(32,6,'SMTP_USER',1,'SMTP服务器用户名','','SMTP服务器用户名',0,0,0,'111111111111111',0),(33,6,'SMTP_PASS',1,'SMTP服务器密码','','SMTP服务器密码',0,0,0,'1111111111111111',0),(34,6,'REPLY_NAME',1,'回复名称','','回复名称（留空则为发件人名称）',0,0,0,'1111111111111111',0),(35,6,'REPLY_EMAIL',1,'回复EMAIL','','回复EMAIL（留空则为发件人EMAIL）',0,0,0,'111111111111111',0),(36,6,'FROM_NAME',1,'发件人名称','','发件人名称',0,0,0,'1111111111111111111',0),(37,7,'webappid',1,'授权码','','请购买授权码，联系QQ:97297326',0,0,0,'11',0),(38,7,'webkey',1,'密钥key','','',0,0,0,'111',0),(39,6,'FROM_EMAIL',1,'发件人邮件','','发件人邮件',0,0,0,'',0),(40,6,'TO_EMAIL',1,'收件邮件','','收件人邮件',0,0,0,'',0);

/*Table structure for table `sn_credit` */

DROP TABLE IF EXISTS `sn_credit`;

CREATE TABLE `sn_credit` (
  `creid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '充值id',
  `type` int(3) DEFAULT '0' COMMENT '0为加，1为减去',
  `typename` char(200) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL COMMENT '用户id',
  `sid` int(15) DEFAULT NULL,
  `sname` char(100) DEFAULT NULL,
  `source` char(100) DEFAULT NULL,
  `crecount` int(8) DEFAULT NULL,
  `ctime` int(15) DEFAULT NULL,
  `ip` char(100) DEFAULT NULL,
  `etime` int(15) DEFAULT NULL COMMENT '积分失效时间',
  `crecontent` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`creid`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

/*Data for the table `sn_credit` */

/*Table structure for table `sn_creditgood` */

DROP TABLE IF EXISTS `sn_creditgood`;

CREATE TABLE `sn_creditgood` (
  `cgid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '充值id',
  `goodname` char(150) DEFAULT '0' COMMENT '0为加，1为减去',
  `goodcontent` varchar(500) DEFAULT NULL,
  `credits` int(10) DEFAULT NULL COMMENT '积分数量',
  `count` int(10) DEFAULT NULL,
  `sid` int(15) DEFAULT NULL,
  `sname` char(100) DEFAULT NULL COMMENT '充值门店名称',
  `goodpic` char(200) DEFAULT NULL,
  `ctime` int(15) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`cgid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `sn_creditgood` */

/*Table structure for table `sn_faddress` */

DROP TABLE IF EXISTS `sn_faddress`;

CREATE TABLE `sn_faddress` (
  `faddid` int(15) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `cityid` int(10) DEFAULT NULL,
  `cityname` char(90) DEFAULT NULL,
  `areaid` int(15) DEFAULT '0',
  `areaname` char(60) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `addtop` int(5) DEFAULT '0',
  `ctime` int(15) DEFAULT NULL,
  `name` char(60) DEFAULT NULL,
  `tel` char(60) DEFAULT NULL,
  PRIMARY KEY (`faddid`),
  KEY `fcid` (`uid`,`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `sn_faddress` */

/*Table structure for table `sn_food` */

DROP TABLE IF EXISTS `sn_food`;

CREATE TABLE `sn_food` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `fcid` int(10) DEFAULT NULL,
  `fnum` int(10) DEFAULT NULL,
  `fname` char(90) DEFAULT NULL,
  `ftitle` char(150) DEFAULT NULL,
  `fprice` float(10,2) DEFAULT NULL,
  `fcontent` varchar(200) DEFAULT NULL,
  `fpic` char(200) DEFAULT NULL,
  `fsort` int(5) DEFAULT '0',
  `ftop` int(5) DEFAULT '0',
  `fctime` int(16) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `salecount` int(10) DEFAULT NULL,
  `iswaimai` int(2) DEFAULT '0' COMMENT '是否为外卖',
  PRIMARY KEY (`fid`),
  KEY `fid` (`fid`,`fcid`,`fnum`,`fname`,`fprice`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

/*Data for the table `sn_food` */

insert  into `sn_food`(`fid`,`fcid`,`fnum`,`fname`,`ftitle`,`fprice`,`fcontent`,`fpic`,`fsort`,`ftop`,`fctime`,`status`,`salecount`,`iswaimai`) values (60,19,0,'D培根鸡腿燕麦堡套餐A','',35.50,'','/uploads/fimg/20140330/5337bc4b3180a.jpg',0,0,1396161611,0,0,0),(61,19,0,'培根鸡腿燕麦堡套餐B','',32.50,'','/uploads/fimg/20140330/5337bc9a8cce0.jpg',0,0,1396161690,0,0,0),(62,19,0,'培根鸡腿燕麦堡套餐C','',35.50,'','/uploads/fimg/20140330/5337bcc090dc0.jpg',0,0,1396161728,0,0,0),(63,19,0,'藤椒麻香鸡腿堡套餐A','',25.50,'','/uploads/fimg/20140330/5337bd1cd56fa.jpg',0,0,1396161821,0,0,0),(64,19,0,'川香双层鸡腿堡餐','',50.00,'','/uploads/fimg/20140330/5337bd3d64968.jpg',0,0,1396161853,0,0,0),(65,19,0,'培根鸡腿燕麦堡','',17.50,'','/uploads/fimg/20140330/5337bd6ab72d6.jpg',0,0,1396161898,0,0,0),(66,19,0,'香辣鸡腿堡','',15.50,'','/uploads/fimg/20140330/5337bf8d4d5ec.jpg',0,0,1396162445,0,0,0),(67,19,0,'新奥尔良烤腿堡','',16.50,'','/uploads/fimg/20140330/5337bfad087ae.jpg',0,0,1396162477,0,0,0),(68,19,0,'新至珍全虾堡','',15.50,'','/uploads/fimg/20140330/5337c02e4c9a9.jpg',0,0,1396162606,0,0,0),(69,19,0,'劲脆鸡腿堡','',16.50,'','/uploads/fimg/20140330/5337c0baafe1b.jpg',0,0,1396162746,0,0,0),(70,20,0,'瘦肉粥热豆浆油条餐','',17.50,'','/uploads/fimg/20140330/5337c1148d62a.jpg',0,0,1396162836,0,0,0),(71,20,0,'雪菜粥热豆浆油条餐','',15.50,'','/uploads/fimg/20140330/5337c141ded28.jpg',0,0,1396162882,0,0,0),(72,21,0,'安心油条','',5.00,'','/uploads/fimg/20140330/5337c1d144f75.jpg',0,0,1396163046,0,0,0),(73,22,0,'五味小吃桶升级版','',50.00,'','/uploads/fimg/20140330/5337c217ca9cb.jpg',0,0,1396163096,0,0,0),(74,22,0,'堡堡双人餐','',80.00,'','/uploads/fimg/20140330/5337c241549ed.jpg',0,0,1396163137,0,0,0),(75,22,0,'饭堡双人餐','',50.00,'','/uploads/fimg/20140330/5337c268bb0d6.jpg',0,0,1396163176,0,0,0),(76,23,0,'九块吮指原味鸡','',75.00,'','/uploads/fimg/20140330/5337c2a9caf0c.jpg',0,0,1396163241,0,0,0),(77,23,0,'吮指原味鸡套餐B','',34.50,'','/uploads/fimg/20140330/5337c35236a6e.jpg',0,0,1396163410,0,0,0),(78,24,0,'九珍果汁饮料','',15.00,'','/uploads/fimg/20140330/5337c55141c56.jpg',0,0,1396163921,0,0,0),(79,24,0,'1.25升装百事可乐','',12.00,'','/uploads/fimg/20140330/5337c56e351d5.jpg',0,0,1396163950,0,0,0),(80,25,0,'菌菇四宝汤','',10.00,'','/uploads/fimg/20140330/5337c594177b7.jpg',0,0,1396163988,0,0,0),(81,25,0,'土豆泥','',6.00,'','/uploads/fimg/20140330/5337c5b48d4dd.jpg',0,0,1396164020,0,0,0);

/*Table structure for table `sn_foodcat` */

DROP TABLE IF EXISTS `sn_foodcat`;

CREATE TABLE `sn_foodcat` (
  `fcid` int(10) NOT NULL AUTO_INCREMENT,
  `fcname` char(90) DEFAULT NULL,
  `fpid` int(15) DEFAULT '0',
  `fcsort` int(5) DEFAULT '0',
  `fctop` int(5) DEFAULT '0',
  `ctime` int(15) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `fcount` int(5) DEFAULT NULL,
  PRIMARY KEY (`fcid`),
  KEY `fcid` (`fcid`,`fcname`,`fpid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `sn_foodcat` */

insert  into `sn_foodcat`(`fcid`,`fcname`,`fpid`,`fcsort`,`fctop`,`ctime`,`sid`,`fcount`) values (19,'美味汉堡',0,0,0,1396161410,0,0),(20,'现熬好粥',0,0,0,1396161434,0,0),(21,'小食配餐',0,0,0,1396161451,0,0),(22,'超值多人餐',0,0,0,1396161474,0,0),(23,'吮指原味鸡',0,0,0,1396161494,0,0),(24,'缤纷饮料',0,0,0,1396161512,0,0),(25,'丰富配餐',0,0,0,1396161533,0,0);

/*Table structure for table `sn_foodorder` */

DROP TABLE IF EXISTS `sn_foodorder`;

CREATE TABLE `sn_foodorder` (
  `oid` int(30) NOT NULL AUTO_INCREMENT,
  `orderprice` float(10,2) DEFAULT NULL,
  `ordercount` int(10) DEFAULT NULL,
  `zhekou` float(10,2) DEFAULT NULL,
  `pay` float(10,2) DEFAULT NULL,
  `paytype` int(2) DEFAULT '0',
  `ucount` int(10) DEFAULT '0',
  `uid` int(15) DEFAULT NULL,
  `uname` char(60) DEFAULT NULL,
  `pid` char(100) DEFAULT NULL,
  `shopspay` int(11) DEFAULT '0' COMMENT '配送费用',
  `shopname` char(100) DEFAULT NULL,
  `gid` char(90) DEFAULT NULL,
  `order_ctime` int(16) DEFAULT NULL,
  `order_endtime` int(16) DEFAULT NULL,
  `print_time` int(16) DEFAULT NULL,
  `print_name` char(100) DEFAULT NULL,
  `morecontent` char(200) DEFAULT NULL,
  `otel` char(80) DEFAULT NULL,
  `oman` char(100) DEFAULT NULL,
  `oaddress` char(200) DEFAULT NULL,
  `orderstatus` int(1) DEFAULT '1',
  `ordersource` char(40) DEFAULT NULL,
  `couponid` int(30) DEFAULT '0',
  `order_dtime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `oid` (`oid`,`orderprice`,`ordercount`,`orderstatus`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 CHECKSUM=1;

/*Data for the table `sn_foodorder` */

insert  into `sn_foodorder`(`oid`,`orderprice`,`ordercount`,`zhekou`,`pay`,`paytype`,`ucount`,`uid`,`uname`,`pid`,`shopspay`,`shopname`,`gid`,`order_ctime`,`order_endtime`,`print_time`,`print_name`,`morecontent`,`otel`,`oman`,`oaddress`,`orderstatus`,`ordersource`,`couponid`,`order_dtime`) values (81,34.50,1,NULL,NULL,1,0,NULL,NULL,'pktvso3htfqcoqqkuoob8gbaf0',0,NULL,NULL,1429493976,NULL,NULL,NULL,'','13887306608','mwj','个旧市',2,NULL,0,'2015-04-20 10:00:00'),(82,16.00,2,NULL,NULL,1,0,NULL,NULL,'iugu0hch5lhq18289divug3jo6',0,NULL,NULL,1429494029,NULL,NULL,NULL,'','13987302588','耿聆','金湖西路357号',3,NULL,0,'2015-04-20 10:00:00');

/*Table structure for table `sn_foodorderext` */

DROP TABLE IF EXISTS `sn_foodorderext`;

CREATE TABLE `sn_foodorderext` (
  `oid` bigint(30) DEFAULT NULL,
  `did` int(6) DEFAULT NULL,
  `fid` int(6) DEFAULT NULL,
  `fname` char(100) DEFAULT NULL,
  `fcid` int(15) DEFAULT NULL,
  `fcname` char(100) DEFAULT NULL,
  `fprice` float(10,2) DEFAULT NULL,
  `fcount` int(10) DEFAULT NULL,
  `prices` float(10,2) DEFAULT NULL,
  `muid` int(15) DEFAULT NULL,
  `muname` char(100) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `fenliang` char(100) DEFAULT NULL,
  `kouwei` char(100) DEFAULT NULL,
  `call_time` int(16) DEFAULT NULL,
  `print_time` int(16) DEFAULT NULL,
  `end_time` int(16) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `gid` char(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sn_foodorderext` */

insert  into `sn_foodorderext`(`oid`,`did`,`fid`,`fname`,`fcid`,`fcname`,`fprice`,`fcount`,`prices`,`muid`,`muname`,`time`,`fenliang`,`kouwei`,`call_time`,`print_time`,`end_time`,`status`,`gid`) values (45,0,61,'培根鸡腿燕麦堡套餐B',0,'',32.50,1,32.50,0,'',0,'','',0,0,0,0,''),(45,0,63,'藤椒麻香鸡腿堡套餐A',0,'',25.50,1,25.50,0,'',0,'','',0,0,0,0,''),(45,0,60,'D培根鸡腿燕麦堡套餐A',0,'',35.50,1,35.50,0,'',0,'','',0,0,0,0,''),(45,0,71,'雪菜粥热豆浆油条餐',0,'',15.50,1,15.50,0,'',0,'','',0,0,0,0,''),(45,0,70,'瘦肉粥热豆浆油条餐',0,'',17.50,1,17.50,0,'',0,'','',0,0,0,0,''),(81,NULL,0,'吮指原味鸡套餐B',NULL,NULL,34.50,1,34.50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(82,NULL,0,'土豆泥',NULL,NULL,6.00,1,6.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(82,NULL,0,'菌菇四宝汤',NULL,NULL,10.00,1,10.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);

/*Table structure for table `sn_link` */

DROP TABLE IF EXISTS `sn_link`;

CREATE TABLE `sn_link` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT '0',
  `linkname` varchar(200) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `linkpic` varchar(300) DEFAULT NULL,
  `des` varchar(300) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `top` int(2) DEFAULT '0',
  `create_time` int(15) DEFAULT NULL,
  `isweb` int(1) DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sn_link` */

/*Table structure for table `sn_members` */

DROP TABLE IF EXISTS `sn_members`;

CREATE TABLE `sn_members` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(60) NOT NULL,
  `userpass` char(90) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL,
  `useremail` varchar(100) NOT NULL DEFAULT '',
  `usertel` int(15) DEFAULT '0',
  `nickname` varchar(50) DEFAULT NULL,
  `userqq` int(15) NOT NULL,
  `usersex` int(3) DEFAULT NULL,
  `usergroup` int(8) DEFAULT '0',
  `last_login_ip` varchar(16) NOT NULL,
  `last_login_time` int(15) DEFAULT NULL,
  `create_time` int(15) DEFAULT NULL,
  `userlevel` varchar(60) NOT NULL DEFAULT '0',
  `userpoint` smallint(6) DEFAULT '0',
  `userstatus` int(11) NOT NULL DEFAULT '0',
  `gid` char(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `user_nicename` (`nickname`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

/*Data for the table `sn_members` */

insert  into `sn_members`(`uid`,`username`,`userpass`,`userpic`,`useremail`,`usertel`,`nickname`,`userqq`,`usersex`,`usergroup`,`last_login_ip`,`last_login_time`,`create_time`,`userlevel`,`userpoint`,`userstatus`,`gid`) values (1,'admin','b2ca678b4c936f905fb82f2733f5297f','','111@11.com',0,'',0,1,99,'58.62.115.224',1430834789,1430835418,'99',0,0,''),(73,'asdaisy','57feafb40d0ea681331f170d4e8521a0','','asdaisy@163.com',0,NULL,0,NULL,1,'58.62.115.224',1430834369,1430834369,'0',0,0,NULL);

/*Table structure for table `sn_message` */

DROP TABLE IF EXISTS `sn_message`;

CREATE TABLE `sn_message` (
  `msid` int(10) NOT NULL AUTO_INCREMENT,
  `mtype` int(1) DEFAULT '0',
  `sid` int(10) DEFAULT NULL,
  `sname` char(100) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `uname` char(200) DEFAULT NULL,
  `upic` char(200) DEFAULT NULL,
  `mcontent` varchar(600) DEFAULT NULL,
  `pid` int(10) DEFAULT '0',
  `top` int(2) DEFAULT '0',
  `create_time` int(15) DEFAULT NULL,
  `isweb` int(1) DEFAULT '0',
  PRIMARY KEY (`msid`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sn_message` */

/*Table structure for table `sn_pages` */

DROP TABLE IF EXISTS `sn_pages`;

CREATE TABLE `sn_pages` (
  `pagid` int(11) NOT NULL AUTO_INCREMENT,
  `page_fid` int(11) DEFAULT '0',
  `pagedir` char(30) DEFAULT NULL,
  `page_title` varchar(150) DEFAULT NULL,
  `page_content` mediumtext,
  `page_header` varchar(1000) DEFAULT NULL,
  `page_footer` varchar(1000) DEFAULT NULL,
  `page_key` char(100) DEFAULT NULL,
  `page_des` char(200) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `pic2` varchar(300) DEFAULT NULL,
  `pic3` varchar(300) DEFAULT NULL,
  `pic4` varchar(300) DEFAULT NULL,
  `sort` int(2) DEFAULT '0',
  `create_time` int(13) DEFAULT NULL,
  `page_top` int(1) DEFAULT '0',
  PRIMARY KEY (`pagid`),
  KEY `pagid` (`pagid`,`pagedir`,`page_title`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `sn_pages` */

insert  into `sn_pages`(`pagid`,`page_fid`,`pagedir`,`page_title`,`page_content`,`page_header`,`page_footer`,`page_key`,`page_des`,`pic`,`pic2`,`pic3`,`pic4`,`sort`,`create_time`,`page_top`) values (11,0,'about','关于我们','&lt;p&gt;fdsfdfdsfdfdfd&lt;/p&gt;','','','','','','','','',0,1396074870,0),(12,0,'add','加入我们','&lt;p&gt;fdsf&lt;/p&gt;','','','','','','','','',0,1396074928,0),(13,0,'yins','隐私条款','&lt;p&gt;fdsfdfdyyyy&lt;/p&gt;','','','','','','','','',0,1396087696,0),(14,0,'law','法律条款','&lt;p&gt;欢迎您使用肯德基宅急送网络订餐服务，包括但不限于通过肯德基宅急送互联网订餐网站，肯德基宅急送手机App订餐客户端，以及肯德基宅急送基于互联网或手机上网功能开发的其他订餐平台（如肯德基宅急送移动互联网订餐网站），提供的服务（以下简称“我们的服务”）。请仔细阅读本法律条款。您使用我们的服务即表示您已同意本条款。我们的服务范围可能会拓展，因此有时还会适用一些附加条款或要求。附加条款将会与相关服务一同提供，并且在您使用这些服务后，成为您与我们所达成的协议的一部分。本法律条款适用于您当前及未来使用的我们的服务。&lt;/p&gt;&lt;p&gt;&lt;strong class=&quot;ersee-lp-subtitle-bottom&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;我们的服务中所涉及的商标、服务标志、设计、文字或图案及相关知识产权等均属百胜咨询（上海）有限公司或其关联公司（以下简称：百胜公司）所有、或已取得所有人的正式授权，受法律保护，在未取得百胜公司或有关第三方书面授权之前，任何人不得擅自使用，包括但不限于复制、复印、修改、出版、公布、传送、分发我们的服务中使用的文本、图象、影音、镜像等内容，否则将承担相应法律责任。使用我们的服务并不让您拥有我们的服务或您所访问的内容的任何知识产权。本条款并未授予您使用我们的服务中所用的任何商标、标志、设计、文字等的权利。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;我们在提供服务时将会尽到商业上合理水平的技能和注意义务，希望您会喜欢我们的服务，但有些关于服务的事项恕我们无法作出承诺。因此，在法律允许的范围内，我们的服务对信息的准确性和及时性不给予任何明示或默示的保证。我们的服务不承担因您进入或使用我们的服务而导致的任何直接的、间接的、意外的、因果性的损害责任。请使用合法软件和设备。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;您在使用我们的服务时，可以自愿选择是否提交个人信息资料。如果您提交个人信息，即表示您接受我们的服务隐私权条款，我们的服务对于您的个人信息和隐私权予以尊重和保密。您在使用我们的服务时传送的任何其他资料、信息，包括但不限于意见、客户反馈、喜好、建议、支持、请求、问题等内容，将被当作非保密资料和非专有资料处理；您的传送行为即表示您同意这些资料用作我们的调查、统计等目的而由我们无偿使用。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;当您在使用我们的服务时，某些信息可以通过各种技术和方法不经您主动提供而被收集，这些方法包括IP地址、Cookies，设备信息，日志数据收集等。这些信息不足以使他人辨认您个人的身份，收集上述信息的目的旨在为您提供更完善的服务。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;您在使用我们的服务时不得传送和发放带有中伤、诽谤、造谣、色情及其他违法或不道德的资料和言论，我们有权对此进行管理和监督，但并不对您的上述行为承担任何责任。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;我们的服务无意向18岁以下未成年人提供网络订餐服务或收集个人信息，家长或监护人应承担未成年人在网络环境下的隐私权的首要责任。请家长或监护人对其子女或被监护人使用我们的服务进行监管和负责。由于我们的服务无法辨认用户是否为未成年人，因此如有未成年人使用我们的服务，则表示其已获得家长或监护人认可，任何相关后果由其家长或监护人承担。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;如果我们的服务提供了第三方网站链接，仅仅是为了向您提供便利。如果您使用这些链接，您将离开本站。我们无法评估此类第三方网站，也不对任何此类第三方网站或这些网站提供的产品、服务或内容负责。因此，对于此类第三方网站，或此类网站上提供的任何信息、软件、产品、服务或材料，或使用这些网站可能得到的任何结果，您需自行评估及承担使用风险。&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;我们可以修改本条款或相关条款并会予以更新和公布，所有修改的适用不具有追溯力。但是，对服务新功能的特别修改或由于法律原因所作的修改将立即生效。如果您不同意服务的修改条款，应停止使用我们的服务。&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;','','','','','','','','',0,1396074998,0),(15,0,'pays','支付方式','&lt;p&gt;支付方式内容编辑　&lt;/p&gt;','','','','','','','','',0,1397633115,0),(16,0,'sess','服务费用','&lt;p&gt;服务费用&lt;/p&gt;','','','','','','','','',0,1397633186,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
