
/**
 * Author:  gcasado0
 * Created: 23 dic. 2022
 */

CREATE DATABASE tpfinal DEFAULT CHARACTER SET utf8;
USE tpfinal;

CREATE TABLE `orador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `resumen` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `inicio` date NOT NULL,  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;