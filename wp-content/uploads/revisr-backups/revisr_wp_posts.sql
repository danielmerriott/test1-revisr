
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
DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2015-04-06 07:46:15','2015-04-06 07:46:15','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2015-04-06 07:46:15','2015-04-06 07:46:15','',0,'http://test1.wd.openleaf.ws/?p=1',0,'post','',1),(2,1,'2015-04-06 07:46:15','2015-04-06 07:46:15','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://test1.wd.openleaf.ws/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2015-04-06 07:46:15','2015-04-06 07:46:15','',0,'http://test1.wd.openleaf.ws/?page_id=2',0,'page','',0),(4,0,'2015-04-06 21:43:19','2015-04-06 09:43:19','','Daily backup - April 6, 2015','','publish','open','open','','daily-backup-april-6-2015','','','2015-04-06 21:43:19','2015-04-06 09:43:19','',0,'http://test1.wd.openleaf.ws/daily-backup-april-6-2015',0,'revisr_commits','',0),(5,0,'2015-04-06 21:43:22','2015-04-06 09:43:22','','Daily backup - April 6, 2015','','publish','open','open','','daily-backup-april-6-2015-2','','','2015-04-06 21:43:22','2015-04-06 09:43:22','',0,'http://test1.wd.openleaf.ws/daily-backup-april-6-2015-2',0,'revisr_commits','',0),(6,1,'2015-04-06 21:45:57','2015-04-06 09:45:57','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr','','','2015-04-06 21:45:57','2015-04-06 09:45:57','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr',0,'revisr_commits','',0),(7,1,'2015-04-06 21:48:19','2015-04-06 09:48:19','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-2','','','2015-04-06 21:48:19','2015-04-06 09:48:19','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr-2',0,'revisr_commits','',0),(8,1,'2015-04-06 22:26:09','2015-04-06 10:26:09','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-3','','','2015-04-06 22:26:09','2015-04-06 10:26:09','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr-3',0,'revisr_commits','',0),(9,1,'2015-04-06 23:17:46','2015-04-06 11:17:46','','','','publish','closed','closed','','9','','','2015-04-06 23:17:46','2015-04-06 11:17:46','',0,'http://test1.wd.openleaf.ws/?post_type=revisr_commits&#038;p=9',0,'revisr_commits','',0),(10,1,'2015-04-06 23:18:02','2015-04-06 11:18:02','','minor updates','','publish','closed','closed','','minor-updates','','','2015-04-06 23:18:02','2015-04-06 11:18:02','',0,'http://test1.wd.openleaf.ws/?post_type=revisr_commits&#038;p=10',0,'revisr_commits','',0),(11,1,'2015-04-06 23:19:05','2015-04-06 11:19:05','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-4','','','2015-04-06 23:19:05','2015-04-06 11:19:05','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr-4',0,'revisr_commits','',0),(12,1,'2015-04-06 23:19:45','2015-04-06 11:19:45','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-5','','','2015-04-06 23:19:45','2015-04-06 11:19:45','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr-5',0,'revisr_commits','',0),(13,1,'2015-04-07 00:02:38','2015-04-06 12:02:38','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-6','','','2015-04-07 00:02:38','2015-04-06 12:02:38','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr-6',0,'revisr_commits','',0),(14,1,'2015-04-07 00:08:14','2015-04-06 12:08:14','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-7','','','2015-04-07 00:08:14','2015-04-06 12:08:14','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr-7',0,'revisr_commits','',0),(15,1,'2015-04-07 00:21:40','2015-04-06 12:21:40','','changed dbhost','','publish','closed','closed','','changed-dbhost','','','2015-04-07 00:21:40','2015-04-06 12:21:40','',0,'http://test1.wd.openleaf.ws/?post_type=revisr_commits&#038;p=15',0,'revisr_commits','',0),(16,1,'2015-04-07 13:48:12','2015-04-07 01:48:12','','Upgraded to 4.2 beta','','publish','closed','closed','','upgraded-to-4-2-beta','','','2015-04-07 13:48:12','2015-04-07 01:48:12','',0,'http://test1.wd.openleaf.ws/?post_type=revisr_commits&#038;p=16',0,'revisr_commits','',0),(17,1,'2015-04-07 13:49:09','2015-04-07 01:49:09','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-8','','','2015-04-07 13:49:09','2015-04-07 01:49:09','',0,'http://test1.wd.openleaf.ws/revisr_commits/backed-up-the-database-with-revisr-8',0,'revisr_commits','',0),(18,0,'2015-04-07 22:57:31','2015-04-07 10:57:31','','Daily backup - April 7, 2015','','publish','open','open','','daily-backup-april-7-2015','','','2015-04-07 22:57:31','2015-04-07 10:57:31','',0,'http://test1.wd.openleaf.ws/daily-backup-april-7-2015',0,'revisr_commits','',0),(19,0,'2015-04-08 21:52:00','2015-04-08 09:52:00','','Daily backup - April 8, 2015','','publish','open','open','','daily-backup-april-8-2015','','','2015-04-08 21:52:00','2015-04-08 09:52:00','',0,'http://test1.wd.openleaf.ws/daily-backup-april-8-2015',0,'revisr_commits','',0),(20,0,'2015-04-09 21:50:28','2015-04-09 09:50:28','','Daily backup - April 9, 2015','','publish','open','open','','daily-backup-april-9-2015','','','2015-04-09 21:50:28','2015-04-09 09:50:28','',0,'http://test1.wd.openleaf.ws/daily-backup-april-9-2015',0,'revisr_commits','',0),(21,0,'2015-04-10 21:57:53','2015-04-10 09:57:53','','Daily backup - April 10, 2015','','publish','open','open','','daily-backup-april-10-2015','','','2015-04-10 21:57:53','2015-04-10 09:57:53','',0,'http://test1.wd.openleaf.ws/daily-backup-april-10-2015',0,'revisr_commits','',0),(22,0,'2015-04-12 10:02:17','2015-04-11 22:02:17','','Daily backup - April 11, 2015','','publish','open','open','','daily-backup-april-11-2015','','','2015-04-12 10:02:17','2015-04-11 22:02:17','',0,'http://test1.wd.openleaf.ws/daily-backup-april-11-2015',0,'revisr_commits','',0),(23,0,'2015-04-12 23:37:16','2015-04-12 11:37:16','','Daily backup - April 12, 2015','','publish','open','open','','daily-backup-april-12-2015','','','2015-04-12 23:37:16','2015-04-12 11:37:16','',0,'http://test1.wd.openleaf.ws/daily-backup-april-12-2015',0,'revisr_commits','',0),(24,0,'2015-04-13 21:54:11','2015-04-13 09:54:11','','Daily backup - April 13, 2015','','publish','open','open','','daily-backup-april-13-2015','','','2015-04-13 21:54:11','2015-04-13 09:54:11','',0,'http://test1.wd.openleaf.ws/daily-backup-april-13-2015',0,'revisr_commits','',0),(25,0,'2015-04-15 00:25:45','2015-04-14 12:25:45','','Daily backup - April 14, 2015','','publish','open','open','','daily-backup-april-14-2015','','','2015-04-15 00:25:45','2015-04-14 12:25:45','',0,'http://test1.wd.openleaf.ws/daily-backup-april-14-2015',0,'revisr_commits','',0),(26,0,'2015-04-16 05:33:01','2015-04-15 17:33:01','','Daily backup - April 15, 2015','','publish','open','open','','daily-backup-april-15-2015','','','2015-04-16 05:33:01','2015-04-15 17:33:01','',0,'http://test1.wd.openleaf.ws/daily-backup-april-15-2015',0,'revisr_commits','',0),(27,0,'2015-04-16 22:04:36','2015-04-16 10:04:36','','Daily backup - April 16, 2015','','publish','open','open','','daily-backup-april-16-2015','','','2015-04-16 22:04:36','2015-04-16 10:04:36','',0,'http://test1.wd.openleaf.ws/daily-backup-april-16-2015',0,'revisr_commits','',0),(29,0,'2015-04-18 06:53:01','2015-04-17 18:53:01','','Daily backup - April 17, 2015','','publish','open','open','','daily-backup-april-17-2015','','','2015-04-18 06:53:01','2015-04-17 18:53:01','',0,'http://test1.wd.openleaf.ws/daily-backup-april-17-2015',0,'revisr_commits','',0),(30,0,'2015-04-18 21:43:19','2015-04-18 09:43:19','','Daily backup - April 18, 2015','','publish','open','open','','daily-backup-april-18-2015','','','2015-04-18 21:43:19','2015-04-18 09:43:19','',0,'http://test1.wd.openleaf.ws/daily-backup-april-18-2015',0,'revisr_commits','',0),(31,0,'2015-04-20 05:39:03','2015-04-19 17:39:03','','Daily backup - April 19, 2015','','publish','open','open','','daily-backup-april-19-2015','','','2015-04-20 05:39:03','2015-04-19 17:39:03','',0,'http://test1.wd.openleaf.ws/daily-backup-april-19-2015',0,'revisr_commits','',0),(32,0,'2015-04-21 04:57:00','2015-04-20 16:57:00','','Daily backup - April 20, 2015','','publish','open','open','','daily-backup-april-20-2015','','','2015-04-21 04:57:00','2015-04-20 16:57:00','',0,'http://test1.wd.openleaf.ws/daily-backup-april-20-2015',0,'revisr_commits','',0),(33,0,'2015-04-22 00:00:20','2015-04-21 12:00:20','','Daily backup - April 21, 2015','','publish','open','open','','daily-backup-april-21-2015','','','2015-04-22 00:00:20','2015-04-21 12:00:20','',0,'http://test1.wd.openleaf.ws/daily-backup-april-21-2015',0,'revisr_commits','',0),(34,0,'2015-04-23 04:15:28','2015-04-22 16:15:28','','Daily backup - April 22, 2015','','publish','open','open','','daily-backup-april-22-2015','','','2015-04-23 04:15:28','2015-04-22 16:15:28','',0,'http://test1.wd.openleaf.ws/daily-backup-april-22-2015',0,'revisr_commits','',0),(35,0,'2015-04-24 02:37:58','2015-04-23 14:37:58','','Daily backup - April 23, 2015','','publish','open','open','','daily-backup-april-23-2015','','','2015-04-24 02:37:58','2015-04-23 14:37:58','',0,'http://test1.wd.openleaf.ws/daily-backup-april-23-2015',0,'revisr_commits','',0),(36,0,'2015-04-25 01:07:05','2015-04-24 13:07:05','','Daily backup - April 24, 2015','','publish','open','open','','daily-backup-april-24-2015','','','2015-04-25 01:07:05','2015-04-24 13:07:05','',0,'http://test1.wd.openleaf.ws/daily-backup-april-24-2015',0,'revisr_commits','',0),(37,0,'2015-04-25 23:41:32','2015-04-25 11:41:32','','Daily backup - April 25, 2015','','publish','open','open','','daily-backup-april-25-2015','','','2015-04-25 23:41:32','2015-04-25 11:41:32','',0,'http://test1.wd.openleaf.ws/daily-backup-april-25-2015',0,'revisr_commits','',0),(38,0,'2015-04-27 11:08:34','2015-04-26 23:08:34','','Daily backup - April 26, 2015','','publish','open','open','','daily-backup-april-26-2015','','','2015-04-27 11:08:34','2015-04-26 23:08:34','',0,'http://test1.wd.openleaf.ws/daily-backup-april-26-2015',0,'revisr_commits','',0),(39,0,'2015-04-27 22:40:35','2015-04-27 10:40:35','','Daily backup - April 27, 2015','','publish','open','open','','daily-backup-april-27-2015','','','2015-04-27 22:40:35','2015-04-27 10:40:35','',0,'http://test1.wd.openleaf.ws/daily-backup-april-27-2015',0,'revisr_commits','',0),(40,0,'2015-04-28 22:28:58','2015-04-28 10:28:58','','Daily backup - April 28, 2015','','publish','open','open','','daily-backup-april-28-2015','','','2015-04-28 22:28:58','2015-04-28 10:28:58','',0,'http://test1.wd.openleaf.ws/daily-backup-april-28-2015',0,'revisr_commits','',0),(41,0,'2015-04-29 21:57:39','2015-04-29 09:57:39','','Daily backup - April 29, 2015','','publish','open','open','','daily-backup-april-29-2015','','','2015-04-29 21:57:39','2015-04-29 09:57:39','',0,'http://test1.wd.openleaf.ws/daily-backup-april-29-2015',0,'revisr_commits','',0),(42,0,'2015-05-01 02:18:25','2015-04-30 14:18:25','','Daily backup - April 30, 2015','','publish','open','open','','daily-backup-april-30-2015','','','2015-05-01 02:18:25','2015-04-30 14:18:25','',0,'http://test1.wd.openleaf.ws/daily-backup-april-30-2015',0,'revisr_commits','',0),(43,0,'2015-05-01 23:40:03','2015-05-01 11:40:03','','Daily backup - May 1, 2015','','publish','open','open','','daily-backup-may-1-2015','','','2015-05-01 23:40:03','2015-05-01 11:40:03','',0,'http://test1.wd.openleaf.ws/daily-backup-may-1-2015',0,'revisr_commits','',0),(44,0,'2015-05-02 22:38:15','2015-05-02 10:38:15','','Daily backup - May 2, 2015','','publish','open','open','','daily-backup-may-2-2015','','','2015-05-02 22:38:15','2015-05-02 10:38:15','',0,'http://test1.wd.openleaf.ws/daily-backup-may-2-2015',0,'revisr_commits','',0),(45,0,'2015-05-03 22:27:16','2015-05-03 10:27:16','','Daily backup - May 3, 2015','','publish','open','open','','daily-backup-may-3-2015','','','2015-05-03 22:27:16','2015-05-03 10:27:16','',0,'http://test1.wd.openleaf.ws/daily-backup-may-3-2015',0,'revisr_commits','',0),(46,0,'2015-05-05 02:35:45','2015-05-04 14:35:45','','Daily backup - May 4, 2015','','publish','open','open','','daily-backup-may-4-2015','','','2015-05-05 02:35:45','2015-05-04 14:35:45','',0,'http://test1.wd.openleaf.ws/daily-backup-may-4-2015',0,'revisr_commits','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

