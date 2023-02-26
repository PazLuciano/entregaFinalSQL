CREATE DATABASE  IF NOT EXISTS `proyecto_coder` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_coder`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_coder
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_de_cliente` int NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `dni_cuit` int NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_cliente_idx` (`id_tipo_de_cliente`),
  CONSTRAINT `id_tipo_cliente` FOREIGN KEY (`id_tipo_de_cliente`) REFERENCES `tipo_de_cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1,'Paz Luciano',4342243,'Avenida Rolon 1234'),(2,2,'Empresa S.A',23566654,'Avenida Rolon 9852'),(3,2,'EmpresaDOS S.A',22002032,'Avenida Rolon 1111'),(4,1,'Sergio Gimenez',2054352,'Avenida Peron 1237'),(5,1,'Candela Martinez',35745221,'Simon de iriondo 6531'),(6,1,'Manuela Gircia',40125773,'Lavalle 1114'),(7,2,'Estudio Acuña SRL',301236452,'Pampa 5441');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cliente_con_mas_compras`
--

DROP TABLE IF EXISTS `cliente_con_mas_compras`;
/*!50001 DROP VIEW IF EXISTS `cliente_con_mas_compras`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cliente_con_mas_compras` AS SELECT 
 1 AS `compras_cliente`,
 1 AS `razon_social`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cliente_con_mas_compras2`
--

DROP TABLE IF EXISTS `cliente_con_mas_compras2`;
/*!50001 DROP VIEW IF EXISTS `cliente_con_mas_compras2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cliente_con_mas_compras2` AS SELECT 
 1 AS `compras_cliente`,
 1 AS `razon_social`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientes_sin_comprar`
--

