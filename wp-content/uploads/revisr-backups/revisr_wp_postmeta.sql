Warning: Using a password on the command line interface can be insecure.

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
DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,4,'branch',''),(3,4,'commit_hash','072704a'),(4,4,'files_changed','21'),(5,4,'committed_files','a:21:{i:0;s:12:\"?? .htaccess\";i:1;s:12:\"?? index.php\";i:2;s:14:\"?? license.txt\";i:3;s:14:\"?? readme.html\";i:4;s:18:\"?? wp-activate.php\";i:5;s:12:\"?? wp-admin/\";i:6;s:21:\"?? wp-blog-header.php\";i:7;s:23:\"?? wp-comments-post.php\";i:8;s:23:\"?? wp-config-sample.php\";i:9;s:16:\"?? wp-config.php\";i:10;s:14:\"?? wp-content/\";i:11;s:14:\"?? wp-cron.php\";i:12;s:15:\"?? wp-includes/\";i:13;s:20:\"?? wp-links-opml.php\";i:14;s:14:\"?? wp-load.php\";i:15;s:15:\"?? wp-login.php\";i:16;s:14:\"?? wp-mail.php\";i:17;s:18:\"?? wp-settings.php\";i:18;s:16:\"?? wp-signup.php\";i:19;s:19:\"?? wp-trackback.php\";i:20;s:13:\"?? xmlrpc.php\";}'),(6,4,'db_hash','072704a'),(7,5,'branch','master'),(8,5,'commit_hash','7691455'),(9,5,'files_changed','13'),(10,5,'committed_files','a:13:{i:0;s:62:\"?? wp-content/uploads/revisr-backups/revisr_wp_commentmeta.sql\";i:1;s:59:\"?? wp-content/uploads/revisr-backups/revisr_wp_comments.sql\";i:2;s:72:\"?? wp-content/uploads/revisr-backups/revisr_wp_icwp_wpsf_audit_trail.sql\";i:3;s:56:\"?? wp-content/uploads/revisr-backups/revisr_wp_links.sql\";i:4;s:58:\"?? wp-content/uploads/revisr-backups/revisr_wp_options.sql\";i:5;s:59:\"?? wp-content/uploads/revisr-backups/revisr_wp_postmeta.sql\";i:6;s:56:\"?? wp-content/uploads/revisr-backups/revisr_wp_posts.sql\";i:7;s:57:\"?? wp-content/uploads/revisr-backups/revisr_wp_revisr.sql\";i:8;s:69:\"?? wp-content/uploads/revisr-backups/revisr_wp_term_relationships.sql\";i:9;s:64:\"?? wp-content/uploads/revisr-backups/revisr_wp_term_taxonomy.sql\";i:10;s:56:\"?? wp-content/uploads/revisr-backups/revisr_wp_terms.sql\";i:11;s:59:\"?? wp-content/uploads/revisr-backups/revisr_wp_usermeta.sql\";i:12;s:56:\"?? wp-content/uploads/revisr-backups/revisr_wp_users.sql\";}'),(11,5,'db_hash','7691455'),(12,6,'commit_hash','7691455'),(13,6,'db_hash','7691455'),(14,6,'backup_method','tables'),(15,6,'branch','master'),(16,6,'files_changed','0'),(17,6,'committed_files','a:0:{}'),(18,7,'commit_hash','7691455'),(19,7,'db_hash','7691455'),(20,7,'backup_method','tables'),(21,7,'branch','master'),(22,7,'files_changed','0'),(23,7,'committed_files','a:0:{}'),(24,8,'commit_hash','7691455'),(25,8,'db_hash','7691455'),(26,8,'backup_method','tables'),(27,8,'branch','master'),(28,8,'files_changed','0'),(29,8,'committed_files','a:0:{}'),(30,9,'_edit_last','1'),(31,10,'_edit_last','1'),(32,10,'committed_files','a:2:{i:0;s:41:\"?? wp-content/cache/supercache/index.html\";i:1;s:44:\"?? wp-content/cache/supercache/index.html.gz\";}'),(33,10,'files_changed','2'),(34,10,'commit_hash','52b8f7d'),(35,10,'branch','master'),(36,10,'commit_status','Committed'),(37,10,'git_tag',''),(38,10,'_edit_lock','1428318947:1'),(39,11,'commit_hash','52b8f7d'),(40,11,'db_hash','52b8f7d'),(41,11,'backup_method','tables'),(42,11,'branch','master'),(43,11,'files_changed','0'),(44,11,'committed_files','a:0:{}'),(45,12,'commit_hash','52b8f7d'),(46,12,'db_hash','52b8f7d'),(47,12,'backup_method','tables'),(48,12,'branch','master'),(49,12,'files_changed','0'),(50,12,'committed_files','a:0:{}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

