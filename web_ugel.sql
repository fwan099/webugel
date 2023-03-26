/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : web_ugel

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 25/03/2023 21:38:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `area_cod` int NOT NULL AUTO_INCREMENT,
  `area_nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `area_fecha_registro` timestamp NULL DEFAULT current_timestamp,
  `area_estado` enum('ACTIVO','INACTIVO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'ACTIVO',
  PRIMARY KEY (`area_cod`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, 'AREA DE ADMINISTRACION', '2023-03-17 09:10:23', 'ACTIVO');
INSERT INTO `area` VALUES (2, 'AREA DE GESTION PEDAGOGICA', '2023-03-20 14:49:13', 'ACTIVO');
INSERT INTO `area` VALUES (3, 'AREA DE GESTION INSTITUCIONAL', '2023-03-20 14:49:44', 'INACTIVO');

-- ----------------------------
-- Table structure for comunicados
-- ----------------------------
DROP TABLE IF EXISTS `comunicados`;
CREATE TABLE `comunicados`  (
  `comunicado_id` int NOT NULL AUTO_INCREMENT,
  `com_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `com_feccreacion` datetime NULL DEFAULT NULL,
  `com_imgprev` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `com_documento` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `area_origen_id` int NULL DEFAULT NULL,
  `com_titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `com_estado` enum('ACTIVO','INACTIVO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`comunicado_id`) USING BTREE,
  INDEX `area_origen_id`(`area_origen_id` ASC) USING BTREE,
  CONSTRAINT `comunicados_ibfk_1` FOREIGN KEY (`area_origen_id`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comunicados
-- ----------------------------
INSERT INTO `comunicados` VALUES (15, 'RRRRRRRRRR', '2023-03-24 10:02:16', 'controller/comunicado/img/IMG243202310206.PNG', 'controller/comunicado/docs/ARCH243202310206.PDF', 1, 'RRRRRRR', 'ACTIVO');
INSERT INTO `comunicados` VALUES (16, 'TTTTTTTTTT', '2023-03-24 10:05:29', 'controller/comunicado/img/IMG243202310742.PNG', 'controller/comunicado/docs/ARCH243202310742.PDF', 1, 'TTTTTT', 'ACTIVO');
INSERT INTO `comunicados` VALUES (17, 'QAWRQWR', '2023-03-24 10:10:32', 'controller/comunicado/img/IMG243202310920.PNG', 'controller/comunicado/docs/ARCH243202310920.PDF', 1, 'FREREW', 'ACTIVO');
INSERT INTO `comunicados` VALUES (18, 'HUAYNAPATA UCHARICO', '2023-03-24 10:10:58', 'controller/comunicado/img/IMG243202311728.PNG', 'controller/comunicado/docs/ARCH243202311728.PDF', 1, 'FREDDY WALTER', 'ACTIVO');
INSERT INTO `comunicados` VALUES (19, 'SFASF', '2023-03-24 10:11:56', 'controller/comunicado/img/IMG243202311200.PNG', 'controller/comunicado/docs/ARCH243202311200.PDF', 1, 'TTRTRTR', 'ACTIVO');
INSERT INTO `comunicados` VALUES (20, 'JJJJJ', '2023-03-25 20:33:14', 'controller/comunicado/img/', 'controller/comunicado/docs/ARCH253202320154.PDF', 1, 'HOYYYY', 'ACTIVO');
INSERT INTO `comunicados` VALUES (21, 'XXXXXXXXXXXXXXCCC', '2023-03-25 21:10:16', 'controller/comunicado/img/default.png', 'controller/comunicado/docs/ARCH253202321452.PDF', 1, 'XXXXXXXXXCCC', 'INACTIVO');

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado`  (
  `empleado_id` int NOT NULL AUTO_INCREMENT,
  `emple_nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emple_apepat` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emple_apemat` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emple_feccreacion` date NULL DEFAULT NULL,
  `emple_fechanacimiento` date NULL DEFAULT NULL,
  `emple_nrodocumento` varchar(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emple_movil` varchar(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emple_email` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emple_estatus` enum('ACTIVO','INACTIVO') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'ACTIVO',
  `emple_direccion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emple_fotoperfil` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`empleado_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES (1, 'FREDDY WALTER', 'HUAYNAPATA', 'UCHARICO', '2023-03-17', '1999-07-15', '73744393', '967444616', 'FREDDY.LEDIS099@GMAIL.COM', 'ACTIVO', 'JR. 31 DE MARZO S/NM', NULL);
INSERT INTO `empleado` VALUES (3, 'OBED', 'QUISPE', 'TORRES', '2023-03-20', '2023-03-21', '98765432', '987654321', 'OBED@GMAIL.COM', 'ACTIVO', 'PUNO', 'controller/empleado/foto/default.png');

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa`  (
  `empresa_id` int NOT NULL AUTO_INCREMENT,
  `emp_razon` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emp_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emp_code` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emp_telefono` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emp_direccion` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `emp_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`empresa_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES (1, 'UGEL YUNGUYO', 'UGEL@GMAIL.COM', '201245789874', '987654321', 'JR. INDEPENDENCIA N 1034', NULL);

-- ----------------------------
-- Table structure for oficios
-- ----------------------------
DROP TABLE IF EXISTS `oficios`;
CREATE TABLE `oficios`  (
  `oficio_id` int NOT NULL AUTO_INCREMENT,
  `ofi_titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `ofi_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `ofi_feccreacion` datetime NULL DEFAULT NULL,
  `ofi_img_prev` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `ofi_documento` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `ofi_estado` enum('ACTIVO','INACTIVO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT 'ACTIVO',
  `area_origen_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`oficio_id`) USING BTREE,
  INDEX `area_origen_id`(`area_origen_id` ASC) USING BTREE,
  CONSTRAINT `oficios_ibfk_1` FOREIGN KEY (`area_origen_id`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oficios
-- ----------------------------
INSERT INTO `oficios` VALUES (3, 'FREDD MULTIKPLE', 'DESCP', '2023-03-25 20:57:43', 'controller/oficio/img/', 'controller/oficio/docs/ARCH253202320346.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (4, 'CCCCCCC', 'CCCCCCCCCCCCC', '2023-03-25 21:06:02', 'controller/oficio/img/IMG253202321308.PNG', 'controller/oficio/docs/ARCH253202321410.PDF', 'ACTIVO', 1);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_usuario` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `usu_contra` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `usu_feccreacion` date NULL DEFAULT NULL,
  `usu_fecupdate` date NULL DEFAULT NULL,
  `usu_estatus` enum('ACTIVO','INACTIVO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `usu_rol` enum('Administrador','Publicador') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `empresa_id` int NULL DEFAULT NULL,
  `empleado_id` int NULL DEFAULT NULL,
  `area_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`usu_id`) USING BTREE,
  INDEX `usuario_ibfk_1`(`empresa_id` ASC) USING BTREE,
  INDEX `empleado_id`(`empleado_id` ASC) USING BTREE,
  INDEX `area_id`(`area_id` ASC) USING BTREE,
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`empleado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'admin', '$2y$12$am6UQg3sjkZxgBsBagU/YO46PKwGgWmcfXB7usiVWic3y5cOY.Y7K', '2023-03-17', NULL, 'ACTIVO', 'Administrador', 1, 1, 1);
INSERT INTO `usuario` VALUES (2, 'CONTA', '$2y$12$xULGuAbbZOPMCJkCo4pD9uDxiYomtlY8Ek.R2LUf0tz/7JGXtQCyC', '2023-03-20', NULL, 'ACTIVO', 'Publicador', 1, 3, 2);
INSERT INTO `usuario` VALUES (4, 'EDG', '$2y$12$4cOssnQ/e.REbBJtuxzivuhsilHegkCfjRLBQmSWTawwFNV3u9KmO', '2023-03-20', NULL, 'ACTIVO', 'Publicador', 1, 3, 2);
INSERT INTO `usuario` VALUES (5, 'Yun', '$2y$12$dKGEvB1SabLLhdjTGNrkceV0R2MwWm37NKSr8jCP0x8ED31NvlXCe', '2023-03-20', NULL, 'ACTIVO', 'Publicador', 1, 1, 1);

-- ----------------------------
-- Procedure structure for SP_CARGAR_SELECT_AREA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_CARGAR_SELECT_AREA`;
delimiter ;;
CREATE PROCEDURE `SP_CARGAR_SELECT_AREA`()
SELECT
	area.area_cod, 
	area.area_nombre
FROM
	area
	WHERE area.area_estado='ACTIVO'
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_CARGAR_SELECT_EMPLEADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_CARGAR_SELECT_EMPLEADO`;
delimiter ;;
CREATE PROCEDURE `SP_CARGAR_SELECT_EMPLEADO`()
SELECT
	empleado.empleado_id, 
	CONCAT_WS(' ',empleado.emple_nombre,empleado.emple_apepat,empleado.emple_apemat)
FROM
	empleado
	WHERE empleado.emple_estatus='ACTIVO'
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_ELIMINAR_COMUNICADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_ELIMINAR_COMUNICADO`;
delimiter ;;
CREATE PROCEDURE `SP_ELIMINAR_COMUNICADO`(IN ID INT)
BEGIN
  DECLARE ESTADOACTUAL VARCHAR(30);
  SET @ESTADOACTUAL:= (SELECT com_estado FROM comunicados WHERE comunicado_id=ID);
  IF @ESTADOACTUAL = 'ACTIVO' THEN
    SELECT 2;
  ELSE
    DELETE FROM comunicados WHERE comunicado_id=ID;
    SELECT 1;
  END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_ELIMINAR_EMPLEADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_ELIMINAR_EMPLEADO`;
delimiter ;;
CREATE PROCEDURE `SP_ELIMINAR_EMPLEADO`(IN ID INT)
BEGIN
  DECLARE ESTADOACTUAL VARCHAR(30);
  SET @ESTADOACTUAL:= (SELECT empleado.emple_estatus FROM empleado WHERE empleado_id=ID);
  IF @ESTADOACTUAL = 'ACTIVO' THEN
    SELECT 2;
  ELSE
    DELETE FROM empleado WHERE empleado_id=ID;
    SELECT 1;
  END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_ELIMINAR_OFICIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_ELIMINAR_OFICIO`;
delimiter ;;
CREATE PROCEDURE `SP_ELIMINAR_OFICIO`(IN ID INT)
BEGIN
  DECLARE ESTADOACTUAL VARCHAR(30);
  SET @ESTADOACTUAL:= (SELECT ofi_estado FROM oficios WHERE oficio_id=ID);
  IF @ESTADOACTUAL = 'ACTIVO' THEN
    SELECT 2;
  ELSE
    DELETE FROM oficios WHERE oficio_id=ID;
    SELECT 1;
  END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_AREA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_AREA`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_AREA`()
SELECT
	area.area_cod, 
	area.area_nombre, 
	area.area_fecha_registro, 
	area.area_estado
FROM
	area
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_COMUNICADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_COMUNICADO`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_COMUNICADO`()
SELECT
	comunicados.comunicado_id, 
	comunicados.com_titulo, 
	comunicados.com_descripcion, 
	comunicados.com_feccreacion, 
	comunicados.com_imgprev, 
	comunicados.com_documento, 
	comunicados.com_estado, 
	area.area_nombre
FROM
	comunicados
	INNER JOIN
	area
	ON 
		comunicados.area_origen_id = area.area_cod
		ORDER BY com_feccreacion DESC
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_EMPLEADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_EMPLEADO`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_EMPLEADO`()
SELECT
	empleado.empleado_id, 
	empleado.emple_nombre, 
	empleado.emple_apepat, 
	empleado.emple_apemat, 
	empleado.emple_fechanacimiento, 
	empleado.emple_nrodocumento, 
	empleado.emple_movil, 
	empleado.emple_email, 
	empleado.emple_estatus, 
	empleado.emple_direccion, 
	empleado.emple_fotoperfil,
	CONCAT_WS(' ',empleado.emple_nombre,empleado.emple_apepat,empleado.emple_apemat) AS em
	
FROM
	empleado
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_OFICIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_OFICIO`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_OFICIO`()
SELECT
	oficios.oficio_id, 
	oficios.ofi_titulo, 
	oficios.ofi_descripcion, 
	oficios.ofi_feccreacion, 
	oficios.ofi_img_prev, 
	oficios.ofi_documento, 
	oficios.ofi_estado, 
	area.area_nombre
FROM
	oficios
	INNER JOIN
	area
	ON 
		oficios.area_origen_id = area.area_cod
		ORDER BY ofi_feccreacion DESC
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_USUARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_USUARIO`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_USUARIO`()
SELECT
	usuario.usu_usuario,
	CONCAT_WS(' ',empleado.emple_nombre,empleado.emple_apepat,empleado.emple_apemat) AS nempleado, 
	usuario.empleado_id, 
	usuario.usu_estatus, 
	usuario.area_id, 
	usuario.usu_rol, 
	usuario.empresa_id, 
	area.area_nombre, 
	usuario.usu_id
FROM
	usuario
	INNER JOIN
	empleado
	ON 
		usuario.empleado_id = empleado.empleado_id
	INNER JOIN
	area
	ON 
		usuario.area_id = area.area_cod
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_AREA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_AREA`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_AREA`(IN ID INT, IN NAREA VARCHAR(255), IN ESTATUS VARCHAR(20))
BEGIN
DECLARE AREAACTUAL VARCHAR(255);
DECLARE CANTIDAD INT;
SET @AREAACTUAL:= (SELECT area_nombre FROM area WHERE area_cod=ID);
IF @AREAACTUAL = NAREA THEN
	UPDATE area SET area_estado= ESTATUS,area_nombre=NAREA WHERE area_cod = ID;
	SELECT 1;
ELSE
	SET @CANTIDAD:= (SELECT COUNT(*) FROM area WHERE area_nombre=NAREA);
	IF @CANTIDAD = 0 THEN
		UPDATE area SET area_estado= ESTATUS,area_nombre=NAREA WHERE area_cod = ID;
		SELECT 1;
	ELSE
		SELECT 2;
	END IF;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_COMUNICADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_COMUNICADO`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_COMUNICADO`(IN ID INT,IN TITULO VARCHAR(255),IN DESCRIPCION VARCHAR(255),IN RUTAIMG VARCHAR(255),IN RUTADOC VARCHAR(255),IN ESTADO VARCHAR(40))
BEGIN
DECLARE RUTAACTUALDOC VARCHAR(255);
DECLARE RUTAACTUALIMG VARCHAR(255);
DECLARE RUTANUEVADOC VARCHAR(255);
DECLARE RUTANUEVAIMG VARCHAR(255);

SET @RUTANUEVAIMG = RUTAIMG;
SET @RUTANUEVADOC = RUTADOC;

SET @RUTAACTUALIMG:= (SELECT comunicados.com_imgprev FROM comunicados WHERE comunicado_id=ID);
SET @RUTAACTUALDOC:= (SELECT comunicados.com_documento FROM comunicados WHERE comunicado_id=ID);

IF RUTAIMG = '' THEN
	SET @RUTANUEVAIMG= @RUTAACTUALIMG;
END IF;

IF RUTADOC = '' THEN
	SET @RUTANUEVADOC= @RUTAACTUALDOC;
END IF;

	UPDATE comunicados SET com_titulo = TITULO, com_descripcion = DESCRIPCION, com_imgprev = @RUTANUEVAIMG, com_documento = @RUTANUEVADOC, com_estado = ESTADO WHERE comunicado_id = ID;
	SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_EMPLEADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_EMPLEADO`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_EMPLEADO`(IN ID INT, IN NDOCUMENTO VARCHAR(12), IN NOMBRE VARCHAR(45), IN APEPAT VARCHAR(45), IN APEMAT VARCHAR(45), IN FECHA DATE, IN MOVIL VARCHAR(9), IN DIRECCION VARCHAR(45), IN EMAIL VARCHAR(45), IN ESTATUS VARCHAR(20))
BEGIN
DECLARE NDOCUMENTOACTUAL VARCHAR(12);
DECLARE CANTIDAD INT;
SET @NDOCUMENTOACTUAL:= (SELECT emple_nrodocumento FROM empleado WHERE empleado_id=ID);
IF @NDOCUMENTOACTUAL = NDOCUMENTO THEN
	UPDATE empleado SET 
	emple_nrodocumento=NDOCUMENTO,
	emple_nombre=NOMBRE,
	emple_apepat=APEPAT,
	emple_apemat=APEMAT,
	emple_fechanacimiento= FECHA,
	emple_movil=MOVIL,
	emple_direccion=DIRECCION,
	emple_email=EMAIL,
	emple_estatus=ESTATUS
	WHERE empleado_id=ID;
	SELECT 1;
ELSE
	SET @CANTIDAD:=(SELECT COUNT(*) FROM empleado WHERE emple_nrodocumento=NDOCUMENTO);
	IF @CANTIDAD = 0 THEN
		UPDATE empleado SET 
		emple_nrodocumento=NDOCUMENTO,
		emple_nombre=NOMBRE,
		emple_apepat=APEPAT,
		emple_apemat=APEMAT,
		emple_fechanacimiento= FECHA,
		emple_movil=MOVIL,
		emple_direccion=DIRECCION,
		emple_email=EMAIL,
		emple_estatus=ESTATUS
		WHERE empleado_id=ID;
		SELECT 1; 
	ELSE
		SELECT 2;
	END IF;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_OFICIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_OFICIO`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_OFICIO`(IN ID INT,IN TITULO VARCHAR(255),IN DESCRIPCION VARCHAR(255),IN RUTAIMG VARCHAR(255),IN RUTADOC VARCHAR(255),IN ESTADO VARCHAR(40))
BEGIN
DECLARE RUTAACTUALDOC VARCHAR(255);
DECLARE RUTAACTUALIMG VARCHAR(255);
DECLARE RUTANUEVADOC VARCHAR(255);
DECLARE RUTANUEVAIMG VARCHAR(255);

SET @RUTANUEVAIMG = RUTAIMG;
SET @RUTANUEVADOC = RUTADOC;

SET @RUTAACTUALIMG:= (SELECT oficios.ofi_img_prev FROM oficios WHERE oficio_id=ID);
SET @RUTAACTUALDOC:= (SELECT oficios.ofi_documento FROM oficios WHERE oficio_id=ID);

IF RUTAIMG = '' THEN
	SET @RUTANUEVAIMG= @RUTAACTUALIMG;
END IF;

IF RUTADOC = '' THEN
	SET @RUTANUEVADOC= @RUTAACTUALDOC;
END IF;

	UPDATE oficios SET ofi_titulo = TITULO, ofi_descripcion = DESCRIPCION, ofi_img_prev = @RUTANUEVAIMG, ofi_documento = @RUTANUEVADOC, ofi_estado = ESTADO WHERE oficio_id = ID;
	SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_USUARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_USUARIO`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_USUARIO`(IN ID INT, IN IDEMPLEADO INT, IN IDAREA INT, IN ROL VARCHAR(25))
UPDATE usuario SET
usuario.empleado_id=IDEMPLEADO,
usuario.area_id = IDAREA,
usuario.usu_rol = ROL
WHERE usuario.usu_id = ID
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_USUARIO_ESTATUS
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_USUARIO_ESTATUS`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_USUARIO_ESTATUS`(IN ID INT, IN ESTATUS VARCHAR(25))
UPDATE usuario SET
usuario.usu_estatus=ESTATUS
WHERE usuario.usu_id=ID
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_AREA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_AREA`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_AREA`(IN NAREA VARCHAR(45))
BEGIN
DECLARE CANTIDAD INT;
SET @CANTIDAD:=(SELECT COUNT(*) FROM area WHERE area_nombre=NAREA);
IF @CANTIDAD = 0 THEN
	INSERT INTO area(area_nombre,area_fecha_registro)VALUES(NAREA,NOW());
	SELECT 1;
ELSE
	SELECT 2;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_COMUNICADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_COMUNICADO`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_COMUNICADO`(IN TITULO VARCHAR(255),IN DESCRIPCION VARCHAR(255),IN RUTAIMG VARCHAR(255),IN RUTADOC VARCHAR(255),IN IDAREA INT)
BEGIN
	INSERT INTO comunicados(com_titulo,com_descripcion,com_imgprev,com_documento,com_feccreacion,com_estado,area_origen_id)VALUES(TITULO,DESCRIPCION,RUTAIMG,RUTADOC,NOW(),'ACTIVO',IDAREA);
	SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_EMPLEADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_EMPLEADO`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_EMPLEADO`(IN NDOCUMENTO VARCHAR(12), IN NOMBRE VARCHAR(45), IN APEPAT VARCHAR(45), IN APEMAT VARCHAR(45), IN FECHA DATE, IN MOVIL VARCHAR(9), IN DIRECCION VARCHAR(45), IN EMAIL VARCHAR(45))
BEGIN
DECLARE CANTIDAD INT;
SET @CANTIDAD:=(SELECT COUNT(*) FROM empleado WHERE emple_nrodocumento=NDOCUMENTO);
IF @CANTIDAD = 0 THEN
	INSERT INTO empleado(emple_nrodocumento,emple_nombre,emple_apepat,emple_apemat,emple_fechanacimiento,emple_movil,emple_direccion,emple_email,emple_feccreacion,emple_estatus,emple_fotoperfil)VALUES(NDOCUMENTO,NOMBRE,APEPAT,APEMAT,FECHA,MOVIL,DIRECCION,EMAIL,CURDATE(),'ACTIVO','controller/empleado/foto/default.png');
	SELECT 1; 
ELSE
	SELECT 2;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_OFICIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_OFICIO`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_OFICIO`(IN TITULO VARCHAR(255),IN DESCRIPCION VARCHAR(255),IN RUTAIMG VARCHAR(255),IN RUTADOC VARCHAR(255),IN IDAREA INT)
BEGIN
	
	INSERT INTO oficios(ofi_titulo, ofi_descripcion,ofi_img_prev,ofi_documento,ofi_feccreacion,ofi_estado,area_origen_id)VALUES(TITULO,DESCRIPCION,RUTAIMG,RUTADOC,NOW(),'ACTIVO',IDAREA);
	SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_USUARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_USUARIO`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_USUARIO`(IN USU VARCHAR(45), IN CONTRA VARCHAR(255), IN IDEMPLEADO INT, IN IDAREA INT, IN ROL VARCHAR(25))
BEGIN
DECLARE CANTIDAD INT;
SET @CANTIDAD:=(SELECT COUNT(*) FROM usuario WHERE usu_usuario=USU);
IF @CANTIDAD = 0 THEN
	INSERT INTO usuario(usu_usuario,usu_contra,empleado_id,area_id,usu_rol,usu_feccreacion,usu_estatus,empresa_id)VALUES(USU,CONTRA,IDEMPLEADO,IDAREA,ROL,CURDATE(),'ACTIVO',1);
	SELECT 1; 
ELSE
	SELECT 2;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_VERIFICAR_USUARIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_VERIFICAR_USUARIO`;
delimiter ;;
CREATE PROCEDURE `SP_VERIFICAR_USUARIO`(IN USU VARCHAR(255))
SELECT
usuario.usu_id,
usuario.usu_usuario,
usuario.usu_contra,
usuario.usu_feccreacion,
usuario.usu_fecupdate,
usuario.usu_estatus,
usuario.usu_rol,
usuario.empresa_id,
usuario.empleado_id,
usuario.area_id,
area.area_nombre,
CONCAT_WS(' ',empleado.emple_nombre,empleado.emple_apepat,empleado.emple_apemat) as nombres,
empleado.emple_fotoperfil
FROM 
	usuario
	INNER JOIN
	area
	ON 
		usuario.area_id = area.area_cod
	INNER JOIN
	empleado
	ON 
		usuario.empleado_id = empleado.empleado_id
		WHERE usuario.usu_usuario = BINARY USU
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
