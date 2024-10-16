/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dongwulingyangpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dongwulingyangpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dongwulingyangpingtai`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,3,'收货人2','17703786902','地址2',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,2,'收货人3','17703786903','地址3',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,2,'收货人4','17703786904','地址4',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,1,'收货人5','17703786905','地址5',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,3,'收货人6','17703786906','地址6',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,2,'收货人7','17703786907','地址7',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,3,'收货人8','17703786908','地址8',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,2,'收货人9','17703786909','地址9',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,1,'收货人10','17703786910','地址10',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,3,'收货人11','17703786911','地址11',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,1,'收货人12','17703786912','地址12',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,1,'收货人13','17703786913','地址13',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,3,'收货人14','17703786914','地址14',1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chongwu` */

DROP TABLE IF EXISTS `chongwu`;

CREATE TABLE `chongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '宠物名称  Search111 ',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物类型 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '宠物性别 Search111',
  `chongwu_age` int(11) DEFAULT NULL COMMENT '宠物年龄',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `chongwu_clicknum` int(11) DEFAULT NULL COMMENT '点击量',
  `chongwu_content` longtext COMMENT '宠物介绍 ',
  `zhuangtia_types` int(11) DEFAULT NULL COMMENT '领养状态 Search111',
  `chongwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宠物信息';

/*Data for the table `chongwu` */

insert  into `chongwu`(`id`,`chongwu_name`,`chongwu_photo`,`chongwu_types`,`sex_types`,`chongwu_age`,`zan_number`,`cai_number`,`chongwu_clicknum`,`chongwu_content`,`zhuangtia_types`,`chongwu_delete`,`insert_time`,`create_time`) values (1,'宠物名称1','upload/chongwu1.jpg',2,1,73,250,387,400,'宠物介绍1',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,'宠物名称2','upload/chongwu2.jpg',3,2,383,240,75,23,'宠物介绍2',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,'宠物名称3','upload/chongwu3.jpg',3,1,449,172,63,299,'宠物介绍3',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,'宠物名称4','upload/chongwu4.jpg',1,1,236,182,204,318,'宠物介绍4',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,'宠物名称5','upload/chongwu5.jpg',2,2,142,187,174,259,'宠物介绍5',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,'宠物名称6','upload/chongwu6.jpg',1,2,346,160,492,440,'宠物介绍6',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,'宠物名称7','upload/chongwu7.jpg',1,2,112,134,117,276,'宠物介绍7',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,'宠物名称8','upload/chongwu8.jpg',2,1,439,126,130,104,'宠物介绍8',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,'宠物名称9','upload/chongwu9.jpg',2,1,389,111,60,144,'宠物介绍9',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,'宠物名称10','upload/chongwu10.jpg',2,2,404,125,325,119,'宠物介绍10',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,'宠物名称11','upload/chongwu11.jpg',1,2,150,49,64,413,'宠物介绍11',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,'宠物名称12','upload/chongwu12.jpg',2,1,185,128,329,302,'<p>宠物介绍12</p>',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,'宠物名称13','upload/chongwu13.jpg',1,1,257,271,196,398,'宠物介绍13',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,'宠物名称14','upload/chongwu14.jpg',3,1,71,198,317,370,'<p>宠物介绍14</p>',2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11');

/*Table structure for table `chongwu_collection` */

DROP TABLE IF EXISTS `chongwu_collection`;

CREATE TABLE `chongwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宠物收藏';

/*Data for the table `chongwu_collection` */

insert  into `chongwu_collection`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,2,1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,3,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,4,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,5,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,6,1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,7,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,8,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,9,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,10,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,11,1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,12,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,13,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,14,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11');

/*Table structure for table `chongwu_liuyan` */

DROP TABLE IF EXISTS `chongwu_liuyan`;

CREATE TABLE `chongwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物领养',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='宠物留言';

/*Data for the table `chongwu_liuyan` */

insert  into `chongwu_liuyan`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_liuyan_text`,`insert_time`,`create_time`) values (1,1,3,'留言内容1','2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,2,2,'留言内容2','2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,3,1,'留言内容3','2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,4,3,'留言内容4','2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,5,3,'留言内容5','2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,6,3,'留言内容6','2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,7,2,'留言内容7','2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,8,1,'留言内容8','2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,9,1,'留言内容9','2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,10,3,'留言内容10','2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,11,1,'留言内容11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,12,3,'留言内容12','2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,13,3,'留言内容13','2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,14,2,'留言内容14123123','2023-05-06 09:50:11','2023-05-06 09:50:11');

/*Table structure for table `chongwu_yuyue` */

DROP TABLE IF EXISTS `chongwu_yuyue`;

CREATE TABLE `chongwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_yuyue_text` longtext COMMENT '领养缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `chongwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `chongwu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='宠物领养';

/*Data for the table `chongwu_yuyue` */

insert  into `chongwu_yuyue`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_yuyue_text`,`insert_time`,`chongwu_yuyue_yesno_types`,`chongwu_yuyue_yesno_text`,`create_time`) values (1,1,3,'领养缘由1','2023-05-06 09:50:11',1,NULL,'2023-05-06 09:50:11'),(2,2,3,'领养缘由2','2023-05-06 09:50:11',1,NULL,'2023-05-06 09:50:11'),(5,5,2,'领养缘由5','2023-05-06 09:50:11',1,NULL,'2023-05-06 09:50:11'),(7,7,3,'领养缘由7','2023-05-06 09:50:11',1,NULL,'2023-05-06 09:50:11'),(10,10,2,'领养缘由10','2023-05-06 09:50:11',1,NULL,'2023-05-06 09:50:11'),(12,12,2,'领养缘由12','2023-05-06 09:50:11',1,NULL,'2023-05-06 09:50:11'),(14,14,2,'领养缘由14','2023-05-06 09:50:11',2,'1233333333','2023-05-06 09:50:11'),(16,14,1,'原因111111111111111111111111111111111111111','2023-05-06 11:08:46',2,'11111111111111111','2023-05-06 11:08:46');

