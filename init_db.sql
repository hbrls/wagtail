-- MySQL dump 10.13  Distrib 5.7.11, for Linux (x86_64)
--
-- Host: mysql    Database: wagtail
-- ------------------------------------------------------
-- Server version	5.7.11

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Editors'),(1,'Moderators');
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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (4,1,1),(5,1,2),(6,1,3),(8,1,4),(12,1,5),(13,1,6),(14,1,7),(1,2,1),(2,2,2),(3,2,3),(7,2,4),(9,2,5),(10,2,6),(11,2,7);
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add image',2,'add_image'),(2,'Can change image',2,'change_image'),(3,'Can delete image',2,'delete_image'),(4,'Can access Wagtail admin',3,'access_admin'),(5,'Can add document',4,'add_document'),(6,'Can change document',4,'change_document'),(7,'Can delete document',4,'delete_document'),(8,'Can add 首页',5,'add_indexpage'),(9,'Can change 首页',5,'change_indexpage'),(10,'Can delete 首页',5,'delete_indexpage'),(11,'Can add 关于我们',6,'add_aboutpage'),(12,'Can change 关于我们',6,'change_aboutpage'),(13,'Can delete 关于我们',6,'delete_aboutpage'),(14,'Can add whatever page',7,'add_whateverpage'),(15,'Can change whatever page',7,'change_whateverpage'),(16,'Can delete whatever page',7,'delete_whateverpage'),(17,'Can add 用户协议',8,'add_agreementpage'),(18,'Can change 用户协议',8,'change_agreementpage'),(19,'Can delete 用户协议',8,'delete_agreementpage'),(20,'Can add 博客文章列表',9,'add_blogindexpage'),(21,'Can change 博客文章列表',9,'change_blogindexpage'),(22,'Can delete 博客文章列表',9,'delete_blogindexpage'),(23,'Can add 一篇博客文章',10,'add_articlepage'),(24,'Can change 一篇博客文章',10,'change_articlepage'),(25,'Can delete 一篇博客文章',10,'delete_articlepage'),(26,'Can add form submission',11,'add_formsubmission'),(27,'Can change form submission',11,'change_formsubmission'),(28,'Can delete form submission',11,'delete_formsubmission'),(29,'Can add redirect',12,'add_redirect'),(30,'Can change redirect',12,'change_redirect'),(31,'Can delete redirect',12,'delete_redirect'),(32,'Can add embed',13,'add_embed'),(33,'Can change embed',13,'change_embed'),(34,'Can delete embed',13,'delete_embed'),(35,'Can add user profile',14,'add_userprofile'),(36,'Can change user profile',14,'change_userprofile'),(37,'Can delete user profile',14,'delete_userprofile'),(38,'Can add filter',15,'add_filter'),(39,'Can change filter',15,'change_filter'),(40,'Can delete filter',15,'delete_filter'),(41,'Can add rendition',16,'add_rendition'),(42,'Can change rendition',16,'change_rendition'),(43,'Can delete rendition',16,'delete_rendition'),(44,'Can add query',17,'add_query'),(45,'Can change query',17,'change_query'),(46,'Can delete query',17,'delete_query'),(47,'Can add Query Daily Hits',18,'add_querydailyhits'),(48,'Can change Query Daily Hits',18,'change_querydailyhits'),(49,'Can delete Query Daily Hits',18,'delete_querydailyhits'),(50,'Can add site',19,'add_site'),(51,'Can change site',19,'change_site'),(52,'Can delete site',19,'delete_site'),(53,'Can add page',1,'add_page'),(54,'Can change page',1,'change_page'),(55,'Can delete page',1,'delete_page'),(56,'Can add page revision',20,'add_pagerevision'),(57,'Can change page revision',20,'change_pagerevision'),(58,'Can delete page revision',20,'delete_pagerevision'),(59,'Can add group page permission',21,'add_grouppagepermission'),(60,'Can change group page permission',21,'change_grouppagepermission'),(61,'Can delete group page permission',21,'delete_grouppagepermission'),(62,'Can add page view restriction',22,'add_pageviewrestriction'),(63,'Can change page view restriction',22,'change_pageviewrestriction'),(64,'Can delete page view restriction',22,'delete_pageviewrestriction'),(65,'Can add collection',23,'add_collection'),(66,'Can change collection',23,'change_collection'),(67,'Can delete collection',23,'delete_collection'),(68,'Can add group collection permission',24,'add_groupcollectionpermission'),(69,'Can change group collection permission',24,'change_groupcollectionpermission'),(70,'Can delete group collection permission',24,'delete_groupcollectionpermission'),(71,'Can add Tag',25,'add_tag'),(72,'Can change Tag',25,'change_tag'),(73,'Can delete Tag',25,'delete_tag'),(74,'Can add Tagged Item',26,'add_taggeditem'),(75,'Can change Tagged Item',26,'change_taggeditem'),(76,'Can delete Tagged Item',26,'delete_taggeditem'),(77,'Can add log entry',27,'add_logentry'),(78,'Can change log entry',27,'change_logentry'),(79,'Can delete log entry',27,'delete_logentry'),(80,'Can add permission',28,'add_permission'),(81,'Can change permission',28,'change_permission'),(82,'Can delete permission',28,'delete_permission'),(83,'Can add group',29,'add_group'),(84,'Can change group',29,'change_group'),(85,'Can delete group',29,'delete_group'),(86,'Can add user',30,'add_user'),(87,'Can change user',30,'change_user'),(88,'Can delete user',30,'delete_user'),(89,'Can add content type',31,'add_contenttype'),(90,'Can change content type',31,'change_contenttype'),(91,'Can delete content type',31,'delete_contenttype'),(92,'Can add session',32,'add_session'),(93,'Can change session',32,'change_session'),(94,'Can delete session',32,'delete_session');
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
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$yTiH2hueTK5J$hG1kfXBLqybvQxPp9OepBJa5RBhmzzkvomdvwNoqm4U=','2016-08-04 02:23:31.327463',1,'admin','','','admin@example.com',1,1,'2016-08-04 02:21:10.537355');
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
-- Table structure for table `blog_articlepage`
--

