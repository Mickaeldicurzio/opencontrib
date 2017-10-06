-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: opencontrib
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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

--
-- Table structure for table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  KEY `IDX_957A6479166D1F9C` (`project_id`),
  CONSTRAINT `FK_957A6479166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user`
--

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;
INSERT INTO `fos_user` VALUES (1,NULL,'oooo','oooo','o@o.com','o@o.com',1,'km24949y3o084cg0wo08c4ock4w8sgs','$2y$13$km24949y3o084cg0wo08cu67850XfH/n5zVIwwnGnPwpSZt.kNE9q',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'','','','',''),(2,NULL,'test','test','test@mail.com','test@mail.com',1,'q0unypimtn48gsgs04k0wgcwskwk444','$2y$13$q0unypimtn48gsgs04k0weH73BYsdfTRfDpLO2.QakMAZAPd6CHle','2017-10-06 09:40:15',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5C93B3A46C6E55B5` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'SAUVEZ OPERA MUSICA!','MESSAGE DU TENOR ROBERTO ALAGNA POUR SAUVER OPERA MUSICA :\r\n\r\n« Chers amis artistes, professionnels et fans de musique classique et d’opéra du monde entier, je sollicite quelques secondes votre attention ! \r\n\r\n\r\nLe site OPERA MUSICA est une plateforme libre d’utilisation, entièrement consacrée au monde de l’opéra et de la musique classique, créée par le baryton Mathieu Abelli. Il permet à tous les artistes (chanteurs d’opéra, instrumentistes, chefs d’orchestres, metteurs en scène), aux agences artistiques, aux théâtres, lieux de spectacles et maisons d’opéra, ainsi qu’à toutes les personnes liées par l’amour de l’opéra et de la musique classique de se retrouver, d’échanger et de partager. Il facilite la promotion et la découverte des talents, les rencontres et beaucoup d’autres choses.\r\n\r\n\r\nCette campagne d’appel aux dons doit permettre à cette belle initiative de perdurer, afin que le magnifique travail engagé se prolonge et puisse continuer à servir les milliers de professionnels et de passionnés qui y trouvent, et y trouveront demain plus encore, une véritable réponse à leurs besoins.\r\n\r\n\r\nJe sais bien que chacun d’entre nous a ses propres difficultés personnelles, professionnelles et financières. Mais quelle que soit notre situation, que nous soyons professionnels ou simples passionnés, il pourrait arriver que nous ayons un jour besoin de ce type de solidarité. Alors si vous le pouvez, participez à l’aventure ! Faites un don pour que la construction de ce merveilleux projet au service de la musique et des musiciens ne s’effondre pas en plein essor !\r\n\r\n\r\nJ’invite chacun d’entre vous à visiter ce site pour y écouter et découvrir des milliers d’artistes, suivre leur actualité quotidienne, rechercher des informations sur les spectacles en cours et à venir, et vous rendre compte de l’ampleur de la tâche déjà accomplie.\r\n\r\n\r\nVous pouvez aussi énormément les aider en PARTAGEANT et en publiant à leur propos. Toute aide sera la bienvenue ! J’invite également mes collègues et amis, et toutes les personnalités de la profession, à prendre le relai et à soutenir à leur tour OPERA MUSICA !\r\n\r\nMerci à vous, pour eux, et pour nous !\r\n\r\nRoberto Alagna\r\n\r\n \r\n\r\nL’adresse du site ici : https://www.operamusica.com/\r\nLa page Facebook Opera Musica ici : https://www.facebook.com/operamusica/\r\nTwitter: https://twitter.com/operamusica\r\n\r\nPremier appel à l\'aide de Mathieu Abelli, Fondateur du site OPERA MUSICA :\r\n\r\nhttps://youtu.be/PXSPfGPazaE','0','59d6395f4c373.jpg',0),(2,'Draconis','C\'est le moment de se présenter !\r\n\r\nllustratrice et graphiste, j\'ai travaillé l\'an passé pour Agate RPG sur le projet Dragons, l\'adaptation de la 5ème édition de Donjons et Dragons. En 2017 j\'ai rejoint l\'équipe des Ombres d\'Esteren pour laquelle je suis en train de réaliser un jeu de tarot. J\'ai deux campagnes Ulule à mon actif, Angkor (2014) et Eluveitie (2016), qui m\'ont permis de prendre pas mal d\'expérience ! :)\r\nSi vous ne connaissez pas mon travail, n\'hésitez pas à visiter ma page facebook !\r\n\r\n\r\nJe ne serai pas toute seule dans cette aventure puisque Nimu rejoint le navire et travaillera sur l\'écriture ! :\r\n\r\nNIMU\r\n\r\nPetite fée délurée, vivant dans son monde merveilleux, Nimu évolue entre écriture et créations basées sur le fantastique et l\'imaginaire. Bercée depuis sa plus tendre enfance par les contes et les légendes, elle a grandi entourée d\'êtres chimériques, jouant avec les lutins de la forêt et volant sur le dos de créatures magiques. Tiraillée entre son univers mystérieux et la vie réelle, elle se fait fort de partager son brin de folie dans ce monde qui se prend trop souvent au sérieux.','4','59d638c423ead.jpg',0),(3,'le Planner','Comment ça marche ?\r\n\r\n\r\nC\'est très simple !\r\n\r\nUne page du carnet représente un jour. Chaque jour est composé de quatre parties. Commencez chaque matin par ajouter la date du jour et faites de cette journée une réussite !\r\n\r\n\r\nPARTIE I. VOS OBJECTIFS DU JOUR\r\n\r\nCette première partie est inspirée de la méthode d\'Ivy Lee, un des fondateurs américains des relations publiques modernes, elle est basée sur la gestion du temps.\r\n\r\nCette méthode est simple et permet d’atteindre le pic de productivité. Commencez par identifier les cinq objectifs les plus importants de votre journée et hiérarchisez les par ordre d’importance.\r\n\r\nConcentrez vous sur le premier objectif avant de passer au suivant et ainsi de suite.\r\n\r\nVoici 4 raisons pour lesquelles cette méthode fonctionne :\r\n\r\n1 Vous êtes obligé de prendre des décisions\r\n\r\n2 Aucune friction pour s’y mettre, chaque jour est un jour nouveau\r\n\r\n3 Vous évitez le multi-tasking\r\n\r\n4 C’est assez simple pour fonctionner\r\n\r\n\r\nPARTIE II. UNE ZONE DE CRÉATIVITÉ\r\n\r\nCette partie vous permet de garder une trace de vos idées, inspirations, objectifs à venir. Laissez votre créativité s’exprimer et gardez une trace de ce qui vous passe par la tête.\r\n\r\n\r\nPARTIE III. ENCOURAGEZ VOS BONNES HABITUDES\r\n\r\nVos bonnes habitudes sont les variables de l’équation qui mènent à vous. Encouragez les chaque jour pour atteindre un équilibre physique et mental et devenir la meilleure version de vous-même.\r\n\r\n\r\nFait ? Cochez ou coloriez le pictogramme correspondant ! C\'est aussi simple que ça. \r\n\r\nVous avez passé une bonne journée et vous avez atteint vos objectifs ? Soyez fier de vous, c’est l’occasion de vous féliciter, un peu de gratitude envers vous-même ne fait pas mal !\r\n\r\nDonnez une note à votre journée et ajoutez un commentaire ou une pensée positive sur ce qu’il s’est passé.\r\n\r\nEt parfois… il arrive que nos journées ne soient pas parfaites, c’est l’occasion de comprendre ce qui n’a pas fonctionné et effectuer des changements, pour devenir une meilleure version de vous-même, jour après jour','3','59d6327caac3d.jpg',0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_user`
--

DROP TABLE IF EXISTS `projects_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_user` (
  `projects_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`projects_id`,`user_id`),
  KEY `IDX_B38D6A811EDE0F55` (`projects_id`),
  KEY `IDX_B38D6A81A76ED395` (`user_id`),
  CONSTRAINT `FK_B38D6A811EDE0F55` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B38D6A81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_user`
--

LOCK TABLES `projects_user` WRITE;
/*!40000 ALTER TABLE `projects_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-06 12:41:26