DROP TABLE IF EXISTS `clientes_sin_comprar`;
/*!50001 DROP VIEW IF EXISTS `clientes_sin_comprar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_sin_comprar` AS SELECT 
 1 AS `compras_cliente`,
 1 AS `razon_social`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientes_sin_comprarnada`
--

DROP TABLE IF EXISTS `clientes_sin_comprarnada`;
/*!50001 DROP VIEW IF EXISTS `clientes_sin_comprarnada`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_sin_comprarnada` AS SELECT 
 1 AS `compras_cliente`,
 1 AS `razon_social`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `insert_producto`
--

DROP TABLE IF EXISTS `insert_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insert_producto` (
  `id_eliminacion` int NOT NULL AUTO_INCREMENT,
  `id_producto` int DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `tiempoEliminacion` timestamp NULL DEFAULT NULL,
  `usuario_eliminacion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_eliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insert_producto`
--

LOCK TABLES `insert_producto` WRITE;
/*!40000 ALTER TABLE `insert_producto` DISABLE KEYS */;
INSERT INTO `insert_producto` VALUES (1,0,'Pegamento Para ceramica','2023-01-17 17:06:26','root@localhost');
/*!40000 ALTER TABLE `insert_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modificaciones_producto`
--

DROP TABLE IF EXISTS `modificaciones_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modificaciones_producto` (
  `id_modificacion` int NOT NULL AUTO_INCREMENT,
  `id_producto` int DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio_viejo` int DEFAULT NULL,
  `precio_nuevo` int DEFAULT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_modificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modificaciones_producto`
--

LOCK TABLES `modificaciones_producto` WRITE;
/*!40000 ALTER TABLE `modificaciones_producto` DISABLE KEYS */;
INSERT INTO `modificaciones_producto` VALUES (1,1,'Cemento Loma Negra',2100,300,'2023-01-17 17:04:27'),(2,1,'Cemento Loma Negra',300,3000,'2023-01-17 17:04:36');
/*!40000 ALTER TABLE `modificaciones_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idpedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `importe` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `id_cliente_idx` (`id_cliente`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,68000,'2022-12-27'),(2,2,0,'2022-12-27'),(3,1,0,'2022-12-27'),(4,5,21440,'2023-01-25'),(5,7,68960,'2023-01-25');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_producto`
--

DROP TABLE IF EXISTS `pedido_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_producto` (
  `id_pedido` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_producto` int NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_producto`),
  KEY `id_producto_idx` (`id_producto`),
  CONSTRAINT `id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`idpedido`),
  CONSTRAINT `id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_producto`
--

LOCK TABLES `pedido_producto` WRITE;
/*!40000 ALTER TABLE `pedido_producto` DISABLE KEYS */;
INSERT INTO `pedido_producto` VALUES (1,1,5,2100),(1,2,5,1500),(1,5,200,250),(2,1,7,2100),(2,4,600,200),(4,1,3,3000),(4,3,5,1960),(4,6,2,1320),(5,1,5,3000),(5,5,200,250),(5,8,3,1320);
/*!40000 ALTER TABLE `pedido_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_total_tabla_pedidos_after` AFTER INSERT ON `pedido_producto` FOR EACH ROW BEGIN
	UPDATE pedido
		SET importe = (
			SELECT
				SUM(precio_producto * cantidad) AS total
			FROM pedido_producto
            WHERE id_pedido = new.id_pedido
        )
        WHERE idpedido = new.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_de_producto` int NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` int NOT NULL,
  `id_proveedor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_producto_idx` (`id_tipo_de_producto`),
  KEY `id_proveedor_idx` (`id_proveedor`),
  CONSTRAINT `id_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `id_tipo_producto` FOREIGN KEY (`id_tipo_de_producto`) REFERENCES `tipo_de_producto` (`idtipo_de_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,'Cemento Loma Negra',3000,2),(2,1,'Cal Cacique',1500,2),(3,1,'Plasticor',1960,2),(4,1,'Ladrillo Hueco 8x18x33',200,1),(5,1,'Ladrillo Hueco 12x18x33',250,1),(6,1,'Pegamento Para ceramica',1320,2),(7,1,'Pegamento comun',1620,2),(8,1,'Pegamento Para ceramica',1320,2);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_insert_producto_before` BEFORE INSERT ON `producto` FOR EACH ROW BEGIN
	INSERT INTO insert_producto(id_producto, descripcion, tiempoEliminacion, usuario_eliminacion)
    VALUES(
		new.id,
        NEW.descripcion,
        current_timestamp(),
        USER()
        );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_producto_after` AFTER UPDATE ON `producto` FOR EACH ROW BEGIN
	
	INSERT INTO modificaciones_producto(id_producto,descripcion,precio_viejo,precio_nuevo,fecha_modificacion)
    VALUES(
		NEW.id, NEW.descripcion , OLD.precio, new.precio, current_timestamp()
    );

    

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `producto_mas_caro`
--

DROP TABLE IF EXISTS `producto_mas_caro`;
/*!50001 DROP VIEW IF EXISTS `producto_mas_caro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `producto_mas_caro` AS SELECT 
 1 AS `descripcion`,
 1 AS `precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productos_mas_vendidos`
--

DROP TABLE IF EXISTS `productos_mas_vendidos`;
/*!50001 DROP VIEW IF EXISTS `productos_mas_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_mas_vendidos` AS SELECT 
 1 AS `id_producto`,
 1 AS `descripcion`,
 1 AS `cantidad_vendido_por_producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productos_sin_vender`
--

DROP TABLE IF EXISTS `productos_sin_vender`;
/*!50001 DROP VIEW IF EXISTS `productos_sin_vender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_sin_vender` AS SELECT 
 1 AS `id`,
 1 AS `descripcion`,
 1 AS `productos_vendidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productos_sin_vender2`
--

DROP TABLE IF EXISTS `productos_sin_vender2`;
/*!50001 DROP VIEW IF EXISTS `productos_sin_vender2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_sin_vender2` AS SELECT 
 1 AS `id`,
 1 AS `descripcion`,
 1 AS `productos_vendidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_de_proveedor` int NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `CUIT` int NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_proveedor_idx` (`id_tipo_de_proveedor`),
  CONSTRAINT `id_tipo_proveedor` FOREIGN KEY (`id_tipo_de_proveedor`) REFERENCES `tipo_de_proveedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,3,'Latercer S.A',23123123,'Av Mayo 1235'),(2,2,'Loma Negra',23125433,'Av Libertador 1746');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_cliente`
--

DROP TABLE IF EXISTS `tipo_de_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_cliente`
--

LOCK TABLES `tipo_de_cliente` WRITE;
/*!40000 ALTER TABLE `tipo_de_cliente` DISABLE KEYS */;
INSERT INTO `tipo_de_cliente` VALUES (1,'Consumidor Final'),(2,'Responsable Inscripto'),(3,'Responsable Monotributista');
/*!40000 ALTER TABLE `tipo_de_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_producto`
--

DROP TABLE IF EXISTS `tipo_de_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_producto` (
  `idtipo_de_producto` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_de_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_producto`
--

LOCK TABLES `tipo_de_producto` WRITE;
/*!40000 ALTER TABLE `tipo_de_producto` DISABLE KEYS */;
INSERT INTO `tipo_de_producto` VALUES (1,'Material para la consutrccion'),(2,'Ferreteria'),(3,'Sanitarios');
/*!40000 ALTER TABLE `tipo_de_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_proveedor`
--

DROP TABLE IF EXISTS `tipo_de_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_proveedor`
--

LOCK TABLES `tipo_de_proveedor` WRITE;
/*!40000 ALTER TABLE `tipo_de_proveedor` DISABLE KEYS */;
INSERT INTO `tipo_de_proveedor` VALUES (1,'Proveedor de arena'),(2,'Proveedor de bolsas'),(3,'Proveedor de ladrillos'),(4,'Proveedor de Sanitarios'),(5,'Proveedor de Ferreteria');
/*!40000 ALTER TABLE `tipo_de_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyecto_coder'
--
/*!50003 DROP FUNCTION IF EXISTS `importe_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `importe_producto`(id_producto INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE importe INT;
    SELECT 
    precio INTO importe
    FROM producto WHERE id = id_producto;
    RETURN importe;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `importe_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `importe_total`(id_pedido_param INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE importe_total INT;
	SELECT 
		SUM(precio_producto * cantidad) as Total INTO importe_total
	FROM pedido_producto AS pp
	WHERE id_pedido = id_pedido_param;
    RETURN importe_total;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProductoDeUnPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProductoDeUnPedido`(IN pedido INT, IN producto INT)
BEGIN
	DELETE FROM pedido_producto WHERE id_pedido = pedido AND id_producto = producto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cliente_con_mas_compras`
--

/*!50001 DROP VIEW IF EXISTS `cliente_con_mas_compras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_con_mas_compras` AS select count(`p`.`id_cliente`) AS `compras_cliente`,`c`.`razon_social` AS `razon_social` from (`pedido` `p` join `cliente` `c` on((`p`.`id_cliente` = `c`.`id`))) group by `c`.`razon_social` order by `compras_cliente` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cliente_con_mas_compras2`
--

/*!50001 DROP VIEW IF EXISTS `cliente_con_mas_compras2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_con_mas_compras2` AS select count(`p`.`id_cliente`) AS `compras_cliente`,`c`.`razon_social` AS `razon_social` from (`pedido` `p` join `cliente` `c` on((`p`.`id_cliente` = `c`.`id`))) group by `c`.`razon_social` order by `compras_cliente` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_sin_comprar`
--

/*!50001 DROP VIEW IF EXISTS `clientes_sin_comprar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_sin_comprar` AS select count(`p`.`id_cliente`) AS `compras_cliente`,`c`.`razon_social` AS `razon_social` from (`cliente` `c` left join `pedido` `p` on((`c`.`id` = `p`.`id_cliente`))) group by `c`.`razon_social` having (`compras_cliente` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_sin_comprarnada`
--

/*!50001 DROP VIEW IF EXISTS `clientes_sin_comprarnada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_sin_comprarnada` AS select count(`p`.`id_cliente`) AS `compras_cliente`,`c`.`razon_social` AS `razon_social` from (`cliente` `c` left join `pedido` `p` on((`c`.`id` = `p`.`id_cliente`))) group by `c`.`razon_social` having (`compras_cliente` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `producto_mas_caro`
--

/*!50001 DROP VIEW IF EXISTS `producto_mas_caro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `producto_mas_caro` AS select `producto`.`descripcion` AS `descripcion`,`producto`.`precio` AS `precio` from `producto` where (`producto`.`precio` = (select `producto`.`precio` from `producto` order by `producto`.`precio` desc limit 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_mas_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `productos_mas_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_mas_vendidos` AS select `pp`.`id_producto` AS `id_producto`,`p`.`descripcion` AS `descripcion`,sum(`pp`.`cantidad`) AS `cantidad_vendido_por_producto` from (`pedido_producto` `pp` join `producto` `p` on((`pp`.`id_producto` = `p`.`id`))) group by `p`.`descripcion` order by `cantidad_vendido_por_producto` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_sin_vender`
--

/*!50001 DROP VIEW IF EXISTS `productos_sin_vender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_sin_vender` AS select `p`.`id` AS `id`,`p`.`descripcion` AS `descripcion`,count(`pp`.`cantidad`) AS `productos_vendidos` from (`producto` `p` left join `pedido_producto` `pp` on((`p`.`id` = `pp`.`id_producto`))) group by `p`.`descripcion` having (`productos_vendidos` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_sin_vender2`
--

/*!50001 DROP VIEW IF EXISTS `productos_sin_vender2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_sin_vender2` AS select `p`.`id` AS `id`,`p`.`descripcion` AS `descripcion`,count(`pp`.`cantidad`) AS `productos_vendidos` from (`producto` `p` left join `pedido_producto` `pp` on((`p`.`id` = `pp`.`id_producto`))) group by `p`.`descripcion` having (`productos_vendidos` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 14:53:59
