# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.30)
# Database: search
# Generation Time: 2014-05-18 19:25:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table order_items
# ------------------------------------------------------------

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;

INSERT INTO `order_items` (`id`, `php_session_id`, `product_id`, `qty`, `price`)
VALUES
	(1,'2',12,5,50),
	(2,'2',13,3,45),
	(3,'24',89,90,100),
	(4,'USER9',972,4,639),
	(5,'USER3',739,9,1491),
	(6,'USER1',854,10,494),
	(7,'USER2',843,5,525),
	(8,'USER1',849,8,657),
	(9,'USER2',760,8,714),
	(10,'USER1',278,3,833),
	(11,'USER1',579,9,1796),
	(12,'USER3',777,6,1410),
	(13,'USER3',607,3,340),
	(14,'USER4',675,3,126),
	(15,'USER1',602,4,15),
	(16,'USER2',224,8,496),
	(17,'USER2',751,2,1123),
	(18,'USER3',988,3,1847),
	(19,'USER2',246,1,1908),
	(20,'USER2',197,2,599),
	(21,'USER1',35,2,916),
	(22,'USER3',593,3,1593),
	(23,'USER3',857,7,1805),
	(24,'USER3',68,6,244),
	(25,'USER3',524,8,1464),
	(26,'USER4',578,6,1861),
	(27,'USER3',110,7,298),
	(28,'USER1',994,8,1056),
	(29,'USER4',643,5,582),
	(30,'USER1',988,9,1154),
	(31,'USER4',57,4,181),
	(32,'USER3',51,3,134),
	(33,'USER4',170,8,1319),
	(34,'USER4',965,2,217),
	(35,'USER3',392,10,779),
	(36,'USER2',222,7,1351),
	(37,'USER1',135,10,868),
	(38,'USER4',896,7,999),
	(39,'USER3',96,2,688),
	(40,'USER3',12,3,1875),
	(41,'USER2',253,4,856),
	(42,'USER4',642,7,1413),
	(43,'USER4',494,9,348),
	(44,'USER3',915,7,556),
	(45,'USER4',243,4,922),
	(46,'USER4',819,1,1345),
	(47,'USER1',206,7,1462),
	(48,'USER4',343,3,1803),
	(49,'USER1',650,2,1360),
	(50,'USER4',360,2,94),
	(51,'USER4',624,2,1744),
	(52,'USER3',207,5,28),
	(53,'USER1',997,4,1516),
	(54,'USER3',115,6,1339),
	(55,'USER2',170,4,1137),
	(56,'USER3',882,10,1321),
	(57,'USER4',917,7,1753),
	(58,'USER1',525,7,887),
	(59,'USER1',299,4,240),
	(60,'USER3',214,10,915),
	(61,'USER4',632,2,159),
	(62,'USER3',945,10,1863),
	(63,'USER2',260,9,870),
	(64,'USER3',401,1,1640),
	(65,'USER2',602,6,1666),
	(66,'USER3',208,2,864),
	(67,'USER3',506,8,1643),
	(68,'USER2',960,2,235),
	(69,'USER1',398,8,371),
	(70,'USER3',407,9,221),
	(71,'USER3',912,9,595),
	(72,'USER1',362,8,508),
	(73,'USER4',138,2,1253),
	(74,'USER1',722,1,1488),
	(75,'USER4',554,10,459),
	(76,'USER3',251,6,1374),
	(77,'USER3',339,7,247),
	(78,'USER3',336,2,1840),
	(79,'USER4',939,4,434),
	(80,'USER2',22,7,1527),
	(81,'USER1',130,10,1689),
	(82,'USER3',645,1,1814),
	(83,'USER3',302,7,229),
	(84,'USER4',963,5,1793),
	(85,'USER1',509,8,1040),
	(86,'USER4',193,6,1776),
	(87,'USER1',933,3,1619),
	(88,'USER2',342,5,651),
	(89,'USER2',146,4,335),
	(90,'USER2',448,1,1674),
	(91,'USER4',557,6,494),
	(92,'USER2',326,3,1327),
	(93,'USER3',1000,6,1694),
	(94,'USER1',411,9,1765),
	(95,'USER1',363,8,998),
	(96,'USER3',775,10,1256),
	(97,'USER3',485,4,166),
	(98,'USER1',467,9,341),
	(99,'USER4',562,3,340),
	(100,'USER2',698,5,1180),
	(101,'USER1',748,10,836),
	(102,'USER3',837,7,783),
	(103,'USER1',552,2,81),
	(104,'USER1',972,4,639);

/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table search
# ------------------------------------------------------------

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;

