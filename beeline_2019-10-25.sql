# ************************************************************
# Sequel Pro SQL dump
# Версия 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Адрес: 127.0.0.1 (MySQL 5.7.25-0ubuntu0.18.04.2)
# Схема: beeline
# Время создания: 2019-10-25 04:59:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы kpi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kpi`;

CREATE TABLE `kpi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `beeline_value` int(5) NOT NULL,
  `mf_value` int(5) NOT NULL,
  `mts_value` int(5) NOT NULL,
  `time_key` varchar(25) NOT NULL DEFAULT '',
  `test` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;

INSERT INTO `kpi` (`id`, `user_email`, `beeline_value`, `mf_value`, `mts_value`, `time_key`, `test`)
VALUES
	(4,'ozpavel@yandex.ru',772,968,89,'2019-10-24 11:19:47',1),
	(5,'ozpavel@yandex.ru',597,187,815,'2019-10-24 11:20:13',1),
	(6,'ozpavel@yandex.ru',557,958,116,'2019-10-24 11:22:02',1),
	(7,'ozpavel@yandex.ru',523,597,836,'2019-10-24 11:23:01',1),
	(8,'ozpavel@yandex.ru',980,491,181,'2019-10-24 11:24:02',1),
	(9,'ozpavel@yandex.ru',576,18,631,'2019-10-24 11:25:02',1),
	(10,'ozpavel@yandex.ru',845,193,324,'2019-10-24 11:26:01',1),
	(11,'ozpavel@yandex.ru',546,619,837,'2019-10-24 11:27:02',1),
	(12,'ozpavel@yandex.ru',383,895,500,'2019-10-24 11:28:02',1),
	(13,'ozpavel@yandex.ru',729,853,568,'2019-10-24 11:29:01',1),
	(14,'ozpavel@yandex.ru',564,211,123,'2019-10-24 11:37:01',1),
	(15,'ozpavel@yandex.ru',229,421,336,'2019-10-24 11:38:01',1),
	(16,'ozpavel@yandex.ru',572,171,955,'2019-10-24 11:39:02',1),
	(17,'ozpavel@yandex.ru',23,628,634,'2019-10-24 11:40:01',1),
	(18,'ozpavel@yandex.ru',567,744,15,'2019-10-24 11:41:01',1),
	(19,'ozpavel@yandex.ru',33,174,429,'2019-10-24 11:42:02',1),
	(20,'ozpavel@yandex.ru',201,72,741,'2019-10-24 11:43:01',1),
	(21,'ozpavel@yandex.ru',926,773,978,'2019-10-24 11:44:01',1),
	(22,'ozpavel@yandex.ru',422,755,964,'2019-10-24 11:45:02',1),
	(23,'ozpavel@yandex.ru',935,575,718,'2019-10-24 11:46:01',1),
	(24,'ozpavel@yandex.ru',712,474,953,'2019-10-24 11:47:02',1),
	(25,'ozpavel@yandex.ru',660,516,314,'2019-10-24 11:48:02',1),
	(26,'ozpavel@yandex.ru',225,373,776,'2019-10-24 11:49:01',1),
	(27,'ozpavel@yandex.ru',885,807,669,'2019-10-24 11:50:01',1),
	(28,'ozpavel@yandex.ru',898,745,831,'2019-10-24 11:51:02',1),
	(29,'ozpavel@yandex.ru',638,374,731,'2019-10-24 11:52:01',1),
	(30,'ozpavel@yandex.ru',496,115,364,'2019-10-24 11:53:01',1),
	(31,'ozpavel@yandex.ru',376,817,411,'2019-10-24 11:54:02',1),
	(32,'ozpavel@yandex.ru',434,327,884,'2019-10-24 11:55:01',1),
	(33,'ozpavel@yandex.ru',941,35,979,'2019-10-24 11:56:02',1),
	(34,'ozpavel@yandex.ru',946,280,888,'2019-10-24 11:57:02',1),
	(35,'ozpavel@yandex.ru',137,991,787,'2019-10-24 11:58:01',1),
	(36,'ozpavel@yandex.ru',100,552,799,'2019-10-24 11:59:01',1),
	(37,'ozpavel@yandex.ru',638,166,598,'2019-10-24 12:00:02',1),
	(38,'ozpavel@yandex.ru',614,436,466,'2019-10-24 12:01:01',1),
	(39,'ozpavel@yandex.ru',844,123,706,'2019-10-24 12:02:01',1),
	(40,'ozpavel@yandex.ru',675,126,922,'2019-10-24 12:03:02',1),
	(41,'ozpavel@yandex.ru',812,583,10,'2019-10-24 12:04:01',1),
	(42,'ozpavel@yandex.ru',634,389,90,'2019-10-24 12:05:02',1),
	(43,'ozpavel@yandex.ru',916,745,327,'2019-10-24 12:06:02',1),
	(44,'ozpavel@yandex.ru',614,938,664,'2019-10-24 12:07:01',1),
	(45,'ozpavel@yandex.ru',102,713,446,'2019-10-24 12:08:02',1),
	(46,'ozpavel@yandex.ru',338,916,79,'2019-10-24 12:09:02',1),
	(47,'ozpavel@yandex.ru',176,207,759,'2019-10-24 12:10:01',1),
	(48,'ozpavel@yandex.ru',206,309,116,'2019-10-24 12:11:02',1),
	(49,'ozpavel@yandex.ru',275,130,442,'2019-10-24 12:12:02',1),
	(50,'ozpavel@yandex.ru',932,724,272,'2019-10-24 12:13:01',1),
	(51,'ozpavel@yandex.ru',553,216,199,'2019-10-24 12:14:02',1),
	(52,'ozpavel@yandex.ru',193,301,671,'2019-10-24 12:15:02',1),
	(53,'ozpavel@yandex.ru',870,337,515,'2019-10-24 12:19:02',1),
	(54,'ozpavel@yandex.ru',936,622,282,'2019-10-24 12:20:01',1),
	(55,'ozpavel@yandex.ru',272,643,713,'2019-10-24 12:21:02',1),
	(56,'ozpavel@yandex.ru',324,285,321,'2019-10-24 12:22:02',1),
	(57,'ozpavel@yandex.ru',810,297,137,'2019-10-24 12:23:02',1),
	(58,'ozpavel@yandex.ru',922,755,912,'2019-10-24 12:24:01',1),
	(59,'ozpavel@yandex.ru',784,386,646,'2019-10-24 12:25:02',1),
	(60,'ozpavel@yandex.ru',842,211,910,'2019-10-24 12:26:01',1),
	(61,'ozpavel@yandex.ru',898,463,669,'2019-10-24 12:27:01',1),
	(62,'ozpavel@yandex.ru',855,476,693,'2019-10-24 12:28:02',1),
	(63,'ozpavel@yandex.ru',885,303,101,'2019-10-24 12:29:02',1),
	(64,'ozpavel@yandex.ru',343,640,834,'2019-10-24 12:30:01',1),
	(65,'ozpavel@yandex.ru',358,845,287,'2019-10-24 12:31:02',1),
	(66,'ozpavel@yandex.ru',534,738,243,'2019-10-24 12:32:02',1),
	(67,'ozpavel@yandex.ru',808,917,604,'2019-10-24 12:33:01',1),
	(68,'ozpavel@yandex.ru',154,675,339,'2019-10-24 12:34:02',1),
	(69,'ozpavel@yandex.ru',30,990,623,'2019-10-24 12:35:02',1),
	(70,'ozpavel@yandex.ru',731,204,28,'2019-10-24 12:36:01',1),
	(71,'ozpavel@yandex.ru',259,49,492,'2019-10-24 12:37:02',1),
	(72,'ozpavel@yandex.ru',989,943,694,'2019-10-24 12:38:02',1),
	(73,'ozpavel@yandex.ru',327,764,93,'2019-10-24 12:39:01',1),
	(74,'ozpavel@yandex.ru',514,567,102,'2019-10-24 12:40:02',1),
	(75,'ozpavel@yandex.ru',565,737,125,'2019-10-24 12:41:02',1),
	(76,'ozpavel@yandex.ru',66,280,44,'2019-10-24 12:42:01',1),
	(77,'ozpavel@yandex.ru',139,446,212,'2019-10-24 12:43:02',1),
	(78,'ozpavel@yandex.ru',961,365,855,'2019-10-24 12:44:02',1),
	(79,'ozpavel@yandex.ru',869,340,528,'2019-10-24 12:45:01',1),
	(80,'ozpavel@yandex.ru',700,377,571,'2019-10-24 12:46:01',1),
	(81,'ozpavel@yandex.ru',942,154,915,'2019-10-24 12:47:02',1),
	(82,'ozpavel@yandex.ru',876,620,4,'2019-10-24 12:48:01',1),
	(83,'ozpavel@yandex.ru',920,247,143,'2019-10-24 12:49:02',1),
	(84,'ozpavel@yandex.ru',770,142,419,'2019-10-24 12:50:02',1),
	(85,'ozpavel@yandex.ru',86,864,646,'2019-10-24 12:51:01',1),
	(86,'ozpavel@yandex.ru',675,748,610,'2019-10-24 12:52:02',1),
	(87,'ozpavel@yandex.ru',742,301,631,'2019-10-24 12:53:02',1),
	(88,'ozpavel@yandex.ru',7,246,378,'2019-10-24 12:54:01',1),
	(89,'ozpavel@yandex.ru',996,578,531,'2019-10-24 12:55:02',1),
	(90,'ozpavel@yandex.ru',254,664,922,'2019-10-24 12:56:02',1),
	(91,'ozpavel@yandex.ru',737,17,603,'2019-10-24 12:57:02',1),
	(92,'ozpavel@yandex.ru',549,349,377,'2019-10-24 12:58:01',1),
	(93,'ozpavel@yandex.ru',678,869,361,'2019-10-24 12:59:02',1),
	(94,'ozpavel@yandex.ru',523,915,460,'2019-10-24 13:00:02',1),
	(95,'ozpavel@yandex.ru',262,623,65,'2019-10-24 13:01:01',1),
	(96,'ozpavel@yandex.ru',537,904,174,'2019-10-24 13:14:25',1),
	(97,'ozpavel@yandex.ru',25,111,588,'2019-10-24 13:15:25',1),
	(98,'ozpavel@yandex.ru',443,8,992,'2019-10-24 13:16:25',1),
	(99,'ozpavel@yandex.ru',674,957,415,'2019-10-24 13:17:25',1),
	(100,'ozpavel@yandex.ru',127,148,452,'2019-10-24 13:18:26',1),
	(101,'ozpavel@yandex.ru',884,562,87,'2019-10-24 13:19:25',1),
	(102,'ozpavel@yandex.ru',468,27,92,'2019-10-24 13:20:25',1),
	(103,'ozpavel@yandex.ru',326,112,104,'2019-10-24 13:21:26',1),
	(104,'ozpavel@yandex.ru',185,838,313,'2019-10-24 13:22:25',1),
	(105,'ozpavel@yandex.ru',671,688,100,'2019-10-24 13:25:25',1),
	(106,'ozpavel@yandex.ru',61,341,332,'2019-10-24 13:26:25',1),
	(107,'ozpavel@yandex.ru',899,393,920,'2019-10-24 13:27:25',1),
	(108,'ozpavel@yandex.ru',271,825,241,'2019-10-24 13:28:26',1),
	(109,'ozpavel@yandex.ru',675,686,281,'2019-10-24 13:29:26',1),
	(110,'ozpavel@yandex.ru',916,540,478,'2019-10-24 13:30:25',1),
	(111,'ozpavel@yandex.ru',101,814,936,'2019-10-24 13:31:25',1),
	(112,'ozpavel@yandex.ru',195,46,390,'2019-10-24 13:32:25',1),
	(113,'ozpavel@yandex.ru',508,242,291,'2019-10-24 13:33:25',1),
	(114,'ozpavel@yandex.ru',83,103,497,'2019-10-24 13:34:25',1),
	(115,'ozpavel@yandex.ru',726,245,604,'2019-10-24 13:35:25',1),
	(116,'ozpavel@yandex.ru',259,178,809,'2019-10-24 13:36:25',1),
	(117,'ozpavel@yandex.ru',448,51,283,'2019-10-24 13:37:25',1),
	(118,'ozpavel@yandex.ru',63,351,442,'2019-10-24 13:38:25',1),
	(119,'ozpavel@yandex.ru',719,90,219,'2019-10-24 13:39:01',1),
	(120,'ozpavel@yandex.ru',729,339,120,'2019-10-24 13:40:03',1),
	(121,'ozpavel@yandex.ru',239,661,584,'2019-10-24 13:41:02',1),
	(122,'ozpavel@yandex.ru',32,947,242,'2019-10-24 13:42:02',1),
	(123,'ozpavel@yandex.ru',347,110,364,'2019-10-24 13:43:01',1),
	(124,'ozpavel@yandex.ru',916,575,445,'2019-10-24 13:44:01',1),
	(125,'ozpavel@yandex.ru',231,765,963,'2019-10-24 13:45:02',1),
	(126,'ozpavel@yandex.ru',280,38,744,'2019-10-24 13:46:02',1),
	(127,'ozpavel@yandex.ru',650,418,632,'2019-10-24 13:47:01',1),
	(128,'ozpavel@yandex.ru',617,761,425,'2019-10-24 13:54:02',1),
	(129,'ozpavel@yandex.ru',24,780,607,'2019-10-24 13:55:01',1),
	(130,'ozpavel@yandex.ru',268,276,888,'2019-10-24 13:56:02',1),
	(131,'ozpavel@yandex.ru',352,84,874,'2019-10-24 13:57:01',1),
	(132,'ozpavel@yandex.ru',937,231,881,'2019-10-24 13:58:01',1),
	(133,'ozpavel@yandex.ru',163,478,268,'2019-10-24 13:59:02',1),
	(134,'ozpavel@yandex.ru',330,630,238,'2019-10-24 14:00:01',1),
	(135,'ozpavel@yandex.ru',341,538,952,'2019-10-24 14:01:02',1),
	(136,'ozpavel@yandex.ru',27,679,915,'2019-10-24 14:02:01',1),
	(137,'ozpavel@yandex.ru',851,623,888,'2019-10-24 14:03:02',1),
	(138,'ozpavel@yandex.ru',735,964,239,'2019-10-24 14:04:02',1),
	(139,'ozpavel@yandex.ru',641,698,341,'2019-10-24 14:05:01',1),
	(140,'ozpavel@yandex.ru',986,842,542,'2019-10-24 14:06:01',1),
	(141,'ozpavel@yandex.ru',914,325,34,'2019-10-24 14:07:02',1),
	(142,'ozpavel@yandex.ru',542,924,979,'2019-10-24 14:08:02',1),
	(143,'ozpavel@yandex.ru',954,557,304,'2019-10-24 14:09:01',1),
	(144,'ozpavel@yandex.ru',318,82,815,'2019-10-24 14:10:02',1),
	(145,'ozpavel@yandex.ru',12,190,574,'2019-10-24 14:11:02',1),
	(146,'ozpavel@yandex.ru',603,975,14,'2019-10-24 14:12:01',1),
	(147,'ozpavel@yandex.ru',372,399,841,'2019-10-24 14:13:02',1),
	(148,'ozpavel@yandex.ru',809,570,107,'2019-10-24 14:14:02',1),
	(149,'ozpavel@yandex.ru',153,896,927,'2019-10-24 14:15:01',1),
	(150,'ozpavel@yandex.ru',956,365,76,'2019-10-24 14:16:02',1),
	(151,'ozpavel@yandex.ru',281,774,708,'2019-10-24 14:17:02',1),
	(152,'ozpavel@yandex.ru',792,340,123,'2019-10-24 14:18:02',1),
	(153,'ozpavel@yandex.ru',432,934,758,'2019-10-24 14:19:01',1),
	(154,'ozpavel@yandex.ru',236,347,552,'2019-10-24 14:20:02',1),
	(155,'ozpavel@yandex.ru',70,954,321,'2019-10-24 14:21:01',1),
	(156,'ozpavel@yandex.ru',512,827,906,'2019-10-24 14:22:01',1),
	(157,'ozpavel@yandex.ru',424,745,374,'2019-10-24 14:23:02',1),
	(158,'ozpavel@yandex.ru',445,863,992,'2019-10-24 14:24:01',1),
	(159,'ozpavel@yandex.ru',26,377,473,'2019-10-24 14:25:01',1),
	(160,'ozpavel@yandex.ru',278,197,972,'2019-10-24 14:26:02',1),
	(161,'ozpavel@yandex.ru',921,445,222,'2019-10-24 14:27:01',1),
	(162,'ozpavel@yandex.ru',962,527,101,'2019-10-24 14:28:01',1),
	(163,'ozpavel@yandex.ru',547,649,36,'2019-10-24 14:29:02',1),
	(164,'ozpavel@yandex.ru',424,807,152,'2019-10-24 14:30:01',1),
	(165,'ozpavel@yandex.ru',130,756,612,'2019-10-24 14:31:01',1),
	(166,'ozpavel@yandex.ru',523,323,96,'2019-10-24 14:32:02',1),
	(167,'ozpavel@yandex.ru',456,449,613,'2019-10-24 14:33:01',1),
	(168,'ozpavel@yandex.ru',703,585,432,'2019-10-24 14:34:01',1),
	(169,'ozpavel@yandex.ru',978,700,126,'2019-10-24 14:35:02',1),
	(170,'ozpavel@yandex.ru',113,397,516,'2019-10-24 18:14:25',1),
	(171,'ozpavel@yandex.ru',998,116,799,'2019-10-24 18:15:25',1),
	(172,'ozpavel@yandex.ru',779,155,250,'2019-10-24 18:16:26',1),
	(173,'ozpavel@yandex.ru',467,470,336,'2019-10-24 18:17:25',1),
	(174,'ozpavel@yandex.ru',195,974,894,'2019-10-24 18:18:25',1),
	(175,'ozpavel@yandex.ru',387,261,612,'2019-10-24 18:19:26',1),
	(176,'ozpavel@yandex.ru',436,154,33,'2019-10-24 18:20:25',1),
	(177,'ozpavel@yandex.ru',54,757,932,'2019-10-24 18:21:25',1),
	(178,'ozpavel@yandex.ru',665,245,158,'2019-10-24 18:22:26',1),
	(179,'ozpavel@yandex.ru',879,411,529,'2019-10-24 18:23:25',1),
	(180,'ozpavel@yandex.ru',563,337,131,'2019-10-24 18:24:25',1),
	(181,'ozpavel@yandex.ru',818,495,198,'2019-10-24 18:25:26',1),
	(182,'ozpavel@yandex.ru',462,292,839,'2019-10-24 18:26:25',1),
	(183,'ozpavel@yandex.ru',551,143,407,'2019-10-24 18:27:25',1),
	(184,'ozpavel@yandex.ru',240,330,445,'2019-10-24 18:28:26',1),
	(185,'ozpavel@yandex.ru',473,654,684,'2019-10-24 18:29:25',1),
	(186,'ozpavel@yandex.ru',577,506,994,'2019-10-24 18:30:25',1),
	(187,'ozpavel@yandex.ru',294,889,4,'2019-10-24 18:31:26',1),
	(188,'ozpavel@yandex.ru',615,101,731,'2019-10-24 18:32:26',1),
	(189,'ozpavel@yandex.ru',225,718,257,'2019-10-24 18:33:26',1),
	(190,'ozpavel@yandex.ru',280,904,507,'2019-10-24 18:34:25',1),
	(191,'ozpavel@yandex.ru',206,592,913,'2019-10-24 18:35:25',1),
	(192,'ozpavel@yandex.ru',215,969,725,'2019-10-24 18:36:26',1),
	(193,'ozpavel@yandex.ru',398,15,280,'2019-10-24 18:37:25',1),
	(194,'ozpavel@yandex.ru',529,479,491,'2019-10-24 18:38:25',1),
	(195,'ozpavel@yandex.ru',589,953,355,'2019-10-24 18:39:26',1),
	(196,'ozpavel@yandex.ru',695,428,996,'2019-10-24 18:40:25',1),
	(197,'ozpavel@yandex.ru',374,927,590,'2019-10-24 18:41:25',1),
	(198,'ozpavel@yandex.ru',590,721,661,'2019-10-24 18:42:26',1),
	(199,'ozpavel@yandex.ru',348,770,698,'2019-10-24 18:43:25',1),
	(200,'ozpavel@yandex.ru',153,684,681,'2019-10-24 18:44:25',1),
	(201,'ozpavel@yandex.ru',198,553,764,'2019-10-24 18:45:26',1),
	(202,'ozpavel@yandex.ru',332,648,573,'2019-10-24 18:46:25',1),
	(203,'ozpavel@yandex.ru',561,858,757,'2019-10-24 18:47:25',1),
	(204,'ozpavel@yandex.ru',594,548,664,'2019-10-24 18:48:26',1),
	(205,'ozpavel@yandex.ru',186,186,322,'2019-10-24 18:49:01',1),
	(206,'ozpavel@yandex.ru',291,379,20,'2019-10-24 18:50:02',1),
	(207,'ozpavel@yandex.ru',342,886,179,'2019-10-24 18:51:02',1),
	(208,'ozpavel@yandex.ru',208,974,472,'2019-10-24 18:52:01',1),
	(209,'ozpavel@yandex.ru',413,456,907,'2019-10-24 18:53:02',1),
	(210,'ozpavel@yandex.ru',400,351,779,'2019-10-24 18:54:02',1),
	(211,'ozpavel@yandex.ru',826,156,474,'2019-10-24 18:55:01',1),
	(212,'ozpavel@yandex.ru',193,65,528,'2019-10-24 18:56:02',1),
	(213,'ozpavel@yandex.ru',368,303,777,'2019-10-24 19:07:01',1),
	(214,'ozpavel@yandex.ru',574,869,828,'2019-10-24 19:08:02',1),
	(215,'ozpavel@yandex.ru',585,761,916,'2019-10-24 19:09:02',1),
	(216,'ozpavel@yandex.ru',523,605,674,'2019-10-24 19:10:01',1),
	(217,'ozpavel@yandex.ru',103,816,981,'2019-10-24 19:11:02',1),
	(218,'ozpavel@yandex.ru',123,82,700,'2019-10-24 19:12:02',1),
	(219,'ozpavel@yandex.ru',612,76,528,'2019-10-24 19:13:01',1),
	(220,'ozpavel@yandex.ru',460,660,219,'2019-10-24 19:14:02',1),
	(221,'ozpavel@yandex.ru',502,43,296,'2019-10-24 19:15:02',1),
	(222,'ozpavel@yandex.ru',601,972,235,'2019-10-24 19:16:01',1),
	(223,'ozpavel@yandex.ru',481,739,88,'2019-10-24 19:17:02',1),
	(224,'ozpavel@yandex.ru',318,887,474,'2019-10-24 19:18:02',1),
	(225,'ozpavel@yandex.ru',605,517,774,'2019-10-24 19:19:01',1),
	(226,'ozpavel@yandex.ru',413,775,711,'2019-10-24 19:20:02',1),
	(227,'ozpavel@yandex.ru',27,151,146,'2019-10-24 19:21:02',1),
	(228,'ozpavel@yandex.ru',930,976,553,'2019-10-24 19:22:01',1),
	(229,'ozpavel@yandex.ru',140,826,898,'2019-10-24 19:23:01',1),
	(230,'ozpavel@yandex.ru',363,580,597,'2019-10-24 19:24:02',1),
	(231,'ozpavel@yandex.ru',757,112,294,'2019-10-24 19:25:01',1),
	(232,'ozpavel@yandex.ru',308,688,743,'2019-10-24 19:26:01',1),
	(233,'ozpavel@yandex.ru',756,653,232,'2019-10-24 19:27:02',1),
	(234,'ozpavel@yandex.ru',698,473,377,'2019-10-24 19:28:01',1),
	(235,'ozpavel@yandex.ru',820,980,755,'2019-10-24 19:29:01',1),
	(236,'ozpavel@yandex.ru',393,15,643,'2019-10-24 19:30:02',1),
	(237,'ozpavel@yandex.ru',252,261,970,'2019-10-24 19:31:01',1),
	(238,'ozpavel@yandex.ru',222,785,407,'2019-10-24 19:32:01',1),
	(239,'ozpavel@yandex.ru',715,186,859,'2019-10-24 19:33:02',1),
	(240,'ozpavel@yandex.ru',567,655,648,'2019-10-24 19:34:01',1),
	(241,'ozpavel@yandex.ru',535,356,267,'2019-10-24 19:35:02',1),
	(242,'ozpavel@yandex.ru',398,869,888,'2019-10-24 19:36:02',1),
	(243,'ozpavel@yandex.ru',203,881,5,'2019-10-24 19:37:01',1),
	(244,'ozpavel@yandex.ru',933,875,883,'2019-10-24 19:38:01',1),
	(245,'ozpavel@yandex.ru',501,620,102,'2019-10-24 19:39:02',1),
	(246,'ozpavel@yandex.ru',711,513,919,'2019-10-24 19:40:01',1),
	(247,'ozpavel@yandex.ru',582,796,568,'2019-10-24 19:41:02',1),
	(248,'ozpavel@yandex.ru',815,513,293,'2019-10-24 19:42:02',1),
	(249,'ozpavel@yandex.ru',926,372,760,'2019-10-24 19:43:01',1),
	(250,'ozpavel@yandex.ru',719,363,718,'2019-10-24 19:44:02',1),
	(251,'ozpavel@yandex.ru',470,907,790,'2019-10-24 19:45:02',1),
	(252,'ozpavel@yandex.ru',889,102,435,'2019-10-24 19:46:01',1),
	(253,'ozpavel@yandex.ru',369,436,991,'2019-10-24 19:47:01',1),
	(254,'ozpavel@yandex.ru',442,790,757,'2019-10-24 19:48:02',1),
	(255,'ozpavel@yandex.ru',958,442,838,'2019-10-24 19:49:01',1),
	(256,'ozpavel@yandex.ru',119,833,148,'2019-10-24 19:50:01',1),
	(257,'ozpavel@yandex.ru',172,788,337,'2019-10-24 19:51:02',1),
	(258,'ozpavel@yandex.ru',521,760,883,'2019-10-24 19:52:01',1),
	(259,'ozpavel@yandex.ru',951,470,791,'2019-10-24 19:53:01',1),
	(260,'ozpavel@yandex.ru',494,494,179,'2019-10-24 19:54:02',1),
	(261,'ozpavel@yandex.ru',503,349,230,'2019-10-24 19:55:02',1),
	(262,'ozpavel@yandex.ru',876,596,319,'2019-10-24 19:56:01',1),
	(263,'ozpavel@yandex.ru',499,949,186,'2019-10-24 19:57:02',1),
	(264,'ozpavel@yandex.ru',370,489,495,'2019-10-24 19:58:01',1),
	(265,'ozpavel@yandex.ru',129,565,477,'2019-10-24 19:59:01',1),
	(266,'ozpavel@yandex.ru',758,203,453,'2019-10-24 20:00:02',1),
	(267,'ozpavel@yandex.ru',491,825,449,'2019-10-24 20:01:01',1),
	(268,'ozpavel@yandex.ru',598,423,59,'2019-10-24 20:02:01',1),
	(269,'ozpavel@yandex.ru',810,411,797,'2019-10-24 20:03:02',1),
	(270,'ozpavel@yandex.ru',702,987,303,'2019-10-24 20:04:01',1),
	(271,'ozpavel@yandex.ru',142,898,796,'2019-10-24 20:05:01',1),
	(272,'ozpavel@yandex.ru',981,343,134,'2019-10-24 20:06:02',1),
	(273,'ozpavel@yandex.ru',940,846,193,'2019-10-24 20:07:01',1),
	(274,'ozpavel@yandex.ru',539,121,775,'2019-10-24 20:08:01',1),
	(275,'ozpavel@yandex.ru',490,117,283,'2019-10-24 20:09:02',1),
	(276,'ozpavel@yandex.ru',992,513,852,'2019-10-24 20:11:01',1),
	(277,'ozpavel@yandex.ru',789,730,327,'2019-10-24 20:12:01',1),
	(278,'ozpavel@yandex.ru',37,910,954,'2019-10-24 20:13:02',1),
	(279,'ozpavel@yandex.ru',418,180,755,'2019-10-24 20:14:03',1),
	(280,'ozpavel@yandex.ru',817,404,582,'2019-10-24 20:15:02',1),
	(281,'ozpavel@yandex.ru',710,445,243,'2019-10-24 20:16:01',1),
	(282,'ozpavel@yandex.ru',288,278,864,'2019-10-24 20:17:02',1),
	(283,'ozpavel@yandex.ru',499,885,475,'2019-10-24 20:18:01',1),
	(284,'ozpavel@yandex.ru',124,439,430,'2019-10-24 20:19:01',1),
	(285,'ozpavel@yandex.ru',374,276,964,'2019-10-24 20:20:02',1),
	(286,'ozpavel@yandex.ru',358,704,162,'2019-10-24 20:21:02',1),
	(287,'ozpavel@yandex.ru',364,552,371,'2019-10-24 20:22:01',1),
	(288,'ozpavel@yandex.ru',588,933,163,'2019-10-24 20:23:02',1),
	(289,'ozpavel@yandex.ru',854,46,627,'2019-10-24 20:24:02',1),
	(290,'ozpavel@yandex.ru',727,224,830,'2019-10-24 20:25:01',1),
	(291,'ozpavel@yandex.ru',541,615,254,'2019-10-24 20:26:02',1),
	(292,'ozpavel@yandex.ru',2,37,281,'2019-10-24 20:27:02',1),
	(293,'ozpavel@yandex.ru',729,451,461,'2019-10-24 20:28:01',1),
	(294,'ozpavel@yandex.ru',15,152,257,'2019-10-24 20:29:02',1),
	(295,'ozpavel@yandex.ru',88,859,74,'2019-10-24 20:30:02',1),
	(296,'ozpavel@yandex.ru',913,293,419,'2019-10-24 20:31:02',1),
	(297,'ozpavel@yandex.ru',540,792,30,'2019-10-24 20:32:01',1),
	(298,'ozpavel@yandex.ru',94,734,416,'2019-10-24 20:33:02',1),
	(299,'ozpavel@yandex.ru',829,572,869,'2019-10-24 20:34:02',1),
	(300,'ozpavel@yandex.ru',585,944,292,'2019-10-24 20:35:01',1),
	(301,'ozpavel@yandex.ru',958,529,942,'2019-10-24 20:36:02',1),
	(302,'ozpavel@yandex.ru',789,565,440,'2019-10-24 20:37:01',1),
	(303,'ozpavel@yandex.ru',515,330,76,'2019-10-24 20:38:01',1),
	(304,'ozpavel@yandex.ru',557,795,631,'2019-10-24 20:39:02',1),
	(305,'ozpavel@yandex.ru',27,820,333,'2019-10-24 20:40:02',1),
	(306,'ozpavel@yandex.ru',809,266,266,'2019-10-24 20:41:01',1),
	(307,'ozpavel@yandex.ru',961,104,680,'2019-10-24 20:42:02',1),
	(308,'ozpavel@yandex.ru',69,876,364,'2019-10-24 20:44:02',1),
	(309,'ozpavel@yandex.ru',1,957,5,'2019-10-24 20:45:02',1),
	(310,'ozpavel@yandex.ru',482,260,480,'2019-10-24 20:46:01',1),
	(311,'ozpavel@yandex.ru',592,963,24,'2019-10-24 20:47:02',1),
	(312,'ozpavel@yandex.ru',810,669,108,'2019-10-24 20:48:02',1),
	(313,'ozpavel@yandex.ru',300,345,528,'2019-10-24 20:49:01',1),
	(314,'ozpavel@yandex.ru',11,509,22,'2019-10-24 20:50:02',1),
	(315,'ozpavel@yandex.ru',644,738,387,'2019-10-24 20:51:02',1),
	(316,'ozpavel@yandex.ru',210,56,550,'2019-10-24 20:52:01',1),
	(317,'ozpavel@yandex.ru',149,130,167,'2019-10-24 20:53:02',1),
	(318,'ozpavel@yandex.ru',659,933,50,'2019-10-24 20:54:02',1),
	(319,'ozpavel@yandex.ru',721,130,499,'2019-10-24 20:55:01',1),
	(320,'ozpavel@yandex.ru',483,881,267,'2019-10-24 20:56:02',1),
	(321,'ozpavel@yandex.ru',482,40,977,'2019-10-24 20:57:02',1),
	(322,'ozpavel@yandex.ru',426,232,270,'2019-10-24 20:58:01',1),
	(323,'ozpavel@yandex.ru',268,606,322,'2019-10-24 21:00:02',1),
	(324,'ozpavel@yandex.ru',489,555,478,'2019-10-24 21:01:02',1),
	(325,'ozpavel@yandex.ru',920,761,291,'2019-10-24 21:02:01',1),
	(326,'ozpavel@yandex.ru',539,291,372,'2019-10-24 21:03:02',1),
	(327,'ozpavel@yandex.ru',614,669,275,'2019-10-24 21:04:02',1),
	(328,'ozpavel@yandex.ru',73,508,440,'2019-10-24 21:05:01',1),
	(329,'ozpavel@yandex.ru',777,668,364,'2019-10-24 21:06:02',1),
	(330,'ozpavel@yandex.ru',776,465,271,'2019-10-24 21:07:02',1),
	(331,'ozpavel@yandex.ru',62,952,908,'2019-10-24 21:09:01',1),
	(332,'ozpavel@yandex.ru',374,425,307,'2019-10-24 21:10:02',1),
	(333,'ozpavel@yandex.ru',748,376,468,'2019-10-24 21:11:02',1),
	(334,'ozpavel@yandex.ru',625,691,201,'2019-10-24 21:12:01',1),
	(335,'ozpavel@yandex.ru',118,466,75,'2019-10-24 21:13:02',1),
	(336,'ozpavel@yandex.ru',314,387,799,'2019-10-24 21:14:03',1),
	(337,'ozpavel@yandex.ru',980,854,52,'2019-10-24 21:15:01',1),
	(338,'ozpavel@yandex.ru',410,757,144,'2019-10-24 21:16:02',1),
	(339,'ozpavel@yandex.ru',755,437,507,'2019-10-24 21:17:02',1),
	(340,'ozpavel@yandex.ru',578,587,370,'2019-10-24 21:18:02',1),
	(341,'ozpavel@yandex.ru',777,482,729,'2019-10-24 21:19:02',1),
	(342,'ozpavel@yandex.ru',323,501,686,'2019-10-24 21:20:02',1),
	(343,'ozpavel@yandex.ru',860,280,476,'2019-10-24 21:21:02',1),
	(344,'ozpavel@yandex.ru',41,698,127,'2019-10-24 21:22:01',1),
	(345,'ozpavel@yandex.ru',968,302,208,'2019-10-24 21:23:02',1),
	(346,'ozpavel@yandex.ru',675,578,28,'2019-10-24 21:24:01',1),
	(347,'ozpavel@yandex.ru',494,169,492,'2019-10-24 21:25:02',1),
	(348,'ozpavel@yandex.ru',72,584,164,'2019-10-24 21:26:02',1);

/*!40000 ALTER TABLE `kpi` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`)
VALUES
	(1,'ozpavel@yandex.ru','aADip1s'),
	(2,'email@email.ru','fsdfadsfas');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;