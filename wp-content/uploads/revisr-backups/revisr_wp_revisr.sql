
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2015-04-06 21:42:30','Successfully created a new repository.','init'),(2,'2015-04-06 21:43:20','Error backing up the database.','error'),(3,'2015-04-06 21:43:20','The daily backup was successful.','backup'),(4,'2015-04-06 21:43:22','Error backing up the database.','error'),(5,'2015-04-06 21:43:22','The daily backup was successful.','backup'),(6,'2015-04-06 21:45:57','Error backing up the database.','error'),(7,'2015-04-06 21:48:19','Error backing up the database.','error'),(8,'2015-04-06 22:02:46','Error pushing changes to the remote repository.','error'),(9,'2015-04-06 22:26:03','Successfully pushed 0 commits to GitHub/master.','push'),(10,'2015-04-06 22:26:09','Error backing up the database.','error'),(11,'2015-04-06 22:26:13','Successfully pushed 0 commits to GitHub/master.','push'),(12,'2015-04-06 23:18:02','Committed <a href=\"http://test1.wd.openleaf.ws/wp-admin/post.php?post=10&action=edit\">#52b8f7d</a> to the local repository.','commit'),(13,'2015-04-06 23:18:06','Successfully pushed 1 commit to GitHub/master.','push'),(14,'2015-04-06 23:19:05','Error backing up the database.','error'),(15,'2015-04-06 23:19:08','Successfully pushed 0 commits to GitHub/master.','push'),(16,'2015-04-06 23:19:45','Error backing up the database.','error'),(17,'2015-04-06 23:19:48','Successfully pushed 0 commits to GitHub/master.','push'),(18,'2015-04-07 00:02:38','Successfully backed up the database.','backup'),(19,'2015-04-07 00:02:42','Successfully pushed 1 commit to GitHub/master.','push'),(20,'2015-04-07 00:08:14','Successfully backed up the database.','backup'),(21,'2015-04-07 00:08:18','Successfully pushed 1 commit to GitHub/master.','push'),(22,'2015-04-07 00:21:40','Committed <a href=\"http://test1.wd.openleaf.ws/wp-admin/post.php?post=15&action=edit\">#8400eff</a> to the local repository.','commit'),(23,'2015-04-07 00:21:46','Successfully pushed 1 commit to GitHub/master.','push'),(24,'2015-04-07 13:48:19','Committed <a href=\"http://test1.wd.openleaf.ws/wp-admin/post.php?post=16&action=edit\">#a6b49b4</a> to the local repository.','commit'),(25,'2015-04-07 13:48:26','Successfully pushed 1 commit to GitHub/master.','push'),(26,'2015-04-07 13:49:09','Successfully backed up the database.','backup'),(27,'2015-04-07 13:49:12','Successfully pushed 1 commit to GitHub/master.','push'),(28,'2015-04-07 22:57:32','Successfully backed up the database.','backup'),(29,'2015-04-07 22:57:36','Successfully pushed 2 commits to GitHub/master.','push'),(30,'2015-04-07 22:57:36','The daily backup was successful.','backup');
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

