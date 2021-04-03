CREATE DATABASE  IF NOT EXISTS `test_db` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `test_db`;

DROP TABLE IF EXISTS `test_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_load` (
  `id` int(13) NOT NULL,
  `col1` varchar(45) COLLATE utf8_bin NOT NULL,
  `col2` varchar(45) COLLATE utf8_bin NOT NULL,
  `col3` varchar(45) COLLATE utf8_bin NOT NULL,
  `col4` varchar(45) COLLATE utf8_bin NOT NULL,
  `col5` varchar(45) COLLATE utf8_bin NOT NULL,
  `col6` varchar(45) COLLATE utf8_bin NOT NULL,
  `col7` varchar(45) COLLATE utf8_bin NOT NULL,
  `col8` varchar(45) COLLATE utf8_bin NOT NULL,
  `col9` varchar(45) COLLATE utf8_bin NOT NULL,
  `col10` varchar(45) COLLATE utf8_bin NOT NULL,
  `col11` varchar(45) COLLATE utf8_bin NOT NULL,
  `col12` varchar(45) COLLATE utf8_bin NOT NULL,
  `col13` varchar(45) COLLATE utf8_bin NOT NULL,
  `col14` varchar(45) COLLATE utf8_bin NOT NULL,
  `col15` varchar(45) COLLATE utf8_bin NOT NULL,
  `col16` varchar(45) COLLATE utf8_bin NOT NULL,
  `col17` varchar(45) COLLATE utf8_bin NOT NULL,
  `col18` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `test_load2` (
  `id` int(13) NOT NULL,
  `col1` varchar(45) COLLATE utf8_bin NOT NULL,
  `col2` varchar(45) COLLATE utf8_bin NOT NULL,
  `col3` varchar(45) COLLATE utf8_bin NOT NULL,
  `col4` varchar(45) COLLATE utf8_bin NOT NULL,
  `col5` varchar(45) COLLATE utf8_bin NOT NULL,
  `col6` varchar(45) COLLATE utf8_bin NOT NULL,
  `col7` varchar(45) COLLATE utf8_bin NOT NULL,
  `col8` varchar(45) COLLATE utf8_bin NOT NULL,
  `col9` varchar(45) COLLATE utf8_bin NOT NULL,
  `col10` varchar(45) COLLATE utf8_bin NOT NULL,
  `col11` varchar(45) COLLATE utf8_bin NOT NULL,
  `col12` varchar(45) COLLATE utf8_bin NOT NULL,
  `col13` varchar(45) COLLATE utf8_bin NOT NULL,
  `col14` varchar(45) COLLATE utf8_bin NOT NULL,
  `col15` varchar(45) COLLATE utf8_bin NOT NULL,
  `col16` varchar(45) COLLATE utf8_bin NOT NULL,
  `col17` varchar(45) COLLATE utf8_bin NOT NULL,
  `col18` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;