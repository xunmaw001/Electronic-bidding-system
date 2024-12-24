-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootbtw32
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootbtw32`
--

/*!40000 DROP DATABASE IF EXISTS `springbootbtw32`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootbtw32` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootbtw32`;

--
-- Table structure for table `bangzhuzhongxin`
--

DROP TABLE IF EXISTS `bangzhuzhongxin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bangzhuzhongxin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bangzhubiaoti` varchar(200) DEFAULT NULL COMMENT '帮助标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `bangzhufenlei` varchar(200) DEFAULT NULL COMMENT '帮助分类',
  `ziliaojianjie` varchar(200) DEFAULT NULL COMMENT '资料简介',
  `ziliaowenjian` varchar(200) DEFAULT NULL COMMENT '资料文件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='帮助中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangzhuzhongxin`
--

LOCK TABLES `bangzhuzhongxin` WRITE;
/*!40000 ALTER TABLE `bangzhuzhongxin` DISABLE KEYS */;
INSERT INTO `bangzhuzhongxin` VALUES (91,'2022-05-18 01:49:02','帮助标题1','upload/bangzhuzhongxin_fengmian1.jpg','责任单位','资料简介1','','2022-05-18 09:49:02'),(92,'2022-05-18 01:49:02','帮助标题2','upload/bangzhuzhongxin_fengmian2.jpg','责任单位','资料简介2','','2022-05-18 09:49:02'),(93,'2022-05-18 01:49:02','帮助标题3','upload/bangzhuzhongxin_fengmian3.jpg','责任单位','资料简介3','','2022-05-18 09:49:02'),(94,'2022-05-18 01:49:02','帮助标题4','upload/bangzhuzhongxin_fengmian4.jpg','责任单位','资料简介4','','2022-05-18 09:49:02'),(95,'2022-05-18 01:49:02','帮助标题5','upload/bangzhuzhongxin_fengmian5.jpg','责任单位','资料简介5','','2022-05-18 09:49:02'),(96,'2022-05-18 01:49:02','帮助标题6','upload/bangzhuzhongxin_fengmian6.jpg','责任单位','资料简介6','','2022-05-18 09:49:02');
/*!40000 ALTER TABLE `bangzhuzhongxin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaobiaoxiangmu`
--

DROP TABLE IF EXISTS `discusszhaobiaoxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaobiaoxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='招标项目评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaobiaoxiangmu`
--

LOCK TABLES `discusszhaobiaoxiangmu` WRITE;
/*!40000 ALTER TABLE `discusszhaobiaoxiangmu` DISABLE KEYS */;
INSERT INTO `discusszhaobiaoxiangmu` VALUES (121,'2022-05-18 01:49:02',1,1,'用户名1','评论内容1','回复内容1'),(122,'2022-05-18 01:49:02',2,2,'用户名2','评论内容2','回复内容2'),(123,'2022-05-18 01:49:02',3,3,'用户名3','评论内容3','回复内容3'),(124,'2022-05-18 01:49:02',4,4,'用户名4','评论内容4','回复内容4'),(125,'2022-05-18 01:49:02',5,5,'用户名5','评论内容5','回复内容5'),(126,'2022-05-18 01:49:02',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszhaobiaoxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `shibiema` varchar(200) NOT NULL COMMENT '识别码',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongyingshangfengmian` varchar(200) DEFAULT NULL COMMENT '供应商封面',
  `gongyingshangxingzhi` varchar(200) DEFAULT NULL COMMENT '供应商性质',
  `gongyingshangdianhua` varchar(200) DEFAULT NULL COMMENT '供应商电话',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gongyingshangdizhi` varchar(200) DEFAULT NULL COMMENT '供应商地址',
  `zizhizhengming` varchar(200) DEFAULT NULL COMMENT '资质证明',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shibiema` (`shibiema`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (21,'2022-05-18 01:49:02','供应商名称1','识别码1','123456','upload/gongyingshang_gongyingshangfengmian1.jpg','外资','020-89819991','负责人1','13823888881','供应商地址1','','是',''),(22,'2022-05-18 01:49:02','供应商名称2','识别码2','123456','upload/gongyingshang_gongyingshangfengmian2.jpg','外资','020-89819992','负责人2','13823888882','供应商地址2','','是',''),(23,'2022-05-18 01:49:02','供应商名称3','识别码3','123456','upload/gongyingshang_gongyingshangfengmian3.jpg','外资','020-89819993','负责人3','13823888883','供应商地址3','','是',''),(24,'2022-05-18 01:49:02','供应商名称4','识别码4','123456','upload/gongyingshang_gongyingshangfengmian4.jpg','外资','020-89819994','负责人4','13823888884','供应商地址4','','是',''),(25,'2022-05-18 01:49:02','供应商名称5','识别码5','123456','upload/gongyingshang_gongyingshangfengmian5.jpg','外资','020-89819995','负责人5','13823888885','供应商地址5','','是',''),(26,'2022-05-18 01:49:02','供应商名称6','识别码6','123456','upload/gongyingshang_gongyingshangfengmian6.jpg','外资','020-89819996','负责人6','13823888886','供应商地址6','','是','');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jieguogongshi`
--

DROP TABLE IF EXISTS `jieguogongshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jieguogongshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhaobiaofenlei` varchar(200) DEFAULT NULL COMMENT '招标分类',
  `zhaobiaodanwei` varchar(200) DEFAULT NULL COMMENT '招标单位',
  `gongshiqi` varchar(200) DEFAULT NULL COMMENT '公示期',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhongbiaohouxuanren` longtext COMMENT '中标候选人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmubianhao` (`xiangmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='结果公示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jieguogongshi`
--

LOCK TABLES `jieguogongshi` WRITE;
/*!40000 ALTER TABLE `jieguogongshi` DISABLE KEYS */;
INSERT INTO `jieguogongshi` VALUES (61,'2022-05-18 01:49:02','1111111111','项目名称1','upload/jieguogongshi_fengmian1.jpg','招标分类1','招标单位1','公示期1','2022-05-18 09:49:02','中标候选人1'),(62,'2022-05-18 01:49:02','2222222222','项目名称2','upload/jieguogongshi_fengmian2.jpg','招标分类2','招标单位2','公示期2','2022-05-18 09:49:02','中标候选人2'),(63,'2022-05-18 01:49:02','3333333333','项目名称3','upload/jieguogongshi_fengmian3.jpg','招标分类3','招标单位3','公示期3','2022-05-18 09:49:02','中标候选人3'),(64,'2022-05-18 01:49:02','4444444444','项目名称4','upload/jieguogongshi_fengmian4.jpg','招标分类4','招标单位4','公示期4','2022-05-18 09:49:02','中标候选人4'),(65,'2022-05-18 01:49:02','5555555555','项目名称5','upload/jieguogongshi_fengmian5.jpg','招标分类5','招标单位5','公示期5','2022-05-18 09:49:02','中标候选人5'),(66,'2022-05-18 01:49:02','6666666666','项目名称6','upload/jieguogongshi_fengmian6.jpg','招标分类6','招标单位6','公示期6','2022-05-18 09:49:02','中标候选人6');
/*!40000 ALTER TABLE `jieguogongshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shichangjiandu`
--

DROP TABLE IF EXISTS `shichangjiandu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shichangjiandu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) DEFAULT NULL COMMENT '序号',
  `xingyeleibie` varchar(200) DEFAULT NULL COMMENT '行业类别',
  `danweimingcheng` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `shibiema` varchar(200) NOT NULL COMMENT '识别码',
  `danweifengmian` varchar(200) DEFAULT NULL COMMENT '单位封面',
  `danweixingzhi` varchar(200) DEFAULT NULL COMMENT '单位性质',
  `danweidianhua` varchar(200) DEFAULT NULL COMMENT '单位电话',
  `farendaibiao` varchar(200) DEFAULT NULL COMMENT '法人代表',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `danweidizhi` varchar(200) DEFAULT NULL COMMENT '单位地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuhao` (`xuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='市场监督';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shichangjiandu`
--

LOCK TABLES `shichangjiandu` WRITE;
/*!40000 ALTER TABLE `shichangjiandu` DISABLE KEYS */;
INSERT INTO `shichangjiandu` VALUES (81,'2022-05-18 01:49:02','序号1','行业类别1','单位名称1','识别码1','upload/shichangjiandu_danweifengmian1.jpg','单位性质1','020-89819991','法人代表1','13823888881','单位地址1'),(82,'2022-05-18 01:49:02','序号2','行业类别2','单位名称2','识别码2','upload/shichangjiandu_danweifengmian2.jpg','单位性质2','020-89819992','法人代表2','13823888882','单位地址2'),(83,'2022-05-18 01:49:02','序号3','行业类别3','单位名称3','识别码3','upload/shichangjiandu_danweifengmian3.jpg','单位性质3','020-89819993','法人代表3','13823888883','单位地址3'),(84,'2022-05-18 01:49:02','序号4','行业类别4','单位名称4','识别码4','upload/shichangjiandu_danweifengmian4.jpg','单位性质4','020-89819994','法人代表4','13823888884','单位地址4'),(85,'2022-05-18 01:49:02','序号5','行业类别5','单位名称5','识别码5','upload/shichangjiandu_danweifengmian5.jpg','单位性质5','020-89819995','法人代表5','13823888885','单位地址5'),(86,'2022-05-18 01:49:02','序号6','行业类别6','单位名称6','识别码6','upload/shichangjiandu_danweifengmian6.jpg','单位性质6','020-89819996','法人代表6','13823888886','单位地址6');
/*!40000 ALTER TABLE `shichangjiandu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'单位名称1','zerendanwei','责任单位','0l28lud31f4lkut7i4sq1fhs0tq6nkr8','2022-05-18 01:50:27','2022-05-18 02:50:28');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-18 01:49:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwengonggao`
--

DROP TABLE IF EXISTS `xinwengonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwengonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xinwenfenlei` varchar(200) DEFAULT NULL COMMENT '新闻分类',
  `xinwenneirong` longtext COMMENT '新闻内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='新闻公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwengonggao`
--

LOCK TABLES `xinwengonggao` WRITE;
/*!40000 ALTER TABLE `xinwengonggao` DISABLE KEYS */;
INSERT INTO `xinwengonggao` VALUES (101,'2022-05-18 01:49:02','新闻标题1','upload/xinwengonggao_fengmian1.jpg','招标咨询','新闻内容1','2022-05-18'),(102,'2022-05-18 01:49:02','新闻标题2','upload/xinwengonggao_fengmian2.jpg','招标咨询','新闻内容2','2022-05-18'),(103,'2022-05-18 01:49:02','新闻标题3','upload/xinwengonggao_fengmian3.jpg','招标咨询','新闻内容3','2022-05-18'),(104,'2022-05-18 01:49:02','新闻标题4','upload/xinwengonggao_fengmian4.jpg','招标咨询','新闻内容4','2022-05-18'),(105,'2022-05-18 01:49:02','新闻标题5','upload/xinwengonggao_fengmian5.jpg','招标咨询','新闻内容5','2022-05-18'),(106,'2022-05-18 01:49:02','新闻标题6','upload/xinwengonggao_fengmian6.jpg','招标咨询','新闻内容6','2022-05-18');
/*!40000 ALTER TABLE `xinwengonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiantoubiao`
--

DROP TABLE IF EXISTS `zaixiantoubiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiantoubiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `toubiaobianhao` varchar(200) DEFAULT NULL COMMENT '投标编号',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhaobiaofenlei` varchar(200) DEFAULT NULL COMMENT '招标分类',
  `zhaobiaodanwei` varchar(200) DEFAULT NULL COMMENT '招标单位',
  `toubiaowenjian` varchar(200) NOT NULL COMMENT '投标文件',
  `toubiaojiage` float DEFAULT NULL COMMENT '投标价格',
  `toubiaoneirong` longtext COMMENT '投标内容',
  `toubiaoshijian` datetime DEFAULT NULL COMMENT '投标时间',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `toubiaobianhao` (`toubiaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线投标';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiantoubiao`
--

LOCK TABLES `zaixiantoubiao` WRITE;
/*!40000 ALTER TABLE `zaixiantoubiao` DISABLE KEYS */;
INSERT INTO `zaixiantoubiao` VALUES (51,'2022-05-18 01:49:02','1111111111','项目编号1','项目名称1','upload/zaixiantoubiao_fengmian1.jpg','招标分类1','招标单位1','',1,'投标内容1','2022-05-18 09:49:02','供应商名称1','负责人1','13823888881','是',''),(52,'2022-05-18 01:49:02','2222222222','项目编号2','项目名称2','upload/zaixiantoubiao_fengmian2.jpg','招标分类2','招标单位2','',2,'投标内容2','2022-05-18 09:49:02','供应商名称2','负责人2','13823888882','是',''),(53,'2022-05-18 01:49:02','3333333333','项目编号3','项目名称3','upload/zaixiantoubiao_fengmian3.jpg','招标分类3','招标单位3','',3,'投标内容3','2022-05-18 09:49:02','供应商名称3','负责人3','13823888883','是',''),(54,'2022-05-18 01:49:02','4444444444','项目编号4','项目名称4','upload/zaixiantoubiao_fengmian4.jpg','招标分类4','招标单位4','',4,'投标内容4','2022-05-18 09:49:02','供应商名称4','负责人4','13823888884','是',''),(55,'2022-05-18 01:49:02','5555555555','项目编号5','项目名称5','upload/zaixiantoubiao_fengmian5.jpg','招标分类5','招标单位5','',5,'投标内容5','2022-05-18 09:49:02','供应商名称5','负责人5','13823888885','是',''),(56,'2022-05-18 01:49:02','6666666666','项目编号6','项目名称6','upload/zaixiantoubiao_fengmian6.jpg','招标分类6','招标单位6','',6,'投标内容6','2022-05-18 09:49:02','供应商名称6','负责人6','13823888886','是','');
/*!40000 ALTER TABLE `zaixiantoubiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zerendanwei`
--

DROP TABLE IF EXISTS `zerendanwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zerendanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danweimingcheng` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `shibiema` varchar(200) NOT NULL COMMENT '识别码',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `danweifengmian` varchar(200) DEFAULT NULL COMMENT '单位封面',
  `danweixingzhi` varchar(200) DEFAULT NULL COMMENT '单位性质',
  `danweidianhua` varchar(200) DEFAULT NULL COMMENT '单位电话',
  `farendaibiao` varchar(200) DEFAULT NULL COMMENT '法人代表',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `danweidizhi` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `zizhizhengming` varchar(200) DEFAULT NULL COMMENT '资质证明',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shibiema` (`shibiema`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='责任单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zerendanwei`
--

LOCK TABLES `zerendanwei` WRITE;
/*!40000 ALTER TABLE `zerendanwei` DISABLE KEYS */;
INSERT INTO `zerendanwei` VALUES (11,'2022-05-18 01:49:02','单位名称1','识别码1','123456','upload/zerendanwei_danweifengmian1.jpg','外资','020-89819991','法人代表1','13823888881','单位地址1','','是',''),(12,'2022-05-18 01:49:02','单位名称2','识别码2','123456','upload/zerendanwei_danweifengmian2.jpg','外资','020-89819992','法人代表2','13823888882','单位地址2','','是',''),(13,'2022-05-18 01:49:02','单位名称3','识别码3','123456','upload/zerendanwei_danweifengmian3.jpg','外资','020-89819993','法人代表3','13823888883','单位地址3','','是',''),(14,'2022-05-18 01:49:02','单位名称4','识别码4','123456','upload/zerendanwei_danweifengmian4.jpg','外资','020-89819994','法人代表4','13823888884','单位地址4','','是',''),(15,'2022-05-18 01:49:02','单位名称5','识别码5','123456','upload/zerendanwei_danweifengmian5.jpg','外资','020-89819995','法人代表5','13823888885','单位地址5','','是',''),(16,'2022-05-18 01:49:02','单位名称6','识别码6','123456','upload/zerendanwei_danweifengmian6.jpg','外资','020-89819996','法人代表6','13823888886','单位地址6','','是','');
/*!40000 ALTER TABLE `zerendanwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaobiaofenlei`
--

DROP TABLE IF EXISTS `zhaobiaofenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaobiaofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaobiaofenlei` varchar(200) DEFAULT NULL COMMENT '招标分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='招标分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaobiaofenlei`
--

LOCK TABLES `zhaobiaofenlei` WRITE;
/*!40000 ALTER TABLE `zhaobiaofenlei` DISABLE KEYS */;
INSERT INTO `zhaobiaofenlei` VALUES (31,'2022-05-18 01:49:02','招标分类1'),(32,'2022-05-18 01:49:02','招标分类2'),(33,'2022-05-18 01:49:02','招标分类3'),(34,'2022-05-18 01:49:02','招标分类4'),(35,'2022-05-18 01:49:02','招标分类5'),(36,'2022-05-18 01:49:02','招标分类6');
/*!40000 ALTER TABLE `zhaobiaofenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaobiaoxiangmu`
--

DROP TABLE IF EXISTS `zhaobiaoxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaobiaoxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhaobiaofenlei` varchar(200) DEFAULT NULL COMMENT '招标分类',
  `zhaobiaowenjian` varchar(200) DEFAULT NULL COMMENT '招标文件',
  `jiezhishijian` date DEFAULT NULL COMMENT '截止时间',
  `zhaobiaoxiangqing` longtext COMMENT '招标详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhaobiaodanwei` varchar(200) DEFAULT NULL COMMENT '招标单位',
  `danweidianhua` varchar(200) DEFAULT NULL COMMENT '单位电话',
  `farendaibiao` varchar(200) DEFAULT NULL COMMENT '法人代表',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmubianhao` (`xiangmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='招标项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaobiaoxiangmu`
--

LOCK TABLES `zhaobiaoxiangmu` WRITE;
/*!40000 ALTER TABLE `zhaobiaoxiangmu` DISABLE KEYS */;
INSERT INTO `zhaobiaoxiangmu` VALUES (41,'2022-05-18 01:49:02','1111111111','项目名称1','upload/zhaobiaoxiangmu_fengmian1.jpg','招标分类1','','2022-05-18','招标详情1','2022-05-18 09:49:02','招标单位1','020-89819991','法人代表1','是','','2022-05-18 09:49:02',1),(42,'2022-05-18 01:49:02','2222222222','项目名称2','upload/zhaobiaoxiangmu_fengmian2.jpg','招标分类2','','2022-05-18','招标详情2','2022-05-18 09:49:02','招标单位2','020-89819992','法人代表2','是','','2022-05-18 09:49:02',2),(43,'2022-05-18 01:49:02','3333333333','项目名称3','upload/zhaobiaoxiangmu_fengmian3.jpg','招标分类3','','2022-05-18','招标详情3','2022-05-18 09:49:02','招标单位3','020-89819993','法人代表3','是','','2022-05-18 09:49:02',3),(44,'2022-05-18 01:49:02','4444444444','项目名称4','upload/zhaobiaoxiangmu_fengmian4.jpg','招标分类4','','2022-05-18','招标详情4','2022-05-18 09:49:02','招标单位4','020-89819994','法人代表4','是','','2022-05-18 09:49:02',4),(45,'2022-05-18 01:49:02','5555555555','项目名称5','upload/zhaobiaoxiangmu_fengmian5.jpg','招标分类5','','2022-05-18','招标详情5','2022-05-18 09:49:02','招标单位5','020-89819995','法人代表5','是','','2022-05-18 09:49:02',5),(46,'2022-05-18 01:49:02','6666666666','项目名称6','upload/zhaobiaoxiangmu_fengmian6.jpg','招标分类6','','2022-05-18','招标详情6','2022-05-18 09:49:02','招标单位6','020-89819996','法人代表6','是','','2022-05-18 09:49:02',6);
/*!40000 ALTER TABLE `zhaobiaoxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhongbiaogonggao`
--

DROP TABLE IF EXISTS `zhongbiaogonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhongbiaogonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhaobiaofenlei` varchar(200) DEFAULT NULL COMMENT '招标分类',
  `zhaobiaodanwei` varchar(200) DEFAULT NULL COMMENT '招标单位',
  `toubiaobianhao` varchar(200) DEFAULT NULL COMMENT '投标编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `toubiaojiage` float DEFAULT NULL COMMENT '投标价格',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `toubiaoxiangqing` longtext COMMENT '投标详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='中标公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhongbiaogonggao`
--

LOCK TABLES `zhongbiaogonggao` WRITE;
/*!40000 ALTER TABLE `zhongbiaogonggao` DISABLE KEYS */;
INSERT INTO `zhongbiaogonggao` VALUES (71,'2022-05-18 01:49:02','项目名称1','upload/zhongbiaogonggao_fengmian1.jpg','招标分类1','招标单位1','投标编号1','供应商名称1',1,'2022-05-18 09:49:02','投标详情1'),(72,'2022-05-18 01:49:02','项目名称2','upload/zhongbiaogonggao_fengmian2.jpg','招标分类2','招标单位2','投标编号2','供应商名称2',2,'2022-05-18 09:49:02','投标详情2'),(73,'2022-05-18 01:49:02','项目名称3','upload/zhongbiaogonggao_fengmian3.jpg','招标分类3','招标单位3','投标编号3','供应商名称3',3,'2022-05-18 09:49:02','投标详情3'),(74,'2022-05-18 01:49:02','项目名称4','upload/zhongbiaogonggao_fengmian4.jpg','招标分类4','招标单位4','投标编号4','供应商名称4',4,'2022-05-18 09:49:02','投标详情4'),(75,'2022-05-18 01:49:02','项目名称5','upload/zhongbiaogonggao_fengmian5.jpg','招标分类5','招标单位5','投标编号5','供应商名称5',5,'2022-05-18 09:49:02','投标详情5'),(76,'2022-05-18 01:49:02','项目名称6','upload/zhongbiaogonggao_fengmian6.jpg','招标分类6','招标单位6','投标编号6','供应商名称6',6,'2022-05-18 09:49:02','投标详情6');
/*!40000 ALTER TABLE `zhongbiaogonggao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18 10:36:30
