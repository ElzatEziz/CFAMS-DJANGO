-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangok0o7w
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
-- Current Database: `djangok0o7w`
--

/*!40000 DROP DATABASE IF EXISTS `djangok0o7w`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangok0o7w` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `djangok0o7w`;

--
-- Table structure for table `bumen`
--

DROP TABLE IF EXISTS `bumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) NOT NULL COMMENT '部门',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumen` (`bumen`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumen`
--

LOCK TABLES `bumen` WRITE;
/*!40000 ALTER TABLE `bumen` DISABLE KEYS */;
INSERT INTO `bumen` VALUES (31,'2022-03-11 14:52:14','部门1'),(32,'2022-03-11 14:52:14','部门2'),(33,'2022-03-11 14:52:14','部门3'),(34,'2022-03-11 14:52:14','部门4'),(35,'2022-03-11 14:52:14','部门5'),(36,'2022-03-11 14:52:14','部门6');
/*!40000 ALTER TABLE `bumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bumenguanliyuan`
--

DROP TABLE IF EXISTS `bumenguanliyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bumenguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='部门管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenguanliyuan`
--

LOCK TABLES `bumenguanliyuan` WRITE;
/*!40000 ALTER TABLE `bumenguanliyuan` DISABLE KEYS */;
INSERT INTO `bumenguanliyuan` VALUES (41,'2022-03-11 14:52:14','用户名1','123456','姓名1','男','upload/bumenguanliyuan_zhaopian1.jpg','部门1','13823888881'),(42,'2022-03-11 14:52:14','用户名2','123456','姓名2','男','upload/bumenguanliyuan_zhaopian2.jpg','部门2','13823888882'),(43,'2022-03-11 14:52:14','用户名3','123456','姓名3','男','upload/bumenguanliyuan_zhaopian3.jpg','部门3','13823888883'),(44,'2022-03-11 14:52:14','用户名4','123456','姓名4','男','upload/bumenguanliyuan_zhaopian4.jpg','部门4','13823888884'),(45,'2022-03-11 14:52:14','用户名5','123456','姓名5','男','upload/bumenguanliyuan_zhaopian5.jpg','部门5','13823888885'),(46,'2022-03-11 14:52:14','用户名6','123456','姓名6','男','upload/bumenguanliyuan_zhaopian6.jpg','部门6','13823888886');
/*!40000 ALTER TABLE `bumenguanliyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caiwuyuan`
--

DROP TABLE IF EXISTS `caiwuyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caiwuyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caiwugonghao` varchar(200) NOT NULL COMMENT '财务工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `caiwuxingming` varchar(200) DEFAULT NULL COMMENT '财务姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caiwugonghao` (`caiwugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='财务员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caiwuyuan`
--

LOCK TABLES `caiwuyuan` WRITE;
/*!40000 ALTER TABLE `caiwuyuan` DISABLE KEYS */;
INSERT INTO `caiwuyuan` VALUES (11,'2022-03-11 14:52:14','财务工号1','123456','财务姓名1','upload/caiwuyuan_touxiang1.jpg','男','财务员','13823888881'),(12,'2022-03-11 14:52:14','财务工号2','123456','财务姓名2','upload/caiwuyuan_touxiang2.jpg','男','财务员','13823888882'),(13,'2022-03-11 14:52:14','财务工号3','123456','财务姓名3','upload/caiwuyuan_touxiang3.jpg','男','财务员','13823888883'),(14,'2022-03-11 14:52:14','财务工号4','123456','财务姓名4','upload/caiwuyuan_touxiang4.jpg','男','财务员','13823888884'),(15,'2022-03-11 14:52:14','财务工号5','123456','财务姓名5','upload/caiwuyuan_touxiang5.jpg','男','财务员','13823888885'),(16,'2022-03-11 14:52:14','财务工号6','123456','财务姓名6','upload/caiwuyuan_touxiang6.jpg','男','财务员','13823888886');
/*!40000 ALTER TABLE `caiwuyuan` ENABLE KEYS */;
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
-- Table structure for table `shengouruku`
--

