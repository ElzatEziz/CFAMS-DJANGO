-- MySQL dump 10.13  Distrib 5.7.24, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: CFAMSDB
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add 部门管理员',7,'add_bumenguanliyuan'),(20,'Can change 部门管理员',7,'change_bumenguanliyuan'),(21,'Can delete 部门管理员',7,'delete_bumenguanliyuan'),(22,'Can add 财务员',8,'add_caiwuyuan'),(23,'Can change 财务员',8,'change_caiwuyuan'),(24,'Can delete 财务员',8,'delete_caiwuyuan'),(25,'Can add 校级管理员',9,'add_xiaojiguanliyuan'),(26,'Can change 校级管理员',9,'change_xiaojiguanliyuan'),(27,'Can delete 校级管理员',9,'delete_xiaojiguanliyuan'),(28,'Can add 部门',10,'add_bumen'),(29,'Can change 部门',10,'change_bumen'),(30,'Can delete 部门',10,'delete_bumen'),(31,'Can add 申购入库',11,'add_shengouruku'),(32,'Can change 申购入库',11,'change_shengouruku'),(33,'Can delete 申购入库',11,'delete_shengouruku'),(34,'Can add 维修复审',12,'add_weixiufushen'),(35,'Can change 维修复审',12,'change_weixiufushen'),(36,'Can delete 维修复审',12,'delete_weixiufushen'),(37,'Can add 资产报废',13,'add_zichanbaofei'),(38,'Can change 资产报废',13,'change_zichanbaofei'),(39,'Can delete 资产报废',13,'delete_zichanbaofei'),(40,'Can add 资产出库',14,'add_zichanchuku'),(41,'Can change 资产出库',14,'change_zichanchuku'),(42,'Can delete 资产出库',14,'delete_zichanchuku'),(43,'Can add 资产调拨',15,'add_zichandiaobo'),(44,'Can change 资产调拨',15,'change_zichandiaobo'),(45,'Can delete 资产调拨',15,'delete_zichandiaobo'),(46,'Can add 资产类型',16,'add_zichanleixing'),(47,'Can change 资产类型',16,'change_zichanleixing'),(48,'Can delete 资产类型',16,'delete_zichanleixing'),(49,'Can add 资产盘点',17,'add_zichanpandian'),(50,'Can change 资产盘点',17,'change_zichanpandian'),(51,'Can delete 资产盘点',17,'delete_zichanpandian'),(52,'Can add 资产申购',18,'add_zichanshengou'),(53,'Can change 资产申购',18,'change_zichanshengou'),(54,'Can delete 资产申购',18,'delete_zichanshengou'),(55,'Can add 资产维修',19,'add_zichanweixiu'),(56,'Can change 资产维修',19,'change_zichanweixiu'),(57,'Can delete 资产维修',19,'delete_zichanweixiu'),(58,'Can add 资产信息',20,'add_zichanxinxi'),(59,'Can change 资产信息',20,'change_zichanxinxi'),(60,'Can delete 资产信息',20,'delete_zichanxinxi'),(61,'Can add 管理员表',21,'add_users'),(62,'Can change 管理员表',21,'change_users'),(63,'Can delete 管理员表',21,'delete_users'),(64,'Can add 配置表',22,'add_config'),(65,'Can change 配置表',22,'change_config'),(66,'Can delete 配置表',22,'delete_config');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$3w5mvvbo0XPC$PmheyF5FwCZe5hMg2znXhS94QgSu+4LBjX6ikuzzXmI=',NULL,1,'abo','','','abo@example.com',1,1,'2024-04-07 18:30:29.718981');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1712592855888 DEFAULT CHARSET=utf8 COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumen`
--

LOCK TABLES `bumen` WRITE;
/*!40000 ALTER TABLE `bumen` DISABLE KEYS */;
INSERT INTO `bumen` VALUES (1712592855877,'2024-04-08 16:14:15','行政部门'),(1712592855878,'2024-04-11 19:17:25','人力资源部'),(1712592855879,'2024-04-11 19:17:25','财务部'),(1712592855880,'2024-04-11 19:17:25','技术部'),(1712592855881,'2024-04-11 19:17:25','市场部'),(1712592855882,'2024-04-11 19:17:25','客户服务部'),(1712592855883,'2024-04-11 19:17:25','产品开发部'),(1712592855884,'2024-04-11 19:17:25','行政部'),(1712592855885,'2024-04-11 19:17:25','法务部'),(1712592855886,'2024-04-11 19:17:25','信息技术部'),(1712592855887,'2024-04-11 19:17:25','运营部');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712592888700 DEFAULT CHARSET=utf8 COMMENT='部门管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bumenguanliyuan`
--

