-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `aumentos_salariales`
--

DROP TABLE IF EXISTS `aumentos_salariales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aumentos_salariales` (
  `id_aumento` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha_aumento` date DEFAULT NULL,
  `porcentaje_aumento` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_aumento`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `aumentos_salariales_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aumentos_salariales`
--

LOCK TABLES `aumentos_salariales` WRITE;
/*!40000 ALTER TABLE `aumentos_salariales` DISABLE KEYS */;
INSERT INTO `aumentos_salariales` VALUES (1,1,'2023-05-15',11.00),(2,2,'2023-06-20',5.50),(3,3,'2023-07-20',1.50),(4,4,'2023-08-20',11.50),(5,5,'2023-05-20',9.50);
/*!40000 ALTER TABLE `aumentos_salariales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aumentos_superiores`
--

DROP TABLE IF EXISTS `aumentos_superiores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aumentos_superiores` (
  `id_aumento_superior` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha_aumento` date DEFAULT NULL,
  `porcentaje_aumento` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_aumento_superior`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `aumentos_superiores_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aumentos_superiores`
--

LOCK TABLES `aumentos_superiores` WRITE;
/*!40000 ALTER TABLE `aumentos_superiores` DISABLE KEYS */;
INSERT INTO `aumentos_superiores` VALUES (1,1,'2023-03-20',7.00),(2,2,'2023-04-25',4.50),(3,3,'2023-04-25',4.50),(4,4,'2023-04-25',4.50),(5,5,'2023-04-25',4.50);
/*!40000 ALTER TABLE `aumentos_superiores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonificaciones`
--

DROP TABLE IF EXISTS `bonificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonificaciones` (
  `id_bonificacion` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha_bonificacion` date DEFAULT NULL,
  `monto_bonificacion` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_bonificacion`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `bonificaciones_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonificaciones`
--

LOCK TABLES `bonificaciones` WRITE;
/*!40000 ALTER TABLE `bonificaciones` DISABLE KEYS */;
INSERT INTO `bonificaciones` VALUES (1,1,'2023-05-10',200.00),(2,2,'2023-07-05',350.00),(3,3,'2023-06-05',450.00),(4,4,'2023-02-05',350.00),(5,5,'2023-03-05',150.00);
/*!40000 ALTER TABLE `bonificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonificaciones_empresas`
--

DROP TABLE IF EXISTS `bonificaciones_empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonificaciones_empresas` (
  `id_bonificacion_empresa` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha_bonificacion` date DEFAULT NULL,
  `monto_bonificacion` decimal(10,2) DEFAULT NULL,
  `empresa_id` int DEFAULT NULL,
  PRIMARY KEY (`id_bonificacion_empresa`),
  KEY `empleado_id` (`empleado_id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `bonificaciones_empresas_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `bonificaciones_empresas_ibfk_2` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonificaciones_empresas`
--

LOCK TABLES `bonificaciones_empresas` WRITE;
/*!40000 ALTER TABLE `bonificaciones_empresas` DISABLE KEYS */;
INSERT INTO `bonificaciones_empresas` VALUES (1,1,'2023-03-05',200.00,1),(2,2,'2023-04-10',250.00,2),(3,3,'2023-04-10',250.00,3),(4,4,'2023-04-10',250.00,4),(5,5,'2023-04-10',250.00,5);
/*!40000 ALTER TABLE `bonificaciones_empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `consulta1`
--

DROP TABLE IF EXISTS `consulta1`;
/*!50001 DROP VIEW IF EXISTS `consulta1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta1` AS SELECT 
 1 AS `Sucursal`,
 1 AS `TotalSalarios`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta10`
--

DROP TABLE IF EXISTS `consulta10`;
/*!50001 DROP VIEW IF EXISTS `consulta10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta10` AS SELECT 
 1 AS `id_sucursal`,
 1 AS `nombre_sucursal`,
 1 AS `salario_maximo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta11`
--

DROP TABLE IF EXISTS `consulta11`;
/*!50001 DROP VIEW IF EXISTS `consulta11`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta11` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `salario_minimo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta12`
--

DROP TABLE IF EXISTS `consulta12`;
/*!50001 DROP VIEW IF EXISTS `consulta12`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta12` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `salario_minimo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta13`
--

DROP TABLE IF EXISTS `consulta13`;
/*!50001 DROP VIEW IF EXISTS `consulta13`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta13` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `salario_minimo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta14`
--

DROP TABLE IF EXISTS `consulta14`;
/*!50001 DROP VIEW IF EXISTS `consulta14`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta14` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `cantidad_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta15`
--

DROP TABLE IF EXISTS `consulta15`;
/*!50001 DROP VIEW IF EXISTS `consulta15`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta15` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta16`
--

DROP TABLE IF EXISTS `consulta16`;
/*!50001 DROP VIEW IF EXISTS `consulta16`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta16` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta17`
--

DROP TABLE IF EXISTS `consulta17`;
/*!50001 DROP VIEW IF EXISTS `consulta17`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta17` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `total_salarios_pagados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta18`
--

DROP TABLE IF EXISTS `consulta18`;
/*!50001 DROP VIEW IF EXISTS `consulta18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta18` AS SELECT 
 1 AS `empresa_id`,
 1 AS `nombre_empresa`,
 1 AS `total_salarios`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta19`
--

DROP TABLE IF EXISTS `consulta19`;
/*!50001 DROP VIEW IF EXISTS `consulta19`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta19` AS SELECT 
 1 AS `empleado_id`,
 1 AS `total_salarios`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta2`
--

DROP TABLE IF EXISTS `consulta2`;
/*!50001 DROP VIEW IF EXISTS `consulta2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta2` AS SELECT 
 1 AS `Empresa`,
 1 AS `NumEmpleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta20`
--

DROP TABLE IF EXISTS `consulta20`;
/*!50001 DROP VIEW IF EXISTS `consulta20`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta20` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta21`
--

DROP TABLE IF EXISTS `consulta21`;
/*!50001 DROP VIEW IF EXISTS `consulta21`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta21` AS SELECT 
 1 AS `departamento_id`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta22`
--

DROP TABLE IF EXISTS `consulta22`;
/*!50001 DROP VIEW IF EXISTS `consulta22`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta22` AS SELECT 
 1 AS `sucursal_id`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta23`
--

DROP TABLE IF EXISTS `consulta23`;
/*!50001 DROP VIEW IF EXISTS `consulta23`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta23` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `total_bonificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta24`
--

DROP TABLE IF EXISTS `consulta24`;
/*!50001 DROP VIEW IF EXISTS `consulta24`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta24` AS SELECT 
 1 AS `departamento_id`,
 1 AS `total_bonificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta25`
--

DROP TABLE IF EXISTS `consulta25`;
/*!50001 DROP VIEW IF EXISTS `consulta25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta25` AS SELECT 
 1 AS `sucursal_id`,
 1 AS `total_bonificaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta26`
--

DROP TABLE IF EXISTS `consulta26`;
/*!50001 DROP VIEW IF EXISTS `consulta26`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta26` AS SELECT 
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta26_1`
--

DROP TABLE IF EXISTS `consulta26_1`;
/*!50001 DROP VIEW IF EXISTS `consulta26_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta26_1` AS SELECT 
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta27`
--

DROP TABLE IF EXISTS `consulta27`;
/*!50001 DROP VIEW IF EXISTS `consulta27`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta27` AS SELECT 
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta28`
--

DROP TABLE IF EXISTS `consulta28`;
/*!50001 DROP VIEW IF EXISTS `consulta28`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta28` AS SELECT 
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta29`
--

DROP TABLE IF EXISTS `consulta29`;
/*!50001 DROP VIEW IF EXISTS `consulta29`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta29` AS SELECT 
 1 AS `genero`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta3`
--

DROP TABLE IF EXISTS `consulta3`;
/*!50001 DROP VIEW IF EXISTS `consulta3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta3` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `numero_empleados_aumento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta30`
--

DROP TABLE IF EXISTS `consulta30`;
/*!50001 DROP VIEW IF EXISTS `consulta30`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta30` AS SELECT 
 1 AS `edad`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta31`
--

DROP TABLE IF EXISTS `consulta31`;
/*!50001 DROP VIEW IF EXISTS `consulta31`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta31` AS SELECT 
 1 AS `nivel_educativo`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta32`
--

DROP TABLE IF EXISTS `consulta32`;
/*!50001 DROP VIEW IF EXISTS `consulta32`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta32` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta33`
--

DROP TABLE IF EXISTS `consulta33`;
/*!50001 DROP VIEW IF EXISTS `consulta33`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta33` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta34`
--

DROP TABLE IF EXISTS `consulta34`;
/*!50001 DROP VIEW IF EXISTS `consulta34`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta34` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta35`
--

DROP TABLE IF EXISTS `consulta35`;
/*!50001 DROP VIEW IF EXISTS `consulta35`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta35` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta36`
--

DROP TABLE IF EXISTS `consulta36`;
/*!50001 DROP VIEW IF EXISTS `consulta36`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta36` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `genero`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta37`
--

DROP TABLE IF EXISTS `consulta37`;
/*!50001 DROP VIEW IF EXISTS `consulta37`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta37` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `genero`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta38`
--

DROP TABLE IF EXISTS `consulta38`;
/*!50001 DROP VIEW IF EXISTS `consulta38`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta38` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `genero`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta39`
--

DROP TABLE IF EXISTS `consulta39`;
/*!50001 DROP VIEW IF EXISTS `consulta39`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta39` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta4`
--

DROP TABLE IF EXISTS `consulta4`;
/*!50001 DROP VIEW IF EXISTS `consulta4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta4` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `numero_empleados_aumento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta40`
--

DROP TABLE IF EXISTS `consulta40`;
/*!50001 DROP VIEW IF EXISTS `consulta40`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta40` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta41`
--

DROP TABLE IF EXISTS `consulta41`;
/*!50001 DROP VIEW IF EXISTS `consulta41`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta41` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `cantidad_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta42`
--

DROP TABLE IF EXISTS `consulta42`;
/*!50001 DROP VIEW IF EXISTS `consulta42`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta42` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `cantidad_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta43`
--

DROP TABLE IF EXISTS `consulta43`;
/*!50001 DROP VIEW IF EXISTS `consulta43`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta43` AS SELECT 
 1 AS `id_sucursal`,
 1 AS `nombre_sucursal`,
 1 AS `num_empleados_aumento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta44`
--

DROP TABLE IF EXISTS `consulta44`;
/*!50001 DROP VIEW IF EXISTS `consulta44`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta44` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `numero_empleados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta45`
--

DROP TABLE IF EXISTS `consulta45`;
/*!50001 DROP VIEW IF EXISTS `consulta45`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta45` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `rango_edad`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta46`
--

DROP TABLE IF EXISTS `consulta46`;
/*!50001 DROP VIEW IF EXISTS `consulta46`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta46` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `rango_edad`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta47`
--

DROP TABLE IF EXISTS `consulta47`;
/*!50001 DROP VIEW IF EXISTS `consulta47`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta47` AS SELECT 
 1 AS `sucursal_id`,
 1 AS `departamento_id`,
 1 AS `nombre_empresa`,
 1 AS `age_range`,
 1 AS `avg_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta48`
--

DROP TABLE IF EXISTS `consulta48`;
/*!50001 DROP VIEW IF EXISTS `consulta48`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta48` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `rango_edad`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta49`
--

DROP TABLE IF EXISTS `consulta49`;
/*!50001 DROP VIEW IF EXISTS `consulta49`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta49` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `rango_edad`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta5`
--

DROP TABLE IF EXISTS `consulta5`;
/*!50001 DROP VIEW IF EXISTS `consulta5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta5` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta50`
--

DROP TABLE IF EXISTS `consulta50`;
/*!50001 DROP VIEW IF EXISTS `consulta50`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta50` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `rango_edad`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta6`
--

DROP TABLE IF EXISTS `consulta6`;
/*!50001 DROP VIEW IF EXISTS `consulta6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta6` AS SELECT 
 1 AS `Departamento`,
 1 AS `SalarioPromedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta7`
--

DROP TABLE IF EXISTS `consulta7`;
/*!50001 DROP VIEW IF EXISTS `consulta7`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta7` AS SELECT 
 1 AS `nombre_sucursal`,
 1 AS `salario_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta8`
--

DROP TABLE IF EXISTS `consulta8`;
/*!50001 DROP VIEW IF EXISTS `consulta8`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta8` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `salario_maximo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consulta9`
--

DROP TABLE IF EXISTS `consulta9`;
/*!50001 DROP VIEW IF EXISTS `consulta9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta9` AS SELECT 
 1 AS `nombre_departamento`,
 1 AS `salario_maximo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id_departamento` int NOT NULL,
  `nombre_departamento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Ventas'),(2,'recursos'),(3,'mantenimiento'),(4,'soporte'),(5,'ingenerios');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `nivel_educativo` varchar(255) DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  `sucursal_id` int DEFAULT NULL,
  `experiencia_laboral` decimal(10,2) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `horas_trabajadas` int DEFAULT NULL,
  `uvt` int DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `departamento_id` (`departamento_id`),
  KEY `sucursal_id` (`sucursal_id`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id_departamento`),
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursales` (`id_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'juan camilo','Masculino',30,'Licenciatura',1,1,11.00,7000.00,160,130),(2,'María González','Femenino',22,'Maestría',2,2,4.00,60000.00,150,120),(3,'isabel','Femenino',25,'tecnologo',3,3,0.50,88000.00,110,130),(4,'camila','Femenino',18,'bachillerato',4,4,7.00,6000.00,130,140),(5,'carolina','Femenino',25,'profesional',5,5,0.50,99000.00,190,130),(6,'samuel','masculino',19,'estudiante',2,2,12.00,70000.00,40,110),(7,'mateo','masculino',21,'tecnologo ',3,3,10.00,100000.00,70,100),(8,'fabio','masculino',20,'tecnologo',1,1,5.00,2000000.00,100,111);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `id_empresa` int NOT NULL,
  `nombre_empresa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'ecopetrol'),(2,'arturo calle'),(3,'exito'),(4,'movistar'),(5,'terpel');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_empleados`
--

DROP TABLE IF EXISTS `experiencia_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_empleados` (
  `id_experiencia_empleado` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `años_experiencia` int DEFAULT NULL,
  PRIMARY KEY (`id_experiencia_empleado`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `experiencia_empleados_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_empleados`
--

LOCK TABLES `experiencia_empleados` WRITE;
/*!40000 ALTER TABLE `experiencia_empleados` DISABLE KEYS */;
INSERT INTO `experiencia_empleados` VALUES (1,1,5),(2,2,1),(3,3,2),(4,4,7),(5,5,3);
/*!40000 ALTER TABLE `experiencia_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horas_extras`
--

DROP TABLE IF EXISTS `horas_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horas_extras` (
  `dias` int DEFAULT NULL,
  `horas_extra_diurnas` int DEFAULT NULL,
  `horas_extras_nocturnas` int DEFAULT NULL,
  `horas_dominicales_diurnas` int DEFAULT NULL,
  `horas_dominicales_nocturnas` int DEFAULT NULL,
  `recargo_nocturno` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `horas_extras_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horas_extras`
--

LOCK TABLES `horas_extras` WRITE;
/*!40000 ALTER TABLE `horas_extras` DISABLE KEYS */;
INSERT INTO `horas_extras` VALUES (20,4,0,5,3,6,1),(10,5,2,3,4,5,2),(7,6,7,7,1,2,3),(15,7,8,6,2,4,4),(11,8,2,2,3,1,5);
/*!40000 ALTER TABLE `horas_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horas_trabajadas`
--

DROP TABLE IF EXISTS `horas_trabajadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horas_trabajadas` (
  `id_horas_trabajadas` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha_trabajo` date DEFAULT NULL,
  `horas` int DEFAULT NULL,
  PRIMARY KEY (`id_horas_trabajadas`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `horas_trabajadas_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horas_trabajadas`
--

LOCK TABLES `horas_trabajadas` WRITE;
/*!40000 ALTER TABLE `horas_trabajadas` DISABLE KEYS */;
INSERT INTO `horas_trabajadas` VALUES (1,1,'2023-01-10',100),(2,2,'2023-02-15',30),(3,3,'2023-02-15',200),(4,4,'2023-02-15',20),(5,5,'2023-02-15',180),(6,5,'2023-05-23',200),(7,4,'2023-05-13',10);
/*!40000 ALTER TABLE `horas_trabajadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nomina`
--

DROP TABLE IF EXISTS `nomina`;
/*!50001 DROP VIEW IF EXISTS `nomina`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nomina` AS SELECT 
 1 AS `id_empleado`,
 1 AS `Cesantias`,
 1 AS `cesantias_interes`,
 1 AS `prima`,
 1 AS `vacaciones`,
 1 AS `TotalPrestaciones`,
 1 AS `diurna`,
 1 AS `nocturno`,
 1 AS `diurnaDominical`,
 1 AS `nocturnaDominical`,
 1 AS `recargo_nocturno`,
 1 AS `Total_Extras`,
 1 AS `Devengado`,
 1 AS `Salud`,
 1 AS `Pension`,
 1 AS `FondoSol`,
 1 AS `uvt`,
 1 AS `UVT_Real`,
 1 AS `ReFuente`,
 1 AS `Deducciones`,
 1 AS `Neto`,
 1 AS `Nomina_Empleados`,
 1 AS `Salud_Jefe`,
 1 AS `Pension_Jefe`,
 1 AS `arl`,
 1 AS `Sena`,
 1 AS `ICBF`,
 1 AS `caja_compe`,
 1 AS `TotalParafiscal`,
 1 AS `Nomina_Empresario`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pagos_salarios`
--

DROP TABLE IF EXISTS `pagos_salarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos_salarios` (
  `id_pago` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto_pago` decimal(10,2) DEFAULT NULL,
  `sucursal_id` int DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `empleado_id` (`empleado_id`),
  KEY `sucursal_id` (`sucursal_id`),
  KEY `departamento_id` (`departamento_id`),
  CONSTRAINT `pagos_salarios_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `pagos_salarios_ibfk_2` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursales` (`id_sucursal`),
  CONSTRAINT `pagos_salarios_ibfk_3` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_salarios`
--

LOCK TABLES `pagos_salarios` WRITE;
/*!40000 ALTER TABLE `pagos_salarios` DISABLE KEYS */;
INSERT INTO `pagos_salarios` VALUES (1,1,'2023-05-01',2500.00,1,1),(2,2,'2023-05-01',3000.00,2,2),(3,3,'2023-05-01',3000.00,3,3),(4,4,'2023-05-01',3000.00,4,4),(5,5,'2023-05-01',3000.00,5,5);
/*!40000 ALTER TABLE `pagos_salarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados_devengado`
--

DROP TABLE IF EXISTS `resultados_devengado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultados_devengado` (
  `devengado` decimal(10,2) DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `resultados_devengado_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_devengado`
--

LOCK TABLES `resultados_devengado` WRITE;
/*!40000 ALTER TABLE `resultados_devengado` DISABLE KEYS */;
INSERT INTO `resultados_devengado` VALUES (8785.00,NULL),(75800.00,NULL),(113648.33,NULL),(7898.75,NULL),(122698.13,NULL);
/*!40000 ALTER TABLE `resultados_devengado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `id_sucursal` int NOT NULL,
  `nombre_sucursal` varchar(255) DEFAULT NULL,
  `empresa_id` int DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `sucursales_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'Sucursal A',1),(2,'Sucursal B',2),(3,'Sucursal c',3),(4,'Sucursal d',4),(5,'Sucursal e',5);
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `consulta1`
--

/*!50001 DROP VIEW IF EXISTS `consulta1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta1` AS select `sucursales`.`nombre_sucursal` AS `Sucursal`,sum(`pagos_salarios`.`monto_pago`) AS `TotalSalarios` from (`pagos_salarios` join `sucursales` on((`pagos_salarios`.`sucursal_id` = `sucursales`.`id_sucursal`))) where (`pagos_salarios`.`fecha_pago` >= (curdate() - interval 1 month)) group by `Sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta10`
--

/*!50001 DROP VIEW IF EXISTS `consulta10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta10` AS select `s`.`id_sucursal` AS `id_sucursal`,`s`.`nombre_sucursal` AS `nombre_sucursal`,max(`e`.`salario`) AS `salario_maximo` from (`empleados` `e` join `sucursales` `s` on((`e`.`sucursal_id` = `s`.`id_sucursal`))) group by `s`.`id_sucursal`,`s`.`nombre_sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta11`
--

/*!50001 DROP VIEW IF EXISTS `consulta11`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta11` AS select `empresas`.`nombre_empresa` AS `nombre_empresa`,min(`empleados`.`salario`) AS `salario_minimo` from ((`empleados` join `sucursales` on((`empleados`.`sucursal_id` = `sucursales`.`id_sucursal`))) join `empresas` on((`sucursales`.`empresa_id` = `empresas`.`id_empresa`))) group by `empresas`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta12`
--

/*!50001 DROP VIEW IF EXISTS `consulta12`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta12` AS select `departamentos`.`nombre_departamento` AS `nombre_departamento`,min(`empleados`.`salario`) AS `salario_minimo` from (`empleados` join `departamentos` on((`empleados`.`departamento_id` = `departamentos`.`id_departamento`))) group by `departamentos`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta13`
--

/*!50001 DROP VIEW IF EXISTS `consulta13`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta13` AS select `sucursales`.`nombre_sucursal` AS `nombre_sucursal`,min(`empleados`.`salario`) AS `salario_minimo` from (`empleados` join `sucursales` on((`empleados`.`sucursal_id` = `sucursales`.`id_sucursal`))) group by `sucursales`.`nombre_sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta14`
--

/*!50001 DROP VIEW IF EXISTS `consulta14`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta14` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(`e`.`id_empleado`) AS `cantidad_empleados` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) where (`e`.`salario` > (select avg(`e2`.`salario`) from `empleados` `e2` where (`e2`.`departamento_id` = `d`.`id_departamento`))) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta15`
--

/*!50001 DROP VIEW IF EXISTS `consulta15`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta15` AS select `sucursales`.`nombre_sucursal` AS `nombre_sucursal`,count(`empleados`.`id_empleado`) AS `numero_empleados` from (`sucursales` join `empleados` on((`sucursales`.`id_sucursal` = `empleados`.`sucursal_id`))) where (`empleados`.`salario` > (select avg(`empleados`.`salario`) from `empleados` where (`empleados`.`sucursal_id` = `sucursales`.`id_sucursal`))) group by `sucursales`.`nombre_sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta16`
--

/*!50001 DROP VIEW IF EXISTS `consulta16`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta16` AS select `empresas`.`nombre_empresa` AS `nombre_empresa`,count(`empleados`.`id_empleado`) AS `numero_empleados` from ((`empresas` join `sucursales` on((`empresas`.`id_empresa` = `sucursales`.`empresa_id`))) join `empleados` on((`sucursales`.`id_sucursal` = `empleados`.`sucursal_id`))) where (`empleados`.`salario` > (select avg(`empleados`.`salario`) from (`empleados` join `sucursales` on((`empleados`.`sucursal_id` = `sucursales`.`id_sucursal`))) where (`sucursales`.`empresa_id` = `empresas`.`id_empresa`))) group by `empresas`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta17`
--

/*!50001 DROP VIEW IF EXISTS `consulta17`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta17` AS select `d`.`nombre_departamento` AS `nombre_departamento`,sum(`ps`.`monto_pago`) AS `total_salarios_pagados` from ((`pagos_salarios` `ps` join `empleados` `e` on((`e`.`id_empleado` = `ps`.`empleado_id`))) join `departamentos` `d` on((`d`.`id_departamento` = `ps`.`departamento_id`))) where (`ps`.`fecha_pago` >= (curdate() - interval 1 month)) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta18`
--

/*!50001 DROP VIEW IF EXISTS `consulta18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta18` AS select `s`.`empresa_id` AS `empresa_id`,`e`.`nombre_empresa` AS `nombre_empresa`,sum(`p`.`monto_pago`) AS `total_salarios` from ((`pagos_salarios` `p` join `sucursales` `s` on((`p`.`sucursal_id` = `s`.`id_sucursal`))) join `empresas` `e` on((`s`.`empresa_id` = `e`.`id_empresa`))) where (`p`.`fecha_pago` between (now() - interval 1 month) and now()) group by `s`.`empresa_id`,`e`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta19`
--

/*!50001 DROP VIEW IF EXISTS `consulta19`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta19` AS select `pagos_salarios`.`empleado_id` AS `empleado_id`,sum(`pagos_salarios`.`monto_pago`) AS `total_salarios` from `pagos_salarios` where (`pagos_salarios`.`fecha_pago` >= (curdate() - interval 1 month)) group by `pagos_salarios`.`empleado_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta2`
--

/*!50001 DROP VIEW IF EXISTS `consulta2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta2` AS select `empresas`.`nombre_empresa` AS `Empresa`,count(distinct `aumentos_salariales`.`empleado_id`) AS `NumEmpleados` from (((`empresas` left join `sucursales` on((`empresas`.`id_empresa` = `sucursales`.`empresa_id`))) left join `empleados` on((`sucursales`.`id_sucursal` = `empleados`.`sucursal_id`))) left join `aumentos_salariales` on((`empleados`.`id_empleado` = `aumentos_salariales`.`empleado_id`))) where (`aumentos_salariales`.`fecha_aumento` >= (curdate() - interval 6 month)) group by `Empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta20`
--

/*!50001 DROP VIEW IF EXISTS `consulta20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta20` AS select `empresas`.`nombre_empresa` AS `nombre_empresa`,count(distinct `bonificaciones`.`empleado_id`) AS `numero_empleados` from (((`empresas` join `sucursales` on((`empresas`.`id_empresa` = `sucursales`.`empresa_id`))) join `empleados` on((`sucursales`.`id_sucursal` = `empleados`.`sucursal_id`))) join `bonificaciones` on((`empleados`.`id_empleado` = `bonificaciones`.`empleado_id`))) where (`bonificaciones`.`fecha_bonificacion` >= (curdate() - interval 1 month)) group by `empresas`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta21`
--

/*!50001 DROP VIEW IF EXISTS `consulta21`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta21` AS select `e`.`departamento_id` AS `departamento_id`,count(`b`.`empleado_id`) AS `numero_empleados` from (`empleados` `e` join `bonificaciones` `b` on((`e`.`id_empleado` = `b`.`empleado_id`))) where (`b`.`fecha_bonificacion` >= (curdate() - interval 1 month)) group by `e`.`departamento_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta22`
--

/*!50001 DROP VIEW IF EXISTS `consulta22`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta22` AS select `e`.`sucursal_id` AS `sucursal_id`,count(`b`.`empleado_id`) AS `numero_empleados` from (`empleados` `e` join `bonificaciones` `b` on((`e`.`id_empleado` = `b`.`empleado_id`))) where (`b`.`fecha_bonificacion` >= (curdate() - interval 1 month)) group by `e`.`sucursal_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta23`
--

/*!50001 DROP VIEW IF EXISTS `consulta23`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta23` AS select `empresas`.`nombre_empresa` AS `nombre_empresa`,sum(`bonificaciones`.`monto_bonificacion`) AS `total_bonificaciones` from (((`empresas` join `sucursales` on((`empresas`.`id_empresa` = `sucursales`.`empresa_id`))) join `empleados` on((`sucursales`.`id_sucursal` = `empleados`.`sucursal_id`))) join `bonificaciones` on((`empleados`.`id_empleado` = `bonificaciones`.`empleado_id`))) where (`bonificaciones`.`fecha_bonificacion` >= (curdate() - interval 1 month)) group by `empresas`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta24`
--

/*!50001 DROP VIEW IF EXISTS `consulta24`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta24` AS select `e`.`departamento_id` AS `departamento_id`,sum(`b`.`monto_bonificacion`) AS `total_bonificaciones` from (`bonificaciones` `b` join `empleados` `e` on((`b`.`empleado_id` = `e`.`id_empleado`))) where (`b`.`fecha_bonificacion` >= (curdate() - interval 1 month)) group by `e`.`departamento_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta25`
--

/*!50001 DROP VIEW IF EXISTS `consulta25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta25` AS select `e`.`sucursal_id` AS `sucursal_id`,sum(`b`.`monto_bonificacion`) AS `total_bonificaciones` from (`bonificaciones` `b` join `empleados` `e` on((`b`.`empleado_id` = `e`.`id_empleado`))) where (`b`.`fecha_bonificacion` >= (curdate() - interval 1 month)) group by `e`.`sucursal_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta26`
--

/*!50001 DROP VIEW IF EXISTS `consulta26`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta26` AS select count(0) AS `numero_empleados` from (`aumentos_salariales` `a` join `empleados` `e` on((`a`.`empleado_id` = `e`.`id_empleado`))) where ((`a`.`porcentaje_aumento` > 10) and (`a`.`fecha_aumento` >= (curdate() - interval 6 month))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta26_1`
--

/*!50001 DROP VIEW IF EXISTS `consulta26_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta26_1` AS select count(0) AS `numero_empleados` from (`aumentos_salariales` `a` join `empleados` `e` on((`a`.`empleado_id` = `e`.`id_empleado`))) where ((`a`.`porcentaje_aumento` < 5) and (`a`.`fecha_aumento` >= (curdate() - interval 6 month))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta27`
--

/*!50001 DROP VIEW IF EXISTS `consulta27`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta27` AS select count(distinct `horas_trabajadas`.`empleado_id`) AS `numero_empleados` from `horas_trabajadas` where ((`horas_trabajadas`.`horas` > 160) and (`horas_trabajadas`.`fecha_trabajo` >= (curdate() - interval 1 month))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta28`
--

/*!50001 DROP VIEW IF EXISTS `consulta28`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta28` AS select count(distinct `horas_trabajadas`.`empleado_id`) AS `numero_empleados` from `horas_trabajadas` where ((`horas_trabajadas`.`horas` < 80) and (`horas_trabajadas`.`fecha_trabajo` >= (curdate() - interval 1 month))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta29`
--

/*!50001 DROP VIEW IF EXISTS `consulta29`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta29` AS select `empleados`.`genero` AS `genero`,avg(`empleados`.`salario`) AS `salario_promedio` from `empleados` group by `empleados`.`genero` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta3`
--

/*!50001 DROP VIEW IF EXISTS `consulta3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta3` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(`a`.`empleado_id`) AS `numero_empleados_aumento` from ((`departamentos` `d` left join `empleados` `e` on((`d`.`id_departamento` = `e`.`departamento_id`))) left join `aumentos_salariales` `a` on((`e`.`id_empleado` = `a`.`empleado_id`))) where (`a`.`fecha_aumento` >= (curdate() - interval 6 month)) group by `d`.`id_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta30`
--

/*!50001 DROP VIEW IF EXISTS `consulta30`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta30` AS select `empleados`.`edad` AS `edad`,avg(`empleados`.`salario`) AS `salario_promedio` from `empleados` group by `empleados`.`edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta31`
--

/*!50001 DROP VIEW IF EXISTS `consulta31`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta31` AS select `empleados`.`nivel_educativo` AS `nivel_educativo`,avg(`empleados`.`salario`) AS `salario_promedio` from `empleados` group by `empleados`.`nivel_educativo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta32`
--

/*!50001 DROP VIEW IF EXISTS `consulta32`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta32` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(0) AS `numero_empleados` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) where (`e`.`experiencia_laboral` > 10) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta33`
--

/*!50001 DROP VIEW IF EXISTS `consulta33`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta33` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(0) AS `numero_empleados` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) where (`e`.`experiencia_laboral` < 1) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta34`
--

/*!50001 DROP VIEW IF EXISTS `consulta34`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta34` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(0) AS `numero_empleados` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) where (`e`.`experiencia_laboral` between 1 and 5) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta35`
--

/*!50001 DROP VIEW IF EXISTS `consulta35`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta35` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(0) AS `numero_empleados` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) where (`e`.`experiencia_laboral` between 5 and 10) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta36`
--

/*!50001 DROP VIEW IF EXISTS `consulta36`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta36` AS select `d`.`nombre_departamento` AS `nombre_departamento`,`e`.`genero` AS `genero`,avg(`e`.`salario`) AS `salario_promedio` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) group by `d`.`nombre_departamento`,`e`.`genero` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta37`
--

/*!50001 DROP VIEW IF EXISTS `consulta37`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta37` AS select `s`.`nombre_sucursal` AS `nombre_sucursal`,`e`.`genero` AS `genero`,avg(`e`.`salario`) AS `salario_promedio` from (`empleados` `e` join `sucursales` `s` on((`e`.`sucursal_id` = `s`.`id_sucursal`))) group by `s`.`nombre_sucursal`,`e`.`genero` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta38`
--

/*!50001 DROP VIEW IF EXISTS `consulta38`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta38` AS select `em`.`nombre_empresa` AS `nombre_empresa`,`e`.`genero` AS `genero`,avg(`e`.`salario`) AS `salario_promedio` from ((`empleados` `e` join `sucursales` `s` on((`e`.`sucursal_id` = `s`.`id_sucursal`))) join `empresas` `em` on((`s`.`empresa_id` = `em`.`id_empresa`))) group by `em`.`nombre_empresa`,`e`.`genero` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta39`
--

/*!50001 DROP VIEW IF EXISTS `consulta39`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta39` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(0) AS `numero_empleados` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) where (`e`.`salario` > 50000) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta4`
--

/*!50001 DROP VIEW IF EXISTS `consulta4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta4` AS select `s`.`nombre_sucursal` AS `nombre_sucursal`,count(distinct `a`.`empleado_id`) AS `numero_empleados_aumento` from ((`aumentos_salariales` `a` join `empleados` `e` on((`a`.`empleado_id` = `e`.`id_empleado`))) join `sucursales` `s` on((`e`.`sucursal_id` = `s`.`id_sucursal`))) where (`a`.`fecha_aumento` >= (curdate() - interval 6 month)) group by `s`.`nombre_sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta40`
--

/*!50001 DROP VIEW IF EXISTS `consulta40`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta40` AS select `s`.`nombre_sucursal` AS `nombre_sucursal`,count(0) AS `numero_empleados` from (`empleados` `e` join `sucursales` `s` on((`e`.`sucursal_id` = `s`.`id_sucursal`))) where (`e`.`salario` > 50000) group by `s`.`nombre_sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta41`
--

/*!50001 DROP VIEW IF EXISTS `consulta41`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta41` AS select `empresas`.`nombre_empresa` AS `nombre_empresa`,count(0) AS `cantidad_empleados` from ((`empresas` join `sucursales` on((`empresas`.`id_empresa` = `sucursales`.`empresa_id`))) join `empleados` on((`sucursales`.`id_sucursal` = `empleados`.`sucursal_id`))) where (`empleados`.`salario` > 50000.00) group by `empresas`.`id_empresa`,`empresas`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta42`
--

/*!50001 DROP VIEW IF EXISTS `consulta42`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta42` AS select `d`.`nombre_departamento` AS `nombre_departamento`,count(`e`.`id_empleado`) AS `cantidad_empleados` from ((`departamentos` `d` join `empleados` `e` on((`d`.`id_departamento` = `e`.`departamento_id`))) join `aumentos_salariales` `a` on((`e`.`id_empleado` = `a`.`empleado_id`))) where (`a`.`fecha_aumento` >= (curdate() - interval 1 month)) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta43`
--

/*!50001 DROP VIEW IF EXISTS `consulta43`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta43` AS select `s`.`id_sucursal` AS `id_sucursal`,`s`.`nombre_sucursal` AS `nombre_sucursal`,count(distinct `a`.`empleado_id`) AS `num_empleados_aumento` from ((`sucursales` `s` join `empleados` `e` on((`s`.`id_sucursal` = `e`.`sucursal_id`))) join `aumentos_salariales` `a` on((`e`.`id_empleado` = `a`.`empleado_id`))) where (`a`.`fecha_aumento` >= (curdate() - interval 1 month)) group by `s`.`id_sucursal`,`s`.`nombre_sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta44`
--

/*!50001 DROP VIEW IF EXISTS `consulta44`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta44` AS select `e`.`nombre_empresa` AS `nombre_empresa`,count(distinct `a`.`empleado_id`) AS `numero_empleados` from (((`empresas` `e` join `sucursales` `s` on((`e`.`id_empresa` = `s`.`empresa_id`))) join `empleados` `em` on((`s`.`id_sucursal` = `em`.`sucursal_id`))) join `aumentos_salariales` `a` on((`em`.`id_empleado` = `a`.`empleado_id`))) where (`a`.`fecha_aumento` >= (curdate() - interval 1 month)) group by `e`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta45`
--

/*!50001 DROP VIEW IF EXISTS `consulta45`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta45` AS select `d`.`nombre_departamento` AS `nombre_departamento`,(case when (`e`.`edad` between 18 and 30) then '18-30' when (`e`.`edad` between 31 and 40) then '31-40' when (`e`.`edad` between 41 and 50) then '41-50' else '51+' end) AS `rango_edad`,avg(`p`.`monto_pago`) AS `salario_promedio` from ((`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) join `pagos_salarios` `p` on((`e`.`id_empleado` = `p`.`empleado_id`))) group by `d`.`nombre_departamento`,`rango_edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta46`
--

/*!50001 DROP VIEW IF EXISTS `consulta46`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta46` AS select `s`.`nombre_sucursal` AS `nombre_sucursal`,(case when ((`e`.`edad` >= 18) and (`e`.`edad` <= 30)) then '18-30' when ((`e`.`edad` > 30) and (`e`.`edad` <= 40)) then '31-40' when ((`e`.`edad` > 40) and (`e`.`edad` <= 50)) then '41-50' else 'Más de 50' end) AS `rango_edad`,avg(`ps`.`monto_pago`) AS `salario_promedio` from ((`empleados` `e` join `pagos_salarios` `ps` on((`e`.`id_empleado` = `ps`.`empleado_id`))) join `sucursales` `s` on((`ps`.`sucursal_id` = `s`.`id_sucursal`))) group by `s`.`nombre_sucursal`,`rango_edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta47`
--

/*!50001 DROP VIEW IF EXISTS `consulta47`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta47` AS select `e`.`sucursal_id` AS `sucursal_id`,`e`.`departamento_id` AS `departamento_id`,`emp`.`nombre_empresa` AS `nombre_empresa`,(case when (`e`.`edad` between 18 and 30) then '18-30' when (`e`.`edad` between 31 and 40) then '31-40' when (`e`.`edad` between 41 and 50) then '41-50' else '51+' end) AS `age_range`,avg(`ps`.`monto_pago`) AS `avg_salary` from (((`empleados` `e` join `pagos_salarios` `ps` on((`e`.`id_empleado` = `ps`.`empleado_id`))) join `sucursales` `s` on((`e`.`sucursal_id` = `s`.`id_sucursal`))) join `empresas` `emp` on((`s`.`empresa_id` = `emp`.`id_empresa`))) where (`e`.`salario` > 0) group by `e`.`sucursal_id`,`e`.`departamento_id`,`emp`.`nombre_empresa`,`age_range` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta48`
--

/*!50001 DROP VIEW IF EXISTS `consulta48`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta48` AS select `d`.`nombre_departamento` AS `nombre_departamento`,(case when ((`e`.`edad` >= 18) and (`e`.`edad` <= 30)) then '18-30' when ((`e`.`edad` > 30) and (`e`.`edad` <= 40)) then '31-40' when ((`e`.`edad` > 40) and (`e`.`edad` <= 50)) then '41-50' else '51+' end) AS `rango_edad`,avg(`ps`.`monto_pago`) AS `salario_promedio` from ((`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) join `pagos_salarios` `ps` on((`e`.`id_empleado` = `ps`.`empleado_id`))) group by `d`.`nombre_departamento`,`rango_edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta49`
--

/*!50001 DROP VIEW IF EXISTS `consulta49`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta49` AS select `s`.`nombre_sucursal` AS `nombre_sucursal`,(case when (`e`.`edad` between 18 and 25) then '18-25' when (`e`.`edad` between 26 and 35) then '26-35' when (`e`.`edad` between 36 and 45) then '36-45' else '46+' end) AS `rango_edad`,avg(`ps`.`monto_pago`) AS `salario_promedio` from ((`empleados` `e` join `pagos_salarios` `ps` on((`e`.`id_empleado` = `ps`.`empleado_id`))) join `sucursales` `s` on((`ps`.`sucursal_id` = `s`.`id_sucursal`))) group by `s`.`nombre_sucursal`,`rango_edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta5`
--

/*!50001 DROP VIEW IF EXISTS `consulta5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta5` AS select `e`.`nombre_empresa` AS `nombre_empresa`,avg(`p`.`monto_pago`) AS `salario_promedio` from ((`empresas` `e` join `sucursales` `s` on((`e`.`id_empresa` = `s`.`empresa_id`))) join `pagos_salarios` `p` on((`s`.`id_sucursal` = `p`.`sucursal_id`))) group by `e`.`id_empresa`,`e`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta50`
--

/*!50001 DROP VIEW IF EXISTS `consulta50`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta50` AS select `empresas`.`nombre_empresa` AS `nombre_empresa`,(case when (`empleados`.`edad` between 20 and 29) then '20-29' when (`empleados`.`edad` between 30 and 39) then '30-39' when (`empleados`.`edad` between 40 and 49) then '40-49' else '50+' end) AS `rango_edad`,avg(`pagos_salarios`.`monto_pago`) AS `salario_promedio` from (((`empleados` join `pagos_salarios` on((`empleados`.`id_empleado` = `pagos_salarios`.`empleado_id`))) join `sucursales` on((`pagos_salarios`.`sucursal_id` = `sucursales`.`id_sucursal`))) join `empresas` on((`sucursales`.`empresa_id` = `empresas`.`id_empresa`))) group by `empresas`.`nombre_empresa`,`rango_edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta6`
--

/*!50001 DROP VIEW IF EXISTS `consulta6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta6` AS select `d`.`nombre_departamento` AS `Departamento`,avg(`e`.`salario`) AS `SalarioPromedio` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta7`
--

/*!50001 DROP VIEW IF EXISTS `consulta7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta7` AS select `s`.`nombre_sucursal` AS `nombre_sucursal`,avg(`e`.`salario`) AS `salario_promedio` from (`empleados` `e` join `sucursales` `s` on((`e`.`sucursal_id` = `s`.`id_sucursal`))) group by `s`.`nombre_sucursal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta8`
--

/*!50001 DROP VIEW IF EXISTS `consulta8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta8` AS select `e`.`nombre_empresa` AS `nombre_empresa`,max(`em`.`salario`) AS `salario_maximo` from ((`empresas` `e` join `sucursales` `s` on((`e`.`id_empresa` = `s`.`empresa_id`))) join `empleados` `em` on((`s`.`id_sucursal` = `em`.`sucursal_id`))) group by `e`.`nombre_empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consulta9`
--

/*!50001 DROP VIEW IF EXISTS `consulta9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta9` AS select `d`.`nombre_departamento` AS `nombre_departamento`,max(`e`.`salario`) AS `salario_maximo` from (`empleados` `e` join `departamentos` `d` on((`e`.`departamento_id` = `d`.`id_departamento`))) group by `d`.`nombre_departamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nomina`
--

/*!50001 DROP VIEW IF EXISTS `nomina`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nomina` AS select `e`.`id_empleado` AS `id_empleado`,((`e`.`salario` * `he`.`dias`) / 360) AS `Cesantias`,(((((`e`.`salario` * `he`.`dias`) / 360) * `he`.`dias`) * 0.12) / 360) AS `cesantias_interes`,((`e`.`salario` * `he`.`dias`) / 360) AS `prima`,((`e`.`salario` * `he`.`dias`) / 720) AS `vacaciones`,(((((`e`.`salario` * `he`.`dias`) / 360) + ((`e`.`salario` * `he`.`dias`) / 360)) + (((((`e`.`salario` * `he`.`dias`) / 360) * `he`.`dias`) * 0.12) / 360)) + ((`e`.`salario` * `he`.`dias`) / 720)) AS `TotalPrestaciones`,(((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) AS `diurna`,(((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`) AS `nocturno`,(((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`) AS `diurnaDominical`,(((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`) AS `nocturnaDominical`,(((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`) AS `recargo_nocturno`,(((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) AS `Total_Extras`,(((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) AS `Devengado`,(((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.04) AS `Salud`,(((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.04) AS `Pension`,(((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.015) AS `FondoSol`,`e`.`uvt` AS `uvt`,(`e`.`uvt` * 42412) AS `UVT_Real`,((`e`.`uvt` * 42412) * 0.19) AS `ReFuente`,((((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.04) * 2) + (((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.015)) + ((`e`.`uvt` * 42412) * 0.19)) AS `Deducciones`,((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.04) * 2) + (((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.015)) + ((`e`.`uvt` * 42412) * 0.19))) AS `Neto`,(((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.04) * 2) + (((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.015)) + ((`e`.`uvt` * 42412) * 0.19))) + (((((`e`.`salario` * `he`.`dias`) / 360) + ((`e`.`salario` * `he`.`dias`) / 360)) + (((((`e`.`salario` * `he`.`dias`) / 360) * `he`.`dias`) * 0.12) / 360)) + ((`e`.`salario` * `he`.`dias`) / 720))) AS `Nomina_Empleados`,((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.085)) AS `Salud_Jefe`,(((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - (`e`.`salario` * 0.13)) * 0.12) AS `Pension_Jefe`,(((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - (`e`.`salario` * 0.13)) * 0.000522) AS `arl`,(((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - (`e`.`salario` * 0.13)) * 0.02) AS `Sena`,(((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - (`e`.`salario` * 0.13)) * 0.03) AS `ICBF`,(((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - (`e`.`salario` * 0.13)) * 0.04) AS `caja_compe`,((((((((((((((((((((((((((((((((((((((((((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.085)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.12)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.000522)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.02)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.03)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.04)) AS `TotalParafiscal`,(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((((((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.04) * 2) + (((((((((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) * 0.015)) + ((`e`.`uvt` * 42412) * 0.19))) + (((((`e`.`salario` * `he`.`dias`) / 360) + ((`e`.`salario` * `he`.`dias`) / 360)) + (((((`e`.`salario` * `he`.`dias`) / 360) * `he`.`dias`) * 0.12) / 360)) + ((`e`.`salario` * `he`.`dias`) / 720))) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.085)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.12)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.000522)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.02)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.03)) + (((`e`.`salario` / 240) * 1.25) * `he`.`horas_extra_diurnas`)) + (((`e`.`salario` / 240) * 1.75) * `he`.`horas_extras_nocturnas`)) + (((`e`.`salario` / 240) * 2) * `he`.`horas_dominicales_diurnas`)) + (((`e`.`salario` / 240) * 2.5) * `he`.`horas_dominicales_nocturnas`)) + (((`e`.`salario` / 240) * 1.25) * `he`.`recargo_nocturno`)) + `e`.`salario`) + (`e`.`salario` * 0.13)) - ((`e`.`salario` * 0.13) * 0.04)) AS `Nomina_Empresario` from (`empleados` `e` join `horas_extras` `he` on((`e`.`id_empleado` = `he`.`id_empleado`))) */;
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

-- Dump completed on 2023-05-18 20:37:10