DROP TABLE IF EXISTS `blog_articlepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_articlepage` (
  `page_ptr_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `intro` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `main_image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `blog_articlepag_main_image_id_b5dc0670_fk_wagtailimages_image_id` (`main_image_id`),
  CONSTRAINT `blog_articlepag_main_image_id_b5dc0670_fk_wagtailimages_image_id` FOREIGN KEY (`main_image_id`) REFERENCES `wagtailimages_image` (`id`),
  CONSTRAINT `blog_articlepage_page_ptr_id_8c00473c_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_articlepage`
--

LOCK TABLES `blog_articlepage` WRITE;
/*!40000 ALTER TABLE `blog_articlepage` DISABLE KEYS */;
INSERT INTO `blog_articlepage` VALUES (10,'2016-08-04','文章简介','<p>文章内容</p>',NULL);
/*!40000 ALTER TABLE `blog_articlepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogindexpage`
--

DROP TABLE IF EXISTS `blog_blogindexpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogindexpage` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `blog_blogindexpage_page_ptr_id_d87c3ac2_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogindexpage`
--

LOCK TABLES `blog_blogindexpage` WRITE;
/*!40000 ALTER TABLE `blog_blogindexpage` DISABLE KEYS */;
INSERT INTO `blog_blogindexpage` VALUES (4),(5),(6);
/*!40000 ALTER TABLE `blog_blogindexpage` ENABLE KEYS */;
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-08-04 02:23:47.319711','1','localhost [default]',2,'Changed root_page.',19,1),(2,'2016-08-04 02:24:12.648468','1','localhost [default]',2,'No fields changed.',19,1);
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (27,'admin','logentry'),(29,'auth','group'),(28,'auth','permission'),(30,'auth','user'),(10,'blog','articlepage'),(9,'blog','blogindexpage'),(31,'contenttypes','contenttype'),(6,'home','aboutpage'),(8,'home','agreementpage'),(5,'home','indexpage'),(7,'home','whateverpage'),(32,'sessions','session'),(25,'taggit','tag'),(26,'taggit','taggeditem'),(3,'wagtailadmin','admin'),(23,'wagtailcore','collection'),(24,'wagtailcore','groupcollectionpermission'),(21,'wagtailcore','grouppagepermission'),(1,'wagtailcore','page'),(20,'wagtailcore','pagerevision'),(22,'wagtailcore','pageviewrestriction'),(19,'wagtailcore','site'),(4,'wagtaildocs','document'),(13,'wagtailembeds','embed'),(11,'wagtailforms','formsubmission'),(15,'wagtailimages','filter'),(2,'wagtailimages','image'),(16,'wagtailimages','rendition'),(12,'wagtailredirects','redirect'),(17,'wagtailsearch','query'),(18,'wagtailsearch','querydailyhits'),(14,'wagtailusers','userprofile');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-08-04 02:20:45.621146'),(2,'auth','0001_initial','2016-08-04 02:20:46.286301'),(3,'admin','0001_initial','2016-08-04 02:20:46.444332'),(4,'admin','0002_logentry_remove_auto_add','2016-08-04 02:20:46.461706'),(5,'contenttypes','0002_remove_content_type_name','2016-08-04 02:20:46.582701'),(6,'auth','0002_alter_permission_name_max_length','2016-08-04 02:20:46.639212'),(7,'auth','0003_alter_user_email_max_length','2016-08-04 02:20:46.696750'),(8,'auth','0004_alter_user_username_opts','2016-08-04 02:20:46.711015'),(9,'auth','0005_alter_user_last_login_null','2016-08-04 02:20:46.770213'),(10,'auth','0006_require_contenttypes_0002','2016-08-04 02:20:46.774627'),(11,'auth','0007_alter_validators_add_error_messages','2016-08-04 02:20:46.787361'),(12,'taggit','0001_initial','2016-08-04 02:20:47.004682'),(13,'taggit','0002_auto_20150616_2121','2016-08-04 02:20:47.040610'),(14,'wagtailimages','0001_initial','2016-08-04 02:20:47.379263'),(15,'wagtailcore','0001_initial','2016-08-04 02:20:48.263232'),(16,'wagtailcore','0002_initial_data','2016-08-04 02:20:48.267641'),(17,'wagtailcore','0003_add_uniqueness_constraint_on_group_page_permission','2016-08-04 02:20:48.272345'),(18,'wagtailcore','0004_page_locked','2016-08-04 02:20:48.276652'),(19,'wagtailcore','0005_add_page_lock_permission_to_moderators','2016-08-04 02:20:48.280846'),(20,'wagtailcore','0006_add_lock_page_permission','2016-08-04 02:20:48.285161'),(21,'wagtailcore','0007_page_latest_revision_created_at','2016-08-04 02:20:48.289454'),(22,'wagtailcore','0008_populate_latest_revision_created_at','2016-08-04 02:20:48.294232'),(23,'wagtailcore','0009_remove_auto_now_add_from_pagerevision_created_at','2016-08-04 02:20:48.304795'),(24,'wagtailcore','0010_change_page_owner_to_null_on_delete','2016-08-04 02:20:48.309215'),(25,'wagtailcore','0011_page_first_published_at','2016-08-04 02:20:48.313590'),(26,'wagtailcore','0012_extend_page_slug_field','2016-08-04 02:20:48.318032'),(27,'wagtailcore','0013_update_golive_expire_help_text','2016-08-04 02:20:48.322360'),(28,'wagtailcore','0014_add_verbose_name','2016-08-04 02:20:48.326627'),(29,'wagtailcore','0015_add_more_verbose_names','2016-08-04 02:20:48.330710'),(30,'wagtailcore','0016_change_page_url_path_to_text_field','2016-08-04 02:20:48.335092'),(31,'wagtailimages','0002_initial_data','2016-08-04 02:20:48.374655'),(32,'wagtailimages','0003_fix_focal_point_fields','2016-08-04 02:20:48.449533'),(33,'wagtailimages','0004_make_focal_point_key_not_nullable','2016-08-04 02:20:48.533296'),(34,'wagtailimages','0005_make_filter_spec_unique','2016-08-04 02:20:48.572710'),(35,'wagtailimages','0006_add_verbose_names','2016-08-04 02:20:48.698810'),(36,'wagtailimages','0007_image_file_size','2016-08-04 02:20:48.767693'),(37,'wagtailimages','0008_image_created_at_index','2016-08-04 02:20:48.795696'),(38,'wagtailimages','0009_capitalizeverbose','2016-08-04 02:20:49.025441'),(39,'wagtailimages','0010_change_on_delete_behaviour','2016-08-04 02:20:49.121424'),(40,'wagtailcore','0017_change_edit_page_permission_description','2016-08-04 02:20:49.144503'),(41,'wagtailcore','0018_pagerevision_submitted_for_moderation_index','2016-08-04 02:20:49.186319'),(42,'wagtailcore','0019_verbose_names_cleanup','2016-08-04 02:20:49.287931'),(43,'wagtailcore','0020_add_index_on_page_first_published_at','2016-08-04 02:20:49.325876'),(44,'wagtailcore','0021_capitalizeverbose','2016-08-04 02:20:50.483437'),(45,'wagtailcore','0022_add_site_name','2016-08-04 02:20:50.601042'),(46,'wagtailcore','0023_alter_page_revision_on_delete_behaviour','2016-08-04 02:20:50.687991'),(47,'wagtailcore','0024_collection','2016-08-04 02:20:50.734779'),(48,'wagtailcore','0025_collection_initial_data','2016-08-04 02:20:50.744646'),(49,'wagtailcore','0026_group_collection_permission','2016-08-04 02:20:51.063082'),(50,'wagtailimages','0011_image_collection','2016-08-04 02:20:51.241049'),(51,'wagtailimages','0012_copy_image_permissions_to_collections','2016-08-04 02:20:51.263634'),(52,'wagtailimages','0013_make_rendition_upload_callable','2016-08-04 02:20:51.291694'),(53,'wagtailcore','0027_fix_collection_path_collation','2016-08-04 02:20:51.300519'),(54,'wagtailcore','0024_alter_page_content_type_on_delete_behaviour','2016-08-04 02:20:51.416492'),(55,'wagtailcore','0028_merge','2016-08-04 02:20:51.421269'),(56,'blog','0001_initial','2016-08-04 02:20:51.661770'),(57,'home','0001_initial','2016-08-04 02:20:52.047308'),(58,'sessions','0001_initial','2016-08-04 02:20:52.100167'),(59,'wagtailadmin','0001_create_admin_access_permissions','2016-08-04 02:20:52.132144'),(60,'wagtaildocs','0001_initial','2016-08-04 02:20:52.243372'),(61,'wagtaildocs','0002_initial_data','2016-08-04 02:20:52.282736'),(62,'wagtaildocs','0003_add_verbose_names','2016-08-04 02:20:52.427719'),(63,'wagtaildocs','0004_capitalizeverbose','2016-08-04 02:20:52.634011'),(64,'wagtaildocs','0005_document_collection','2016-08-04 02:20:52.800602'),(65,'wagtaildocs','0006_copy_document_permissions_to_collections','2016-08-04 02:20:52.823913'),(66,'wagtaildocs','0005_alter_uploaded_by_user_on_delete_action','2016-08-04 02:20:52.910870'),(67,'wagtaildocs','0007_merge','2016-08-04 02:20:52.915461'),(68,'wagtailembeds','0001_initial','2016-08-04 02:20:52.971874'),(69,'wagtailembeds','0002_add_verbose_names','2016-08-04 02:20:52.980007'),(70,'wagtailembeds','0003_capitalizeverbose','2016-08-04 02:20:52.988452'),(71,'wagtailforms','0001_initial','2016-08-04 02:20:53.115059'),(72,'wagtailforms','0002_add_verbose_names','2016-08-04 02:20:53.174596'),(73,'wagtailforms','0003_capitalizeverbose','2016-08-04 02:20:53.235770'),(74,'wagtailredirects','0001_initial','2016-08-04 02:20:53.440079'),(75,'wagtailredirects','0002_add_verbose_names','2016-08-04 02:20:53.573570'),(76,'wagtailredirects','0003_make_site_field_editable','2016-08-04 02:20:53.739625'),(77,'wagtailredirects','0004_set_unique_on_path_and_site','2016-08-04 02:20:53.820255'),(78,'wagtailredirects','0005_capitalizeverbose','2016-08-04 02:20:54.135230'),(79,'wagtailsearch','0001_initial','2016-08-04 02:20:54.541275'),(80,'wagtailsearch','0002_add_verbose_names','2016-08-04 02:20:54.733820'),(81,'wagtailsearch','0003_remove_editors_pick','2016-08-04 02:20:54.776610'),(82,'wagtailusers','0001_initial','2016-08-04 02:20:54.898821'),(83,'wagtailusers','0002_add_verbose_name_on_userprofile','2016-08-04 02:20:54.991430'),(84,'wagtailusers','0003_add_verbose_names','2016-08-04 02:20:55.031880'),(85,'wagtailusers','0004_capitalizeverbose','2016-08-04 02:20:55.154414'),(86,'wagtailcore','0001_squashed_0016_change_page_url_path_to_text_field','2016-08-04 02:20:55.162555');
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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('t3pnafwmq7chr7mnijhexf2g5dkusnbt','MDc1ZjAwNjc0YmMxMTg3NjNlZTNjZDEwYmU5M2E0MjI4ZTA2OGM5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI1NTBmMzBmYjI5MDFmYWM0MWY1NzA2NDUwY2JjMDc5YzA0NTA0ODcwIn0=','2016-08-18 02:23:31.334485');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_aboutpage`
--

DROP TABLE IF EXISTS `home_aboutpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_aboutpage` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_aboutpage_page_ptr_id_f69f9474_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_aboutpage`
--

LOCK TABLES `home_aboutpage` WRITE;
/*!40000 ALTER TABLE `home_aboutpage` DISABLE KEYS */;
INSERT INTO `home_aboutpage` VALUES (7);
/*!40000 ALTER TABLE `home_aboutpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_agreementpage`
--

DROP TABLE IF EXISTS `home_agreementpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_agreementpage` (
  `page_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_agreementpage_page_ptr_id_56bbf1c7_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_agreementpage`
--

LOCK TABLES `home_agreementpage` WRITE;
/*!40000 ALTER TABLE `home_agreementpage` DISABLE KEYS */;
INSERT INTO `home_agreementpage` VALUES (9,'<h2>用户协议</h2><h3>阅读并同意了用户协议</h3><p>Hello typo.css</p>');
/*!40000 ALTER TABLE `home_agreementpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_indexpage`
--

DROP TABLE IF EXISTS `home_indexpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_indexpage` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_indexpage_page_ptr_id_63631d84_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_indexpage`
--

LOCK TABLES `home_indexpage` WRITE;
/*!40000 ALTER TABLE `home_indexpage` DISABLE KEYS */;
INSERT INTO `home_indexpage` VALUES (3);
/*!40000 ALTER TABLE `home_indexpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_whateverpage`
--

DROP TABLE IF EXISTS `home_whateverpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_whateverpage` (
  `page_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_whateverpage_page_ptr_id_60a5394e_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_whateverpage`
--

LOCK TABLES `home_whateverpage` WRITE;
/*!40000 ALTER TABLE `home_whateverpage` DISABLE KEYS */;
INSERT INTO `home_whateverpage` VALUES (8,'');
/*!40000 ALTER TABLE `home_whateverpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_af31437c` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_tagged_content_type_id_9957a03c_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_collection`
--

DROP TABLE IF EXISTS `wagtailcore_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_collection`
--

LOCK TABLES `wagtailcore_collection` WRITE;
/*!40000 ALTER TABLE `wagtailcore_collection` DISABLE KEYS */;
INSERT INTO `wagtailcore_collection` VALUES (1,'0001',1,0,'Root');
/*!40000 ALTER TABLE `wagtailcore_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_groupcollectionpermission`
--

DROP TABLE IF EXISTS `wagtailcore_groupcollectionpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_groupcollectionpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq` (`group_id`,`collection_id`,`permission_id`),
  KEY `wagtailcore__collection_id_5423575a_fk_wagtailcore_collection_id` (`collection_id`),
  KEY `wagtailcore_groupco_permission_id_1b626275_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `wagtailcore__collection_id_5423575a_fk_wagtailcore_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtailcore_groupco_permission_id_1b626275_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `wagtailcore_groupcollectionpe_group_id_05d61460_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_groupcollectionpermission`
--

LOCK TABLES `wagtailcore_groupcollectionpermission` WRITE;
/*!40000 ALTER TABLE `wagtailcore_groupcollectionpermission` DISABLE KEYS */;
INSERT INTO `wagtailcore_groupcollectionpermission` VALUES (2,1,1,1),(4,1,1,2),(6,1,1,5),(8,1,1,6),(1,1,2,1),(3,1,2,2),(5,1,2,5),(7,1,2,6);
/*!40000 ALTER TABLE `wagtailcore_groupcollectionpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_grouppagepermission`
--

DROP TABLE IF EXISTS `wagtailcore_grouppagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_grouppagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_type` varchar(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_grouppagepermission_group_id_0898bdf8_uniq` (`group_id`,`page_id`,`permission_type`),
  KEY `wagtailcore_grouppageper_page_id_710b114a_fk_wagtailcore_page_id` (`page_id`),
  CONSTRAINT `wagtailcore_grouppageper_page_id_710b114a_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_grouppagepermissi_group_id_fc07e671_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_grouppagepermission`
--

LOCK TABLES `wagtailcore_grouppagepermission` WRITE;
/*!40000 ALTER TABLE `wagtailcore_grouppagepermission` DISABLE KEYS */;
INSERT INTO `wagtailcore_grouppagepermission` VALUES (1,'add',1,1),(2,'edit',1,1),(6,'lock',1,1),(3,'publish',1,1),(4,'add',2,1),(5,'edit',2,1);
/*!40000 ALTER TABLE `wagtailcore_grouppagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_page`
--

DROP TABLE IF EXISTS `wagtailcore_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `live` tinyint(1) NOT NULL,
  `has_unpublished_changes` tinyint(1) NOT NULL,
  `url_path` longtext NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `show_in_menus` tinyint(1) NOT NULL,
  `search_description` longtext NOT NULL,
  `go_live_at` datetime(6) DEFAULT NULL,
  `expire_at` datetime(6) DEFAULT NULL,
  `expired` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `latest_revision_created_at` datetime(6) DEFAULT NULL,
  `first_published_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `wagtailcore_page_2dbcba41` (`slug`),
  KEY `wagtailcore_page_first_published_at_2b5dd637_uniq` (`first_published_at`),
  KEY `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` (`owner_id`),
  KEY `wagtailcore_p_content_type_id_c28424df_fk_django_content_type_id` (`content_type_id`),
  CONSTRAINT `wagtailcore_p_content_type_id_c28424df_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_page`
--

LOCK TABLES `wagtailcore_page` WRITE;
/*!40000 ALTER TABLE `wagtailcore_page` DISABLE KEYS */;
INSERT INTO `wagtailcore_page` VALUES (1,'0001',1,2,'Root','root',1,0,'/','',0,'',NULL,NULL,0,1,NULL,0,NULL,NULL),(2,'00010001',2,0,'Welcome to your new Wagtail site!','home',1,0,'/home/','',0,'',NULL,NULL,0,1,NULL,0,NULL,NULL),(3,'00010002',2,3,'首页 Docker-Wagtail','index',1,0,'/index/','',0,'',NULL,NULL,0,5,1,0,'2016-08-04 02:25:03.532680','2016-08-04 02:25:03.567152'),(4,'000100020001',3,2,'博客文章列表','blog',1,0,'/index/blog/','博客文章列表',1,'',NULL,NULL,0,9,1,0,'2016-08-04 02:28:20.777548','2016-08-04 02:28:20.815323'),(5,'0001000200010001',4,1,'一类博客文章','category-1',1,0,'/index/blog/category-1/','一类博客文章',1,'',NULL,NULL,0,9,1,0,'2016-08-04 02:28:44.510034','2016-08-04 02:28:44.551415'),(6,'0001000200010002',4,0,'二类博客文章','category-2',1,0,'/index/blog/category-2/','二类博客文章',1,'',NULL,NULL,0,9,1,0,'2016-08-04 02:29:13.766698','2016-08-04 02:29:13.800295'),(7,'000100020002',3,0,'关于我们','about',1,0,'/index/about/','关于我们',1,'',NULL,NULL,0,6,1,0,'2016-08-04 02:29:41.591658','2016-08-04 02:29:41.632127'),(8,'000100020003',3,1,'PUBLIC','public',1,0,'/index/public/','PUBLIC',0,'',NULL,NULL,0,7,1,0,'2016-08-04 02:30:06.075800','2016-08-04 02:30:06.106819'),(9,'0001000200030001',4,0,'用户协议','yhxy',1,0,'/index/public/yhxy/','用户协议',0,'',NULL,NULL,0,8,1,0,'2016-08-04 02:30:48.539276','2016-08-04 02:30:48.566662'),(10,'00010002000100010001',5,0,'第一篇博客文章','the-first-blog',1,0,'/index/blog/category-1/the-first-blog/','第一篇博客文章',1,'',NULL,NULL,0,10,1,0,'2016-08-04 02:32:19.527879','2016-08-04 02:32:19.571627');
/*!40000 ALTER TABLE `wagtailcore_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pagerevision`
--

DROP TABLE IF EXISTS `wagtailcore_pagerevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_pagerevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted_for_moderation` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `content_json` longtext NOT NULL,
  `approved_go_live_at` datetime(6) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq` (`submitted_for_moderation`),
  KEY `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` (`page_id`),
  KEY `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` (`user_id`),
  CONSTRAINT `wagtailcore_pagerevision_page_id_d421cc1d_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pagerevision`
--

LOCK TABLES `wagtailcore_pagerevision` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pagerevision` DISABLE KEYS */;
INSERT INTO `wagtailcore_pagerevision` VALUES (1,0,'2016-08-04 02:25:03.532680','{\"live\": true, \"expired\": false, \"title\": \"\\u9996\\u9875 Docker-Wagtail\", \"first_published_at\": null, \"numchild\": 0, \"expire_at\": null, \"pk\": 3, \"has_unpublished_changes\": false, \"path\": \"000100010001\", \"search_description\": \"\", \"slug\": \"index\", \"show_in_menus\": false, \"latest_revision_created_at\": null, \"depth\": 3, \"go_live_at\": null, \"content_type\": 5, \"seo_title\": \"\", \"url_path\": \"/home/index/\", \"owner\": 1, \"locked\": false}',NULL,3,1),(2,0,'2016-08-04 02:28:20.777548','{\"live\": true, \"expired\": false, \"title\": \"\\u535a\\u5ba2\\u6587\\u7ae0\\u5217\\u8868\", \"first_published_at\": null, \"numchild\": 0, \"expire_at\": null, \"pk\": 4, \"has_unpublished_changes\": false, \"path\": \"000100020001\", \"search_description\": \"\", \"slug\": \"blog\", \"show_in_menus\": true, \"latest_revision_created_at\": null, \"depth\": 3, \"go_live_at\": null, \"content_type\": 9, \"seo_title\": \"\\u535a\\u5ba2\\u6587\\u7ae0\\u5217\\u8868\", \"url_path\": \"/index/blog/\", \"owner\": 1, \"locked\": false}',NULL,4,1),(3,0,'2016-08-04 02:28:44.510034','{\"live\": true, \"expired\": false, \"title\": \"\\u4e00\\u7c7b\\u535a\\u5ba2\\u6587\\u7ae0\", \"first_published_at\": null, \"numchild\": 0, \"expire_at\": null, \"pk\": 5, \"has_unpublished_changes\": false, \"path\": \"0001000200010001\", \"search_description\": \"\", \"slug\": \"category-1\", \"show_in_menus\": true, \"latest_revision_created_at\": null, \"depth\": 4, \"go_live_at\": null, \"content_type\": 9, \"seo_title\": \"\\u4e00\\u7c7b\\u535a\\u5ba2\\u6587\\u7ae0\", \"url_path\": \"/index/blog/category-1/\", \"owner\": 1, \"locked\": false}',NULL,5,1),(4,0,'2016-08-04 02:29:13.766698','{\"live\": true, \"expired\": false, \"title\": \"\\u4e8c\\u7c7b\\u535a\\u5ba2\\u6587\\u7ae0\", \"first_published_at\": null, \"numchild\": 0, \"expire_at\": null, \"pk\": 6, \"has_unpublished_changes\": false, \"path\": \"0001000200010002\", \"search_description\": \"\", \"slug\": \"category-2\", \"show_in_menus\": true, \"latest_revision_created_at\": null, \"depth\": 4, \"go_live_at\": null, \"content_type\": 9, \"seo_title\": \"\\u4e8c\\u7c7b\\u535a\\u5ba2\\u6587\\u7ae0\", \"url_path\": \"/index/blog/category-2/\", \"owner\": 1, \"locked\": false}',NULL,6,1),(5,0,'2016-08-04 02:29:41.591658','{\"live\": true, \"expired\": false, \"title\": \"\\u5173\\u4e8e\\u6211\\u4eec\", \"first_published_at\": null, \"numchild\": 0, \"expire_at\": null, \"pk\": 7, \"has_unpublished_changes\": false, \"path\": \"000100020002\", \"search_description\": \"\", \"slug\": \"about\", \"show_in_menus\": true, \"latest_revision_created_at\": null, \"depth\": 3, \"go_live_at\": null, \"content_type\": 6, \"seo_title\": \"\\u5173\\u4e8e\\u6211\\u4eec\", \"url_path\": \"/index/about/\", \"owner\": 1, \"locked\": false}',NULL,7,1),(6,0,'2016-08-04 02:30:06.075800','{\"live\": true, \"expired\": false, \"title\": \"PUBLIC\", \"first_published_at\": null, \"numchild\": 0, \"expire_at\": null, \"pk\": 8, \"has_unpublished_changes\": false, \"path\": \"000100020003\", \"search_description\": \"\", \"slug\": \"public\", \"show_in_menus\": false, \"latest_revision_created_at\": null, \"depth\": 3, \"go_live_at\": null, \"content_type\": 7, \"seo_title\": \"PUBLIC\", \"url_path\": \"/index/public/\", \"body\": \"\", \"owner\": 1, \"locked\": false}',NULL,8,1),(7,0,'2016-08-04 02:30:48.539276','{\"live\": true, \"expired\": false, \"title\": \"\\u7528\\u6237\\u534f\\u8bae\", \"first_published_at\": null, \"numchild\": 0, \"expire_at\": null, \"pk\": 9, \"has_unpublished_changes\": false, \"path\": \"0001000200030001\", \"search_description\": \"\", \"slug\": \"yhxy\", \"show_in_menus\": false, \"latest_revision_created_at\": null, \"depth\": 4, \"go_live_at\": null, \"content_type\": 8, \"seo_title\": \"\\u7528\\u6237\\u534f\\u8bae\", \"url_path\": \"/index/public/yhxy/\", \"body\": \"<h2>\\u7528\\u6237\\u534f\\u8bae</h2><h3>\\u9605\\u8bfb\\u5e76\\u540c\\u610f\\u4e86\\u7528\\u6237\\u534f\\u8bae</h3><p>Hello typo.css</p>\", \"owner\": 1, \"locked\": false}',NULL,9,1),(8,0,'2016-08-04 02:32:19.527879','{\"live\": true, \"title\": \"\\u7b2c\\u4e00\\u7bc7\\u535a\\u5ba2\\u6587\\u7ae0\", \"pk\": 10, \"has_unpublished_changes\": false, \"latest_revision_created_at\": null, \"go_live_at\": null, \"show_in_menus\": true, \"url_path\": \"/index/blog/category-1/the-first-blog/\", \"date\": \"2016-08-04\", \"content_type\": 10, \"locked\": false, \"expired\": false, \"main_image\": null, \"numchild\": 0, \"intro\": \"\\u6587\\u7ae0\\u7b80\\u4ecb\", \"expire_at\": null, \"first_published_at\": null, \"path\": \"00010002000100010001\", \"slug\": \"the-first-blog\", \"depth\": 5, \"owner\": 1, \"search_description\": \"\", \"seo_title\": \"\\u7b2c\\u4e00\\u7bc7\\u535a\\u5ba2\\u6587\\u7ae0\", \"body\": \"<p>\\u6587\\u7ae0\\u5185\\u5bb9</p>\"}',NULL,10,1);
/*!40000 ALTER TABLE `wagtailcore_pagerevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_pageviewrestriction`
--

DROP TABLE IF EXISTS `wagtailcore_pageviewrestriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_pageviewrestriction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pageviewrest_page_id_15a8bea6_fk_wagtailcore_page_id` (`page_id`),
  CONSTRAINT `wagtailcore_pageviewrest_page_id_15a8bea6_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_pageviewrestriction`
--

LOCK TABLES `wagtailcore_pageviewrestriction` WRITE;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailcore_pageviewrestriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailcore_site`
--

DROP TABLE IF EXISTS `wagtailcore_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailcore_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `is_default_site` tinyint(1) NOT NULL,
  `root_page_id` int(11) NOT NULL,
  `site_name` varchar(255),
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_site_hostname_2c626d70_uniq` (`hostname`,`port`),
  KEY `wagtailcore_site_0897acf4` (`hostname`),
  KEY `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` (`root_page_id`),
  CONSTRAINT `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` FOREIGN KEY (`root_page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailcore_site`
--

LOCK TABLES `wagtailcore_site` WRITE;
/*!40000 ALTER TABLE `wagtailcore_site` DISABLE KEYS */;
INSERT INTO `wagtailcore_site` VALUES (1,'localhost',80,1,3,'');
/*!40000 ALTER TABLE `wagtailcore_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtaildocs_document`
--

DROP TABLE IF EXISTS `wagtaildocs_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtaildocs_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `uploaded_by_user_id` int(11) DEFAULT NULL,
  `collection_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtaildocs_document_0a1a4dd8` (`collection_id`),
  KEY `wagtaildocs_documen_uploaded_by_user_id_17258b41_fk_auth_user_id` (`uploaded_by_user_id`),
  CONSTRAINT `wagtaildocs__collection_id_23881625_fk_wagtailcore_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtaildocs_documen_uploaded_by_user_id_17258b41_fk_auth_user_id` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtaildocs_document`
--

LOCK TABLES `wagtaildocs_document` WRITE;
/*!40000 ALTER TABLE `wagtaildocs_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtaildocs_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailembeds_embed`
--

DROP TABLE IF EXISTS `wagtailembeds_embed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailembeds_embed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `max_width` smallint(6) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `html` longtext NOT NULL,
  `title` longtext NOT NULL,
  `author_name` longtext NOT NULL,
  `provider_name` longtext NOT NULL,
  `thumbnail_url` varchar(200) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailembeds_embed_url_8a2922d8_uniq` (`url`,`max_width`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailembeds_embed`
--

LOCK TABLES `wagtailembeds_embed` WRITE;
/*!40000 ALTER TABLE `wagtailembeds_embed` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailembeds_embed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailforms_formsubmission`
--

DROP TABLE IF EXISTS `wagtailforms_formsubmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailforms_formsubmission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_data` longtext NOT NULL,
  `submit_time` datetime(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailforms_formsubmiss_page_id_e48e93e7_fk_wagtailcore_page_id` (`page_id`),
  CONSTRAINT `wagtailforms_formsubmiss_page_id_e48e93e7_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailforms_formsubmission`
--

LOCK TABLES `wagtailforms_formsubmission` WRITE;
/*!40000 ALTER TABLE `wagtailforms_formsubmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailforms_formsubmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_filter`
--

DROP TABLE IF EXISTS `wagtailimages_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailimages_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailimages_filter_spec_42ad6e02_uniq` (`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_filter`
--

LOCK TABLES `wagtailimages_filter` WRITE;
/*!40000 ALTER TABLE `wagtailimages_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailimages_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_image`
--

DROP TABLE IF EXISTS `wagtailimages_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailimages_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `focal_point_x` int(10) unsigned DEFAULT NULL,
  `focal_point_y` int(10) unsigned DEFAULT NULL,
  `focal_point_width` int(10) unsigned DEFAULT NULL,
  `focal_point_height` int(10) unsigned DEFAULT NULL,
  `uploaded_by_user_id` int(11) DEFAULT NULL,
  `file_size` int(10) unsigned,
  `collection_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailimages_image_created_at_86fa6cd4_uniq` (`created_at`),
  KEY `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` (`uploaded_by_user_id`),
  KEY `wagtailimages_image_0a1a4dd8` (`collection_id`),
  CONSTRAINT `wagtailimage_collection_id_c2f8af7e_fk_wagtailcore_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`),
  CONSTRAINT `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_image`
--

LOCK TABLES `wagtailimages_image` WRITE;
/*!40000 ALTER TABLE `wagtailimages_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailimages_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailimages_rendition`
--

DROP TABLE IF EXISTS `wagtailimages_rendition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailimages_rendition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `focal_point_key` varchar(255) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailimages_rendition_image_id_03110280_uniq` (`image_id`,`filter_id`,`focal_point_key`),
  KEY `wagtailimages_rend_filter_id_7fc52567_fk_wagtailimages_filter_id` (`filter_id`),
  CONSTRAINT `wagtailimages_rend_filter_id_7fc52567_fk_wagtailimages_filter_id` FOREIGN KEY (`filter_id`) REFERENCES `wagtailimages_filter` (`id`),
  CONSTRAINT `wagtailimages_rendit_image_id_3e1fd774_fk_wagtailimages_image_id` FOREIGN KEY (`image_id`) REFERENCES `wagtailimages_image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailimages_rendition`
--

LOCK TABLES `wagtailimages_rendition` WRITE;
/*!40000 ALTER TABLE `wagtailimages_rendition` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailimages_rendition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailredirects_redirect`
--

DROP TABLE IF EXISTS `wagtailredirects_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailredirects_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_path` varchar(255) NOT NULL,
  `is_permanent` tinyint(1) NOT NULL,
  `redirect_link` varchar(200) NOT NULL,
  `redirect_page_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailredirects_redirect_old_path_783622d7_uniq` (`old_path`,`site_id`),
  KEY `wagtailredirect_redirect_page_id_b5728a8f_fk_wagtailcore_page_id` (`redirect_page_id`),
  KEY `wagtailredirects_redirec_site_id_780a0e1e_fk_wagtailcore_site_id` (`site_id`),
  CONSTRAINT `wagtailredirect_redirect_page_id_b5728a8f_fk_wagtailcore_page_id` FOREIGN KEY (`redirect_page_id`) REFERENCES `wagtailcore_page` (`id`),
  CONSTRAINT `wagtailredirects_redirec_site_id_780a0e1e_fk_wagtailcore_site_id` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailredirects_redirect`
--

LOCK TABLES `wagtailredirects_redirect` WRITE;
/*!40000 ALTER TABLE `wagtailredirects_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailredirects_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_editorspick`
--

DROP TABLE IF EXISTS `wagtailsearch_editorspick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailsearch_editorspick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `page_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailsearch_editorspick_0bbeda9c` (`query_id`),
  KEY `wagtailsearch_editorspic_page_id_28cbc274_fk_wagtailcore_page_id` (`page_id`),
  CONSTRAINT `wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailsearch_query_id` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`),
  CONSTRAINT `wagtailsearch_editorspic_page_id_28cbc274_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_editorspick`
--

LOCK TABLES `wagtailsearch_editorspick` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_editorspick` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_editorspick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_query`
--

DROP TABLE IF EXISTS `wagtailsearch_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailsearch_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query_string` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `query_string` (`query_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_query`
--

LOCK TABLES `wagtailsearch_query` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailsearch_querydailyhits`
--

DROP TABLE IF EXISTS `wagtailsearch_querydailyhits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailsearch_querydailyhits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hits` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailsearch_querydailyhits_query_id_1dd232e6_uniq` (`query_id`,`date`),
  CONSTRAINT `wagtailsearch_queryd_query_id_2185994b_fk_wagtailsearch_query_id` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailsearch_querydailyhits`
--

LOCK TABLES `wagtailsearch_querydailyhits` WRITE;
/*!40000 ALTER TABLE `wagtailsearch_querydailyhits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailsearch_querydailyhits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wagtailusers_userprofile`
--

DROP TABLE IF EXISTS `wagtailusers_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wagtailusers_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted_notifications` tinyint(1) NOT NULL,
  `approved_notifications` tinyint(1) NOT NULL,
  `rejected_notifications` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wagtailusers_userprofile`
--

LOCK TABLES `wagtailusers_userprofile` WRITE;
/*!40000 ALTER TABLE `wagtailusers_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `wagtailusers_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-04 14:15:38