LOCK TABLES `bumenguanliyuan` WRITE;
/*!40000 ALTER TABLE `bumenguanliyuan` DISABLE KEYS */;
INSERT INTO `bumenguanliyuan` VALUES (1712592888689,'2024-04-08 16:14:48','部门1','123456','小红','女','','行政部门','13888876544'),(1712592888690,'2024-04-11 19:17:35','admin01','pass01','张三','男',NULL,'技术部','13900010001'),(1712592888691,'2024-04-11 19:17:35','admin02','pass02','李四','女',NULL,'财务部','13900010002'),(1712592888692,'2024-04-11 19:17:35','admin03','pass03','王五','男',NULL,'人力资源部','13900010003'),(1712592888693,'2024-04-11 19:17:35','admin04','pass04','赵六','女',NULL,'市场部','13900010004'),(1712592888694,'2024-04-11 19:17:35','admin05','pass05','钱七','男',NULL,'客户服务部','13900010005'),(1712592888695,'2024-04-11 19:17:35','admin06','pass06','孙八','女',NULL,'产品开发部','13900010006'),(1712592888696,'2024-04-11 19:17:35','admin07','pass07','周九','男',NULL,'行政部','13900010007'),(1712592888697,'2024-04-11 19:17:35','admin08','pass08','吴十','女',NULL,'法务部','13900010008'),(1712592888698,'2024-04-11 19:17:35','admin09','pass09','郑十一','男',NULL,'信息技术部','13900010009'),(1712592888699,'2024-04-11 19:17:35','admin10','pass10','王十二','女',NULL,'运营部','13900010010');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712757135454 DEFAULT CHARSET=utf8 COMMENT='财务员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caiwuyuan`
--

