
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
DROP TABLE IF EXISTS `wp_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2015-04-06 21:42:30','Successfully created a new repository.','init'),(2,'2015-04-06 21:43:20','Error backing up the database.','error'),(3,'2015-04-06 21:43:20','The daily backup was successful.','backup'),(4,'2015-04-06 21:43:22','Error backing up the database.','error'),(5,'2015-04-06 21:43:22','The daily backup was successful.','backup'),(6,'2015-04-06 21:45:57','Error backing up the database.','error'),(7,'2015-04-06 21:48:19','Error backing up the database.','error'),(8,'2015-04-06 22:02:46','Error pushing changes to the remote repository.','error'),(9,'2015-04-06 22:26:03','Successfully pushed 0 commits to GitHub/master.','push'),(10,'2015-04-06 22:26:09','Error backing up the database.','error'),(11,'2015-04-06 22:26:13','Successfully pushed 0 commits to GitHub/master.','push'),(12,'2015-04-06 23:18:02','Committed <a href=\"http://test1.wd.openleaf.ws/wp-admin/post.php?post=10&action=edit\">#52b8f7d</a> to the local repository.','commit'),(13,'2015-04-06 23:18:06','Successfully pushed 1 commit to GitHub/master.','push'),(14,'2015-04-06 23:19:05','Error backing up the database.','error'),(15,'2015-04-06 23:19:08','Successfully pushed 0 commits to GitHub/master.','push'),(16,'2015-04-06 23:19:45','Error backing up the database.','error'),(17,'2015-04-06 23:19:48','Successfully pushed 0 commits to GitHub/master.','push'),(18,'2015-04-07 00:02:38','Successfully backed up the database.','backup'),(19,'2015-04-07 00:02:42','Successfully pushed 1 commit to GitHub/master.','push'),(20,'2015-04-07 00:08:14','Successfully backed up the database.','backup'),(21,'2015-04-07 00:08:18','Successfully pushed 1 commit to GitHub/master.','push'),(22,'2015-04-07 00:21:40','Committed <a href=\"http://test1.wd.openleaf.ws/wp-admin/post.php?post=15&action=edit\">#8400eff</a> to the local repository.','commit'),(23,'2015-04-07 00:21:46','Successfully pushed 1 commit to GitHub/master.','push'),(24,'2015-04-07 13:48:19','Committed <a href=\"http://test1.wd.openleaf.ws/wp-admin/post.php?post=16&action=edit\">#a6b49b4</a> to the local repository.','commit'),(25,'2015-04-07 13:48:26','Successfully pushed 1 commit to GitHub/master.','push'),(26,'2015-04-07 13:49:09','Successfully backed up the database.','backup'),(27,'2015-04-07 13:49:12','Successfully pushed 1 commit to GitHub/master.','push'),(28,'2015-04-07 22:57:32','Successfully backed up the database.','backup'),(29,'2015-04-07 22:57:36','Successfully pushed 2 commits to GitHub/master.','push'),(30,'2015-04-07 22:57:36','The daily backup was successful.','backup'),(31,'2015-04-08 21:52:01','Successfully backed up the database.','backup'),(32,'2015-04-08 21:52:04','Successfully pushed 2 commits to GitHub/master.','push'),(33,'2015-04-08 21:52:04','The daily backup was successful.','backup'),(34,'2015-04-09 21:50:29','Successfully backed up the database.','backup'),(35,'2015-04-09 21:50:34','Successfully pushed 2 commits to GitHub/master.','push'),(36,'2015-04-09 21:50:34','The daily backup was successful.','backup'),(37,'2015-04-10 21:57:53','Successfully backed up the database.','backup'),(38,'2015-04-10 21:57:57','Successfully pushed 2 commits to GitHub/master.','push'),(39,'2015-04-10 21:57:57','The daily backup was successful.','backup'),(40,'2015-04-12 10:02:17','Successfully backed up the database.','backup'),(41,'2015-04-12 10:02:21','Successfully pushed 2 commits to GitHub/master.','push'),(42,'2015-04-12 10:02:21','The daily backup was successful.','backup'),(43,'2015-04-12 23:37:17','Successfully backed up the database.','backup'),(44,'2015-04-12 23:37:20','Successfully pushed 2 commits to GitHub/master.','push'),(45,'2015-04-12 23:37:20','The daily backup was successful.','backup'),(46,'2015-04-13 21:54:14','Successfully backed up the database.','backup'),(47,'2015-04-13 21:54:18','Successfully pushed 1 commit to GitHub/master.','push'),(48,'2015-04-13 21:54:18','The daily backup was successful.','backup'),(49,'2015-04-15 00:25:45','Successfully backed up the database.','backup'),(50,'2015-04-15 00:25:49','Successfully pushed 1 commit to GitHub/master.','push'),(51,'2015-04-15 00:25:49','The daily backup was successful.','backup'),(52,'2015-04-16 05:33:02','Successfully backed up the database.','backup'),(53,'2015-04-16 05:33:05','Successfully pushed 2 commits to GitHub/master.','push'),(54,'2015-04-16 05:33:05','The daily backup was successful.','backup'),(55,'2015-04-16 22:04:36','Successfully backed up the database.','backup'),(56,'2015-04-16 22:04:40','Successfully pushed 2 commits to GitHub/master.','push'),(57,'2015-04-16 22:04:40','The daily backup was successful.','backup'),(58,'2015-04-18 06:53:02','Successfully backed up the database.','backup'),(59,'2015-04-18 06:53:05','Successfully pushed 2 commits to GitHub/master.','push'),(60,'2015-04-18 06:53:05','The daily backup was successful.','backup'),(61,'2015-04-18 21:43:20','Successfully backed up the database.','backup'),(62,'2015-04-18 21:43:23','Successfully pushed 2 commits to GitHub/master.','push'),(63,'2015-04-18 21:43:23','The daily backup was successful.','backup'),(64,'2015-04-20 05:39:03','Successfully backed up the database.','backup'),(65,'2015-04-20 05:39:07','Successfully pushed 2 commits to GitHub/master.','push'),(66,'2015-04-20 05:39:07','The daily backup was successful.','backup'),(67,'2015-04-21 04:57:01','Successfully backed up the database.','backup'),(68,'2015-04-21 04:57:04','Successfully pushed 2 commits to GitHub/master.','push'),(69,'2015-04-21 04:57:04','The daily backup was successful.','backup'),(70,'2015-04-22 00:00:21','Successfully backed up the database.','backup'),(71,'2015-04-22 00:00:25','Successfully pushed 2 commits to GitHub/master.','push'),(72,'2015-04-22 00:00:25','The daily backup was successful.','backup'),(73,'2015-04-23 04:15:27','Error staging files.','error'),(74,'2015-04-23 04:15:28','Successfully backed up the database.','backup'),(75,'2015-04-23 04:15:32','Successfully pushed 2 commits to GitHub/master.','push'),(76,'2015-04-23 04:15:32','The daily backup was successful.','backup'),(77,'2015-04-24 02:37:59','Successfully backed up the database.','backup'),(78,'2015-04-24 02:38:02','Successfully pushed 2 commits to GitHub/master.','push'),(79,'2015-04-24 02:38:02','The daily backup was successful.','backup'),(80,'2015-04-25 01:07:06','Successfully backed up the database.','backup'),(81,'2015-04-25 01:07:10','Successfully pushed 2 commits to GitHub/master.','push'),(82,'2015-04-25 01:07:10','The daily backup was successful.','backup'),(83,'2015-04-25 23:41:33','Successfully backed up the database.','backup'),(84,'2015-04-25 23:41:36','Successfully pushed 2 commits to GitHub/master.','push'),(85,'2015-04-25 23:41:36','The daily backup was successful.','backup'),(86,'2015-04-27 11:08:34','Successfully backed up the database.','backup'),(87,'2015-04-27 11:08:38','Successfully pushed 2 commits to GitHub/master.','push'),(88,'2015-04-27 11:08:38','The daily backup was successful.','backup'),(89,'2015-04-27 22:40:35','Successfully backed up the database.','backup'),(90,'2015-04-27 22:40:38','Successfully pushed 2 commits to GitHub/master.','push'),(91,'2015-04-27 22:40:38','The daily backup was successful.','backup'),(92,'2015-04-28 22:28:59','Successfully backed up the database.','backup'),(93,'2015-04-28 22:29:02','Successfully pushed 1 commit to GitHub/master.','push'),(94,'2015-04-28 22:29:02','The daily backup was successful.','backup'),(95,'2015-04-29 21:57:40','Successfully backed up the database.','backup'),(96,'2015-04-29 21:57:43','Successfully pushed 1 commit to GitHub/master.','push'),(97,'2015-04-29 21:57:43','The daily backup was successful.','backup'),(98,'2015-05-01 02:18:26','Successfully backed up the database.','backup'),(99,'2015-05-01 02:18:30','Successfully pushed 1 commit to GitHub/master.','push'),(100,'2015-05-01 02:18:30','The daily backup was successful.','backup'),(101,'2015-05-01 23:40:03','Successfully backed up the database.','backup'),(102,'2015-05-01 23:40:07','Successfully pushed 2 commits to GitHub/master.','push'),(103,'2015-05-01 23:40:07','The daily backup was successful.','backup'),(104,'2015-05-02 22:38:16','Successfully backed up the database.','backup'),(105,'2015-05-02 22:38:19','Successfully pushed 2 commits to GitHub/master.','push'),(106,'2015-05-02 22:38:19','The daily backup was successful.','backup'),(107,'2015-05-03 22:27:16','Successfully backed up the database.','backup'),(108,'2015-05-03 22:27:20','Successfully pushed 2 commits to GitHub/master.','push'),(109,'2015-05-03 22:27:20','The daily backup was successful.','backup'),(110,'2015-05-05 02:35:46','Successfully backed up the database.','backup'),(111,'2015-05-05 02:35:50','Successfully pushed 1 commit to GitHub/master.','push'),(112,'2015-05-05 02:35:50','The daily backup was successful.','backup'),(113,'2015-05-06 03:33:14','Successfully backed up the database.','backup'),(114,'2015-05-06 03:33:17','Successfully pushed 1 commit to GitHub/master.','push'),(115,'2015-05-06 03:33:17','The daily backup was successful.','backup'),(116,'2015-05-07 06:21:10','Successfully backed up the database.','backup'),(117,'2015-05-07 06:21:13','Successfully pushed 2 commits to GitHub/master.','push'),(118,'2015-05-07 06:21:13','The daily backup was successful.','backup'),(119,'2015-05-07 22:52:32','Successfully backed up the database.','backup'),(120,'2015-05-07 22:52:35','Successfully pushed 2 commits to GitHub/master.','push'),(121,'2015-05-07 22:52:35','The daily backup was successful.','backup'),(122,'2015-05-09 02:23:44','Successfully backed up the database.','backup'),(123,'2015-05-09 02:23:47','Successfully pushed 2 commits to GitHub/master.','push'),(124,'2015-05-09 02:23:47','The daily backup was successful.','backup'),(125,'2015-05-10 08:58:46','Successfully backed up the database.','backup'),(126,'2015-05-10 08:58:50','Successfully pushed 1 commit to GitHub/master.','push'),(127,'2015-05-10 08:58:50','The daily backup was successful.','backup'),(128,'2015-05-11 02:20:15','Successfully backed up the database.','backup'),(129,'2015-05-11 02:20:17','Successfully pushed 1 commit to GitHub/master.','push'),(130,'2015-05-11 02:20:17','The daily backup was successful.','backup'),(131,'2015-05-11 23:16:30','Successfully backed up the database.','backup'),(132,'2015-05-11 23:16:34','Successfully pushed 1 commit to GitHub/master.','push'),(133,'2015-05-11 23:16:34','The daily backup was successful.','backup'),(134,'2015-05-13 02:09:30','Successfully backed up the database.','backup'),(135,'2015-05-13 02:09:34','Successfully pushed 2 commits to GitHub/master.','push'),(136,'2015-05-13 02:09:34','The daily backup was successful.','backup'),(137,'2015-05-14 01:44:34','Successfully backed up the database.','backup'),(138,'2015-05-14 01:44:38','Successfully pushed 2 commits to GitHub/master.','push'),(139,'2015-05-14 01:44:39','The daily backup was successful.','backup'),(140,'2015-05-15 01:16:29','Successfully backed up the database.','backup'),(141,'2015-05-15 01:16:32','Successfully pushed 1 commit to GitHub/master.','push'),(142,'2015-05-15 01:16:32','The daily backup was successful.','backup'),(143,'2015-05-15 22:18:51','Successfully backed up the database.','backup'),(144,'2015-05-15 22:18:55','Successfully pushed 1 commit to GitHub/master.','push'),(145,'2015-05-15 22:18:55','The daily backup was successful.','backup'),(146,'2015-05-17 00:23:02','Successfully backed up the database.','backup'),(147,'2015-05-17 00:23:05','Successfully pushed 1 commit to GitHub/master.','push'),(148,'2015-05-17 00:23:06','The daily backup was successful.','backup'),(149,'2015-05-17 22:28:03','Successfully backed up the database.','backup'),(150,'2015-05-17 22:28:07','Successfully pushed 1 commit to GitHub/master.','push'),(151,'2015-05-17 22:28:07','The daily backup was successful.','backup'),(152,'2015-05-19 03:09:48','Successfully backed up the database.','backup'),(153,'2015-05-19 03:09:52','Successfully pushed 2 commits to GitHub/master.','push'),(154,'2015-05-19 03:09:52','The daily backup was successful.','backup'),(155,'2015-05-20 01:34:57','Successfully backed up the database.','backup'),(156,'2015-05-20 01:35:00','Successfully pushed 2 commits to GitHub/master.','push'),(157,'2015-05-20 01:35:00','The daily backup was successful.','backup'),(158,'2015-05-20 22:13:19','Successfully backed up the database.','backup'),(159,'2015-05-20 22:13:23','Successfully pushed 2 commits to GitHub/master.','push'),(160,'2015-05-20 22:13:23','The daily backup was successful.','backup'),(161,'2015-05-22 03:33:05','Successfully backed up the database.','backup'),(162,'2015-05-22 03:33:08','Successfully pushed 2 commits to GitHub/master.','push'),(163,'2015-05-22 03:33:08','The daily backup was successful.','backup'),(164,'2015-05-22 23:26:08','Successfully backed up the database.','backup'),(165,'2015-05-22 23:26:12','Successfully pushed 1 commit to GitHub/master.','push'),(166,'2015-05-22 23:26:12','The daily backup was successful.','backup'),(167,'2015-05-24 00:17:03','Successfully backed up the database.','backup'),(168,'2015-05-24 00:17:06','Successfully pushed 2 commits to GitHub/master.','push'),(169,'2015-05-24 00:17:06','The daily backup was successful.','backup'),(170,'2015-05-25 03:09:42','Successfully backed up the database.','backup'),(171,'2015-05-25 03:09:46','Successfully pushed 2 commits to GitHub/master.','push'),(172,'2015-05-25 03:09:46','The daily backup was successful.','backup'),(173,'2015-05-25 23:55:33','Successfully backed up the database.','backup'),(174,'2015-05-25 23:55:37','Successfully pushed 2 commits to GitHub/master.','push'),(175,'2015-05-25 23:55:37','The daily backup was successful.','backup'),(176,'2015-05-27 04:26:08','Successfully backed up the database.','backup'),(177,'2015-05-27 04:26:11','Successfully pushed 2 commits to GitHub/master.','push'),(178,'2015-05-27 04:26:11','The daily backup was successful.','backup'),(179,'2015-05-28 03:41:08','Successfully backed up the database.','backup'),(180,'2015-05-28 03:41:11','Successfully pushed 2 commits to GitHub/master.','push'),(181,'2015-05-28 03:41:11','The daily backup was successful.','backup'),(182,'2015-05-28 22:32:07','Successfully backed up the database.','backup'),(183,'2015-05-28 22:32:11','Successfully pushed 2 commits to GitHub/master.','push'),(184,'2015-05-28 22:32:11','The daily backup was successful.','backup'),(185,'2015-05-30 22:20:23','Successfully backed up the database.','backup'),(186,'2015-05-30 22:20:26','Successfully pushed 2 commits to GitHub/master.','push'),(187,'2015-05-30 22:20:26','The daily backup was successful.','backup'),(188,'2015-05-31 23:40:47','Successfully backed up the database.','backup'),(189,'2015-05-31 23:40:51','Successfully pushed 2 commits to GitHub/master.','push'),(190,'2015-05-31 23:40:51','The daily backup was successful.','backup'),(191,'2015-06-01 22:34:16','Successfully backed up the database.','backup'),(192,'2015-06-01 22:34:20','Successfully pushed 1 commit to GitHub/master.','push'),(193,'2015-06-01 22:34:20','The daily backup was successful.','backup'),(194,'2015-06-02 22:09:21','Successfully backed up the database.','backup'),(195,'2015-06-02 22:09:24','Successfully pushed 2 commits to GitHub/master.','push'),(196,'2015-06-02 22:09:24','The daily backup was successful.','backup'),(197,'2015-06-04 00:03:46','Successfully backed up the database.','backup'),(198,'2015-06-04 00:03:49','Successfully pushed 2 commits to GitHub/master.','push'),(199,'2015-06-04 00:03:49','The daily backup was successful.','backup'),(200,'2015-06-04 22:24:47','Successfully backed up the database.','backup'),(201,'2015-06-04 22:24:51','Successfully pushed 2 commits to GitHub/master.','push'),(202,'2015-06-04 22:24:51','The daily backup was successful.','backup'),(203,'2015-06-06 05:50:34','Successfully backed up the database.','backup'),(204,'2015-06-06 05:50:38','Successfully pushed 2 commits to GitHub/master.','push'),(205,'2015-06-06 05:50:38','The daily backup was successful.','backup'),(206,'2015-06-07 17:52:30','Successfully backed up the database.','backup'),(207,'2015-06-07 17:52:34','Successfully pushed 2 commits to GitHub/master.','push'),(208,'2015-06-07 17:52:34','The daily backup was successful.','backup'),(209,'2015-06-07 22:01:58','Successfully backed up the database.','backup'),(210,'2015-06-07 22:02:01','Successfully pushed 1 commit to GitHub/master.','push'),(211,'2015-06-07 22:02:01','The daily backup was successful.','backup'),(212,'2015-06-09 05:22:08','Successfully backed up the database.','backup'),(213,'2015-06-09 05:22:12','Successfully pushed 1 commit to GitHub/master.','push'),(214,'2015-06-09 05:22:12','The daily backup was successful.','backup'),(215,'2015-06-09 21:50:56','Successfully backed up the database.','backup'),(216,'2015-06-09 21:50:59','Successfully pushed 1 commit to GitHub/master.','push'),(217,'2015-06-09 21:50:59','The daily backup was successful.','backup'),(218,'2015-06-11 01:20:07','Successfully backed up the database.','backup'),(219,'2015-06-11 01:20:10','Successfully pushed 2 commits to GitHub/master.','push'),(220,'2015-06-11 01:20:10','The daily backup was successful.','backup');
/*!40000 ALTER TABLE `wp_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

