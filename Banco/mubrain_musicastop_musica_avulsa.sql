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
-- Table structure for table `musica_avulsa`
--

DROP TABLE IF EXISTS `musica_avulsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musica_avulsa` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `populariedade` decimal(10,2) DEFAULT NULL,
  `codusuario` int(11) NOT NULL,
  `Letras` longtext,
  `opiniao` longtext,
  `cantor_banda` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_musica_usuarios0` (`codusuario`),
  CONSTRAINT `fk_musica_usuarios0` FOREIGN KEY (`codusuario`) REFERENCES `usuario` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica_avulsa`
--

LOCK TABLES `musica_avulsa` WRITE;
/*!40000 ALTER TABLE `musica_avulsa` DISABLE KEYS */;
INSERT INTO `musica_avulsa` VALUES (1,'Bad Reputation',10.00,4,'I don\'t give a damn \'bout my reputation\r\nLiving in the past, it\'s a new generation\r\nA girl can do what she wants to do and that\'s what I\'m gonna do\r\nAn\' I don\'t give a damn \'bout my bad reputation\r\nOh no, not me\r\nAn\' I don\'t give a damn \'bout my reputation\r\nNever said I wanted to improve my station\r\nAn\' I\'m only doin\' good when I\'m havin\' fun\r\nAn\' I don\'t have to please no one\r\nAn\' I don\'t give a damn \'bout my bad reputation\r\nOh no, no, no, no not me, oh no, no, no, no not me\r\nI don\'t give a damn \'bout my reputation\r\nI\'ve never been afraid of any deviation\r\nAn\' I don\'t really care if you think I\'m strange\r\nI ain\'t gonna change\r\nAn\' I\'m never gonna care \'bout my bad reputation\r\nOh no, not me, oh no, not me\r\nPedal, boys!\r\nAn\' I don\'t give a damn \'bout my reputation\r\nThe world\'s in trouble, there\'s no communication\r\nAn\' everyone can say what they wanna say\r\nIt never gets better, anyway\r\nSo why should I care about a bad reputation, anyway?\r\nOh no, not me, oh no, not me\r\nI don\'t give a damn \'bout my bad reputation\r\nYou\'re living in the past, it\'s a new generation\r\nAn\' I only feel good when I got no pain\r\nAn\' that\'s how I\'m gonna stay\r\nAn\' I don\'t give a damn \'bout my bad reputation\r\nOh no, not me, oh no, not me\r\nNot me, not me','\"Bad Reputation\" é uma música que ressoa com a essência da minha persona, Natasha Romanoff, também conhecida como Viúva Negra. Com uma melodia intensa e uma atitude rebelde, a música captura perfeitamente o meu estilo de vida como uma espiã implacável e lutadora habilidosa. A letra desafiadora reflete a minha determinação em superar adversidades e enfrentar qualquer desafio de frente. Assim como a música sugere, tenho consciência de que minha reputação nem sempre é perfeita, mas estou disposta a fazer o que for necessário para proteger aqueles que amo e alcançar a justiça. \"Bad Reputation\" é um lembrete constante de que não devo me deixar intimidar pelos estereótipos ou pela opinião dos outros, e sim seguir meu próprio caminho, com coragem e destemor. É uma trilha sonora que reflete a minha força interior e a resiliência necessária para sobreviver em um mundo de intriga e perigo.','Joan Jett'),(2,'Hero',10.00,7,'Eu estou tão alto, eu posso ouvir o Céu\r\nEu estou tão alto, eu posso ouvir o Céu\r\nMas o Céu, o Céu não me escuta\r\n\r\nE dizem que um herói pode nos salvar\r\nEu não vou ficar aqui parado e esperar\r\nEu vou me agarrar nas asas das águias\r\nObservar elas voando para longe\r\n\r\nDisseram-me que o amor vai salvar a todos nós\r\nMas como isso é possível? Olhe o que o amor nos deu\r\nUm mundo cheio de assassinatos e sangue jorrando\r\nAquele mundo nunca chegou\r\n\r\nE dizem que um herói pode nos salvar\r\nEu não vou ficar aqui parado e esperar\r\nEu vou me agarrar nas asas das águias\r\nObservar elas voando para longe\r\n\r\nAgora que o mundo não está acabando\r\nÉ amor que estou mandando para você\r\nNão é o amor de um herói\r\nE é por isso que receio que não vai dar certo\r\n\r\nE dizem que um herói pode nos salvar\r\nEu não vou ficar aqui parado e esperar\r\nEu vou me agarrar nas asas das águias\r\nObservar elas voando para longe\r\n\r\nE elas estão nos observando\r\nElas estão nos observando\r\nEnquanto voam para longe\r\n\r\nE elas estão nos observando\r\nElas estão nos observando\r\nEnquanto voam para longe\r\n\r\nE elas estão nos observando\r\nElas estão nos observando\r\nEnquanto voam para longe','\"Hero\" é uma música que ressoa profundamente com a essência do meu alter ego, Bruce Wayne, também conhecido como Batman. Sua melodia intensa e letras que exaltam a coragem e a determinação são um lembrete constante do meu compromisso em lutar contra as trevas e proteger Gotham City. Assim como a música sugere, carrego o peso da responsabilidade sobre meus ombros, enquanto me movo nas sombras para combater o crime e trazer justiça à cidade que amo. \"Hero\" captura a solidão e a luta interior que fazem parte da minha jornada como o Cavaleiro das Trevas. É uma trilha sonora que ecoa a minha determinação inabalável, minha dedicação em enfrentar o mal e minha vontade de fazer o que for preciso para manter a segurança daqueles que precisam de proteção. \"Hero\" é uma lembrança constante do meu papel como o protetor silencioso de Gotham City, mantendo-me focado em meu objetivo de ser a esperança que a cidade precisa.','Chad Kroeger and Josey Scott');
/*!40000 ALTER TABLE `musica_avulsa` ENABLE KEYS */;
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