/*Table structure for table `chongwuyongpin` */

DROP TABLE IF EXISTS `chongwuyongpin`;

CREATE TABLE `chongwuyongpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwuyongpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `chongwuyongpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `chongwuyongpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `chongwuyongpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `chongwuyongpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `chongwuyongpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `chongwuyongpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `chongwuyongpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `chongwuyongpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `chongwuyongpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `chongwuyongpin` */

insert  into `chongwuyongpin`(`id`,`chongwuyongpin_name`,`chongwuyongpin_uuid_number`,`chongwuyongpin_photo`,`chongwuyongpin_types`,`chongwuyongpin_kucun_number`,`chongwuyongpin_old_money`,`chongwuyongpin_new_money`,`chongwuyongpin_clicknum`,`chongwuyongpin_content`,`shangxia_types`,`chongwuyongpin_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1683337811645','upload/chongwuyongpin1.jpg',3,101,'998.07','368.59',6,'商品介绍1',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,'商品名称2','1683337811578','upload/chongwuyongpin2.jpg',2,102,'853.86','77.56',49,'商品介绍2',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,'商品名称3','1683337811630','upload/chongwuyongpin3.jpg',3,103,'537.12','455.40',182,'商品介绍3',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,'商品名称4','1683337811650','upload/chongwuyongpin4.jpg',3,104,'535.13','122.94',500,'商品介绍4',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,'商品名称5','1683337811601','upload/chongwuyongpin5.jpg',3,105,'995.86','324.28',277,'商品介绍5',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,'商品名称6','1683337811562','upload/chongwuyongpin6.jpg',2,106,'718.30','53.37',251,'商品介绍6',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,'商品名称7','1683337811589','upload/chongwuyongpin7.jpg',1,107,'768.54','363.19',250,'商品介绍7',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,'商品名称8','1683337811598','upload/chongwuyongpin8.jpg',1,108,'963.23','401.84',489,'商品介绍8',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,'商品名称9','1683337811636','upload/chongwuyongpin9.jpg',3,109,'688.98','76.02',34,'商品介绍9',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,'商品名称10','1683337811562','upload/chongwuyongpin10.jpg',1,1009,'775.32','50.75',129,'商品介绍10',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,'商品名称11','1683337811658','upload/chongwuyongpin11.jpg',3,1011,'573.52','395.91',276,'商品介绍11',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,'商品名称12','1683337811596','upload/chongwuyongpin12.jpg',1,1012,'965.51','476.44',118,'商品介绍12',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,'商品名称13','1683337811600','upload/chongwuyongpin13.jpg',3,1013,'858.36','201.59',1,'商品介绍13',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,'商品名称14','1683337811657','upload/chongwuyongpin14.jpg',1,1014,'870.46','276.91',259,'商品介绍14',1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11');

/*Table structure for table `chongwuyongpin_collection` */

DROP TABLE IF EXISTS `chongwuyongpin_collection`;

CREATE TABLE `chongwuyongpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwuyongpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `chongwuyongpin_collection` */

insert  into `chongwuyongpin_collection`(`id`,`chongwuyongpin_id`,`yonghu_id`,`chongwuyongpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,2,1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,3,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,4,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,5,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,6,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,7,1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,8,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,9,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,10,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,11,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,12,1,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,13,3,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,14,2,1,'2023-05-06 09:50:11','2023-05-06 09:50:11'),(15,10,1,1,'2023-05-06 11:09:08','2023-05-06 11:09:08');

/*Table structure for table `chongwuyongpin_commentback` */

DROP TABLE IF EXISTS `chongwuyongpin_commentback`;

CREATE TABLE `chongwuyongpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwuyongpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `chongwuyongpin_commentback` */

insert  into `chongwuyongpin_commentback`(`id`,`chongwuyongpin_id`,`yonghu_id`,`chongwuyongpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-05-06 09:50:11','回复信息1','2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,2,1,'评价内容2','2023-05-06 09:50:11','回复信息2','2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,3,3,'评价内容3','2023-05-06 09:50:11','回复信息3','2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,4,1,'评价内容4','2023-05-06 09:50:11','回复信息4','2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,5,3,'评价内容5','2023-05-06 09:50:11','回复信息5','2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,6,3,'评价内容6','2023-05-06 09:50:11','回复信息6','2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,7,1,'评价内容7','2023-05-06 09:50:11','回复信息7','2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,8,2,'评价内容8','2023-05-06 09:50:11','回复信息8','2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,9,1,'评价内容9','2023-05-06 09:50:11','回复信息9','2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,10,3,'评价内容10','2023-05-06 09:50:11','回复信息10','2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,11,3,'评价内容11','2023-05-06 09:50:11','回复信息11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,12,3,'评价内容12','2023-05-06 09:50:11','回复信息12','2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,13,2,'评价内容13','2023-05-06 09:50:11','回复信息13','2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,14,3,'评价内容14','2023-05-06 09:50:11','回复信息14','2023-05-06 09:50:11','2023-05-06 09:50:11'),(15,10,1,'123123123123','2023-05-06 11:13:33','123123123','2023-05-06 11:13:41','2023-05-06 11:13:33');

/*Table structure for table `chongwuyongpin_order` */

DROP TABLE IF EXISTS `chongwuyongpin_order`;

CREATE TABLE `chongwuyongpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `chongwuyongpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `chongwuyongpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `chongwuyongpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `chongwuyongpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `chongwuyongpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `chongwuyongpin_order` */

insert  into `chongwuyongpin_order`(`id`,`chongwuyongpin_order_uuid_number`,`address_id`,`chongwuyongpin_id`,`yonghu_id`,`buy_number`,`chongwuyongpin_order_true_price`,`chongwuyongpin_order_courier_name`,`chongwuyongpin_order_courier_number`,`chongwuyongpin_order_types`,`chongwuyongpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1683342609216',12,10,1,1,'50.75','JD','123123123123123123',105,1,'2023-05-06 11:10:09','2023-05-06 11:10:09'),(2,'1683342609216',12,8,1,1,'401.84',NULL,NULL,102,1,'2023-05-06 11:10:09','2023-05-06 11:10:09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'chongwu_types','宠物类型',1,'宠物类型1',NULL,NULL,'2023-05-06 09:49:57'),(39,'chongwu_types','宠物类型',2,'宠物类型2',NULL,NULL,'2023-05-06 09:49:57'),(40,'chongwu_types','宠物类型',3,'宠物类型3',NULL,NULL,'2023-05-06 09:49:57'),(41,'zhuangtia_types','领养状态',1,'待领养',NULL,NULL,'2023-05-06 09:49:57'),(42,'zhuangtia_types','领养状态',2,'已领养',NULL,NULL,'2023-05-06 09:49:57'),(43,'chongwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-06 09:49:58'),(44,'chongwu_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-06 09:49:58'),(45,'chongwu_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-06 09:49:58'),(46,'chongwu_yuyue_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-06 09:49:58'),(47,'chongwu_yuyue_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-06 09:49:58'),(48,'chongwu_yuyue_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-06 09:49:58'),(49,'yuangong_types','员工部门',1,'仓库部门',NULL,NULL,'2023-05-06 09:49:58'),(50,'yuangong_types','员工部门',2,'饲养部门',NULL,NULL,'2023-05-06 09:49:59'),(51,'yuangong_types','员工部门',3,'财务部门',NULL,NULL,'2023-05-06 09:49:59'),(52,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-06 09:49:59'),(53,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-06 09:49:59'),(54,'chongwuyongpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-05-06 09:49:59'),(55,'chongwuyongpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-05-06 09:49:59'),(56,'chongwuyongpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-05-06 09:49:59'),(57,'chongwuyongpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-06 09:50:00'),(58,'chongwuyongpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-05-06 09:50:00'),(59,'chongwuyongpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-05-06 09:50:01'),(60,'chongwuyongpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-05-06 09:50:01'),(61,'chongwuyongpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-05-06 09:50:01'),(62,'chongwuyongpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-05-06 09:50:01'),(63,'chongwuyongpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-05-06 09:50:01'),(64,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-05-06 09:50:01'),(65,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-05-06 09:50:01'),(66,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-06 09:50:02'),(67,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-06 09:50:02'),(68,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-06 09:50:02'),(69,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-06 09:50:02'),(70,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-06 09:50:02'),(71,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-06 09:50:02');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`yuangong_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',495,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',154,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',434,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',298,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',192,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',386,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',119,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',253,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(9,'帖子标题9',3,NULL,NULL,'发布内容9',246,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',339,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',47,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(12,'帖子标题12',1,NULL,NULL,'发布内容12',302,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',66,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',141,1,'2023-05-06 09:50:11','2023-05-06 09:50:11','2023-05-06 09:50:11'),(15,NULL,1,NULL,NULL,'11111111111111111111111111111111',14,2,'2023-05-06 11:09:22',NULL,'2023-05-06 11:09:22'),(19,NULL,NULL,1,NULL,'22222222222222222222222222222222',14,2,'2023-05-06 11:12:14',NULL,'2023-05-06 11:12:14'),(20,NULL,NULL,NULL,1,'333333333333333333333333333333333333333',14,2,'2023-05-06 11:13:55',NULL,'2023-05-06 11:13:55');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-05-06 09:50:11','公告详情1','2023-05-06 09:50:11'),(2,'公告标题2',1,'upload/news2.jpg','2023-05-06 09:50:11','公告详情2','2023-05-06 09:50:11'),(3,'公告标题3',2,'upload/news3.jpg','2023-05-06 09:50:11','公告详情3','2023-05-06 09:50:11'),(4,'公告标题4',2,'upload/news4.jpg','2023-05-06 09:50:11','公告详情4','2023-05-06 09:50:11'),(5,'公告标题5',2,'upload/news5.jpg','2023-05-06 09:50:11','公告详情5','2023-05-06 09:50:11'),(6,'公告标题6',2,'upload/news6.jpg','2023-05-06 09:50:11','公告详情6','2023-05-06 09:50:11'),(7,'公告标题7',1,'upload/news7.jpg','2023-05-06 09:50:11','公告详情7','2023-05-06 09:50:11'),(8,'公告标题8',2,'upload/news8.jpg','2023-05-06 09:50:11','公告详情8','2023-05-06 09:50:11'),(9,'公告标题9',2,'upload/news9.jpg','2023-05-06 09:50:11','公告详情9','2023-05-06 09:50:11'),(10,'公告标题10',2,'upload/news10.jpg','2023-05-06 09:50:11','公告详情10','2023-05-06 09:50:11'),(11,'公告标题11',2,'upload/news11.jpg','2023-05-06 09:50:11','公告详情11','2023-05-06 09:50:11'),(12,'公告标题12',1,'upload/news12.jpg','2023-05-06 09:50:11','公告详情12','2023-05-06 09:50:11'),(13,'公告标题13',1,'upload/news13.jpg','2023-05-06 09:50:11','公告详情13','2023-05-06 09:50:11'),(14,'公告标题14',1,'upload/news14.jpg','2023-05-06 09:50:11','公告详情14','2023-05-06 09:50:11');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','sl8zwvxpjgoes8mq37mqwht6b7ogc4fk','2023-05-06 09:58:00','2023-05-06 12:12:23'),(2,1,'a1','yonghu','用户','y9terc00bbij6r2qtrfwpnc47aej34mo','2023-05-06 09:58:22','2023-05-06 12:08:40'),(3,1,'a1','yuangong','员工','5f64lhixdw4tx4kxlsulji77xwdeyx5y','2023-05-06 11:10:20','2023-05-06 12:14:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-06 09:49:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','1000279.71','2023-05-06 09:50:11'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','632.63','2023-05-06 09:50:11'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','173.84','2023-05-06 09:50:11');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工名称 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工图片 ',
  `yuangong_types` int(11) DEFAULT NULL COMMENT '员工部门 Search111',
  `yuangong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_email`,`sex_types`,`yuangong_photo`,`yuangong_types`,`yuangong_delete`,`create_time`) values (1,'a1','123456','员工名称1','17703786901','1@qq.com',1,'upload/yuangong1.jpg',1,1,'2023-05-06 09:50:11'),(2,'a2','123456','员工名称2','17703786902','2@qq.com',2,'upload/yuangong2.jpg',1,1,'2023-05-06 09:50:11'),(3,'a3','123456','员工名称3','17703786903','3@qq.com',2,'upload/yuangong3.jpg',2,1,'2023-05-06 09:50:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
