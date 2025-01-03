-- -------------------------------------------------------------
-- TablePlus 6.1.6(570)
--
-- https://tableplus.com/
--
-- Database: wagtail
-- Generation Time: 2025-01-03
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `blog_articlepage` (
  `page_ptr_id` int NOT NULL,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `intro` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image_id` int DEFAULT NULL,
  PRIMARY KEY (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `blog_blogindexpage` (
  `page_ptr_id` int NOT NULL,
  PRIMARY KEY (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `home_aboutpage` (
  `page_ptr_id` int NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_aboutpage_page_ptr_id_f69f9474_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `home_agreementpage` (
  `page_ptr_id` int NOT NULL,
  `body` longtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_agreementpage_page_ptr_id_56bbf1c7_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `home_indexpage` (
  `page_ptr_id` int NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_indexpage_page_ptr_id_63631d84_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `home_whateverpage` (
  `page_ptr_id` int NOT NULL,
  `body` longtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `home_whateverpage_page_ptr_id_60a5394e_fk_wagtailcore_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `taggit_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `taggit_taggeditem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_af31437c` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_tagged_content_type_id_9957a03c_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailadmin_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `depth` int unsigned NOT NULL,
  `numchild` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_collectionviewrestriction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `restriction_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` (`collection_id`),
  CONSTRAINT `wagtailcore_collecti_collection_id_761908ec_fk_wagtailco` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wagtailcore_collectionviewrestriction_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collectionviewrestriction_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq` (`collectionviewrestriction_id`,`group_id`),
  KEY `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` (`group_id`),
  CONSTRAINT `wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco` FOREIGN KEY (`collectionviewrestriction_id`) REFERENCES `wagtailcore_collectionviewrestriction` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wagtailcore_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `contentpath` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `position` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `resolved_at` datetime(6) DEFAULT NULL,
  `page_id` int NOT NULL,
  `resolved_by_id` int DEFAULT NULL,
  `revision_created_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_comment_resolved_by_id_a282aa0e_fk_auth_user_id` (`resolved_by_id`),
  KEY `wagtailcore_comment_user_id_0c577ca6_fk_auth_user_id` (`user_id`),
  KEY `wagtailcore_comment_page_id_108444b5` (`page_id`),
  KEY `wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco` (`revision_created_id`),
  CONSTRAINT `wagtailcore_comment_page_id_108444b5_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_comment_resolved_by_id_a282aa0e_fk_auth_user_id` FOREIGN KEY (`resolved_by_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_comment_revision_created_id_1d058279_fk_wagtailco` FOREIGN KEY (`revision_created_id`) REFERENCES `wagtailcore_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_comment_user_id_0c577ca6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_commentreply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_commentreply_user_id_d0b3b9c3_fk_auth_user_id` (`user_id`),
  KEY `wagtailcore_commentreply_comment_id_afc7e027` (`comment_id`),
  CONSTRAINT `wagtailcore_commentr_comment_id_afc7e027_fk_wagtailco` FOREIGN KEY (`comment_id`) REFERENCES `wagtailcore_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_commentreply_user_id_d0b3b9c3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_groupapprovaltask` (
  `task_ptr_id` int NOT NULL,
  PRIMARY KEY (`task_ptr_id`),
  CONSTRAINT `wagtailcore_groupapp_task_ptr_id_cfe58781_fk_wagtailco` FOREIGN KEY (`task_ptr_id`) REFERENCES `wagtailcore_task` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_groupapprovaltask_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `groupapprovaltask_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_groupapprova_groupapprovaltask_id_gro_bb5ee7eb_uniq` (`groupapprovaltask_id`,`group_id`),
  KEY `wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou` (`group_id`),
  CONSTRAINT `wagtailcore_groupapp_group_id_2e64b61f_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_groupapp_groupapprovaltask_id_9a9255ea_fk_wagtailco` FOREIGN KEY (`groupapprovaltask_id`) REFERENCES `wagtailcore_groupapprovaltask` (`task_ptr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_groupcollectionpermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collection_id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq` (`group_id`,`collection_id`,`permission_id`),
  KEY `wagtailcore__collection_id_5423575a_fk_wagtailcore_collection_id` (`collection_id`),
  KEY `wagtailcore_groupco_permission_id_1b626275_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `wagtailcore__collection_id_5423575a_fk_wagtailcore_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_groupco_permission_id_1b626275_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_groupcollectionpe_group_id_05d61460_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_grouppagepermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_type` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `group_id` int NOT NULL,
  `page_id` int NOT NULL,
  `permission_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permission` (`group_id`,`page_id`,`permission_id`),
  UNIQUE KEY `unique_permission_type` (`group_id`,`page_id`,`permission_type`),
  KEY `wagtailcore_grouppageper_page_id_710b114a_fk_wagtailcore_page_id` (`page_id`),
  KEY `wagtailcore_grouppag_permission_id_05acb22e_fk_auth_perm` (`permission_id`),
  KEY `wagtailcore_grouppagepermission_group_id_fc07e671` (`group_id`),
  CONSTRAINT `wagtailcore_grouppag_permission_id_05acb22e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `wagtailcore_grouppageper_page_id_710b114a_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_grouppagepermissi_group_id_fc07e671_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `permission_or_permission_type_not_null` CHECK (((`permission_id` is not null) or (`permission_type` is not null)))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_locale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_code` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code` (`language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_modellogentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data` json NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `content_changed` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `object_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `uuid` char(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `revision_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_modellog_content_type_id_68849e77_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_modellogentry_action_d2d856ee` (`action`),
  KEY `wagtailcore_modellogentry_content_changed_8bc39742` (`content_changed`),
  KEY `wagtailcore_modellogentry_object_id_e0e7d4ef` (`object_id`),
  KEY `wagtailcore_modellogentry_user_id_0278d1bf` (`user_id`),
  KEY `wagtailcore_modellogentry_timestamp_9694521b` (`timestamp`),
  KEY `wagtailcore_modellogentry_revision_id_df6ca33a` (`revision_id`),
  CONSTRAINT `wagtailcore_modellog_content_type_id_68849e77_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `depth` int unsigned NOT NULL,
  `numchild` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `live` tinyint(1) NOT NULL,
  `has_unpublished_changes` tinyint(1) NOT NULL,
  `url_path` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `show_in_menus` tinyint(1) NOT NULL,
  `search_description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `go_live_at` datetime(6) DEFAULT NULL,
  `expire_at` datetime(6) DEFAULT NULL,
  `expired` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `latest_revision_created_at` datetime(6) DEFAULT NULL,
  `first_published_at` datetime(6) DEFAULT NULL,
  `live_revision_id` int DEFAULT NULL,
  `last_published_at` datetime(6) DEFAULT NULL,
  `draft_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `locked_by_id` int DEFAULT NULL,
  `translation_key` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `locale_id` int NOT NULL,
  `alias_of_id` int DEFAULT NULL,
  `latest_revision_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  UNIQUE KEY `wagtailcore_page_translation_key_locale_id_9b041bad_uniq` (`translation_key`,`locale_id`),
  KEY `wagtailcore_page_2dbcba41` (`slug`),
  KEY `wagtailcore_page_first_published_at_2b5dd637_uniq` (`first_published_at`),
  KEY `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` (`owner_id`),
  KEY `wagtailcore_p_content_type_id_c28424df_fk_django_content_type_id` (`content_type_id`),
  KEY `wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id` (`locked_by_id`),
  KEY `wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id` (`locale_id`),
  KEY `wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id` (`alias_of_id`),
  KEY `wagtailcore_page_latest_revision_id_e60fef51_fk_wagtailco` (`latest_revision_id`),
  CONSTRAINT `wagtailcore_p_content_type_id_c28424df_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_page_alias_of_id_12945502_fk_wagtailcore_page_id` FOREIGN KEY (`alias_of_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_page_latest_revision_id_e60fef51_fk_wagtailco` FOREIGN KEY (`latest_revision_id`) REFERENCES `wagtailcore_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_page_locale_id_3c7e30a6_fk_wagtailcore_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `wagtailcore_locale` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_page_locked_by_id_bcb86245_fk_auth_user_id` FOREIGN KEY (`locked_by_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_pagelogentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data` json NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `content_changed` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `page_id` int NOT NULL,
  `revision_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `uuid` char(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_pagelogentry_action_c2408198` (`action`),
  KEY `wagtailcore_pagelogentry_content_changed_99f27ade` (`content_changed`),
  KEY `wagtailcore_pagelogentry_page_id_8464e327` (`page_id`),
  KEY `wagtailcore_pagelogentry_revision_id_8043d103` (`revision_id`),
  KEY `wagtailcore_pagelogentry_user_id_604ccfd8` (`user_id`),
  KEY `wagtailcore_pagelogentry_timestamp_deb774c4` (`timestamp`),
  CONSTRAINT `wagtailcore_pageloge_content_type_id_74e7708a_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_pagesubscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_notifications` tinyint(1) NOT NULL,
  `page_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_pagesubscription_page_id_user_id_0cef73ed_uniq` (`page_id`,`user_id`),
  KEY `wagtailcore_pagesubscription_user_id_89d7def9_fk_auth_user_id` (`user_id`),
  CONSTRAINT `wagtailcore_pagesubs_page_id_a085e7a6_fk_wagtailco` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_pagesubscription_user_id_89d7def9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_pageviewrestriction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `page_id` int NOT NULL,
  `restriction_type` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'password',
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pageviewrest_page_id_15a8bea6_fk_wagtailcore_page_id` (`page_id`),
  CONSTRAINT `wagtailcore_pageviewrest_page_id_15a8bea6_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_pageviewrestriction_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pageviewrestriction_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wagtailcore_referenceindex` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `to_object_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `model_path` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_path` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_path_hash` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `base_content_type_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `to_content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_referenceind_base_content_type_id_obj_9e6ccd6a_uniq` (`base_content_type_id`,`object_id`,`to_content_type_id`,`to_object_id`,`content_path_hash`),
  KEY `wagtailcore_referenc_content_type_id_766e0336_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_referenc_to_content_type_id_93690bbd_fk_django_co` (`to_content_type_id`),
  CONSTRAINT `wagtailcore_referenc_base_content_type_id_313cf40f_fk_django_co` FOREIGN KEY (`base_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_referenc_content_type_id_766e0336_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_referenc_to_content_type_id_93690bbd_fk_django_co` FOREIGN KEY (`to_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitted_for_moderation` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `content` json NOT NULL,
  `approved_go_live_at` datetime(6) DEFAULT NULL,
  `object_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `content_type_id` int NOT NULL,
  `base_content_type_id` int NOT NULL,
  `object_str` longtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq` (`submitted_for_moderation`),
  KEY `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` (`user_id`),
  KEY `wagtailcore_pagerevision_created_at_66954e3b` (`created_at`),
  KEY `wagtailcore_pagerevision_approved_go_live_at_e56afc67` (`approved_go_live_at`),
  KEY `content_object_idx` (`content_type_id`,`object_id`),
  KEY `base_content_object_idx` (`base_content_type_id`,`object_id`),
  CONSTRAINT `wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_revision_base_content_type_id_5b4ef7bd_fk_django_co` FOREIGN KEY (`base_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_revision_content_type_id_c8cb69c0_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `port` int NOT NULL,
  `is_default_site` tinyint(1) NOT NULL,
  `root_page_id` int NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_site_hostname_2c626d70_uniq` (`hostname`,`port`),
  KEY `wagtailcore_site_0897acf4` (`hostname`),
  KEY `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` (`root_page_id`),
  CONSTRAINT `wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id` FOREIGN KEY (`root_page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_task_content_type_id_249ab8ba_fk_django_co` (`content_type_id`),
  CONSTRAINT `wagtailcore_task_content_type_id_249ab8ba_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_taskstate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `started_at` datetime(6) NOT NULL,
  `finished_at` datetime(6) DEFAULT NULL,
  `content_type_id` int NOT NULL,
  `revision_id` int NOT NULL,
  `task_id` int NOT NULL,
  `workflow_state_id` int NOT NULL,
  `finished_by_id` int DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco` (`workflow_state_id`),
  KEY `wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co` (`content_type_id`),
  KEY `wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id` (`task_id`),
  KEY `wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id` (`finished_by_id`),
  KEY `wagtailcore_taskstat_revision_id_df25a499_fk_wagtailco` (`revision_id`),
  CONSTRAINT `wagtailcore_taskstat_content_type_id_0a758fdc_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_taskstat_revision_id_df25a499_fk_wagtailco` FOREIGN KEY (`revision_id`) REFERENCES `wagtailcore_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_taskstat_workflow_state_id_9239a775_fk_wagtailco` FOREIGN KEY (`workflow_state_id`) REFERENCES `wagtailcore_workflowstate` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_taskstate_finished_by_id_13f98229_fk_auth_user_id` FOREIGN KEY (`finished_by_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_taskstate_task_id_c3677c34_fk_wagtailcore_task_id` FOREIGN KEY (`task_id`) REFERENCES `wagtailcore_task` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_workflow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_workflowcontenttype` (
  `content_type_id` int NOT NULL,
  `workflow_id` int NOT NULL,
  PRIMARY KEY (`content_type_id`),
  KEY `wagtailcore_workflow_workflow_id_9aad7cd2_fk_wagtailco` (`workflow_id`),
  CONSTRAINT `wagtailcore_workflow_content_type_id_b261bb37_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_workflow_workflow_id_9aad7cd2_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_workflowpage` (
  `page_id` int NOT NULL,
  `workflow_id` int NOT NULL,
  PRIMARY KEY (`page_id`),
  KEY `wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco` (`workflow_id`),
  CONSTRAINT `wagtailcore_workflow_workflow_id_56f56ff6_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_workflowpage_page_id_81e7bab6_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_workflowstate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `current_task_state_id` int DEFAULT NULL,
  `object_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `requested_by_id` int DEFAULT NULL,
  `workflow_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `base_content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `current_task_state_id` (`current_task_state_id`),
  KEY `wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user` (`requested_by_id`),
  KEY `wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco` (`workflow_id`),
  KEY `workflowstate_ct_id_idx` (`content_type_id`,`object_id`),
  KEY `workflowstate_base_ct_id_idx` (`base_content_type_id`,`object_id`),
  CONSTRAINT `wagtailcore_workflow_base_content_type_id_a30dc576_fk_django_co` FOREIGN KEY (`base_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_workflow_content_type_id_2bb78ce1_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_workflow_current_task_state_i_3a1a0632_fk_wagtailco` FOREIGN KEY (`current_task_state_id`) REFERENCES `wagtailcore_taskstate` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_workflow_requested_by_id_4090bca3_fk_auth_user` FOREIGN KEY (`requested_by_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_workflow_workflow_id_1f18378f_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailcore_workflowtask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort_order` int DEFAULT NULL,
  `task_id` int NOT NULL,
  `workflow_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailcore_workflowtask_workflow_id_task_id_4ec7a62b_uniq` (`workflow_id`,`task_id`),
  KEY `wagtailcore_workflowtask_task_id_ce7716fe_fk_wagtailcore_task_id` (`task_id`),
  KEY `wagtailcore_workflowtask_workflow_id_b9717175` (`workflow_id`),
  CONSTRAINT `wagtailcore_workflow_workflow_id_b9717175_fk_wagtailco` FOREIGN KEY (`workflow_id`) REFERENCES `wagtailcore_workflow` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailcore_workflowtask_task_id_ce7716fe_fk_wagtailcore_task_id` FOREIGN KEY (`task_id`) REFERENCES `wagtailcore_task` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtaildocs_document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  `collection_id` int NOT NULL,
  `file_size` int unsigned DEFAULT NULL,
  `file_hash` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtaildocs_document_0a1a4dd8` (`collection_id`),
  KEY `wagtaildocs_documen_uploaded_by_user_id_17258b41_fk_auth_user_id` (`uploaded_by_user_id`),
  CONSTRAINT `wagtaildocs__collection_id_23881625_fk_wagtailcore_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtaildocs_documen_uploaded_by_user_id_17258b41_fk_auth_user_id` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtaildocs_uploadeddocument` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user` (`uploaded_by_user_id`),
  CONSTRAINT `wagtaildocs_uploaded_uploaded_by_user_id_8dd61a73_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailembeds_embed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `max_width` smallint DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `author_name` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `provider_name` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail_url` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL,
  `hash` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `cache_until` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailembeds_embed_hash_c9bd8c9a_uniq` (`hash`),
  KEY `wagtailembeds_embed_cache_until_26c94bb0` (`cache_until`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailforms_formsubmission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_data` json NOT NULL,
  `submit_time` datetime(6) NOT NULL,
  `page_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailforms_formsubmiss_page_id_e48e93e7_fk_wagtailcore_page_id` (`page_id`),
  CONSTRAINT `wagtailforms_formsubmiss_page_id_e48e93e7_fk_wagtailcore_page_id` FOREIGN KEY (`page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailimages_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `focal_point_x` int unsigned DEFAULT NULL,
  `focal_point_y` int unsigned DEFAULT NULL,
  `focal_point_width` int unsigned DEFAULT NULL,
  `focal_point_height` int unsigned DEFAULT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  `file_size` int unsigned DEFAULT NULL,
  `collection_id` int NOT NULL,
  `file_hash` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailimages_image_created_at_86fa6cd4_uniq` (`created_at`),
  KEY `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` (`uploaded_by_user_id`),
  KEY `wagtailimages_image_0a1a4dd8` (`collection_id`),
  KEY `wagtailimages_image_file_hash_fb5bbb23` (`file_hash`),
  CONSTRAINT `wagtailimage_collection_id_c2f8af7e_fk_wagtailcore_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `wagtailcore_collection` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user_id` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailimages_rendition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `focal_point_key` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `image_id` int NOT NULL,
  `filter_spec` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq` (`image_id`,`filter_spec`,`focal_point_key`),
  KEY `wagtailimages_rendition_filter_spec_1cba3201` (`filter_spec`),
  KEY `wagtailimages_rendition_image_id_3e1fd774` (`image_id`),
  CONSTRAINT `wagtailimages_rendit_image_id_3e1fd774_fk_wagtailimages_image_id` FOREIGN KEY (`image_id`) REFERENCES `wagtailimages_image` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailimages_uploadedimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `uploaded_by_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user` (`uploaded_by_user_id`),
  CONSTRAINT `wagtailimages_upload_uploaded_by_user_id_85921689_fk_auth_user` FOREIGN KEY (`uploaded_by_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailredirects_redirect` (
  `id` int NOT NULL AUTO_INCREMENT,
  `old_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `is_permanent` tinyint(1) NOT NULL,
  `redirect_link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `redirect_page_id` int DEFAULT NULL,
  `site_id` int DEFAULT NULL,
  `automatically_created` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `redirect_page_route_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailredirects_redirect_old_path_783622d7_uniq` (`old_path`,`site_id`),
  KEY `wagtailredirect_redirect_page_id_b5728a8f_fk_wagtailcore_page_id` (`redirect_page_id`),
  KEY `wagtailredirects_redirec_site_id_780a0e1e_fk_wagtailcore_site_id` (`site_id`),
  CONSTRAINT `wagtailredirect_redirect_page_id_b5728a8f_fk_wagtailcore_page_id` FOREIGN KEY (`redirect_page_id`) REFERENCES `wagtailcore_page` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wagtailredirects_redirec_site_id_780a0e1e_fk_wagtailcore_site_id` FOREIGN KEY (`site_id`) REFERENCES `wagtailcore_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailsearch_indexentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `title_norm` double NOT NULL,
  `content_type_id` int NOT NULL,
  `autocomplete` longtext COLLATE utf8mb4_general_ci,
  `body` longtext COLLATE utf8mb4_general_ci,
  `title` longtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailsearch_indexentry_content_type_id_object_id_bcd7ba73_uniq` (`content_type_id`,`object_id`),
  FULLTEXT KEY `fulltext_body` (`body`),
  FULLTEXT KEY `fulltext_title` (`title`),
  FULLTEXT KEY `fulltext_title_body` (`title`,`body`),
  FULLTEXT KEY `fulltext_autocomplete` (`autocomplete`) /*!50100 WITH PARSER `ngram` */ ,
  CONSTRAINT `wagtailsearch_indexe_content_type_id_62ed694f_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailsearch_query` (
  `id` int NOT NULL AUTO_INCREMENT,
  `query_string` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `query_string` (`query_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailsearch_querydailyhits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hits` int NOT NULL,
  `query_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wagtailsearch_querydailyhits_query_id_1dd232e6_uniq` (`query_id`,`date`),
  CONSTRAINT `wagtailsearch_queryd_query_id_2185994b_fk_wagtailsearch_query_id` FOREIGN KEY (`query_id`) REFERENCES `wagtailsearch_query` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `wagtailusers_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitted_notifications` tinyint(1) NOT NULL,
  `approved_notifications` tinyint(1) NOT NULL,
  `rejected_notifications` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `preferred_language` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `current_time_zone` varchar(40) COLLATE utf8mb4_general_ci,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci,
  `updated_comments_notifications` tinyint(1) NOT NULL,
  `dismissibles` json NOT NULL,
  `theme` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Moderators'),
(2, 'Editors');

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 1, 1),
(5, 1, 2),
(6, 1, 3),
(7, 2, 4),
(8, 1, 4),
(9, 2, 5),
(10, 2, 6),
(11, 2, 7),
(12, 1, 5),
(13, 1, 6),
(14, 1, 7),
(15, 2, 168),
(16, 1, 168),
(17, 2, 173),
(18, 1, 173);

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add image', 2, 'add_image'),
(2, 'Can change image', 2, 'change_image'),
(3, 'Can delete image', 2, 'delete_image'),
(4, 'Can access Wagtail admin', 3, 'access_admin'),
(5, 'Can add document', 4, 'add_document'),
(6, 'Can change document', 4, 'change_document'),
(7, 'Can delete document', 4, 'delete_document'),
(8, 'Can add 首页', 5, 'add_indexpage'),
(9, 'Can change 首页', 5, 'change_indexpage'),
(10, 'Can delete 首页', 5, 'delete_indexpage'),
(11, 'Can add 关于我们', 6, 'add_aboutpage'),
(12, 'Can change 关于我们', 6, 'change_aboutpage'),
(13, 'Can delete 关于我们', 6, 'delete_aboutpage'),
(14, 'Can add whatever page', 7, 'add_whateverpage'),
(15, 'Can change whatever page', 7, 'change_whateverpage'),
(16, 'Can delete whatever page', 7, 'delete_whateverpage'),
(17, 'Can add 用户协议', 8, 'add_agreementpage'),
(18, 'Can change 用户协议', 8, 'change_agreementpage'),
(19, 'Can delete 用户协议', 8, 'delete_agreementpage'),
(20, 'Can add 博客文章列表', 9, 'add_blogindexpage'),
(21, 'Can change 博客文章列表', 9, 'change_blogindexpage'),
(22, 'Can delete 博客文章列表', 9, 'delete_blogindexpage'),
(23, 'Can add 一篇博客文章', 10, 'add_articlepage'),
(24, 'Can change 一篇博客文章', 10, 'change_articlepage'),
(25, 'Can delete 一篇博客文章', 10, 'delete_articlepage'),
(26, 'Can add form submission', 11, 'add_formsubmission'),
(27, 'Can change form submission', 11, 'change_formsubmission'),
(28, 'Can delete form submission', 11, 'delete_formsubmission'),
(29, 'Can add redirect', 12, 'add_redirect'),
(30, 'Can change redirect', 12, 'change_redirect'),
(31, 'Can delete redirect', 12, 'delete_redirect'),
(32, 'Can add embed', 13, 'add_embed'),
(33, 'Can change embed', 13, 'change_embed'),
(34, 'Can delete embed', 13, 'delete_embed'),
(35, 'Can add user profile', 14, 'add_userprofile'),
(36, 'Can change user profile', 14, 'change_userprofile'),
(37, 'Can delete user profile', 14, 'delete_userprofile'),
(38, 'Can add filter', 15, 'add_filter'),
(39, 'Can change filter', 15, 'change_filter'),
(40, 'Can delete filter', 15, 'delete_filter'),
(41, 'Can add rendition', 16, 'add_rendition'),
(42, 'Can change rendition', 16, 'change_rendition'),
(43, 'Can delete rendition', 16, 'delete_rendition'),
(44, 'Can add query', 17, 'add_query'),
(45, 'Can change query', 17, 'change_query'),
(46, 'Can delete query', 17, 'delete_query'),
(47, 'Can add Query Daily Hits', 18, 'add_querydailyhits'),
(48, 'Can change Query Daily Hits', 18, 'change_querydailyhits'),
(49, 'Can delete Query Daily Hits', 18, 'delete_querydailyhits'),
(50, 'Can add site', 19, 'add_site'),
(51, 'Can change site', 19, 'change_site'),
(52, 'Can delete site', 19, 'delete_site'),
(53, 'Can add page', 1, 'add_page'),
(54, 'Can change page', 1, 'change_page'),
(55, 'Can delete page', 1, 'delete_page'),
(56, 'Can add page revision', 20, 'add_pagerevision'),
(57, 'Can change page revision', 20, 'change_pagerevision'),
(58, 'Can delete page revision', 20, 'delete_pagerevision'),
(59, 'Can add group page permission', 21, 'add_grouppagepermission'),
(60, 'Can change group page permission', 21, 'change_grouppagepermission'),
(61, 'Can delete group page permission', 21, 'delete_grouppagepermission'),
(62, 'Can add page view restriction', 22, 'add_pageviewrestriction'),
(63, 'Can change page view restriction', 22, 'change_pageviewrestriction'),
(64, 'Can delete page view restriction', 22, 'delete_pageviewrestriction'),
(65, 'Can add collection', 23, 'add_collection'),
(66, 'Can change collection', 23, 'change_collection'),
(67, 'Can delete collection', 23, 'delete_collection'),
(68, 'Can add group collection permission', 24, 'add_groupcollectionpermission'),
(69, 'Can change group collection permission', 24, 'change_groupcollectionpermission'),
(70, 'Can delete group collection permission', 24, 'delete_groupcollectionpermission'),
(71, 'Can add Tag', 25, 'add_tag'),
(72, 'Can change Tag', 25, 'change_tag'),
(73, 'Can delete Tag', 25, 'delete_tag'),
(74, 'Can add Tagged Item', 26, 'add_taggeditem'),
(75, 'Can change Tagged Item', 26, 'change_taggeditem'),
(76, 'Can delete Tagged Item', 26, 'delete_taggeditem'),
(77, 'Can add log entry', 27, 'add_logentry'),
(78, 'Can change log entry', 27, 'change_logentry'),
(79, 'Can delete log entry', 27, 'delete_logentry'),
(80, 'Can add permission', 28, 'add_permission'),
(81, 'Can change permission', 28, 'change_permission'),
(82, 'Can delete permission', 28, 'delete_permission'),
(83, 'Can add group', 29, 'add_group'),
(84, 'Can change group', 29, 'change_group'),
(85, 'Can delete group', 29, 'delete_group'),
(86, 'Can add user', 30, 'add_user'),
(87, 'Can change user', 30, 'change_user'),
(88, 'Can delete user', 30, 'delete_user'),
(89, 'Can add content type', 31, 'add_contenttype'),
(90, 'Can change content type', 31, 'change_contenttype'),
(91, 'Can delete content type', 31, 'delete_contenttype'),
(92, 'Can add session', 32, 'add_session'),
(93, 'Can change session', 32, 'change_session'),
(94, 'Can delete session', 32, 'delete_session'),
(95, 'Can add Mobile 首页', 33, 'add_mobileindexpage'),
(96, 'Can change Mobile 首页', 33, 'change_mobileindexpage'),
(97, 'Can delete Mobile 首页', 33, 'delete_mobileindexpage'),
(98, 'Can add collection view restriction', 34, 'add_collectionviewrestriction'),
(99, 'Can change collection view restriction', 34, 'change_collectionviewrestriction'),
(100, 'Can delete collection view restriction', 34, 'delete_collectionviewrestriction'),
(101, 'Can view 关于我们', 6, 'view_aboutpage'),
(102, 'Can view PC 首页', 5, 'view_indexpage'),
(103, 'Can view Mobile 首页', 33, 'view_mobileindexpage'),
(104, 'Can view whatever page', 7, 'view_whateverpage'),
(105, 'Can view 一篇博客文章', 10, 'view_articlepage'),
(106, 'Can view 博客文章列表', 9, 'view_blogindexpage'),
(107, 'Can view form submission', 11, 'view_formsubmission'),
(108, 'Can view redirect', 12, 'view_redirect'),
(109, 'Can view embed', 13, 'view_embed'),
(110, 'Can view user profile', 14, 'view_userprofile'),
(111, 'Can view document', 4, 'view_document'),
(112, 'Can view image', 2, 'view_image'),
(113, 'Can view rendition', 16, 'view_rendition'),
(114, 'Can view query', 17, 'view_query'),
(115, 'Can view Query Daily Hits', 18, 'view_querydailyhits'),
(116, 'Can view page', 1, 'view_page'),
(117, 'Can view group page permission', 21, 'view_grouppagepermission'),
(118, 'Can view page revision', 20, 'view_pagerevision'),
(119, 'Can view page view restriction', 22, 'view_pageviewrestriction'),
(120, 'Can view site', 19, 'view_site'),
(121, 'Can view collection', 23, 'view_collection'),
(122, 'Can view group collection permission', 24, 'view_groupcollectionpermission'),
(123, 'Can view collection view restriction', 34, 'view_collectionviewrestriction'),
(124, 'Can view tag', 25, 'view_tag'),
(125, 'Can view tagged item', 26, 'view_taggeditem'),
(126, 'Can view log entry', 27, 'view_logentry'),
(127, 'Can view permission', 28, 'view_permission'),
(128, 'Can view group', 29, 'view_group'),
(129, 'Can view user', 30, 'view_user'),
(130, 'Can view content type', 31, 'view_contenttype'),
(131, 'Can view session', 32, 'view_session'),
(132, 'Can add task', 35, 'add_task'),
(133, 'Can change task', 35, 'change_task'),
(134, 'Can delete task', 35, 'delete_task'),
(135, 'Can view task', 35, 'view_task'),
(136, 'Can add Task state', 36, 'add_taskstate'),
(137, 'Can change Task state', 36, 'change_taskstate'),
(138, 'Can delete Task state', 36, 'delete_taskstate'),
(139, 'Can view Task state', 36, 'view_taskstate'),
(140, 'Can add workflow', 37, 'add_workflow'),
(141, 'Can change workflow', 37, 'change_workflow'),
(142, 'Can delete workflow', 37, 'delete_workflow'),
(143, 'Can view workflow', 37, 'view_workflow'),
(144, 'Can add Group approval task', 38, 'add_groupapprovaltask'),
(145, 'Can change Group approval task', 38, 'change_groupapprovaltask'),
(146, 'Can delete Group approval task', 38, 'delete_groupapprovaltask'),
(147, 'Can view Group approval task', 38, 'view_groupapprovaltask'),
(148, 'Can add Workflow state', 39, 'add_workflowstate'),
(149, 'Can change Workflow state', 39, 'change_workflowstate'),
(150, 'Can delete Workflow state', 39, 'delete_workflowstate'),
(151, 'Can view Workflow state', 39, 'view_workflowstate'),
(152, 'Can add workflow page', 40, 'add_workflowpage'),
(153, 'Can change workflow page', 40, 'change_workflowpage'),
(154, 'Can delete workflow page', 40, 'delete_workflowpage'),
(155, 'Can view workflow page', 40, 'view_workflowpage'),
(156, 'Can add workflow task order', 41, 'add_workflowtask'),
(157, 'Can change workflow task order', 41, 'change_workflowtask'),
(158, 'Can delete workflow task order', 41, 'delete_workflowtask'),
(159, 'Can view workflow task order', 41, 'view_workflowtask'),
(160, 'Can add page log entry', 42, 'add_pagelogentry'),
(161, 'Can change page log entry', 42, 'change_pagelogentry'),
(162, 'Can delete page log entry', 42, 'delete_pagelogentry'),
(163, 'Can view page log entry', 42, 'view_pagelogentry'),
(164, 'Can add locale', 43, 'add_locale'),
(165, 'Can change locale', 43, 'change_locale'),
(166, 'Can delete locale', 43, 'delete_locale'),
(167, 'Can view locale', 43, 'view_locale'),
(168, 'Can choose document', 4, 'choose_document'),
(169, 'Can add uploaded document', 44, 'add_uploadeddocument'),
(170, 'Can change uploaded document', 44, 'change_uploadeddocument'),
(171, 'Can delete uploaded document', 44, 'delete_uploadeddocument'),
(172, 'Can view uploaded document', 44, 'view_uploadeddocument'),
(173, 'Can choose image', 2, 'choose_image'),
(174, 'Can add uploaded image', 45, 'add_uploadedimage'),
(175, 'Can change uploaded image', 45, 'change_uploadedimage'),
(176, 'Can delete uploaded image', 45, 'delete_uploadedimage'),
(177, 'Can view uploaded image', 45, 'view_uploadedimage'),
(178, 'Can add page subscription', 46, 'add_pagesubscription'),
(179, 'Can change page subscription', 46, 'change_pagesubscription'),
(180, 'Can delete page subscription', 46, 'delete_pagesubscription'),
(181, 'Can view page subscription', 46, 'view_pagesubscription'),
(182, 'Can add comment', 47, 'add_comment'),
(183, 'Can change comment', 47, 'change_comment'),
(184, 'Can delete comment', 47, 'delete_comment'),
(185, 'Can view comment', 47, 'view_comment'),
(186, 'Can add comment reply', 48, 'add_commentreply'),
(187, 'Can change comment reply', 48, 'change_commentreply'),
(188, 'Can delete comment reply', 48, 'delete_commentreply'),
(189, 'Can view comment reply', 48, 'view_commentreply'),
(190, 'Can add model log entry', 49, 'add_modellogentry'),
(191, 'Can change model log entry', 49, 'change_modellogentry'),
(192, 'Can delete model log entry', 49, 'delete_modellogentry'),
(193, 'Can view model log entry', 49, 'view_modellogentry'),
(194, 'Can add index entry', 50, 'add_indexentry'),
(195, 'Can change index entry', 50, 'change_indexentry'),
(196, 'Can delete index entry', 50, 'delete_indexentry'),
(197, 'Can view index entry', 50, 'view_indexentry'),
(198, 'Can add revision', 20, 'add_revision'),
(199, 'Can change revision', 20, 'change_revision'),
(200, 'Can delete revision', 20, 'delete_revision'),
(201, 'Can view revision', 20, 'view_revision'),
(202, 'Can add Editor\'s Pick', 51, 'add_editorspick'),
(203, 'Can change Editor\'s Pick', 51, 'change_editorspick'),
(204, 'Can delete Editor\'s Pick', 51, 'delete_editorspick'),
(205, 'Can view Editor\'s Pick', 51, 'view_editorspick'),
(206, 'Can add reference index', 52, 'add_referenceindex'),
(207, 'Can change reference index', 52, 'change_referenceindex'),
(208, 'Can delete reference index', 52, 'delete_referenceindex'),
(209, 'Can view reference index', 52, 'view_referenceindex'),
(210, 'Can add workflow content type', 53, 'add_workflowcontenttype'),
(211, 'Can change workflow content type', 53, 'change_workflowcontenttype'),
(212, 'Can delete workflow content type', 53, 'delete_workflowcontenttype'),
(213, 'Can view workflow content type', 53, 'view_workflowcontenttype'),
(214, 'Delete pages with children', 1, 'bulk_delete_page'),
(215, 'Lock/unlock pages you\'ve locked', 1, 'lock_page'),
(216, 'Publish any page', 1, 'publish_page'),
(217, 'Unlock any page', 1, 'unlock_page');

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$rTGMVLbGC9jV77UCPT3oIV$2WihjSuZMFqXI+5rNsBUUEc4tHGbHmmqLYCCYabEFzA=', '2024-12-31 14:42:25.142857', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2016-08-04 02:21:10.537355');

INSERT INTO `blog_articlepage` (`page_ptr_id`, `keywords`, `description`, `date`, `intro`, `body`, `main_image_id`) VALUES
(10, '', '文章简介', '2016-08-04', '', '<p>文章内容</p>', NULL);

INSERT INTO `blog_blogindexpage` (`page_ptr_id`) VALUES
(4),
(5),
(6);

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-08-04 02:23:47.319711', '1', 'localhost [default]', 2, 'Changed root_page.', 19, 1),
(2, '2016-08-04 02:24:12.648468', '1', 'localhost [default]', 2, 'No fields changed.', 19, 1);

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'wagtailcore', 'page'),
(2, 'wagtailimages', 'image'),
(3, 'wagtailadmin', 'admin'),
(4, 'wagtaildocs', 'document'),
(5, 'home', 'indexpage'),
(6, 'home', 'aboutpage'),
(7, 'home', 'whateverpage'),
(8, 'home', 'agreementpage'),
(9, 'blog', 'blogindexpage'),
(10, 'blog', 'articlepage'),
(11, 'wagtailforms', 'formsubmission'),
(12, 'wagtailredirects', 'redirect'),
(13, 'wagtailembeds', 'embed'),
(14, 'wagtailusers', 'userprofile'),
(15, 'wagtailimages', 'filter'),
(16, 'wagtailimages', 'rendition'),
(17, 'wagtailsearch', 'query'),
(18, 'wagtailsearch', 'querydailyhits'),
(19, 'wagtailcore', 'site'),
(20, 'wagtailcore', 'revision'),
(21, 'wagtailcore', 'grouppagepermission'),
(22, 'wagtailcore', 'pageviewrestriction'),
(23, 'wagtailcore', 'collection'),
(24, 'wagtailcore', 'groupcollectionpermission'),
(25, 'taggit', 'tag'),
(26, 'taggit', 'taggeditem'),
(27, 'admin', 'logentry'),
(28, 'auth', 'permission'),
(29, 'auth', 'group'),
(30, 'auth', 'user'),
(31, 'contenttypes', 'contenttype'),
(32, 'sessions', 'session'),
(33, 'home', 'mobileindexpage'),
(34, 'wagtailcore', 'collectionviewrestriction'),
(35, 'wagtailcore', 'task'),
(36, 'wagtailcore', 'taskstate'),
(37, 'wagtailcore', 'workflow'),
(38, 'wagtailcore', 'groupapprovaltask'),
(39, 'wagtailcore', 'workflowstate'),
(40, 'wagtailcore', 'workflowpage'),
(41, 'wagtailcore', 'workflowtask'),
(42, 'wagtailcore', 'pagelogentry'),
(43, 'wagtailcore', 'locale'),
(44, 'wagtaildocs', 'uploadeddocument'),
(45, 'wagtailimages', 'uploadedimage'),
(46, 'wagtailcore', 'pagesubscription'),
(47, 'wagtailcore', 'comment'),
(48, 'wagtailcore', 'commentreply'),
(49, 'wagtailcore', 'modellogentry'),
(50, 'wagtailsearch', 'indexentry'),
(51, 'wagtailsearch', 'editorspick'),
(52, 'wagtailcore', 'referenceindex'),
(53, 'wagtailcore', 'workflowcontenttype');

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-08-04 02:20:45.621146'),
(2, 'auth', '0001_initial', '2016-08-04 02:20:46.286301'),
(3, 'admin', '0001_initial', '2016-08-04 02:20:46.444332'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-08-04 02:20:46.461706'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-08-04 02:20:46.582701'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-08-04 02:20:46.639212'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-08-04 02:20:46.696750'),
(8, 'auth', '0004_alter_user_username_opts', '2016-08-04 02:20:46.711015'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-08-04 02:20:46.770213'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-08-04 02:20:46.774627'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-08-04 02:20:46.787361'),
(12, 'taggit', '0001_initial', '2016-08-04 02:20:47.004682'),
(13, 'taggit', '0002_auto_20150616_2121', '2016-08-04 02:20:47.040610'),
(14, 'wagtailimages', '0001_initial', '2016-08-04 02:20:47.379263'),
(15, 'wagtailcore', '0001_initial', '2016-08-04 02:20:48.263232'),
(16, 'wagtailcore', '0002_initial_data', '2016-08-04 02:20:48.267641'),
(17, 'wagtailcore', '0003_add_uniqueness_constraint_on_group_page_permission', '2016-08-04 02:20:48.272345'),
(18, 'wagtailcore', '0004_page_locked', '2016-08-04 02:20:48.276652'),
(19, 'wagtailcore', '0005_add_page_lock_permission_to_moderators', '2016-08-04 02:20:48.280846'),
(20, 'wagtailcore', '0006_add_lock_page_permission', '2016-08-04 02:20:48.285161'),
(21, 'wagtailcore', '0007_page_latest_revision_created_at', '2016-08-04 02:20:48.289454'),
(22, 'wagtailcore', '0008_populate_latest_revision_created_at', '2016-08-04 02:20:48.294232'),
(23, 'wagtailcore', '0009_remove_auto_now_add_from_pagerevision_created_at', '2016-08-04 02:20:48.304795'),
(24, 'wagtailcore', '0010_change_page_owner_to_null_on_delete', '2016-08-04 02:20:48.309215'),
(25, 'wagtailcore', '0011_page_first_published_at', '2016-08-04 02:20:48.313590'),
(26, 'wagtailcore', '0012_extend_page_slug_field', '2016-08-04 02:20:48.318032'),
(27, 'wagtailcore', '0013_update_golive_expire_help_text', '2016-08-04 02:20:48.322360'),
(28, 'wagtailcore', '0014_add_verbose_name', '2016-08-04 02:20:48.326627'),
(29, 'wagtailcore', '0015_add_more_verbose_names', '2016-08-04 02:20:48.330710'),
(30, 'wagtailcore', '0016_change_page_url_path_to_text_field', '2016-08-04 02:20:48.335092'),
(31, 'wagtailimages', '0002_initial_data', '2016-08-04 02:20:48.374655'),
(32, 'wagtailimages', '0003_fix_focal_point_fields', '2016-08-04 02:20:48.449533'),
(33, 'wagtailimages', '0004_make_focal_point_key_not_nullable', '2016-08-04 02:20:48.533296'),
(34, 'wagtailimages', '0005_make_filter_spec_unique', '2016-08-04 02:20:48.572710'),
(35, 'wagtailimages', '0006_add_verbose_names', '2016-08-04 02:20:48.698810'),
(36, 'wagtailimages', '0007_image_file_size', '2016-08-04 02:20:48.767693'),
(37, 'wagtailimages', '0008_image_created_at_index', '2016-08-04 02:20:48.795696'),
(38, 'wagtailimages', '0009_capitalizeverbose', '2016-08-04 02:20:49.025441'),
(39, 'wagtailimages', '0010_change_on_delete_behaviour', '2016-08-04 02:20:49.121424'),
(40, 'wagtailcore', '0017_change_edit_page_permission_description', '2016-08-04 02:20:49.144503'),
(41, 'wagtailcore', '0018_pagerevision_submitted_for_moderation_index', '2016-08-04 02:20:49.186319'),
(42, 'wagtailcore', '0019_verbose_names_cleanup', '2016-08-04 02:20:49.287931'),
(43, 'wagtailcore', '0020_add_index_on_page_first_published_at', '2016-08-04 02:20:49.325876'),
(44, 'wagtailcore', '0021_capitalizeverbose', '2016-08-04 02:20:50.483437'),
(45, 'wagtailcore', '0022_add_site_name', '2016-08-04 02:20:50.601042'),
(46, 'wagtailcore', '0023_alter_page_revision_on_delete_behaviour', '2016-08-04 02:20:50.687991'),
(47, 'wagtailcore', '0024_collection', '2016-08-04 02:20:50.734779'),
(48, 'wagtailcore', '0025_collection_initial_data', '2016-08-04 02:20:50.744646'),
(49, 'wagtailcore', '0026_group_collection_permission', '2016-08-04 02:20:51.063082'),
(50, 'wagtailimages', '0011_image_collection', '2016-08-04 02:20:51.241049'),
(51, 'wagtailimages', '0012_copy_image_permissions_to_collections', '2016-08-04 02:20:51.263634'),
(52, 'wagtailimages', '0013_make_rendition_upload_callable', '2016-08-04 02:20:51.291694'),
(53, 'wagtailcore', '0027_fix_collection_path_collation', '2016-08-04 02:20:51.300519'),
(54, 'wagtailcore', '0024_alter_page_content_type_on_delete_behaviour', '2016-08-04 02:20:51.416492'),
(55, 'wagtailcore', '0028_merge', '2016-08-04 02:20:51.421269'),
(58, 'sessions', '0001_initial', '2016-08-04 02:20:52.100167'),
(59, 'wagtailadmin', '0001_create_admin_access_permissions', '2016-08-04 02:20:52.132144'),
(60, 'wagtaildocs', '0001_initial', '2016-08-04 02:20:52.243372'),
(61, 'wagtaildocs', '0002_initial_data', '2016-08-04 02:20:52.282736'),
(62, 'wagtaildocs', '0003_add_verbose_names', '2016-08-04 02:20:52.427719'),
(63, 'wagtaildocs', '0004_capitalizeverbose', '2016-08-04 02:20:52.634011'),
(64, 'wagtaildocs', '0005_document_collection', '2016-08-04 02:20:52.800602'),
(65, 'wagtaildocs', '0006_copy_document_permissions_to_collections', '2016-08-04 02:20:52.823913'),
(66, 'wagtaildocs', '0005_alter_uploaded_by_user_on_delete_action', '2016-08-04 02:20:52.910870'),
(67, 'wagtaildocs', '0007_merge', '2016-08-04 02:20:52.915461'),
(68, 'wagtailembeds', '0001_initial', '2016-08-04 02:20:52.971874'),
(69, 'wagtailembeds', '0002_add_verbose_names', '2016-08-04 02:20:52.980007'),
(70, 'wagtailembeds', '0003_capitalizeverbose', '2016-08-04 02:20:52.988452'),
(71, 'wagtailforms', '0001_initial', '2016-08-04 02:20:53.115059'),
(72, 'wagtailforms', '0002_add_verbose_names', '2016-08-04 02:20:53.174596'),
(73, 'wagtailforms', '0003_capitalizeverbose', '2016-08-04 02:20:53.235770'),
(74, 'wagtailredirects', '0001_initial', '2016-08-04 02:20:53.440079'),
(75, 'wagtailredirects', '0002_add_verbose_names', '2016-08-04 02:20:53.573570'),
(76, 'wagtailredirects', '0003_make_site_field_editable', '2016-08-04 02:20:53.739625'),
(77, 'wagtailredirects', '0004_set_unique_on_path_and_site', '2016-08-04 02:20:53.820255'),
(78, 'wagtailredirects', '0005_capitalizeverbose', '2016-08-04 02:20:54.135230'),
(79, 'wagtailsearch', '0001_initial', '2016-08-04 02:20:54.541275'),
(80, 'wagtailsearch', '0002_add_verbose_names', '2016-08-04 02:20:54.733820'),
(81, 'wagtailsearch', '0003_remove_editors_pick', '2016-08-04 02:20:54.776610'),
(82, 'wagtailusers', '0001_initial', '2016-08-04 02:20:54.898821'),
(83, 'wagtailusers', '0002_add_verbose_name_on_userprofile', '2016-08-04 02:20:54.991430'),
(84, 'wagtailusers', '0003_add_verbose_names', '2016-08-04 02:20:55.031880'),
(85, 'wagtailusers', '0004_capitalizeverbose', '2016-08-04 02:20:55.154414'),
(86, 'wagtailcore', '0001_squashed_0016_change_page_url_path_to_text_field', '2016-08-04 02:20:55.162555'),
(87, 'auth', '0008_alter_user_username_max_length', '2020-08-29 09:00:03.193029'),
(88, 'wagtailcore', '0029_unicode_slugfield_dj19', '2020-08-29 09:00:03.301280'),
(89, 'wagtailcore', '0030_index_on_pagerevision_created_at', '2020-08-29 09:00:03.464041'),
(91, 'wagtailcore', '0031_add_page_view_restriction_types', '2020-08-29 09:06:19.477780'),
(92, 'wagtailcore', '0032_add_bulk_delete_page_permission', '2020-08-29 09:06:19.563423'),
(93, 'wagtailcore', '0033_remove_golive_expiry_help_text', '2020-08-29 09:06:19.662840'),
(94, 'wagtailcore', '0034_page_live_revision', '2020-08-29 09:08:50.568219'),
(96, 'wagtailcore', '0035_page_last_published_at', '2020-08-29 09:11:49.266083'),
(97, 'wagtailcore', '0036_populate_page_last_published_at', '2020-08-29 09:11:49.410334'),
(98, 'wagtailcore', '0037_set_page_owner_editable', '2020-08-29 09:11:49.651163'),
(99, 'wagtailcore', '0038_make_first_published_at_editable', '2020-08-29 09:11:49.738300'),
(100, 'wagtailcore', '0039_collectionviewrestriction', '2020-08-29 09:11:50.350770'),
(101, 'wagtailcore', '0040_page_draft_title', '2020-08-29 09:13:32.152792'),
(102, 'wagtailimages', '0014_add_filter_spec_field', '2020-08-29 09:13:32.533981'),
(103, 'wagtailimages', '0015_fill_filter_spec_field', '2020-08-29 09:13:32.693235'),
(104, 'wagtailimages', '0016_deprecate_rendition_filter_relation', '2020-08-29 09:13:33.046668'),
(105, 'wagtailimages', '0017_reduce_focal_point_key_max_length', '2020-08-29 09:13:33.185046'),
(106, 'wagtailimages', '0018_remove_rendition_filter', '2020-08-29 09:13:33.420137'),
(107, 'wagtailimages', '0019_delete_filter', '2020-08-29 09:13:33.530398'),
(108, 'wagtailusers', '0005_make_related_name_wagtail_specific', '2020-08-29 09:13:33.732707'),
(109, 'wagtailusers', '0006_userprofile_prefered_language', '2020-08-29 09:15:28.545836'),
(110, 'blog', '0001_initial', '2020-08-29 17:20:55.000000'),
(111, 'home', '0001_initial', '2020-08-29 17:21:54.000000'),
(112, 'auth', '0009_alter_user_last_name_max_length', '2024-12-29 14:29:36.173259'),
(113, 'auth', '0010_alter_group_name_max_length', '2024-12-29 14:29:36.211517'),
(114, 'auth', '0011_update_proxy_permissions', '2024-12-29 14:29:36.246376'),
(135, 'admin', '0003_logentry_add_action_flag_choices', '2024-12-29 14:35:09.365261'),
(136, 'taggit', '0003_taggeditem_add_unique_index', '2024-12-29 14:44:57.837267'),
(137, 'wagtailadmin', '0002_admin', '2024-12-29 14:46:12.378082'),
(138, 'wagtailadmin', '0003_admin_managed', '2024-12-29 14:46:12.457185'),
(139, 'wagtaildocs', '0008_document_file_size', '2024-12-29 14:47:10.915419'),
(140, 'wagtaildocs', '0009_document_verbose_name_plural', '2024-12-29 14:47:10.962329'),
(141, 'wagtaildocs', '0010_document_file_hash', '2024-12-29 14:47:11.085064'),
(142, 'wagtaildocs', '0011_add_choose_permissions', '2024-12-29 14:47:11.582807'),
(143, 'wagtaildocs', '0012_uploadeddocument', '2024-12-29 14:47:11.751217'),
(144, 'wagtailembeds', '0004_embed_verbose_name_plural', '2024-12-29 14:47:42.982897'),
(145, 'wagtailembeds', '0005_specify_thumbnail_url_max_length', '2024-12-29 14:47:43.044622'),
(146, 'wagtailembeds', '0006_add_embed_hash', '2024-12-29 14:47:43.146010'),
(147, 'wagtailembeds', '0007_populate_hash', '2024-12-29 14:47:43.307646'),
(148, 'wagtailembeds', '0008_allow_long_urls', '2024-12-29 14:47:43.593278'),
(149, 'wagtailforms', '0004_add_verbose_name_plural', '2024-12-29 14:48:29.023726'),
(150, 'wagtailimages', '0020_add-verbose-name', '2024-12-29 14:48:58.076429'),
(151, 'wagtailimages', '0021_image_file_hash', '2024-12-29 14:48:58.198531'),
(152, 'wagtailimages', '0022_uploadedimage', '2024-12-29 14:48:58.340711'),
(153, 'wagtailimages', '0023_add_choose_permissions', '2024-12-29 14:48:58.894849'),
(154, 'wagtailimages', '0001_squashed_0021', '2024-12-29 14:48:58.979367'),
(155, 'wagtailredirects', '0006_redirect_increase_max_length', '2024-12-29 14:49:28.214643'),
(156, 'wagtailsearch', '0004_querydailyhits_verbose_name_plural', '2024-12-29 14:49:54.409846'),
(157, 'wagtailusers', '0007_userprofile_current_time_zone', '2024-12-29 14:53:49.312433'),
(158, 'wagtailusers', '0008_userprofile_avatar', '2024-12-29 14:55:30.348695'),
(159, 'wagtailusers', '0009_userprofile_verbose_name_plural', '2024-12-29 14:55:52.583437'),
(160, 'wagtailcore', '0041_group_collection_permissions_verbose_name_plural', '2024-12-29 15:01:46.492897'),
(161, 'wagtailcore', '0042_index_on_pagerevision_approved_go_live_at', '2024-12-29 15:01:58.588606'),
(162, 'wagtailcore', '0043_lock_fields', '2024-12-29 15:03:05.671890'),
(163, 'wagtailcore', '0044_add_unlock_grouppagepermission', '2024-12-29 15:03:20.881446'),
(164, 'wagtailcore', '0045_assign_unlock_grouppagepermission', '2024-12-29 15:03:30.200193'),
(165, 'wagtailcore', '0046_site_name_remove_null', '2024-12-29 15:03:41.409018'),
(166, 'wagtailcore', '0047_add_workflow_models', '2024-12-29 15:03:55.778556'),
(167, 'wagtailcore', '0048_add_default_workflows', '2024-12-29 15:04:11.623213'),
(168, 'wagtailcore', '0049_taskstate_finished_by', '2024-12-29 15:04:20.036197'),
(169, 'wagtailcore', '0050_workflow_rejected_to_needs_changes', '2024-12-29 15:04:31.018438'),
(170, 'wagtailcore', '0051_taskstate_comment', '2024-12-29 15:04:42.560687'),
(171, 'wagtailcore', '0052_pagelogentry', '2024-12-29 15:06:23.123985'),
(172, 'wagtailcore', '0053_locale_model', '2024-12-29 15:07:35.344659'),
(173, 'wagtailcore', '0054_initial_locale', '2024-12-29 15:07:48.127898'),
(174, 'wagtailcore', '0055_page_locale_fields', '2024-12-29 15:08:41.052070'),
(175, 'wagtailcore', '0056_page_locale_fields_populate', '2024-12-29 15:08:48.394457'),
(176, 'wagtailcore', '0057_page_locale_fields_notnull', '2024-12-29 15:08:59.571641'),
(177, 'wagtailcore', '0058_page_alias_of', '2024-12-29 15:09:07.522279'),
(178, 'wagtailcore', '0059_apply_collection_ordering', '2024-12-29 15:09:14.140584'),
(179, 'wagtailcore', '0060_fix_workflow_unique_constraint', '2024-12-29 15:09:21.735913'),
(180, 'wagtailcore', '0061_change_promote_tab_helpt_text_and_verbose_names', '2024-12-31 13:21:42.383087'),
(181, 'wagtailcore', '0062_comment_models_and_pagesubscription', '2024-12-31 13:21:55.363780'),
(182, 'wagtailusers', '0010_userprofile_updated_comments_notifications', '2024-12-31 13:22:23.419631'),
(183, 'wagtailcore', '0063_modellogentry', '2024-12-31 13:25:54.013709'),
(184, 'wagtailcore', '0064_log_timestamp_indexes', '2024-12-31 13:26:00.832050'),
(185, 'wagtailcore', '0065_log_entry_uuid', '2024-12-31 13:26:08.121049'),
(186, 'wagtailcore', '0066_collection_management_permissions', '2024-12-31 13:26:14.825178'),
(187, 'wagtailembeds', '0009_embed_cache_until', '2024-12-31 13:26:41.163550'),
(188, 'wagtailsearch', '0005_create_indexentry', '2024-12-31 13:27:04.726907'),
(189, 'wagtailsearch', '0006_customise_indexentry', '2024-12-31 13:27:11.897073'),
(190, 'auth', '0012_alter_user_first_name_max_length', '2024-12-31 13:59:33.069789'),
(191, 'taggit', '0004_alter_taggeditem_content_type_alter_taggeditem_tag', '2024-12-31 14:00:05.121914'),
(192, 'wagtailcore', '0067_alter_pagerevision_content_json', '2024-12-31 14:00:52.438652'),
(193, 'wagtailcore', '0068_log_entry_empty_object', '2024-12-31 14:01:00.910003'),
(194, 'wagtailcore', '0069_log_entry_jsonfield', '2024-12-31 14:01:08.365762'),
(195, 'wagtailforms', '0005_alter_formsubmission_form_data', '2024-12-31 14:01:35.184036'),
(196, 'wagtailimages', '0024_index_image_file_hash', '2024-12-31 14:01:48.232952'),
(197, 'wagtailredirects', '0007_add_autocreate_fields', '2024-12-31 14:02:07.678388'),
(198, 'wagtailredirects', '0008_add_verbose_name_plural', '2024-12-31 14:02:26.971379'),
(199, 'wagtailcore', '0070_rename_pagerevision_revision', '2024-12-31 14:24:35.825177'),
(200, 'wagtailcore', '0071_populate_revision_content_type', '2024-12-31 14:24:44.467437'),
(201, 'wagtailcore', '0072_alter_revision_content_type_notnull', '2024-12-31 14:24:53.890109'),
(202, 'wagtailcore', '0073_page_latest_revision', '2024-12-31 14:25:09.648437'),
(203, 'wagtailcore', '0074_revision_object_str', '2024-12-31 14:25:16.756883'),
(204, 'wagtailcore', '0075_populate_latest_revision_and_revision_object_str', '2024-12-31 14:25:23.707260'),
(205, 'wagtailcore', '0076_modellogentry_revision', '2024-12-31 14:25:33.360982'),
(206, 'wagtailcore', '0077_alter_revision_user', '2024-12-31 14:25:40.727005'),
(207, 'wagtailcore', '0078_referenceindex', '2024-12-31 14:40:35.027690'),
(208, 'wagtailsearch', '0007_delete_editorspick', '2024-12-31 14:41:25.147624'),
(209, 'wagtailusers', '0011_userprofile_dismissibles', '2024-12-31 14:41:44.882581'),
(210, 'wagtailcore', '0079_rename_taskstate_page_revision', '2025-01-02 14:17:52.015460'),
(211, 'wagtailcore', '0080_generic_workflowstate', '2025-01-02 14:18:01.508082'),
(212, 'wagtailcore', '0081_populate_workflowstate_content_type', '2025-01-02 14:18:09.670430'),
(213, 'wagtailcore', '0082_alter_workflowstate_content_type_notnull', '2025-01-02 14:18:19.769964'),
(214, 'wagtailcore', '0083_workflowcontenttype', '2025-01-02 14:18:29.398987'),
(215, 'wagtailimages', '0025_alter_image_file_alter_rendition_file', '2025-01-02 14:18:58.705235'),
(216, 'wagtailusers', '0012_userprofile_theme', '2025-01-02 14:19:22.725492'),
(217, 'wagtailcore', '0084_add_default_page_permissions', '2025-01-02 15:46:49.952526'),
(218, 'wagtailcore', '0085_add_grouppagepermission_permission', '2025-01-02 15:47:02.594730'),
(219, 'wagtailcore', '0086_populate_grouppagepermission_permission', '2025-01-02 15:47:12.784501'),
(220, 'wagtailcore', '0087_alter_grouppagepermission_unique_together_and_more', '2025-01-02 15:47:22.905168'),
(221, 'wagtailcore', '0088_fix_log_entry_json_timestamps', '2025-01-02 15:47:34.064406'),
(222, 'wagtailcore', '0089_log_entry_data_json_null_to_object', '2025-01-02 15:47:43.360726');

INSERT INTO `home_aboutpage` (`page_ptr_id`) VALUES
(7);

INSERT INTO `home_agreementpage` (`page_ptr_id`, `body`) VALUES
(9, '<h2>用户协议</h2><h3>阅读并同意了用户协议</h3><p>Hello typo.css</p>');

INSERT INTO `home_indexpage` (`page_ptr_id`) VALUES
(3);

INSERT INTO `home_whateverpage` (`page_ptr_id`, `body`) VALUES
(8, '');

INSERT INTO `wagtailcore_collection` (`id`, `path`, `depth`, `numchild`, `name`) VALUES
(1, '0001', 1, 0, 'Root');

INSERT INTO `wagtailcore_groupapprovaltask` (`task_ptr_id`) VALUES
(1);

INSERT INTO `wagtailcore_groupapprovaltask_groups` (`id`, `groupapprovaltask_id`, `group_id`) VALUES
(1, 1, 1);

INSERT INTO `wagtailcore_groupcollectionpermission` (`id`, `collection_id`, `group_id`, `permission_id`) VALUES
(1, 1, 2, 1),
(2, 1, 1, 1),
(3, 1, 2, 2),
(4, 1, 1, 2),
(5, 1, 2, 5),
(6, 1, 1, 5),
(7, 1, 2, 6),
(8, 1, 1, 6),
(9, 1, 2, 168),
(10, 1, 1, 168),
(11, 1, 2, 173),
(12, 1, 1, 173);

INSERT INTO `wagtailcore_grouppagepermission` (`id`, `permission_type`, `group_id`, `page_id`, `permission_id`) VALUES
(1, 'add', 1, 1, 53),
(2, 'change', 1, 1, 54),
(3, 'publish', 1, 1, 216),
(4, 'add', 2, 1, 53),
(5, 'change', 2, 1, 54),
(6, 'lock', 1, 1, 215),
(7, 'unlock', 1, 1, 217);

INSERT INTO `wagtailcore_locale` (`id`, `language_code`) VALUES
(1, 'zh-hans');

INSERT INTO `wagtailcore_page` (`id`, `path`, `depth`, `numchild`, `title`, `slug`, `live`, `has_unpublished_changes`, `url_path`, `seo_title`, `show_in_menus`, `search_description`, `go_live_at`, `expire_at`, `expired`, `content_type_id`, `owner_id`, `locked`, `latest_revision_created_at`, `first_published_at`, `live_revision_id`, `last_published_at`, `draft_title`, `locked_at`, `locked_by_id`, `translation_key`, `locale_id`, `alias_of_id`, `latest_revision_id`) VALUES
(1, '0001', 1, 2, 'Root', 'root', 1, 0, '/', '', 0, '', NULL, NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, 'Root', NULL, NULL, 'c31615557d5a48e89e79dd5d8e6cc371', 1, NULL, NULL),
(2, '00010001', 2, 0, 'Welcome to your new Wagtail site!', 'home', 1, 0, '/home/', '', 0, '', NULL, NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, 'Welcome to your new Wagtail site!', NULL, NULL, '599741e6f4c44ef08859ff3323205140', 1, NULL, NULL),
(3, '00010002', 2, 3, '首页 Docker-Wagtail', 'index', 1, 0, '/index/', '', 0, '', NULL, NULL, 0, 5, 1, 0, '2016-08-04 02:25:03.532680', '2016-08-04 02:25:03.567152', NULL, '2016-08-04 02:25:03.532680', '首页 Docker-Wagtail', NULL, NULL, '94b76417a4e64bfb983db248fe36de6d', 1, NULL, 1),
(4, '000100020001', 3, 2, '博客文章列表', 'blog', 1, 0, '/index/blog/', '博客文章列表', 1, '', NULL, NULL, 0, 9, 1, 0, '2016-08-04 02:28:20.777548', '2016-08-04 02:28:20.815323', NULL, '2016-08-04 02:28:20.777548', '博客文章列表', NULL, NULL, '3664ca066ca04eefa0d687596e6c3e4e', 1, NULL, 2),
(5, '0001000200010001', 4, 1, '一类博客文章', 'category-1', 1, 0, '/index/blog/category-1/', '一类博客文章', 1, '', NULL, NULL, 0, 9, 1, 0, '2016-08-04 02:28:44.510034', '2016-08-04 02:28:44.551415', NULL, '2016-08-04 02:28:44.510034', '一类博客文章', NULL, NULL, '9e76ad9ea3da44469383db46fabfb518', 1, NULL, 3),
(6, '0001000200010002', 4, 0, '二类博客文章', 'category-2', 1, 0, '/index/blog/category-2/', '二类博客文章', 1, '', NULL, NULL, 0, 9, 1, 0, '2016-08-04 02:29:13.766698', '2016-08-04 02:29:13.800295', NULL, '2016-08-04 02:29:13.766698', '二类博客文章', NULL, NULL, '25dd25da8c174ae48d8b832765dfb185', 1, NULL, 4),
(7, '000100020002', 3, 0, '关于我们', 'about', 1, 0, '/index/about/', '关于我们', 1, '', NULL, NULL, 0, 6, 1, 0, '2016-08-04 02:29:41.591658', '2016-08-04 02:29:41.632127', NULL, '2016-08-04 02:29:41.591658', '关于我们', NULL, NULL, 'e3deda3a219e451db00b9068fa590609', 1, NULL, 5),
(8, '000100020003', 3, 1, 'PUBLIC', 'public', 1, 0, '/index/public/', 'PUBLIC', 0, '', NULL, NULL, 0, 7, 1, 0, '2016-08-04 02:30:06.075800', '2016-08-04 02:30:06.106819', NULL, '2016-08-04 02:30:06.075800', 'PUBLIC', NULL, NULL, '5f276bb4cc544ffc8a96fc86e73b0d8b', 1, NULL, 6),
(9, '0001000200030001', 4, 0, '用户协议', 'yhxy', 1, 0, '/index/public/yhxy/', '用户协议', 0, '', NULL, NULL, 0, 8, 1, 0, '2016-08-04 02:30:48.539276', '2016-08-04 02:30:48.566662', NULL, '2016-08-04 02:30:48.539276', '用户协议', NULL, NULL, '0c7d0d196e0a449eac034a03b3867f3d', 1, NULL, 7),
(10, '00010002000100010001', 5, 0, '第一篇博客文章', 'the-first-blog', 1, 0, '/index/blog/category-1/the-first-blog/', '第一篇博客文章', 1, '', NULL, NULL, 0, 10, 1, 0, '2016-08-04 02:32:19.527879', '2016-08-04 02:32:19.571627', NULL, '2016-08-04 02:32:19.527879', '第一篇博客文章', NULL, NULL, '251446f348b246619429510e10d5a42c', 1, NULL, 8);

INSERT INTO `wagtailcore_pagesubscription` (`id`, `comment_notifications`, `page_id`, `user_id`) VALUES
(1, 0, 8, 1);

INSERT INTO `wagtailcore_revision` (`id`, `submitted_for_moderation`, `created_at`, `content`, `approved_go_live_at`, `object_id`, `user_id`, `content_type_id`, `base_content_type_id`, `object_str`) VALUES
(1, 0, '2016-08-04 02:25:03.532680', '{\"pk\": 3, \"live\": true, \"path\": \"000100010001\", \"slug\": \"index\", \"depth\": 3, \"owner\": 1, \"title\": \"首页 Docker-Wagtail\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/home/index/\", \"expire_at\": null, \"seo_title\": \"\", \"go_live_at\": null, \"content_type\": 5, \"show_in_menus\": false, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '3', 1, 5, 1, '\"首页 Docker-Wagtail\"'),
(2, 0, '2016-08-04 02:28:20.777548', '{\"pk\": 4, \"live\": true, \"path\": \"000100020001\", \"slug\": \"blog\", \"depth\": 3, \"owner\": 1, \"title\": \"博客文章列表\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/index/blog/\", \"expire_at\": null, \"seo_title\": \"博客文章列表\", \"go_live_at\": null, \"content_type\": 9, \"show_in_menus\": true, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '4', 1, 9, 1, '\"博客文章列表\"'),
(3, 0, '2016-08-04 02:28:44.510034', '{\"pk\": 5, \"live\": true, \"path\": \"0001000200010001\", \"slug\": \"category-1\", \"depth\": 4, \"owner\": 1, \"title\": \"一类博客文章\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/index/blog/category-1/\", \"expire_at\": null, \"seo_title\": \"一类博客文章\", \"go_live_at\": null, \"content_type\": 9, \"show_in_menus\": true, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '5', 1, 9, 1, '\"一类博客文章\"'),
(4, 0, '2016-08-04 02:29:13.766698', '{\"pk\": 6, \"live\": true, \"path\": \"0001000200010002\", \"slug\": \"category-2\", \"depth\": 4, \"owner\": 1, \"title\": \"二类博客文章\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/index/blog/category-2/\", \"expire_at\": null, \"seo_title\": \"二类博客文章\", \"go_live_at\": null, \"content_type\": 9, \"show_in_menus\": true, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '6', 1, 9, 1, '\"二类博客文章\"'),
(5, 0, '2016-08-04 02:29:41.591658', '{\"pk\": 7, \"live\": true, \"path\": \"000100020002\", \"slug\": \"about\", \"depth\": 3, \"owner\": 1, \"title\": \"关于我们\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/index/about/\", \"expire_at\": null, \"seo_title\": \"关于我们\", \"go_live_at\": null, \"content_type\": 6, \"show_in_menus\": true, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '7', 1, 6, 1, '\"关于我们\"'),
(6, 0, '2016-08-04 02:30:06.075800', '{\"pk\": 8, \"body\": \"\", \"live\": true, \"path\": \"000100020003\", \"slug\": \"public\", \"depth\": 3, \"owner\": 1, \"title\": \"PUBLIC\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/index/public/\", \"expire_at\": null, \"seo_title\": \"PUBLIC\", \"go_live_at\": null, \"content_type\": 7, \"show_in_menus\": false, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '8', 1, 7, 1, '\"PUBLIC\"'),
(7, 0, '2016-08-04 02:30:48.539276', '{\"pk\": 9, \"body\": \"<h2>用户协议</h2><h3>阅读并同意了用户协议</h3><p>Hello typo.css</p>\", \"live\": true, \"path\": \"0001000200030001\", \"slug\": \"yhxy\", \"depth\": 4, \"owner\": 1, \"title\": \"用户协议\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/index/public/yhxy/\", \"expire_at\": null, \"seo_title\": \"用户协议\", \"go_live_at\": null, \"content_type\": 8, \"show_in_menus\": false, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '9', 1, 8, 1, '\"用户协议\"'),
(8, 0, '2016-08-04 02:32:19.527879', '{\"pk\": 10, \"body\": \"<p>文章内容</p>\", \"date\": \"2016-08-04\", \"live\": true, \"path\": \"00010002000100010001\", \"slug\": \"the-first-blog\", \"depth\": 5, \"intro\": \"文章简介\", \"owner\": 1, \"title\": \"第一篇博客文章\", \"locked\": false, \"expired\": false, \"numchild\": 0, \"url_path\": \"/index/blog/category-1/the-first-blog/\", \"expire_at\": null, \"seo_title\": \"第一篇博客文章\", \"go_live_at\": null, \"main_image\": null, \"content_type\": 10, \"show_in_menus\": true, \"first_published_at\": null, \"search_description\": \"\", \"has_unpublished_changes\": false, \"latest_revision_created_at\": null}', NULL, '10', 1, 10, 1, '\"第一篇博客文章\"');

INSERT INTO `wagtailcore_site` (`id`, `hostname`, `port`, `is_default_site`, `root_page_id`, `site_name`) VALUES
(1, 'localhost', 80, 1, 3, '');

INSERT INTO `wagtailcore_task` (`id`, `name`, `active`, `content_type_id`) VALUES
(1, 'Moderators approval', 1, 38);

INSERT INTO `wagtailcore_workflow` (`id`, `name`, `active`) VALUES
(1, 'Moderators approval', 1);

INSERT INTO `wagtailcore_workflowpage` (`page_id`, `workflow_id`) VALUES
(1, 1);

INSERT INTO `wagtailcore_workflowtask` (`id`, `sort_order`, `task_id`, `workflow_id`) VALUES
(1, 0, 1, 1);

INSERT INTO `wagtailusers_userprofile` (`id`, `submitted_notifications`, `approved_notifications`, `rejected_notifications`, `user_id`, `preferred_language`, `current_time_zone`, `avatar`, `updated_comments_notifications`, `dismissibles`, `theme`) VALUES
(1, 1, 1, 1, 1, 'en', '', '', 1, '{}', 'system');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;