INSERT INTO `search` (`id`, `phrase`, `date_added`, `num_results`, `php_session_id`)
VALUES
	(1,'indigo shoes','2014-09-13 00:00:00',67,'UAY56BFH4OJPLZ21QWZ1LD'),
	(2,'orange shoes','2013-05-19 00:00:00',29,'NDE28WTA3NYRYB89OAY1RD'),
	(3,'green shoes','2013-08-12 00:00:00',67,'KGP84OYK2IKJMF06XFU8SQ'),
	(4,'red shoes','2014-12-03 00:00:00',73,'ZGW88OYL4QZYRQ48MHJ3QT'),
	(5,'yellow shoes','2014-10-14 00:00:00',1,'OPU38CYI9RFOHG04TKD0MW'),
	(6,'green shoes','2014-06-12 00:00:00',59,'JOK74KRL3RWJHT99TNA0CP'),
	(7,'yellow shoes','2013-11-14 00:00:00',97,'HQL13OOM0LVIRR78SCP7TZ'),
	(8,'blue','2015-04-18 00:00:00',17,'OXS67WNJ1GHSHS14BAT6SB'),
	(9,'yellow shoes','2013-09-21 00:00:00',47,'YEL62KUT7RAFFW40PWB0FH'),
	(10,'red shoes','2014-03-15 00:00:00',43,'JUR94YXI0XIMZE58JRF3RJ'),
	(11,'blue','2014-06-23 00:00:00',53,'IVF98EJT3ESWUA86MYP1QR'),
	(12,'blue','2014-03-21 00:00:00',11,'RBI58WPK9XMLGI11XPY0CE'),
	(13,'indigo shoes','2015-01-06 00:00:00',47,'KDL23VJL0RFUOZ95MUI8EK'),
	(14,'blue','2015-05-10 00:00:00',73,'DXK38VSW8UZZNV86VTJ1WJ'),
	(15,'red shoes','2014-08-24 00:00:00',17,'VCK14VRP5NZLCZ39LTR1JP'),
	(16,'indigo shoes','2015-03-21 00:00:00',83,'BQV77HUF0ORUVM81JUL9HD'),
	(17,'yellow shoes','2013-10-19 00:00:00',47,'BCT43ZPD8WOQQX48FYT3ZV'),
	(18,'orange shoes','2014-02-16 00:00:00',53,'RQD99KFX6PAPNA56JXN1SS'),
	(19,'red shoes','2013-06-14 00:00:00',23,'AGK00NSV2MEYGU41OYQ5ND'),
	(20,'green shoes','2014-07-29 00:00:00',3,'JRH94FOT4RNAJI39CJV1VO'),
	(21,'yellow shoes','2015-03-08 00:00:00',71,'GKK17XRI3GWDCF18AHG1RE'),
	(22,'red shoes','2014-10-09 00:00:00',89,'NZV46KQN3SLDUW15KMH8KN'),
	(23,'red shoes','2014-09-04 00:00:00',73,'YYK42BIK1ZDXLI54FZR4YD'),
	(24,'red shoes','2013-08-23 00:00:00',73,'JND17QRM4QFYFZ04KIC3UY'),
	(25,'yellow shoes','2014-03-07 00:00:00',3,'VHU71NUL3QRURX39WCI2KW'),
	(26,'violet shoes','2015-01-04 00:00:00',11,'FNU14SES6EUZML36INP7NZ'),
	(27,'blue','2015-01-31 00:00:00',73,'KYA28KAZ5UTXSG85WXX6IQ'),
	(28,'red shoes','2015-01-30 00:00:00',31,'YVD49BTM8DGGXV90VDW7TK'),
	(29,'blue','2015-04-08 00:00:00',2,'DGQ78YCN5QOHSG70LRR7TU'),
	(30,'green shoes','2015-05-11 00:00:00',7,'UXD30IAR6TXAGN81AFR6NZ'),
	(31,'indigo shoes','2013-09-08 00:00:00',3,'QFC66ILC1ULNIS03PSK5PO'),
	(32,'violet shoes','2015-01-29 00:00:00',43,'LAP26TYM4KIOKC93HVQ7ID'),
	(33,'indigo shoes','2013-05-29 00:00:00',71,'DDW25QXN9UDJTZ62ZTF2RT'),
	(34,'green shoes','2014-08-26 00:00:00',43,'CLY19RUC9QORGZ23FYL8PA'),
	(35,'green shoes','2014-01-17 00:00:00',19,'OOI53PEQ7YXVSJ38GGS6HE'),
	(36,'indigo shoes','2015-02-18 00:00:00',37,'SOX41CTR3JXGUY69XAP1OB'),
	(37,'violet shoes','2014-10-27 00:00:00',41,'WMA92VEN1TFTLV89YON0TV'),
	(38,'yellow shoes','2013-10-13 00:00:00',37,'XRB01GQO9CFDDM22BHE7TJ'),
	(39,'blue','2014-12-03 00:00:00',2,'MJD50QLC3NJQVN14RLI5YJ'),
	(40,'indigo shoes','2014-01-27 00:00:00',19,'SOW40XUT0TWUZU77IZP5OT'),
	(41,'red shoes','2014-09-08 00:00:00',5,'YFD90CID5FPFHM57BNO0QI'),
	(42,'yellow shoes','2013-05-21 00:00:00',3,'ASR38PEE6DFTGZ58YNE7GU'),
	(43,'orange shoes','2014-11-11 00:00:00',31,'HTI36CTD4TKXYA47XPI7JM'),
	(44,'blue','2015-03-31 00:00:00',73,'JEZ05RKN3DJPRE98VKN4JJ'),
	(45,'indigo shoes','2015-05-13 00:00:00',71,'PVD37TKM5NYWQS79UTI9XI'),
	(46,'yellow shoes','2015-03-17 00:00:00',3,'YVF46OAZ8SFTNN56LQM8ZV'),
	(47,'yellow shoes','2014-05-31 00:00:00',5,'OGX93ZTU1CZPDQ57UWU2XU'),
	(48,'orange shoes','2013-09-26 00:00:00',11,'WGB90PCV4HTLEN35HOI1UE'),
	(49,'indigo shoes','2015-04-17 00:00:00',23,'EQW84UBK5JSYNE29ZOK9JR'),
	(50,'red shoes','2014-12-12 00:00:00',17,'BPX48QSW7BXNAP61NXI1HC'),
	(51,'blue','2013-08-29 00:00:00',5,'ZVY20PMX9KRZGZ03VOC7MQ'),
	(52,'orange shoes','2014-12-13 00:00:00',37,'TLL58ISS0UAJER87JSP3DE'),
	(53,'orange shoes','2013-11-11 00:00:00',43,'LSK69ASQ5XCJPQ69UPG2BK'),
	(54,'orange shoes','2014-06-06 00:00:00',17,'FQJ55JXL5UPSHN43AHL0XK'),
	(55,'violet shoes','2013-09-06 00:00:00',23,'AHB21OWM9UOCKS99MJX9FD'),
	(56,'orange shoes','2014-02-26 00:00:00',37,'FNR73PLH4SWDBK70MGG3HT'),
	(57,'indigo shoes','2014-10-17 00:00:00',89,'LQL51NXQ6BTKKP20BRL6VP'),
	(58,'red shoes','2014-10-14 00:00:00',13,'QAX05TRV9NTUAT23HRU1DM'),
	(59,'green shoes','2013-09-22 00:00:00',97,'ETO01GKK0YYBAI28IBW5SK'),
	(60,'red shoes','2014-09-29 00:00:00',5,'EJZ34ELE4XCBXN60QRY6QF'),
	(61,'blue','2013-10-10 00:00:00',7,'SAZ90EMA4AVUPQ98PEI6HL'),
	(62,'blue','2014-02-06 00:00:00',19,'QLJ80EWD2QEAFT32KIW1CV'),
	(63,'blue','2014-07-08 00:00:00',61,'IRP09ECR3KTHSN09YGA4IL'),
	(64,'blue','2014-10-23 00:00:00',17,'QCN28NAT8XBZBQ28CYZ3PH'),
	(65,'red shoes','2015-02-25 00:00:00',37,'XOD29USU3YYVRQ84LPW4EH'),
	(66,'indigo shoes','2014-05-08 00:00:00',29,'JOA91AHN1CBUZR39OQF0SJ'),
	(67,'orange shoes','2013-12-10 00:00:00',19,'BTK32ASQ3HSMAA57TPU4VF'),
	(68,'red shoes','2014-12-24 00:00:00',3,'ADC65VIA2SRSGR15EQD3JY'),
	(69,'violet shoes','2013-06-14 00:00:00',67,'OJK91WAH6IFPNN46KTI0RR'),
	(70,'orange shoes','2014-10-06 00:00:00',67,'KKG29UXY3ESNZO78JSG7IL'),
	(71,'green shoes','2014-06-06 00:00:00',17,'USER3'),
	(72,'orange shoes','2014-06-23 00:00:00',19,'USER3'),
	(73,'red shoes','2014-04-30 00:00:00',31,'USER3'),
	(74,'red shoes','2014-04-17 00:00:00',59,'USER3'),
	(75,'green shoes','2014-11-02 00:00:00',17,'USER3'),
	(76,'red shoes','2014-11-11 00:00:00',43,'USER3'),
	(77,'green shoes','2014-09-30 00:00:00',59,'USER3'),
	(78,'yellow shoes','2014-06-18 00:00:00',71,'USER3'),
	(79,'violet shoes','2015-04-20 00:00:00',7,'USER6'),
	(80,'indigo shoes','2013-10-03 00:00:00',11,'USER3'),
	(81,'red shoes','2014-06-29 00:00:00',29,'USER2'),
	(82,'green shoes','2014-02-14 00:00:00',7,'USER2'),
	(83,'green shoes','2013-08-02 00:00:00',5,'USER2'),
	(84,'yellow shoes','2015-03-23 00:00:00',53,'USER2'),
	(85,'yellow shoes','2014-08-10 00:00:00',67,'USER2'),
	(86,'red shoes','2015-03-31 00:00:00',41,'USER2'),
	(87,'yellow shoes','2014-03-28 00:00:00',53,'USER2'),
	(88,'violet shoes','2014-04-14 00:00:00',67,'USER2'),
	(89,'green shoes','2013-10-11 00:00:00',67,'USER2'),
	(90,'violet shoes','2013-10-27 00:00:00',83,'USER2'),
	(91,'yellow shoes','2013-10-16 00:00:00',31,'USER1'),
	(92,'orange shoes','2013-07-21 00:00:00',23,'USER1'),
	(93,'violet shoes','2014-12-16 00:00:00',11,'USER1'),
	(94,'indigo shoes','2014-01-11 00:00:00',17,'USER1'),
	(95,'green shoes','2014-04-26 00:00:00',7,'USER1'),
	(96,'violet shoes','2013-08-12 00:00:00',89,'USER1'),
	(97,'yellow shoes','2015-02-27 00:00:00',29,'USER1'),
	(98,'blue','2014-08-13 00:00:00',7,'USER1'),
	(99,'yellow shoes','2015-04-19 00:00:00',19,'USER1'),
	(100,'blue','2014-01-22 00:00:00',71,'USER1');

