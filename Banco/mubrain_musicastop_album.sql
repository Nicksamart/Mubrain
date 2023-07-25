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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `lancamento` date DEFAULT NULL,
  `gravadora` varchar(95) DEFAULT NULL,
  `genero` varchar(95) DEFAULT NULL,
  `populariedade` decimal(10,2) DEFAULT NULL,
  `opiniao` longtext,
  `codart` int(11) NOT NULL,
  `codusuario` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_album_artista1` (`codart`),
  CONSTRAINT `fk_album_artista1` FOREIGN KEY (`codart`) REFERENCES `artista` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'El Camino','2001-12-06','Nonesuch Records','Indie rock, punk blues, rock alternativo',9.00,'Como Matt Murdock, meu paladar musical está sintonizado com o tom profundo e enérgico da banda The Black Keys. Suas guitarras pulsantes e batidas fortes ecoam em meus ouvidos como o ritmo acelerado de uma luta iminente. Cada acorde é um golpe certeiro que desperta meus sentidos e me envolve em uma aura de determinação. As letras cativantes, muitas vezes permeadas de melancolia, ecoam minha própria batalha interior enquanto caminho pelas ruas escuras de Hell\'s Kitchen. O som do The Black Keys é como o grito de justiça que ecoa em meu coração, incentivando-me a persistir mesmo nas situações mais sombrias. A harmonia entre Dan Auerbach e Patrick Carney cria uma sinergia implacável que espelha minha própria dualidade como advogado e vigilante. The Black Keys é a trilha sonora que me acompanha em minha jornada solitária, impulsionando-me a lutar por justiça com cada batida intensa.',4,1),(2,'Favourite Worst Nightmare','2007-03-23','Domino','Indie rock',10.00,'Como Matt Murdock, mergulho nas profundezas da música em busca de ressonância emocional e uma conexão visceral. O álbum \"Favourite Worst Nightmare\" do Arctic Monkeys oferece exatamente isso. Cada faixa é como um golpe preciso, um fluxo de energia frenética que envolve meus sentidos. As letras sombrias e introspectivas ecoam minha própria batalha interior, enquanto a guitarra furiosa e os ritmos pulsantes refletem a turbulência do mundo ao meu redor. É como se cada acorde fosse um raio de luz em meio à escuridão, revelando as camadas complexas da minha existência dual como advogado e vigilante. O Arctic Monkeys captura a essência das ruas de Hell\'s Kitchen, a angústia que permeia suas vielas escuras e o fogo ardente da minha busca por justiça. \"Favourite Worst Nightmare\" é o som de minha própria jornada, um eco dos meus passos decididos e uma trilha sonora que ecoa a intensidade da minha luta.',5,1),(3,'Rocky IV (Original Motion Picture Soundtrack)','1985-11-27','Unique Recording Studios','pop-rock',10.00,'A trilha sonora do filme \"Rocky IV\" é uma coleção de músicas poderosas e motivadoras que ressoam com meu espírito indomável e minha abordagem implacável para enfrentar desafios. Cada faixa é como uma injeção de adrenalina, impulsionando minha determinação e me preparando para enfrentar qualquer obstáculo. Desde a emblemática \"Eye of the Tiger\" até a intensidade de \"Burning Heart\", cada música representa a força interior que me impulsiona a alcançar a vitória. O álbum captura a essência do combate, a emoção da batalha e a necessidade de superar limites pessoais. Ao ouvir essa trilha sonora, sinto o ritmo pulsante do meu próprio coração de guerreiro e me torno imbuído de uma determinação feroz. A trilha sonora de \"Rocky IV\" é um lembrete constante de que não importa quão difícil seja o desafio, estou pronto para enfrentá-lo de frente e emergir vitorioso.',6,2),(4,'Elephant','2003-04-01','Toe Rag Studios','Rock, alternative rock',8.00,'O álbum \"Elephant\" é uma obra-prima que ressoa com a essência misteriosa e poderosa que flui dentro de mim, Wanda Maximoff, também conhecida como Feiticeira Escarlate. Cada faixa é como um feitiço musical que envolve minha mente e coração, revelando as profundezas dos meus sentimentos e poderes. O som cru e intenso do álbum, junto com as letras enigmáticas, espelham minha jornada de autodescoberta e minha busca por controle sobre minhas habilidades. \"Seven Nation Army\" é como um chamado para a batalha, enquanto \"I Just Don\'t Know What to Do with Myself\" ressoa com a incerteza e a solidão que às vezes me consomem. O álbum Elephant é um reflexo sonoro da minha dualidade, das minhas emoções intensas e da minha capacidade de manipular a realidade. Ele ecoa a força interior que muitas vezes fica adormecida, pronta para ser desencadeada em um instante. \"Elephant\" é a trilha sonora perfeita para minha jornada tumultuada e minha busca por equilíbrio entre a escuridão e a luz.',7,3);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 13:23:32