LOCK TABLES `caiwuyuan` WRITE;
/*!40000 ALTER TABLE `caiwuyuan` DISABLE KEYS */;
INSERT INTO `caiwuyuan` VALUES (1712570046847,'2024-04-08 09:54:06','112233','caiwu1','小张','upload/1712763496469.jpg','男','财务员','19999882322'),(1712757135443,'2024-04-10 13:52:15','财务2','123456','小蓝','upload/1712757126098.jpeg','男','财务员','13999765441'),(1712757135444,'2024-04-11 19:17:41','C1001','pwd1001','陈一',NULL,'男','会计','13100010001'),(1712757135445,'2024-04-11 19:17:41','C1002','pwd1002','罗二',NULL,'女','审计','13100010002'),(1712757135446,'2024-04-11 19:17:41','C1003','pwd1003','张三',NULL,'男','出纳','13100010003'),(1712757135447,'2024-04-11 19:17:41','C1004','pwd1004','李四',NULL,'女','财务分析师','13100010004'),(1712757135448,'2024-04-11 19:17:41','C1005','pwd1005','王五',NULL,'男','资金管理','13100010005'),(1712757135449,'2024-04-11 19:17:41','C1006','pwd1006','赵六',NULL,'女','财务经理','13100010006'),(1712757135450,'2024-04-11 19:17:41','C1007','pwd1007','钱七',NULL,'男','首席财务官','13100010007'),(1712757135451,'2024-04-11 19:17:41','C1008','pwd1008','孙八',NULL,'女','会计','13100010008'),(1712757135452,'2024-04-11 19:17:41','C1009','pwd1009','周九',NULL,'男','审计','13100010009'),(1712757135453,'2024-04-11 19:17:41','C1010','pwd1010','吴十',NULL,'女','出纳','13100010010');
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'main','bumen'),(7,'main','bumenguanliyuan'),(8,'main','caiwuyuan'),(22,'main','config'),(11,'main','shengouruku'),(21,'main','users'),(12,'main','weixiufushen'),(9,'main','xiaojiguanliyuan'),(13,'main','zichanbaofei'),(14,'main','zichanchuku'),(15,'main','zichandiaobo'),(16,'main','zichanleixing'),(17,'main','zichanpandian'),(18,'main','zichanshengou'),(19,'main','zichanweixiu'),(20,'main','zichanxinxi'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-07 18:29:24.583730'),(2,'auth','0001_initial','2024-04-07 18:29:25.009972'),(3,'admin','0001_initial','2024-04-07 18:29:25.127236'),(4,'admin','0002_logentry_remove_auto_add','2024-04-07 18:29:25.139032'),(5,'contenttypes','0002_remove_content_type_name','2024-04-07 18:29:25.251394'),(6,'auth','0002_alter_permission_name_max_length','2024-04-07 18:29:25.296466'),(7,'auth','0003_alter_user_email_max_length','2024-04-07 18:29:25.365085'),(8,'auth','0004_alter_user_username_opts','2024-04-07 18:29:25.395078'),(9,'auth','0005_alter_user_last_login_null','2024-04-07 18:29:25.456010'),(10,'auth','0006_require_contenttypes_0002','2024-04-07 18:29:25.464048'),(11,'auth','0007_alter_validators_add_error_messages','2024-04-07 18:29:25.485820'),(12,'auth','0008_alter_user_username_max_length','2024-04-07 18:29:25.596296'),(13,'auth','0009_alter_user_last_name_max_length','2024-04-07 18:29:25.646777'),(14,'sessions','0001_initial','2024-04-07 18:29:25.695974');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1713424280689 DEFAULT CHARSET=utf8 COMMENT='申购入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengouruku`
--

LOCK TABLES `shengouruku` WRITE;
/*!40000 ALTER TABLE `shengouruku` DISABLE KEYS */;
INSERT INTO `shengouruku` VALUES (1712599935978,'2024-04-08 18:12:15','1712599863766','羽毛球拍子','体育设备','upload/1712599897673.jpg',100,100,10000,'2024-04-09','体育馆需要100个羽毛球拍子','财务1','小张'),(1712602783674,'2024-04-08 18:59:43','1712602771498','显示器','计算机','upload/1712599654459.webp',2000,100,200000,'2024-04-09','','112233','小张'),(1712756324895,'2024-04-10 13:38:44','1712756308650','化学实验器具','实验室器材','upload/1712755755106.jpeg',2000,10,20000,'2024-04-10','实验室必须','112233','小张'),(1712756324896,'2024-04-11 19:17:50','RK1001','办公桌','家具',NULL,500,10,5000,'2023-04-01','新办公室采购','C1001','陈一'),(1712756324897,'2024-04-11 19:17:50','RK1002','办公椅','家具',NULL,300,15,4500,'2023-04-02','新办公室采购','C1002','罗二'),(1712756324898,'2024-04-11 19:17:50','RK1003','笔记本电脑','电子产品',NULL,6000,5,30000,'2023-04-03','技术部门更新设备','C1003','张三'),(1712756324899,'2024-04-11 19:17:50','RK1004','打印机','电子产品',NULL,1500,2,3000,'2023-04-04','办公室设备更新','C1004','李四'),(1712756324900,'2024-04-11 19:17:50','RK1005','投影仪','电子产品',NULL,2000,1,2000,'2023-04-05','会议室设备更新','C1005','王五'),(1712756324901,'2024-04-11 19:17:50','RK1006','空调','电器',NULL,2500,4,10000,'2023-04-06','办公环境改善','C1006','赵六'),(1712756324902,'2024-04-11 19:17:50','RK1007','水杯','办公用品',NULL,20,100,2000,'2023-04-07','员工福利','C1007','钱七'),(1712756324903,'2024-04-11 19:17:50','RK1008','办公桌','家具',NULL,500,5,2500,'2023-04-08','人事部扩张','C1008','孙八'),(1712756324904,'2024-04-11 19:17:50','RK1009','办公椅','家具',NULL,300,5,1500,'2023-04-09','市场部扩张','C1009','周九'),(1712756324905,'2024-04-11 19:17:50','RK1010','笔记本电脑','电子产品',NULL,6000,10,60000,'2023-04-10','新员工入职配置','C1010','吴十'),(1713424280688,'2024-04-18 07:11:20','1713424253574','办公桌','家具','upload/1712900015650.avif',1000,10,10000,'2024-04-17','办公室急需','112233','小张');
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
INSERT INTO `users` VALUES (1,'elzat','azez110311','管理员','2022-03-11 14:52:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712756553820 DEFAULT CHARSET=utf8 COMMENT='维修复审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiufushen`
--

LOCK TABLES `weixiufushen` WRITE;
/*!40000 ALTER TABLE `weixiufushen` DISABLE KEYS */;
INSERT INTO `weixiufushen` VALUES (1712756553809,'2024-04-10 13:42:33','显示器','计算机','联想',10,10,'损坏','2024-04-10','部门1','行政部门','13888876544','是','可以维修'),(1712756553810,'2024-04-11 19:17:57','办公椅','家具','IKEA',50,5,'五把椅子坐垫损坏','2023-04-01','user01','行政部','13000000001','是','批准维修'),(1712756553811,'2024-04-11 19:17:57','笔记本电脑','电子产品','Dell',100,10,'硬盘故障','2023-04-02','user02','技术部','13000000002','否','更换硬盘太贵，建议购新'),(1712756553812,'2024-04-11 19:17:57','投影仪','电子产品','Epson',10,1,'无法开机','2023-04-03','user03','市场部','13000000003','是','维修批准'),(1712756553813,'2024-04-11 19:17:57','办公桌','家具','IKEA',40,2,'桌面划痕','2023-04-04','user04','人事部','13000000004','是','批准修复'),(1712756553814,'2024-04-11 19:17:57','空调','电器','Haier',20,2,'制冷效果不佳','2023-04-05','user05','财务部','13000000005','否','更换新设备'),(1712756553815,'2024-04-11 19:17:57','水杯','办公用品','N/A',200,20,'杯子破损','2023-04-06','user06','运营部','13000000006','是','重新采购'),(1712756553816,'2024-04-11 19:17:57','打印机','电子产品','HP',15,3,'打印质量问题','2023-04-07','user07','行政部','13000000007','是','维修喷头'),(1712756553817,'2024-04-11 19:17:57','办公椅','家具','IKEA',30,3,'脚轮损坏','2023-04-08','user08','产品部','13000000008','否','建议替换新椅子'),(1712756553818,'2024-04-11 19:17:57','笔记本电脑','电子产品','Lenovo',60,6,'屏幕损坏','2023-04-09','user09','研发部','13000000009','是','批准更换屏幕'),(1712756553819,'2024-04-11 19:17:57','手机','电子产品','Apple',80,8,'电池续航问题','2023-04-10','user10','销售部','13000000010','否','超出保修期，不予维修');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712592844185 DEFAULT CHARSET=utf8 COMMENT='校级管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaojiguanliyuan`
--

LOCK TABLES `xiaojiguanliyuan` WRITE;
/*!40000 ALTER TABLE `xiaojiguanliyuan` DISABLE KEYS */;
INSERT INTO `xiaojiguanliyuan` VALUES (1712592844174,'2024-04-08 16:14:04','校长1','123456','小明','upload/1712592962957.jpg','男','13987644531'),(1712592844175,'2024-04-11 19:18:03','admin001','pass001','孙小姐',NULL,'女','13800138000'),(1712592844176,'2024-04-11 19:18:03','admin002','pass002','李先生',NULL,'男','13800138001'),(1712592844177,'2024-04-11 19:18:03','admin003','pass003','张女士',NULL,'女','13800138002'),(1712592844178,'2024-04-11 19:18:03','admin004','pass004','王总',NULL,'男','13800138003'),(1712592844179,'2024-04-11 19:18:03','admin005','pass005','赵经理',NULL,'男','13800138004'),(1712592844180,'2024-04-11 19:18:03','admin006','pass006','钱主任',NULL,'女','13800138005'),(1712592844181,'2024-04-11 19:18:03','admin007','pass007','周秘书',NULL,'女','13800138006'),(1712592844182,'2024-04-11 19:18:03','admin008','pass008','吴助理',NULL,'男','13800138007'),(1712592844183,'2024-04-11 19:18:03','admin009','pass009','郑老师',NULL,'男','13800138008'),(1712592844184,'2024-04-11 19:18:03','admin010','pass010','王小姐',NULL,'女','13800138009');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712603969753 DEFAULT CHARSET=utf8 COMMENT='资产报废';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanbaofei`
--

LOCK TABLES `zichanbaofei` WRITE;
/*!40000 ALTER TABLE `zichanbaofei` DISABLE KEYS */;
INSERT INTO `zichanbaofei` VALUES (1712603969742,'2024-04-08 19:19:29','1712603962944','显示器','upload/1712599654459.webp',0,'2024-04-09','有问题','部门1','行政部门','小红','',''),(1712603969743,'2024-04-11 19:18:08','BF1001','旧办公椅',NULL,10,'2023-04-01','坐垫磨损严重','user01','行政部','张三','是','已批准'),(1712603969744,'2024-04-11 19:18:08','BF1002','过时打印机',NULL,5,'2023-04-02','技术落后，维修成本高','user02','技术部','李四','否','不予批准'),(1712603969745,'2024-04-11 19:18:08','BF1003','破损笔记本',NULL,8,'2023-04-03','屏幕损坏，修复不划算','user03','市场部','王五','是','已批准'),(1712603969746,'2024-04-11 19:18:08','BF1004','故障投影仪',NULL,2,'2023-04-04','无法开机，维修困难','user04','客户服务部','赵六','是','已批准'),(1712603969747,'2024-04-11 19:18:08','BF1005','老化空调',NULL,6,'2023-04-05','效率低下，耗电量大','user05','财务部','钱七','否','不予批准'),(1712603969748,'2024-04-11 19:18:08','BF1006','办公桌',NULL,5,'2023-04-06','桌面损伤严重','user06','人事部','孙八','是','已批准'),(1712603969749,'2024-04-11 19:18:08','BF1007','不用的文件柜',NULL,4,'2023-04-07','空间占用，已无使用需求','user07','行政部','周九','是','已批准'),(1712603969750,'2024-04-11 19:18:08','BF1008','旧茶水机',NULL,1,'2023-04-08','加热功能不良','user08','运营部','吴十','否','不予批准'),(1712603969751,'2024-04-11 19:18:08','BF1009','过期服务器',NULL,3,'2023-04-09','硬件老化，性能不佳','user09','产品开发部','郑十一','是','已批准'),(1712603969752,'2024-04-11 19:18:08','BF1010','废弃显示器',NULL,7,'2023-04-10','分辨率低，色彩失真','user10','信息技术部','王十二','是','已批准');
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
) ENGINE=InnoDB AUTO_INCREMENT=1713424397264 DEFAULT CHARSET=utf8 COMMENT='资产出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanchuku`
--

LOCK TABLES `zichanchuku` WRITE;
/*!40000 ALTER TABLE `zichanchuku` DISABLE KEYS */;
INSERT INTO `zichanchuku` VALUES (1712603384242,'2024-04-08 19:09:44','1712603375850','显示器','计算机','联想','upload/1712599654459.webp',0,'2024-04-09','第四十三','部门1','行政部门','小红'),(1712603886966,'2024-04-08 19:18:06','1712603872929','显示器','计算机','联想','upload/1712599654459.webp',0,'2024-04-09','资产有问题','部门1','行政部门','小红'),(1712756466695,'2024-04-10 13:41:06','1712756452954','显示器','计算机','联想','upload/1712599654459.webp',10,'2024-04-10','啊啊啊啊啊','部门1','行政部门','小红'),(1712756466696,'2024-04-11 19:18:13','CK1001','办公椅','家具','IKEA',NULL,5,'2023-04-01','搬迁新办公室','user01','行政部','张三'),(1712756466697,'2024-04-11 19:18:13','CK1002','笔记本电脑','电子产品','Dell',NULL,10,'2023-04-02','员工配备新设备','user02','技术部','李四'),(1712756466698,'2024-04-11 19:18:13','CK1003','打印机','电子产品','HP',NULL,2,'2023-04-03','设备更新换代','user03','市场部','王五'),(1712756466699,'2024-04-11 19:18:13','CK1004','投影仪','电子产品','Epson',NULL,1,'2023-04-04','用于客户演示','user04','销售部','赵六'),(1712756466700,'2024-04-11 19:18:13','CK1005','空调','电器','Haier',NULL,3,'2023-04-05','夏季备用','user05','行政部','钱七'),(1712756466701,'2024-04-11 19:18:13','CK1006','水杯','办公用品',NULL,NULL,50,'2023-04-06','新员工入职配备','user06','人力资源部','孙八'),(1712756466702,'2024-04-11 19:18:13','CK1007','办公桌','家具','IKEA',NULL,7,'2023-04-07','扩充工作区域','user07','产品部','周九'),(1712756466703,'2024-04-11 19:18:13','CK1008','办公椅','家具','IKEA',NULL,8,'2023-04-08','替换损坏的椅子','user08','财务部','吴十'),(1712756466704,'2024-04-11 19:18:13','CK1009','笔记本电脑','电子产品','Apple',NULL,5,'2023-04-09','管理层升级设备','user09','行政部','郑十一'),(1712756466705,'2024-04-11 19:18:13','CK1010','手机','电子产品','Samsung',NULL,10,'2023-04-10','销售团队外出使用','user10','销售部','王十二'),(1713424397263,'2024-04-18 07:13:17','1713424377878','显示器','计算机','联想','upload/1712599654459.webp',10,'2024-04-18','办公室急需','部门1','行政部门','小红');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712602929044 DEFAULT CHARSET=utf8 COMMENT='资产调拨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichandiaobo`
--

LOCK TABLES `zichandiaobo` WRITE;
/*!40000 ALTER TABLE `zichandiaobo` DISABLE KEYS */;
INSERT INTO `zichandiaobo` VALUES (1712602929033,'2024-04-08 19:02:09','1712602908614','轮椅','医疗设备','ASDNG',10,1,'2024-04-09','需要轮椅协助','部门1','小红','行政部门','13888876544','是','可以'),(1712602929034,'2024-04-11 19:18:19','TB1001','办公椅','家具','IKEA',20,5,'2023-04-01','从市场部调到技术部','user01','张三','技术部','13900010001','是','批准调拨'),(1712602929035,'2024-04-11 19:18:19','TB1002','笔记本电脑','电子产品','Dell',50,10,'2023-04-02','从技术部调到研发部','user02','李四','研发部','13900010002','否','不批准，资金不足'),(1712602929036,'2024-04-11 19:18:19','TB1003','打印机','电子产品','HP',15,3,'2023-04-03','从行政部调到人事部','user03','王五','人事部','13900010003','是','批准调拨'),(1712602929037,'2024-04-11 19:18:19','TB1004','投影仪','电子产品','Epson',10,2,'2023-04-04','从客户服务部调到市场部','user04','赵六','市场部','13900010004','是','批准调拨'),(1712602929038,'2024-04-11 19:18:19','TB1005','空调','电器','Haier',25,5,'2023-04-05','从技术部调到行政部','user05','钱七','行政部','13900010005','否','不批准，设备已老化'),(1712602929039,'2024-04-11 19:18:19','TB1006','水杯','办公用品',NULL,200,100,'2023-04-06','从仓库调到各部门','user06','孙八','仓库部','13900010006','是','批准调拨'),(1712602929040,'2024-04-11 19:18:19','TB1007','办公桌','家具','IKEA',40,10,'2023-04-07','从仓库调到行政部','user07','周九','行政部','13900010007','是','批准调拨'),(1712602929041,'2024-04-11 19:18:19','TB1008','办公椅','家具','IKEA',30,10,'2023-04-08','从行政部调到财务部','user08','吴十','财务部','13900010008','是','批准调拨'),(1712602929042,'2024-04-11 19:18:19','TB1009','笔记本电脑','电子产品','Apple',25,5,'2023-04-09','从研发部调到技术支持部','user09','郑十一','技术支持部','13900010009','否','不批准，需审核资产使用率'),(1712602929043,'2024-04-11 19:18:19','TB1010','手机','电子产品','Apple',50,5,'2023-04-10','从销售部调到市场部','user10','王十二','市场部','13900010010','是','批准调拨');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712757198133 DEFAULT CHARSET=utf8 COMMENT='资产类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanleixing`
--

LOCK TABLES `zichanleixing` WRITE;
/*!40000 ALTER TABLE `zichanleixing` DISABLE KEYS */;
INSERT INTO `zichanleixing` VALUES (1712599520568,'2024-04-08 18:05:20','计算机'),(1712599527004,'2024-04-08 18:05:27','体育设备'),(1712599532641,'2024-04-08 18:05:32','医疗设备'),(1712754303675,'2024-04-10 13:05:03','实验室器材'),(1712757198122,'2024-04-10 13:53:18','教学器材'),(1712757198123,'2024-04-11 19:18:24','家具'),(1712757198124,'2024-04-11 19:18:24','电子产品'),(1712757198125,'2024-04-11 19:18:24','电器'),(1712757198126,'2024-04-11 19:18:24','办公用品'),(1712757198127,'2024-04-11 19:18:24','软件'),(1712757198128,'2024-04-11 19:18:24','硬件'),(1712757198129,'2024-04-11 19:18:24','通讯设备'),(1712757198130,'2024-04-11 19:18:24','安全设备'),(1712757198131,'2024-04-11 19:18:24','机械设备'),(1712757198132,'2024-04-11 19:18:24','运输工具');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712603068546 DEFAULT CHARSET=utf8 COMMENT='资产盘点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanpandian`
--

LOCK TABLES `zichanpandian` WRITE;
/*!40000 ALTER TABLE `zichanpandian` DISABLE KEYS */;
INSERT INTO `zichanpandian` VALUES (1712603068535,'2024-04-08 19:04:28','显示器','计算机','联想',200,10,'正常','损坏有点严重','2024-04-09','',''),(1712603068536,'2024-04-11 19:18:29','办公椅','家具','IKEA',100,95,'盘点正常','部分椅子磨损严重','2023-04-01','是','维修或更换磨损椅子'),(1712603068537,'2024-04-11 19:18:29','笔记本电脑','电子产品','Dell',200,198,'盘点正常','两台设备失窃','2023-04-02','否','进行进一步调查'),(1712603068538,'2024-04-11 19:18:29','打印机','电子产品','HP',50,50,'盘点正常','设备均正常工作','2023-04-03','是','无需进一步行动'),(1712603068539,'2024-04-11 19:18:29','投影仪','电子产品','Epson',20,20,'盘点正常','所有设备性能良好','2023-04-04','是','继续保持'),(1712603068540,'2024-04-11 19:18:29','空调','电器','Haier',40,38,'盘点异常','两台设备未找到','2023-04-05','否','进行进一步调查'),(1712603068541,'2024-04-11 19:18:29','水杯','办公用品',NULL,300,300,'盘点正常','水杯数量准确','2023-04-06','是','无需进一步行动'),(1712603068542,'2024-04-11 19:18:29','办公桌','家具','IKEA',80,79,'盘点异常','一台桌子损坏','2023-04-07','是','维修或更换损坏桌子'),(1712603068543,'2024-04-11 19:18:29','办公椅','家具','IKEA',100,100,'盘点正常','所有椅子状况良好','2023-04-08','是','无需进一步行动'),(1712603068544,'2024-04-11 19:18:29','笔记本电脑','电子产品','Apple',150,150,'盘点正常','所有设备均完好无损','2023-04-09','是','继续保持'),(1712603068545,'2024-04-11 19:18:29','手机','电子产品','Samsung',60,58,'盘点异常','两台手机未找到','2023-04-10','否','进行进一步调查');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712755880387 DEFAULT CHARSET=utf8 COMMENT='资产申购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanshengou`
--

LOCK TABLES `zichanshengou` WRITE;
/*!40000 ALTER TABLE `zichanshengou` DISABLE KEYS */;
INSERT INTO `zichanshengou` VALUES (1712603002805,'2024-04-08 19:03:22','轮椅','医疗设备','ASDNG',10,10,'缺少轮椅','2024-04-09','校长1','是','同意申购'),(1712754415143,'2024-04-10 13:06:55','轮椅','医疗设备','ASDNG',10,5,'医务室需要资产','2024-04-10','校长1','是','可以申购'),(1712755880376,'2024-04-10 13:31:20','化学实验器具','实验室器材','SSDA化学器具',100,20,'北区实验室需要','2024-04-10','校长1','是','同意申购'),(1712755880377,'2024-04-11 19:18:36','办公桌','家具','IKEA',20,10,'部门扩展需要','2023-04-01','acc001','是','批准申购'),(1712755880378,'2024-04-11 19:18:36','笔记本电脑','电子产品','Apple',100,50,'设备更新','2023-04-02','acc002','否','预算不足'),(1712755880379,'2024-04-11 19:18:36','投影仪','电子产品','Epson',10,5,'会议室设备升级','2023-04-03','acc003','是','批准申购'),(1712755880380,'2024-04-11 19:18:36','办公椅','家具','IKEA',50,30,'更换旧椅子','2023-04-04','acc004','是','批准申购'),(1712755880381,'2024-04-11 19:18:36','打印机','电子产品','HP',15,8,'部门新增设备','2023-04-05','acc005','否','预算超支'),(1712755880382,'2024-04-11 19:18:36','空调','电器','Daikin',25,10,'夏季到来前的准备','2023-04-06','acc006','是','批准申购'),(1712755880383,'2024-04-11 19:18:36','手机','电子产品','Samsung',30,15,'销售人员外勤使用','2023-04-07','acc007','是','批准申购'),(1712755880384,'2024-04-11 19:18:36','办公桌','家具','IKEA',40,20,'新开办公区域配置','2023-04-08','acc008','否','空间不足'),(1712755880385,'2024-04-11 19:18:36','办公椅','家具','Herman Miller',40,20,'执行层办公椅更换','2023-04-09','acc009','是','批准申购'),(1712755880386,'2024-04-11 19:18:36','笔记本电脑','电子产品','Dell',60,30,'技术部门硬件升级','2023-04-10','acc010','是','批准申购');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712756512634 DEFAULT CHARSET=utf8 COMMENT='资产维修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanweixiu`
--

LOCK TABLES `zichanweixiu` WRITE;
/*!40000 ALTER TABLE `zichanweixiu` DISABLE KEYS */;
INSERT INTO `zichanweixiu` VALUES (1712756512623,'2024-04-10 13:41:52','显示器','计算机','联想',10,10,'损坏','已审核','2024-04-10','部门1','行政部门','13888876544','是','可以维修'),(1712756512624,'2024-04-11 19:20:06','办公桌','家具','IKEA',40,5,'桌面损伤严重','已审核','2023-04-01','user01','行政部','13800000001','是','维修批准'),(1712756512625,'2024-04-11 19:20:06','笔记本电脑','电子产品','Apple',80,10,'电池续航问题','待审核','2023-04-02','user02','技术部','13800000002','否','维修成本过高'),(1712756512626,'2024-04-11 19:20:06','打印机','电子产品','HP',20,2,'打印质量不佳','已审核','2023-04-03','user03','市场部','13800000003','是','维修批准'),(1712756512627,'2024-04-11 19:20:06','投影仪','电子产品','Epson',15,1,'灯泡损坏','已审核','2023-04-04','user04','销售部','13800000004','是','维修批准'),(1712756512628,'2024-04-11 19:20:06','空调','电器','Haier',25,3,'不制冷','待审核','2023-04-05','user05','客户服务部','13800000005','否','建议更换新机'),(1712756512629,'2024-04-11 19:20:06','办公椅','家具','IKEA',50,10,'腿部支撑损坏','已审核','2023-04-06','user06','人事部','13800000006','是','维修批准'),(1712756512630,'2024-04-11 19:20:06','手机','电子产品','Samsung',30,5,'屏幕破裂','已审核','2023-04-07','user07','财务部','13800000007','是','维修批准'),(1712756512631,'2024-04-11 19:20:06','水杯','办公用品',NULL,200,50,'漏水','已审核','2023-04-08','user08','行政部','13800000008','是','更换新水杯'),(1712756512632,'2024-04-11 19:20:06','笔记本电脑','电子产品','Dell',60,12,'键盘失灵','待审核','2023-04-09','user09','研发部','13800000009','否','建议采购新设备'),(1712756512633,'2024-04-11 19:20:06','投影仪','电子产品','Epson',10,2,'连接问题','已审核','2023-04-10','user10','技术支持部','13800000010','是','维修批准');
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
) ENGINE=InnoDB AUTO_INCREMENT=1712755784704 DEFAULT CHARSET=utf8 COMMENT='资产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanxinxi`
--