/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table search_click
# ------------------------------------------------------------

LOCK TABLES `search_click` WRITE;
/*!40000 ALTER TABLE `search_click` DISABLE KEYS */;

INSERT INTO `search_click` (`id`, `search_id`, `date_added`, `product_id`)
VALUES
	(2,7,'2014-06-03 00:00:00',361),
	(3,38,'2013-10-26 00:00:00',453),
	(4,64,'2014-03-27 00:00:00',519),
	(5,100,'2014-11-20 00:00:00',306),
	(6,84,'2015-04-28 00:00:00',455),
	(7,61,'2014-09-16 00:00:00',318),
	(8,16,'2014-01-20 00:00:00',884),
	(9,96,'2014-04-04 00:00:00',594),
	(10,13,'2014-03-20 00:00:00',683),
	(11,51,'2014-01-31 00:00:00',398),
	(12,1,'2015-01-20 00:00:00',742),
	(13,76,'2015-01-04 00:00:00',104),
	(14,86,'2014-12-07 00:00:00',158),
	(15,90,'2014-06-08 00:00:00',457),
	(16,44,'2015-01-01 00:00:00',277),
	(17,38,'2014-07-09 00:00:00',699),
	(18,100,'2014-09-20 00:00:00',248),
	(19,43,'2013-12-09 00:00:00',368),
	(20,19,'2014-04-29 00:00:00',910),
	(21,58,'2014-02-04 00:00:00',228),
	(22,38,'2014-09-26 00:00:00',802),
	(23,66,'2014-06-13 00:00:00',200),
	(24,90,'2014-12-21 00:00:00',88),
	(25,70,'2014-02-10 00:00:00',40),
	(26,67,'2013-09-06 00:00:00',473),
	(27,10,'2014-12-28 00:00:00',590),
	(28,46,'2014-01-10 00:00:00',24),
	(29,14,'2014-03-28 00:00:00',729),
	(30,88,'2013-11-03 00:00:00',847),
	(31,80,'2013-10-10 00:00:00',48),
	(32,18,'2013-10-15 00:00:00',6),
	(33,89,'2014-10-29 00:00:00',703),
	(34,62,'2013-12-19 00:00:00',907),
	(35,14,'2013-11-29 00:00:00',432),
	(36,60,'2014-12-24 00:00:00',621),
	(37,37,'2014-08-28 00:00:00',713),
	(38,71,'2013-07-07 00:00:00',96),
	(39,92,'2013-05-20 00:00:00',544),
	(40,63,'2013-07-24 00:00:00',607),
	(41,51,'2015-04-21 00:00:00',921),
	(42,6,'2013-09-07 00:00:00',149),
	(43,8,'2013-06-06 00:00:00',169),
	(44,5,'2015-04-06 00:00:00',201),
	(45,88,'2013-11-02 00:00:00',124),
	(46,93,'2014-01-15 00:00:00',322),
	(47,24,'2014-07-04 00:00:00',242),
	(48,82,'2013-12-31 00:00:00',574),
	(49,78,'2014-03-11 00:00:00',758),
	(50,28,'2013-12-01 00:00:00',823),
	(51,47,'2014-06-21 00:00:00',705),
	(52,55,'2014-10-10 00:00:00',637),
	(53,74,'2013-06-25 00:00:00',102),
	(54,93,'2014-10-16 00:00:00',997),
	(55,10,'2013-10-18 00:00:00',328),
	(56,16,'2013-10-02 00:00:00',374),
	(57,56,'2015-03-06 00:00:00',492),
	(58,22,'2014-08-21 00:00:00',848),
	(59,46,'2014-01-24 00:00:00',317),
	(60,44,'2015-03-01 00:00:00',891),
	(61,63,'2013-09-15 00:00:00',613),
	(62,28,'2014-05-15 00:00:00',703),
	(63,97,'2014-07-04 00:00:00',73),
	(64,73,'2013-11-24 00:00:00',368),
	(65,12,'2013-12-23 00:00:00',26),
	(66,94,'2014-08-17 00:00:00',840),
	(67,77,'2013-06-18 00:00:00',598),
	(68,84,'2013-08-17 00:00:00',395),
	(69,99,'2015-05-12 00:00:00',219),
	(70,83,'2014-07-15 00:00:00',615),
	(71,33,'2013-07-06 00:00:00',729),
	(72,98,'2014-08-02 00:00:00',544),
	(73,27,'2015-01-18 00:00:00',388),
	(74,3,'2013-06-20 00:00:00',333),
	(75,4,'2013-11-15 00:00:00',539),
	(76,15,'2014-11-23 00:00:00',542),
	(77,97,'2013-10-12 00:00:00',93),
	(78,92,'2014-04-21 00:00:00',831),
	(79,97,'2013-10-08 00:00:00',433),
	(80,63,'2014-06-29 00:00:00',881),
	(81,94,'2013-10-30 00:00:00',689),
	(82,81,'2014-06-02 00:00:00',524),
	(83,43,'2014-07-20 00:00:00',806),
	(84,46,'2014-10-09 00:00:00',737),
	(85,26,'2014-02-03 00:00:00',507),
	(86,100,'2013-08-09 00:00:00',413),
	(87,18,'2013-09-05 00:00:00',394),
	(88,81,'2013-11-02 00:00:00',763),
	(89,11,'2013-10-06 00:00:00',607),
	(90,24,'2015-03-16 00:00:00',857),
	(91,1,'2013-10-04 00:00:00',219),
	(92,96,'2015-05-01 00:00:00',941),
	(93,7,'2015-03-29 00:00:00',914),
	(94,64,'2013-11-02 00:00:00',872),
	(95,18,'2014-11-29 00:00:00',553),
	(96,48,'2014-04-23 00:00:00',930),
	(97,19,'2014-09-04 00:00:00',174),
	(98,50,'2015-02-20 00:00:00',578),
	(99,71,'2014-11-04 00:00:00',908),
	(100,41,'2014-10-29 00:00:00',317),
	(101,73,'2013-10-04 00:00:00',828);

/*!40000 ALTER TABLE `search_click` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table search_flat
# ------------------------------------------------------------

LOCK TABLES `search_flat` WRITE;
/*!40000 ALTER TABLE `search_flat` DISABLE KEYS */;

INSERT INTO `search_flat` (`id`, `phrase`, `num_searches`, `num_clicks`, `revenue`, `num_orders`, `date_added`)
VALUES
	(1,'blue',15,0,644220.00,26,'2014-05-18'),
	(2,'green shoes',14,0,1198358.00,77,'2014-05-18'),
	(3,'indigo shoes',13,0,521270.00,59,'2014-05-18'),
	(4,'orange shoes',12,12,521270.00,59,'2014-05-18'),
	(5,'red shoes',19,22,1037303.00,51,'2014-05-18'),
	(6,'violet shoes',10,11,965104.00,44,'2014-05-18'),
	(7,'yellow shoes',17,17,1325319.00,77,'2014-05-18');

/*!40000 ALTER TABLE `search_flat` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
