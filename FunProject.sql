# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.73)
# Database: FunProject
# Generation Time: 2015-05-14 06:48:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table login_credentials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `login_credentials`;

CREATE TABLE `login_credentials` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `login_credentials` WRITE;
/*!40000 ALTER TABLE `login_credentials` DISABLE KEYS */;

INSERT INTO `login_credentials` (`userId`, `username`, `password`)
VALUES
	(1,'zakir','$2a$10$MyfstjAioTE6YpXI6Ghiy.GC9LnvhBVkr.DQHYV28LT35S1FdwUKa'),
	(3,'elahi','$2a$10$QzrfWHVXXuPD6L4EvBhfvu0StLXzFdT.ZjlYR5iOxgmN.966.DUYW'),
	(4,'ts','$2a$10$v7Yxt3KldawnGmQySxZt..MOLU7/ueUSRwOgoOAcOtrgijP75LIF.'),
	(5,'test','$2a$10$eCscNZzN3tlKfuuAYU9nNOkLiRmejjWDDrEo1LopxdDee9ENCUDpm'),
	(6,'testing','$2a$10$W6esb3425m2rTa88w.KISOS1FKUIGCFCLxhlyqFQ4heWN6qk7mvgi'),
	(7,'zakir123','$2a$10$6qdHfWExlr1V5fXFMbaXReVwCnRGKyWnc4d0bobCx.Lsdwh2W6naO'),
	(8,'zakir1234','$2a$10$Dd.mnaaQ9NxBbyY6W5ZUJuFZu8sG7F4TigsCQxzU1iUsP2USVWbGu'),
	(9,'karthika','$2a$10$wtCyWR1ECNrQRbzftmSTrOzmBLXkPgsYz3t6cCTH0dX2tiC.h1xkm'),
	(10,'test12','$2a$10$3.OlILG/R4Nqp9mT9F5GHuMSjHsIhcRvjZ8pig.z0/i1gTQQov.yO');

/*!40000 ALTER TABLE `login_credentials` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
