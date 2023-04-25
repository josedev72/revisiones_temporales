#
# Estructure de tabla "apostador"
#

DROP TABLE IF EXISTS `apostador`;
CREATE TABLE `apostador` (
  `Id` smallint(5) DEFAULT NULL,
  `Apostador` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Datos de tabla "apostador"
#

INSERT INTO `apostador` VALUES (1,'Silvina'),(2,'Jose'),(3,'Gonzalo'),(4,'Juan');

#
# Estructure de tabla "equipos"
#

DROP TABLE IF EXISTS `equipos`;
CREATE TABLE `equipos` (
  `Descripcion` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Datos de tabla "equipos"
#

INSERT INTO `equipos` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32);

#
# Estructure de tabla "pronostico"
#

DROP TABLE IF EXISTS `pronostico`;
CREATE TABLE `pronostico` (
  `Id` smallint(5) DEFAULT NULL,
  `Apostador_Id` smallint(5) DEFAULT NULL,
  `Ronda` smallint(5) DEFAULT NULL,
  `Equipo1_Id` smallint(5) DEFAULT NULL,
  `ganaEquipo1` varchar(255) DEFAULT NULL,
  `empate` varchar(255) DEFAULT NULL,
  `ganaEquipo2` varchar(255) DEFAULT NULL,
  `Equipo2_Id` smallint(5) DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Datos de tabla "pronostico"
#

INSERT INTO `pronostico` VALUES (26,3,5,1,'X',NULL,NULL,22),(18,2,3,2,'X',NULL,NULL,24),(14,2,3,3,NULL,'X',NULL,2),(16,2,3,3,NULL,NULL,'X',24),(23,2,4,4,NULL,'X',NULL,13),(31,3,6,5,'X',NULL,NULL,8),(33,3,6,5,'X',NULL,NULL,23),(38,4,7,6,'X',NULL,NULL,29),(40,4,7,6,'X',NULL,NULL,30),(39,4,7,7,'X',NULL,NULL,29),(42,4,7,7,'X',NULL,NULL,6),(36,3,6,8,'X',NULL,NULL,23),(1,1,1,9,NULL,'X',NULL,14),(3,1,1,9,NULL,'X',NULL,28),(45,4,8,10,'X',NULL,NULL,19),(48,4,8,10,'X',NULL,NULL,27),(30,3,5,11,'X',NULL,NULL,1),(34,3,6,12,'X',NULL,NULL,8),(35,3,6,12,'X',NULL,NULL,5),(20,2,4,13,NULL,'X',NULL,31),(5,1,1,14,NULL,'X',NULL,28),(25,3,5,15,'X',NULL,NULL,11),(28,3,5,15,'X',NULL,NULL,1),(8,1,2,16,NULL,'X',NULL,18),(19,2,4,17,'X',NULL,NULL,4),(22,2,4,17,NULL,NULL,'X',13),(9,1,2,18,NULL,'X',NULL,21),(11,1,2,18,NULL,'X',NULL,20),(47,4,8,19,'X',NULL,NULL,32),(7,1,2,20,NULL,'X',NULL,21),(10,1,2,20,NULL,'X',NULL,16),(12,1,2,21,NULL,'X',NULL,16),(27,3,5,22,'X',NULL,NULL,11),(29,3,5,22,'X',NULL,NULL,15),(32,3,6,23,'X',NULL,NULL,12),(13,2,3,24,'X',NULL,NULL,26),(4,1,1,25,NULL,'X',NULL,14),(6,1,1,25,NULL,'X',NULL,9),(15,2,3,26,NULL,NULL,'X',2),(17,2,3,26,NULL,'X',NULL,3),(44,4,8,27,'X',NULL,NULL,19),(46,4,8,27,'X',NULL,NULL,32),(2,1,1,28,NULL,'X',NULL,25),(41,4,7,29,'X',NULL,NULL,30),(37,4,7,30,'X',NULL,NULL,7),(21,2,4,31,NULL,NULL,'X',4),(24,2,4,31,'X',NULL,NULL,17),(43,4,8,32,'X',NULL,NULL,10);

#
# Estructure de tabla "resultados"
#

DROP TABLE IF EXISTS `resultados`;
CREATE TABLE `resultados` (
  `Id` smallint(5) DEFAULT NULL,
  `Ronda` smallint(5) DEFAULT NULL,
  `Equipo1_Id` smallint(5) DEFAULT NULL,
  `golesEquipo1` smallint(5) DEFAULT NULL,
  `golesEquipo2` smallint(5) DEFAULT NULL,
  `Equipo2_Id` smallint(5) DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Datos de tabla "resultados"
#

INSERT INTO `resultados` VALUES (30,5,11,2,4,1),(28,5,15,1,1,1),(14,3,3,1,2,2),(15,3,26,2,0,2),(17,3,26,0,2,3),(19,4,17,4,1,4),(21,4,31,0,1,4),(35,6,12,0,0,5),(42,7,7,1,0,6),(37,7,30,1,0,7),(31,6,5,1,0,8),(34,6,12,4,1,8),(6,1,25,2,0,9),(43,8,32,0,0,10),(25,5,15,7,0,11),(27,5,22,0,1,11),(32,6,23,0,0,12),(23,4,4,1,0,13),(22,4,17,2,1,13),(1,1,9,0,2,14),(4,1,25,1,1,14),(29,5,22,2,1,15),(10,2,20,0,0,16),(12,2,21,0,1,16),(24,4,31,1,0,17),(8,2,16,1,1,18),(45,8,10,2,3,19),(44,8,27,3,2,19),(11,2,18,0,3,20),(9,2,18,0,2,21),(7,2,20,6,2,21),(26,5,1,1,2,22),(33,6,5,0,2,23),(36,6,8,1,2,23),(18,3,2,1,2,24),(16,3,3,2,0,24),(2,1,28,0,2,25),(13,3,24,0,0,26),(48,8,10,2,1,27),(3,1,9,1,3,28),(5,1,14,1,2,28),(38,7,6,2,0,29),(39,7,7,3,3,29),(40,7,6,1,0,30),(41,7,29,2,3,30),(20,4,13,0,0,31),(47,8,19,0,2,32),(46,8,27,2,0,32);

#
# Estructure de tabla "ronda"
#

DROP TABLE IF EXISTS `ronda`;
CREATE TABLE `ronda` (
  `Id` smallint(5) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Datos de tabla "ronda"
#

INSERT INTO `ronda` VALUES (1,'Ronda 1'),(2,'Ronda 2'),(3,'Ronda 3'),(4,'Ronda 4'),(5,'Ronda 5'),(6,'Ronda 6'),(7,'Ronda 7'),(8,'Ronda 8');