DROP TABLE IF EXISTS `shengouruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengouruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `caigoujiaqian` int(11) NOT NULL COMMENT '采购价钱',
  `zichanshuliang` int(11) NOT NULL COMMENT '资产数量',
  `caigoujine` int(11) DEFAULT NULL COMMENT '采购金额',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `rukushuoming` longtext COMMENT '入库说明',
  `caiwugonghao` varchar(200) DEFAULT NULL COMMENT '财务工号',
  `caiwuxingming` varchar(200) DEFAULT NULL COMMENT '财务姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='申购入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengouruku`
--

LOCK TABLES `shengouruku` WRITE;
/*!40000 ALTER TABLE `shengouruku` DISABLE KEYS */;
INSERT INTO `shengouruku` VALUES (91,'2022-03-11 14:52:14','1111111111','资产名称1','资产类型1','upload/shengouruku_zichantupian1.jpg',1,1,1,'2022-03-11','入库说明1','财务工号1','财务姓名1'),(92,'2022-03-11 14:52:14','2222222222','资产名称2','资产类型2','upload/shengouruku_zichantupian2.jpg',2,2,2,'2022-03-11','入库说明2','财务工号2','财务姓名2'),(93,'2022-03-11 14:52:14','3333333333','资产名称3','资产类型3','upload/shengouruku_zichantupian3.jpg',3,3,3,'2022-03-11','入库说明3','财务工号3','财务姓名3'),(94,'2022-03-11 14:52:14','4444444444','资产名称4','资产类型4','upload/shengouruku_zichantupian4.jpg',4,4,4,'2022-03-11','入库说明4','财务工号4','财务姓名4'),(95,'2022-03-11 14:52:14','5555555555','资产名称5','资产类型5','upload/shengouruku_zichantupian5.jpg',5,5,5,'2022-03-11','入库说明5','财务工号5','财务姓名5'),(96,'2022-03-11 14:52:14','6666666666','资产名称6','资产类型6','upload/shengouruku_zichantupian6.jpg',6,6,6,'2022-03-11','入库说明6','财务工号6','财务姓名6');
/*!40000 ALTER TABLE `shengouruku` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','o0bxm56f3bnvvjq06lenad2ut6zzwcwr','2022-03-11 14:53:52','2022-03-11 15:53:52'),(2,41,'用户名1','bumenguanliyuan','部门管理员','6354rkvpc4aetc72q5v277uaglfhk3q7','2022-03-11 14:54:08','2022-03-11 15:54:09'),(3,21,'账号1','xiaojiguanliyuan','校级管理员','gqpfckagfkelr89mm0f8s9hgyul3zlwy','2022-03-11 14:54:31','2022-03-11 15:54:31'),(4,11,'财务工号1','caiwuyuan','财务员','py7la9fh1wh905rhuxaz7y8cmwke8r7w','2022-03-11 14:55:32','2022-03-11 15:55:32');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-11 14:52:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiufushen`
--

DROP TABLE IF EXISTS `weixiufushen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiufushen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichanpinpai` varchar(200) DEFAULT NULL COMMENT '资产品牌',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `baoxiushuliang` int(11) DEFAULT NULL COMMENT '报修数量',
  `baoxiushuoming` longtext COMMENT '报修说明',
  `fushenriqi` date DEFAULT NULL COMMENT '复审日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647010495594 DEFAULT CHARSET=utf8 COMMENT='维修复审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiufushen`
--

LOCK TABLES `weixiufushen` WRITE;
/*!40000 ALTER TABLE `weixiufushen` DISABLE KEYS */;
INSERT INTO `weixiufushen` VALUES (141,'2022-03-11 14:52:14','资产名称1','资产类型1','资产品牌1',1,1,'报修说明1','2022-03-11','用户名1','部门1','13823888881','是',''),(142,'2022-03-11 14:52:14','资产名称2','资产类型2','资产品牌2',2,2,'报修说明2','2022-03-11','用户名2','部门2','13823888882','是',''),(143,'2022-03-11 14:52:14','资产名称3','资产类型3','资产品牌3',3,3,'报修说明3','2022-03-11','用户名3','部门3','13823888883','是',''),(144,'2022-03-11 14:52:14','资产名称4','资产类型4','资产品牌4',4,4,'报修说明4','2022-03-11','用户名4','部门4','13823888884','是',''),(145,'2022-03-11 14:52:14','资产名称5','资产类型5','资产品牌5',5,5,'报修说明5','2022-03-11','用户名5','部门5','13823888885','是',''),(146,'2022-03-11 14:52:14','资产名称6','资产类型6','资产品牌6',6,6,'报修说明6','2022-03-11','用户名6','部门6','13823888886','是',''),(1647010495593,'2022-03-11 14:54:55','资产名称1','资产类型1','资产品牌1',3,1,'1111','2022-03-11','用户名1','部门1','13823888881','是','同意');
/*!40000 ALTER TABLE `weixiufushen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaojiguanliyuan`
--

DROP TABLE IF EXISTS `xiaojiguanliyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaojiguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='校级管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaojiguanliyuan`
--

LOCK TABLES `xiaojiguanliyuan` WRITE;
/*!40000 ALTER TABLE `xiaojiguanliyuan` DISABLE KEYS */;
INSERT INTO `xiaojiguanliyuan` VALUES (21,'2022-03-11 14:52:14','账号1','123456','姓名1','upload/xiaojiguanliyuan_zhaopian1.jpg','男','13823888881'),(22,'2022-03-11 14:52:14','账号2','123456','姓名2','upload/xiaojiguanliyuan_zhaopian2.jpg','男','13823888882'),(23,'2022-03-11 14:52:14','账号3','123456','姓名3','upload/xiaojiguanliyuan_zhaopian3.jpg','男','13823888883'),(24,'2022-03-11 14:52:14','账号4','123456','姓名4','upload/xiaojiguanliyuan_zhaopian4.jpg','男','13823888884'),(25,'2022-03-11 14:52:14','账号5','123456','姓名5','upload/xiaojiguanliyuan_zhaopian5.jpg','男','13823888885'),(26,'2022-03-11 14:52:14','账号6','123456','姓名6','upload/xiaojiguanliyuan_zhaopian6.jpg','男','13823888886');
/*!40000 ALTER TABLE `xiaojiguanliyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanbaofei`
--

DROP TABLE IF EXISTS `zichanbaofei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanbaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baofeibianhao` varchar(200) DEFAULT NULL COMMENT '报废编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `baofeishuoming` longtext COMMENT '报废说明',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baofeibianhao` (`baofeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='资产报废';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanbaofei`
--

LOCK TABLES `zichanbaofei` WRITE;
/*!40000 ALTER TABLE `zichanbaofei` DISABLE KEYS */;
INSERT INTO `zichanbaofei` VALUES (111,'2022-03-11 14:52:14','1111111111','资产名称1','upload/zichanbaofei_zichantupian1.jpg',1,'2022-03-11','报废说明1','用户名1','部门1','姓名1','是',''),(112,'2022-03-11 14:52:14','2222222222','资产名称2','upload/zichanbaofei_zichantupian2.jpg',2,'2022-03-11','报废说明2','用户名2','部门2','姓名2','是',''),(113,'2022-03-11 14:52:14','3333333333','资产名称3','upload/zichanbaofei_zichantupian3.jpg',3,'2022-03-11','报废说明3','用户名3','部门3','姓名3','是',''),(114,'2022-03-11 14:52:14','4444444444','资产名称4','upload/zichanbaofei_zichantupian4.jpg',4,'2022-03-11','报废说明4','用户名4','部门4','姓名4','是',''),(115,'2022-03-11 14:52:14','5555555555','资产名称5','upload/zichanbaofei_zichantupian5.jpg',5,'2022-03-11','报废说明5','用户名5','部门5','姓名5','是',''),(116,'2022-03-11 14:52:14','6666666666','资产名称6','upload/zichanbaofei_zichantupian6.jpg',6,'2022-03-11','报废说明6','用户名6','部门6','姓名6','是','');
/*!40000 ALTER TABLE `zichanbaofei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanchuku`
--

DROP TABLE IF EXISTS `zichanchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichanpinpai` varchar(200) DEFAULT NULL COMMENT '资产品牌',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `zichanshuliang` int(11) NOT NULL COMMENT '资产数量',
  `chukuriqi` date DEFAULT NULL COMMENT '出库日期',
  `chukushuoming` longtext COMMENT '出库说明',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='资产出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanchuku`
--

LOCK TABLES `zichanchuku` WRITE;
/*!40000 ALTER TABLE `zichanchuku` DISABLE KEYS */;
INSERT INTO `zichanchuku` VALUES (101,'2022-03-11 14:52:14','1111111111','资产名称1','资产类型1','资产品牌1','upload/zichanchuku_zichantupian1.jpg',3,'2022-03-11','出库说明1','用户名1','部门1','姓名1'),(102,'2022-03-11 14:52:14','2222222222','资产名称2','资产类型2','资产品牌2','upload/zichanchuku_zichantupian2.jpg',2,'2022-03-11','出库说明2','用户名2','部门2','姓名2'),(103,'2022-03-11 14:52:14','3333333333','资产名称3','资产类型3','资产品牌3','upload/zichanchuku_zichantupian3.jpg',3,'2022-03-11','出库说明3','用户名3','部门3','姓名3'),(104,'2022-03-11 14:52:14','4444444444','资产名称4','资产类型4','资产品牌4','upload/zichanchuku_zichantupian4.jpg',4,'2022-03-11','出库说明4','用户名4','部门4','姓名4'),(105,'2022-03-11 14:52:14','5555555555','资产名称5','资产类型5','资产品牌5','upload/zichanchuku_zichantupian5.jpg',5,'2022-03-11','出库说明5','用户名5','部门5','姓名5'),(106,'2022-03-11 14:52:14','6666666666','资产名称6','资产类型6','资产品牌6','upload/zichanchuku_zichantupian6.jpg',6,'2022-03-11','出库说明6','用户名6','部门6','姓名6');
/*!40000 ALTER TABLE `zichanchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichandiaobo`
--

DROP TABLE IF EXISTS `zichandiaobo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichandiaobo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tiaobobianhao` varchar(200) DEFAULT NULL COMMENT '挑拨编号',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichanpinpai` varchar(200) DEFAULT NULL COMMENT '资产品牌',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `diaoboshuliang` int(11) NOT NULL COMMENT '调拨数量',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `shenqingneirong` longtext COMMENT '申请内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tiaobobianhao` (`tiaobobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='资产调拨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichandiaobo`
--

LOCK TABLES `zichandiaobo` WRITE;
/*!40000 ALTER TABLE `zichandiaobo` DISABLE KEYS */;
INSERT INTO `zichandiaobo` VALUES (71,'2022-03-11 14:52:14','1111111111','资产名称1','资产类型1','资产品牌1',1,1,'2022-03-11','申请内容1','用户名1','姓名1','部门1','13823888881','是',''),(72,'2022-03-11 14:52:14','2222222222','资产名称2','资产类型2','资产品牌2',2,2,'2022-03-11','申请内容2','用户名2','姓名2','部门2','13823888882','是',''),(73,'2022-03-11 14:52:14','3333333333','资产名称3','资产类型3','资产品牌3',3,3,'2022-03-11','申请内容3','用户名3','姓名3','部门3','13823888883','是',''),(74,'2022-03-11 14:52:14','4444444444','资产名称4','资产类型4','资产品牌4',4,4,'2022-03-11','申请内容4','用户名4','姓名4','部门4','13823888884','是',''),(75,'2022-03-11 14:52:14','5555555555','资产名称5','资产类型5','资产品牌5',5,5,'2022-03-11','申请内容5','用户名5','姓名5','部门5','13823888885','是',''),(76,'2022-03-11 14:52:14','6666666666','资产名称6','资产类型6','资产品牌6',6,6,'2022-03-11','申请内容6','用户名6','姓名6','部门6','13823888886','是','');
/*!40000 ALTER TABLE `zichandiaobo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanleixing`
--

DROP TABLE IF EXISTS `zichanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanleixing` varchar(200) NOT NULL COMMENT '资产类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanleixing` (`zichanleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='资产类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanleixing`
--

LOCK TABLES `zichanleixing` WRITE;
/*!40000 ALTER TABLE `zichanleixing` DISABLE KEYS */;
INSERT INTO `zichanleixing` VALUES (51,'2022-03-11 14:52:14','资产类型1'),(52,'2022-03-11 14:52:14','资产类型2'),(53,'2022-03-11 14:52:14','资产类型3'),(54,'2022-03-11 14:52:14','资产类型4'),(55,'2022-03-11 14:52:14','资产类型5'),(56,'2022-03-11 14:52:14','资产类型6');
/*!40000 ALTER TABLE `zichanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanpandian`
--

DROP TABLE IF EXISTS `zichanpandian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanpandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichanpinpai` varchar(200) DEFAULT NULL COMMENT '资产品牌',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `pandianshuliang` int(11) NOT NULL COMMENT '盘点数量',
  `pandianqingkuang` varchar(200) NOT NULL COMMENT '盘点情况',
  `pandianshuoming` longtext COMMENT '盘点说明',
  `pandianriqi` date DEFAULT NULL COMMENT '盘点日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='资产盘点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanpandian`
--

LOCK TABLES `zichanpandian` WRITE;
/*!40000 ALTER TABLE `zichanpandian` DISABLE KEYS */;
INSERT INTO `zichanpandian` VALUES (131,'2022-03-11 14:52:14','资产名称1','资产类型1','资产品牌1',1,1,'正常','盘点说明1','2022-03-11','是',''),(132,'2022-03-11 14:52:14','资产名称2','资产类型2','资产品牌2',2,2,'正常','盘点说明2','2022-03-11','是',''),(133,'2022-03-11 14:52:14','资产名称3','资产类型3','资产品牌3',3,3,'正常','盘点说明3','2022-03-11','是',''),(134,'2022-03-11 14:52:14','资产名称4','资产类型4','资产品牌4',4,4,'正常','盘点说明4','2022-03-11','是',''),(135,'2022-03-11 14:52:14','资产名称5','资产类型5','资产品牌5',5,5,'正常','盘点说明5','2022-03-11','是',''),(136,'2022-03-11 14:52:14','资产名称6','资产类型6','资产品牌6',6,6,'正常','盘点说明6','2022-03-11','是','');
/*!40000 ALTER TABLE `zichanpandian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanshengou`
--

DROP TABLE IF EXISTS `zichanshengou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanshengou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichanpinpai` varchar(200) DEFAULT NULL COMMENT '资产品牌',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `shengoushuliang` int(11) NOT NULL COMMENT '申购数量',
  `shengoushuoming` longtext COMMENT '申购说明',
  `shengouriqi` date DEFAULT NULL COMMENT '申购日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='资产申购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanshengou`
--

LOCK TABLES `zichanshengou` WRITE;
/*!40000 ALTER TABLE `zichanshengou` DISABLE KEYS */;
INSERT INTO `zichanshengou` VALUES (81,'2022-03-11 14:52:14','资产名称1','资产类型1','资产品牌1',1,1,'申购说明1','2022-03-11','账号1','是',''),(82,'2022-03-11 14:52:14','资产名称2','资产类型2','资产品牌2',2,2,'申购说明2','2022-03-11','账号2','是',''),(83,'2022-03-11 14:52:14','资产名称3','资产类型3','资产品牌3',3,3,'申购说明3','2022-03-11','账号3','是',''),(84,'2022-03-11 14:52:14','资产名称4','资产类型4','资产品牌4',4,4,'申购说明4','2022-03-11','账号4','是',''),(85,'2022-03-11 14:52:14','资产名称5','资产类型5','资产品牌5',5,5,'申购说明5','2022-03-11','账号5','是',''),(86,'2022-03-11 14:52:14','资产名称6','资产类型6','资产品牌6',6,6,'申购说明6','2022-03-11','账号6','是','');
/*!40000 ALTER TABLE `zichanshengou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanweixiu`
--

DROP TABLE IF EXISTS `zichanweixiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) DEFAULT NULL COMMENT '资产类型',
  `zichanpinpai` varchar(200) DEFAULT NULL COMMENT '资产品牌',
  `zichanshuliang` int(11) DEFAULT NULL COMMENT '资产数量',
  `baoxiushuliang` int(11) NOT NULL COMMENT '报修数量',
  `baoxiushuoming` longtext COMMENT '报修说明',
  `xiaojishenhe` varchar(200) DEFAULT NULL COMMENT '校级审核',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647010458614 DEFAULT CHARSET=utf8 COMMENT='资产维修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanweixiu`
--

LOCK TABLES `zichanweixiu` WRITE;
/*!40000 ALTER TABLE `zichanweixiu` DISABLE KEYS */;
INSERT INTO `zichanweixiu` VALUES (121,'2022-03-11 14:52:14','资产名称1','资产类型1','资产品牌1',1,1,'报修说明1','已审核','2022-03-11','用户名1','部门1','13823888881','是',''),(122,'2022-03-11 14:52:14','资产名称2','资产类型2','资产品牌2',2,2,'报修说明2','已审核','2022-03-11','用户名2','部门2','13823888882','是',''),(123,'2022-03-11 14:52:14','资产名称3','资产类型3','资产品牌3',3,3,'报修说明3','已审核','2022-03-11','用户名3','部门3','13823888883','是',''),(124,'2022-03-11 14:52:14','资产名称4','资产类型4','资产品牌4',4,4,'报修说明4','已审核','2022-03-11','用户名4','部门4','13823888884','是',''),(125,'2022-03-11 14:52:14','资产名称5','资产类型5','资产品牌5',5,5,'报修说明5','已审核','2022-03-11','用户名5','部门5','13823888885','是',''),(126,'2022-03-11 14:52:14','资产名称6','资产类型6','资产品牌6',6,6,'报修说明6','已审核','2022-03-11','用户名6','部门6','13823888886','是',''),(1647010458613,'2022-03-11 14:54:18','资产名称1','资产类型1','资产品牌1',3,1,'1','已审核','2022-03-11','用户名1','部门1','13823888881','是','1');
/*!40000 ALTER TABLE `zichanweixiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanxinxi`
--

DROP TABLE IF EXISTS `zichanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) NOT NULL COMMENT '资产类型',
  `zichantupian` varchar(200) DEFAULT NULL COMMENT '资产图片',
  `zichanpinpai` varchar(200) DEFAULT NULL COMMENT '资产品牌',
  `zichanzhuangtai` varchar(200) DEFAULT NULL COMMENT '资产状态',
  `zichanshuliang` int(11) NOT NULL COMMENT '资产数量',
  `zichanshuoming` longtext COMMENT '资产说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='资产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanxinxi`
--

LOCK TABLES `zichanxinxi` WRITE;
/*!40000 ALTER TABLE `zichanxinxi` DISABLE KEYS */;
INSERT INTO `zichanxinxi` VALUES (61,'2022-03-11 14:52:14','资产名称1','资产类型1','upload/zichanxinxi_zichantupian1.jpg','资产品牌1','未使用',1,'资产说明1'),(62,'2022-03-11 14:52:14','资产名称2','资产类型2','upload/zichanxinxi_zichantupian2.jpg','资产品牌2','未使用',2,'资产说明2'),(63,'2022-03-11 14:52:14','资产名称3','资产类型3','upload/zichanxinxi_zichantupian3.jpg','资产品牌3','未使用',3,'资产说明3'),(64,'2022-03-11 14:52:14','资产名称4','资产类型4','upload/zichanxinxi_zichantupian4.jpg','资产品牌4','未使用',4,'资产说明4'),(65,'2022-03-11 14:52:14','资产名称5','资产类型5','upload/zichanxinxi_zichantupian5.jpg','资产品牌5','未使用',5,'资产说明5'),(66,'2022-03-11 14:52:14','资产名称6','资产类型6','upload/zichanxinxi_zichantupian6.jpg','资产品牌6','未使用',6,'资产说明6');
/*!40000 ALTER TABLE `zichanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-12 13:28:32