LOCK TABLES `zichanxinxi` WRITE;
/*!40000 ALTER TABLE `zichanxinxi` DISABLE KEYS */;
INSERT INTO `zichanxinxi` VALUES (1712599677985,'2024-04-08 18:07:57','显示器','计算机','upload/1712599654459.webp','联想','维修中',180,'机房需要100个电脑'),(1712599782976,'2024-04-08 18:09:42','轮椅','医疗设备','upload/1712599805014.webp','ASDNG','已使用',10,'医务室需要救护轮椅'),(1712755784693,'2024-04-10 13:29:44','化学实验器具','实验室器材','upload/1712755755106.jpeg','SSDA化学器具','未使用',110,'实验室器材'),(1712755784694,'2024-04-11 19:20:48','办公桌','家具','upload/1712900015650.avif','IKEA','未使用',50,'用于员工日常办公'),(1712755784695,'2024-04-11 19:20:48','笔记本电脑','电子产品','upload/1712900031521.webp','Apple','需维修',80,'员工外出办公使用'),(1712755784696,'2024-04-11 19:20:48','打印机','电子产品','upload/1712900043730.jpeg','HP','已使用',20,'用于文档打印任务'),(1712755784697,'2024-04-11 19:20:48','投影仪','电子产品','upload/1712900058454.jpeg','Epson','已使用',15,'用于会议室演示'),(1712755784698,'2024-04-11 19:20:48','空调','电器','upload/1712900068194.jpeg','Daikin','需维修',25,'调节办公室温度'),(1712755784699,'2024-04-11 19:20:48','办公椅','家具','upload/1712900077246.jpeg','Herman Miller','已使用',50,'提供舒适的办公环境'),(1712755784700,'2024-04-11 19:20:48','手机','电子产品','upload/1712900105941.jpeg','Samsung','已使用',30,'销售人员外出通讯使用'),(1712755784701,'2024-04-11 19:20:48','水杯','办公用品',NULL,NULL,'良好',200,'员工日常饮水使用'),(1712755784702,'2024-04-11 19:20:48','笔记本电脑','电子产品',NULL,'Dell','需维修',60,'技术部门软件开发使用'),(1712755784703,'2024-04-11 19:20:48','办公桌','家具',NULL,'IKEA','良好',40,'新开办公区域配置');
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

-- Dump completed on 2024-04-24  3:02:46
