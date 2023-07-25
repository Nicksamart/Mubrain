CREATE DATABASE  IF NOT EXISTS `mubrain_musicastop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mubrain_musicastop`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mubrain_musicastop
-- ------------------------------------------------------
-- Server version	5.7.40-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musica` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `codigo_album` int(11) NOT NULL,
  `populariedade` decimal(10,2) DEFAULT NULL,
  `codusuario` int(11) NOT NULL,
  `Letras` longtext,
  PRIMARY KEY (`codigo`),
  KEY `fk_musica_usuarios` (`codusuario`),
  KEY `fk_musica_album1` (`codigo_album`),
  CONSTRAINT `fk_musica_album1` FOREIGN KEY (`codigo_album`) REFERENCES `album` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_musica_usuarios` FOREIGN KEY (`codusuario`) REFERENCES `usuario` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
INSERT INTO `musica` VALUES (1,'Lonely Boy',1,10.00,1,'Well, I\'m so above you\r\nAnd it\'s plain to see\r\nBut I came to love you anyway\r\nSo you pulled my heart out\r\nAnd I don\'t mind bleedin\'\r\nAny old time, you keep me waitin\'\r\nWaitin\', waitin\'\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nI\'m a lonely boy\r\nI\'m a lonely boy\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nWell, your mama kept you\r\nBut your daddy left you\r\nAnd I should\'ve done you just the same\r\nBut I came to love you\r\nAm I born to bleed?\r\nAny old time, you keep me waitin\'\r\nWaitin\', waitin\'\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nI\'m a lonely boy\r\nI\'m a lonely boy\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nHey\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\'\r\nI\'m a lonely boy\r\nI\'m a lonely boy\r\nOh, whoa, oh\r\nI got a love that keeps me waitin\''),(2,'Brianstorm',2,9.00,1,'Brian\r\nTop marks for not trying\r\nSo kind of you to bless us\r\nWith your effortlessness\r\nWe\'re grateful and so strangely comforted\r\nAnd I wonder\r\nAre you putting us under\r\n\'Cause we can\'t take our eyes\r\nOff the t-shirt and ties combination?\r\nWell, see you later, innovator\r\nSome want to kiss, some want to kick you\r\nThere\'s not a net you couldn\'t slip through\r\nOr at least that\'s the impression I get\r\n\'Cause you\'re smooth, and you\'re wet\r\nAnd she\'s not aware yet\r\nBut she\'s yours\r\nShe\'ll be saying, \"use me\r\nShow me the jacuzzi\"\r\nI imagine that it\'s there on a plate\r\nYour whole rendezvous rate\r\nMeans that you\'ll never be frightened\r\nTo make them wait for a while\r\nI doubt it\'s your style\r\nNot to get what you set\r\nOut to acquire, the eyes are on fire\r\nYou are the unforecasted storm\r\ncalm, collected and commanding\r\n(Top marks for not trying)\r\nYou leave the other stories standing\r\nWith your renditions and jokes\r\nBet there\'s hundreds of blokes\r\nThat have wept \'cause you\'ve stolen their\r\nThunder\r\nAre you putting us under\r\n\'Cause we can\'t take our eyes\r\nOff the t-shirt and ties combination?\r\nWell, see you later, innovator'),(4,'Seven Nation Army',4,10.00,3,'I\'m gonna fight \'em all\r\nA seven nation army couldn\'t hold me back\r\nThey\'re gonna rip it off\r\nTaking their time right behind my back\r\nAnd I\'m talking to myself at night\r\nBecause I can\'t forget\r\nBack and forth through my mind\r\nBehind a cigarette\r\nAnd the message coming from my eyes\r\nSays, \"Leave it alone\"\r\nDon\'t wanna hear about it\r\nEvery single one\'s got a story to tell\r\nEveryone knows about it\r\nFrom the Queen of England to the Hounds of Hell\r\nAnd if I catch it coming back my way\r\nI\'m gonna serve it to you\r\nAnd that ain\'t what you want to hear\r\nBut that\'s what I\'ll do\r\nAnd the feeling coming from my bones\r\nSays, \"Find a home\"\r\nI\'m going to Wichita\r\nFar from this opera forevermore\r\nI\'m gonna work the straw\r\nMake the sweat drip out of every pore\r\nAnd I\'m bleeding, and I\'m bleeding, and I\'m bleeding\r\nRight before the Lord\r\nAll the words are gonna bleed from me\r\nAnd I will sing no more\r\nAnd the stains coming from my blood\r\nTell me, \"Go back home\"');
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 13:23:33
