/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : web_ugel

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 10/04/2023 09:05:21
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, 'AREA DE ADMINISTRACION', '2023-03-17 09:10:23', 'ACTIVO');
INSERT INTO `area` VALUES (2, 'AREA DE GESTION PEDAGOGICA', '2023-03-20 14:49:13', 'ACTIVO');
INSERT INTO `area` VALUES (3, 'AREA DE GESTION INSTITUCIONAL', '2023-03-20 14:49:44', 'ACTIVO');
INSERT INTO `area` VALUES (4, 'DIRECCION', '2023-04-03 11:15:33', 'ACTIVO');

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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `comunicados` VALUES (22, 'VVVVVVVV', '2023-03-28 12:28:13', 'controller/comunicado/img/default.png', 'controller/comunicado/docs/ARCH28320231237.PDF', 1, 'VVVVVVV', 'ACTIVO');
INSERT INTO `comunicados` VALUES (23, 'SDFSD', '2023-03-28 12:29:05', 'controller/comunicado/img/default.png', 'controller/comunicado/docs/ARCH283202312670.PDF', 1, 'SEFSEF', 'ACTIVO');
INSERT INTO `comunicados` VALUES (24, 'SSSSSS', '2023-03-28 12:29:22', 'controller/comunicado/img/default.png', 'controller/comunicado/docs/ARCH283202312654.PDF', 1, 'SSSSS', 'ACTIVO');
INSERT INTO `comunicados` VALUES (25, 'SSSSSS MUNDO COMO ESTAS UGEL YUNGUYO', '2023-03-28 12:29:25', 'controller/comunicado/img/default.png', 'controller/comunicado/docs/ARCH283202312965.PDF', 1, 'SSSSS', 'ACTIVO');
INSERT INTO `comunicados` VALUES (26, 'COMUNICADO SOBRE ENTREGA DE MATERIALES PARA INSTITUCIONES EDUCATIVAS COMUNICADO SOBRE ENTREGA DE MATERIALES PARA INSTITUCIONES EDUCATIVASCOMUNICADO SOBRE ENTREGA DE MATERIALES PARA INSTITUCIONES EDUCATIVAS', '2023-03-31 12:30:51', 'controller/comunicado/img/IMG283202312117.PNG', 'controller/comunicado/docs/ARCH283202312725.PDF', 1, 'COMUNICADO SOBRE ENTREGA DE MATERIALES PARA INSTITUCIONES EDUCATIVAS', 'ACTIVO');

-- ----------------------------
-- Table structure for convocatorias
-- ----------------------------
DROP TABLE IF EXISTS `convocatorias`;
CREATE TABLE `convocatorias`  (
  `convocatoria_id` int NOT NULL AUTO_INCREMENT,
  `conv_titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `conv_fecpublicacion` datetime NULL DEFAULT NULL,
  `conv_bases` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `conv_preliminar_cv` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `conv_reclamos` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `conv_final_cv` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `conv_final` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `conv_estado` enum('ABIERTO','FINALIZADO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `conv_area_id` int NULL DEFAULT NULL,
  `conv_tipo` enum('CAS','DOCENTES','AUXILIARES','DIRECTIVOS','CAP') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`convocatoria_id`) USING BTREE,
  INDEX `conv_area_id`(`conv_area_id` ASC) USING BTREE,
  CONSTRAINT `convocatorias_ibfk_1` FOREIGN KEY (`conv_area_id`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of convocatorias
-- ----------------------------
INSERT INTO `convocatorias` VALUES (1, 'CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-28 00:00:00', 'controller/convocatorias/docs/CONV1283202312174.PDF', 'controller/convocatorias/docs/CONV2283202312893.PDF', 'controller/convocatorias/docs/CONV3283202312237.PDF', 'controller/convocatorias/docs/CONV4283202312237.PDF', 'controller/convocatorias/docs/CONV531320239502.PDF', 'ABIERTO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (2, 'CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-28 00:00:00', 'controller/convocatorias/docs/CONV1283202318251.PDF', '', '', '', '', 'FINALIZADO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (3, 'CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-28 00:00:00', 'controller/convocatorias/docs/CONV1283202310300.PDF', '', '', '', '', 'FINALIZADO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (4, 'CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-28 00:00:00', 'controller/convocatorias/docs/CONV1283202311221.PDF', 'controller/convocatorias/docs/CONV2283202311221.PDF', '', '', '', 'FINALIZADO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (6, 'CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-31 09:36:05', 'controller/convocatorias/docs/CONV131320239645.PDF', '', '', '', '', 'ABIERTO', 1, 'AUXILIARES');
INSERT INTO `convocatorias` VALUES (7, 'CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-31 09:36:22', 'controller/convocatorias/docs/CONV131320239629.PDF', '', '', '', '', 'ABIERTO', 1, 'DIRECTIVOS');
INSERT INTO `convocatorias` VALUES (8, 'CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-31 18:58:51', 'controller/convocatorias/docs/CONV1313202318850.PDF', '', '', '', '', 'ABIERTO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (9, 'FREDDY CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-03-31 18:59:12', 'controller/convocatorias/docs/CONV1313202318811.PDF', '', '', '', '', 'ABIERTO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (10, 'FREDDY CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-04-02 12:01:01', 'controller/convocatorias/docs/CONV124202312183.PDF', '', '', '', '', 'ABIERTO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (11, 'FREDDY CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-04-02 12:01:13', 'controller/convocatorias/docs/CONV124202312181.PDF', '', '', '', '', 'ABIERTO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (12, 'FREDDY CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-04-02 12:01:26', 'controller/convocatorias/docs/CONV12420231298.PDF', '', '', '', '', 'ABIERTO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (13, 'FREDDY CONVOCATORIA CAS N° 005 CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS – PROFESIONAL III PARA EQUIPO ITINERANTE DE CONVIVENCIA ESCOLAR', '2023-04-02 12:01:48', 'controller/convocatorias/docs/CONV124202312478.PDF', '', '', '', '', 'ABIERTO', 1, 'CAS');
INSERT INTO `convocatorias` VALUES (14, '.PAGE-ITEM', '2023-04-02 12:02:56', 'controller/convocatorias/docs/CONV124202312232.PDF', '', '', '', '', 'ABIERTO', 1, 'CAS');

-- ----------------------------
-- Table structure for directorio
-- ----------------------------
DROP TABLE IF EXISTS `directorio`;
CREATE TABLE `directorio`  (
  `directorio_id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int NULL DEFAULT NULL,
  `area_id` int NULL DEFAULT NULL,
  `dir_cargo` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `dir_profesion` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `dir_orden` int NULL DEFAULT NULL,
  PRIMARY KEY (`directorio_id`) USING BTREE,
  INDEX `empleado_id`(`empleado_id` ASC) USING BTREE,
  INDEX `area_id`(`area_id` ASC) USING BTREE,
  CONSTRAINT `directorio_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`empleado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `directorio_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of directorio
-- ----------------------------
INSERT INTO `directorio` VALUES (25, 11, 2, 'Director', 'LIC.', 1);
INSERT INTO `directorio` VALUES (26, 12, 1, 'Jefe de Administración', 'Ing.', 2);
INSERT INTO `directorio` VALUES (27, 13, 1, 'Esp. Remuenraciones', 'Lic.', 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES (1, 'FREDDY', 'HUAYNAPATA', 'UCHARICO', '2023-03-17', '1999-07-15', '73744393', '967444616', 'FREDDY.LEDIS099@GMAIL.COM', 'ACTIVO', 'JR. 31 DE MARZO S/NM', 'controller/empleado/foto/EMPLE34202311634.PNG');
INSERT INTO `empleado` VALUES (11, 'Efrain', 'Condori', 'Rivera', '2023-04-03', '2023-04-05', '78965412', '987456321', 'efraincondori34543@gmail.com', 'ACTIVO', 'JR. YUNGUYO', 'controller/empleado/foto/default.png');
INSERT INTO `empleado` VALUES (12, 'Jesus Henry', 'Rivera', 'Cauhuya', '2023-04-03', '2023-04-13', '745745', '987456231', 'ecoriverra@hotmail.com', 'ACTIVO', 'YUNGUYO', 'controller/empleado/foto/default.png');
INSERT INTO `empleado` VALUES (13, 'Obed Desiderio', 'Quispe', 'Torres', '2023-04-03', '2023-04-06', '6465', '987456321', 'obedfsdesiedro@gmail.com', 'ACTIVO', '123', 'controller/empleado/foto/default.png');

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
-- Table structure for modal
-- ----------------------------
DROP TABLE IF EXISTS `modal`;
CREATE TABLE `modal`  (
  `modal_id` int NOT NULL AUTO_INCREMENT,
  `modal_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `modal_imagen` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `modal_fecha` date NULL DEFAULT NULL,
  `modal_area_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`modal_id`) USING BTREE,
  INDEX `modal_area_id`(`modal_area_id` ASC) USING BTREE,
  CONSTRAINT `modal_ibfk_1` FOREIGN KEY (`modal_area_id`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modal
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oficios
-- ----------------------------
INSERT INTO `oficios` VALUES (3, 'FREDD MULTIKPLE', 'DESCP', '2023-03-25 20:57:43', 'controller/oficio/img/IMG313202310112.PNG', 'controller/oficio/docs/ARCH253202320346.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (4, 'CCCCCCC', 'CCCCCCCCCCCCC', '2023-03-25 21:06:02', 'controller/oficio/img/IMG263202320654.PNG', 'controller/oficio/docs/ARCH253202321410.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (5, 'FFFF', 'FFFFFFFFFF', '2023-03-28 10:35:05', 'controller/oficio/img/default.png', 'controller/oficio/docs/ARCH283202310820.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (6, 'XXXXXXXXXXXX', 'XXXXXXXXXX', '2023-03-28 12:23:35', 'controller/oficio/img/default.png', 'controller/oficio/docs/ARCH28320231229.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (7, 'PPP', 'PPPPPPPPP', '2023-03-28 12:24:49', 'controller/oficio/img/default.png', 'controller/oficio/docs/ARCH283202312630.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (8, 'PPP', 'PPPPPPPPP', '2023-03-28 12:24:55', 'controller/oficio/img/default.png', 'controller/oficio/docs/ARCH283202312261.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (9, 'OOOOOOO', 'OOOOOOO', '2023-03-28 12:26:57', 'controller/oficio/img/IMG283202312973.PNG', 'controller/oficio/docs/ARCH28320231262.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (10, 'OFICIO MULTIUPLE 012-2023  REUNION PARA TALLER DE PROYECTOS DE INVERSION', 'OFICIO MULTIUPLE 012-2023  REUNION PARA TALLER DE PROYECTOS DE INVERSIONOFICIO MULTIUPLE 012-2023  REUNION PARA TALLER DE PROYECTOS DE INVERSIONOFICIO MULTIUPLE 012-2023  REUNION PARA TALLER DE PROYECTOS DE INVERSION', '2023-03-31 09:58:14', 'controller/oficio/img/default.png', 'controller/oficio/docs/ARCH31320239578.PDF', 'ACTIVO', 1);
INSERT INTO `oficios` VALUES (11, 'OFICIO MULTIPLEN° 0025-2023-GRP-GRDS-DREP/UGEL-Y/AGP-EEIB', 'COMUNICA INICIO DE INSCRIPCION PARA LA EVALUACION DE DOMINIO DE\r\nLENGUA ORIGINARIA 2023. ', '2023-04-04 15:57:28', 'controller/oficio/img/IMG44202315505.JPG', 'controller/oficio/docs/ARCH44202315505.PDF', 'ACTIVO', 1);

-- ----------------------------
-- Table structure for reclamos
-- ----------------------------
DROP TABLE IF EXISTS `reclamos`;
CREATE TABLE `reclamos`  (
  `reclamo_id` int NOT NULL AUTO_INCREMENT,
  `tipo_doc` enum('DNI','Carnet de Extranjeria','Pasaporte') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_apepat` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_apemat` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_telefono` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `tipo_rec` enum('QUEJA','RECLAMO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_fecha` date NULL DEFAULT NULL,
  `rec_hora` time NULL DEFAULT NULL,
  `rec_asunto` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_archivo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_area_destino` int NULL DEFAULT NULL,
  `rec_documento` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `rec_fecha_registro` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`reclamo_id`) USING BTREE,
  INDEX `rec_area_destino`(`rec_area_destino` ASC) USING BTREE,
  CONSTRAINT `reclamos_ibfk_1` FOREIGN KEY (`rec_area_destino`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reclamos
-- ----------------------------
INSERT INTO `reclamos` VALUES (9, 'DNI', 'FREDDY WALTER', 'HUAYNAPATA', 'UCHARICO', 'JR. 31 DE MARZO S/N COPANI', '987654321', 'FREDDY.HU099@GMAIL.COM', 'RECLAMO', '2023-04-04', '14:43:42', 'OCURRIO CORTE DE ENERGIA', '', 1, '73744393', '2023-04-04 14:43:42');
INSERT INTO `reclamos` VALUES (10, 'DNI', 'JUAN ALBERTO', 'MAMANI', 'QUISPE', 'JR. YUNGUYO', '987456321', 'FREDDY.HU099@GMAIL.COM', 'RECLAMO', '2023-03-27', '20:46:00', 'APAGON DE LAPTOPS', 'controller/reclamo/archivos/ARCH44202314659.PDF', 1, '01878587', '2023-04-04 14:47:13');
INSERT INTO `reclamos` VALUES (11, 'DNI', 'ASFASF', 'ASFAS', 'FASFSA', 'FSAFASF', '3534543', 'FHUAYNAPATAU@EST.UNAP.EDU.PE', 'QUEJA', '2023-03-26', '16:52:00', 'DSADSA', 'controller/reclamo/archivos/ARCH44202314726.JPG', 1, '321423423', '2023-04-04 14:52:54');

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider`  (
  `slider_id` int NOT NULL AUTO_INCREMENT,
  `slider_titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `slider_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `slider_imagen` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `slider_feccreacion` datetime NULL DEFAULT NULL,
  `slider_area_origen_id` int NULL DEFAULT NULL,
  `slider_orden` int NULL DEFAULT NULL,
  `slider_estado` enum('ACTIVO','INACTIVO') CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`slider_id`) USING BTREE,
  INDEX `slider_area_origen_id`(`slider_area_origen_id` ASC) USING BTREE,
  CONSTRAINT `slider_ibfk_1` FOREIGN KEY (`slider_area_origen_id`) REFERENCES `area` (`area_cod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES (12, '', '', 'controller/slider/img/SLIDER54202316782.JPG', '2023-04-05 16:54:05', 1, 0, 'ACTIVO');
INSERT INTO `slider` VALUES (15, '', '', 'controller/slider/img/SLIDER54202317999.JPG', '2023-04-05 17:20:45', 1, 0, 'ACTIVO');

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

-- ----------------------------
-- Procedure structure for SP_BUSCAR_COMUNICADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_BUSCAR_COMUNICADO`;
delimiter ;;
CREATE PROCEDURE `SP_BUSCAR_COMUNICADO`(IN TEXTO VARCHAR(255))
SELECT
	comunicados.comunicado_id, 
	comunicados.com_descripcion, 
	comunicados.com_imgprev, 
	comunicados.com_feccreacion, 
	comunicados.com_documento, 
	comunicados.com_titulo
FROM
	comunicados
  WHERE com_titulo LIKE CONCAT('%', TEXTO, '%')
;;
delimiter ;

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
-- Procedure structure for SP_ELIMINAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_ELIMINAR_CONVOCATORIA`;
delimiter ;;
CREATE PROCEDURE `SP_ELIMINAR_CONVOCATORIA`(IN ID INT)
BEGIN
    DELETE FROM convocatorias WHERE convocatoria_id=ID;
    SELECT 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_ELIMINAR_DIRECTORIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_ELIMINAR_DIRECTORIO`;
delimiter ;;
CREATE PROCEDURE `SP_ELIMINAR_DIRECTORIO`(IN ID INT)
BEGIN
 DELETE FROM directorio WHERE directorio_id=ID;
 SELECT 1;
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
    DELETE FROM empleado WHERE empleado_id=ID;
    SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_ELIMINAR_MODAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_ELIMINAR_MODAL`;
delimiter ;;
CREATE PROCEDURE `SP_ELIMINAR_MODAL`(IN ID INT)
BEGIN
 DELETE FROM modal WHERE modal_id=ID;
 SELECT 1;
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
-- Procedure structure for SP_ELIMINAR_SLIDER
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_ELIMINAR_SLIDER`;
delimiter ;;
CREATE PROCEDURE `SP_ELIMINAR_SLIDER`(IN ID INT)
BEGIN
  DECLARE ESTADOACTUAL VARCHAR(30);
  SET @ESTADOACTUAL:= (SELECT slider_estado FROM slider WHERE slider_id=ID);
  IF @ESTADOACTUAL = 'ACTIVO' THEN
    SELECT 2;
  ELSE
    DELETE FROM slider WHERE slider_id=ID;
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
	comunicados.com_descripcion, 
	comunicados.com_feccreacion, 
	comunicados.com_imgprev, 
	comunicados.com_documento, 
	comunicados.com_titulo, 
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
-- Procedure structure for SP_LISTAR_COMUNICADOS_RECIENTES
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_COMUNICADOS_RECIENTES`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_COMUNICADOS_RECIENTES`(IN CANTIDAD INT)
SELECT
	comunicados.comunicado_id, 
	comunicados.com_descripcion, 
	comunicados.com_feccreacion, 
	comunicados.com_imgprev, 
	comunicados.com_titulo, 
	comunicados.com_estado
FROM
	comunicados ORDER BY com_feccreacion DESC LIMIT CANTIDAD
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_CONVOCATORIA`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_CONVOCATORIA`(IN TIPO VARCHAR(40))
SELECT
	convocatorias.convocatoria_id, 
	convocatorias.conv_titulo, 
	DATE_FORMAT(DATE(convocatorias.conv_fecpublicacion), '%d/%m/%Y') as fechapublicacion, 
	convocatorias.conv_bases, 
	convocatorias.conv_preliminar_cv, 
	convocatorias.conv_reclamos, 
	convocatorias.conv_final_cv, 
	convocatorias.conv_final, 
	convocatorias.conv_estado, 
	area.area_nombre, 
	convocatorias.conv_tipo
FROM
	convocatorias
	INNER JOIN
	area
	ON 
		convocatorias.conv_area_id = area.area_cod
		
		WHERE conv_tipo = TIPO ORDER BY conv_fecpublicacion DESC
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_CONVOCATORIAS_RECIENTES
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_CONVOCATORIAS_RECIENTES`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_CONVOCATORIAS_RECIENTES`(IN CANTIDAD INT)
SELECT
	convocatorias.convocatoria_id, 
	convocatorias.conv_titulo, 
	convocatorias.conv_fecpublicacion, 
	convocatorias.conv_estado, 
	convocatorias.conv_tipo
FROM
	convocatorias ORDER BY conv_fecpublicacion DESC LIMIT CANTIDAD
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_DIRECTORIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_DIRECTORIO`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_DIRECTORIO`()
SELECT
	directorio.directorio_id, 
	empleado.emple_nombre, 
	empleado.emple_apepat, 
	empleado.emple_apemat, 
	empleado.emple_email, 
	empleado.emple_movil, 
	empleado.emple_fotoperfil, 
	area.area_nombre, 
	directorio.dir_cargo, 
	directorio.dir_profesion,
	directorio.dir_orden,
	directorio.empleado_id,
	directorio.area_id,
	CONCAT_WS(' ',empleado.emple_nombre,empleado.emple_apepat,empleado.emple_apemat) AS namecomplet
FROM
	directorio
	INNER JOIN
	empleado
	ON 
		directorio.empleado_id = empleado.empleado_id
	INNER JOIN
	area
	ON 
		directorio.area_id = area.area_cod ORDER BY directorio.dir_orden ASC
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
-- Procedure structure for SP_LISTAR_MODAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_MODAL`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_MODAL`()
SELECT
	modal.modal_id, 
	modal.modal_desc, 
	modal.modal_imagen, 
	modal.modal_fecha, 
	area.area_nombre
FROM
	modal
	INNER JOIN
	area
	ON 
		modal.modal_area_id = area.area_cod
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
-- Procedure structure for SP_LISTAR_OFICIOS_RECIENTES
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_OFICIOS_RECIENTES`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_OFICIOS_RECIENTES`(IN CANTIDAD INT)
SELECT
	oficios.oficio_id, 
	oficios.ofi_titulo, 
	oficios.ofi_descripcion, 
	oficios.ofi_feccreacion, 
	oficios.ofi_img_prev, 
	oficios.ofi_estado
FROM
	oficios ORDER BY ofi_feccreacion DESC LIMIT CANTIDAD
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_RECLAMO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_RECLAMO`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_RECLAMO`()
SELECT
	reclamos.reclamo_id, 
	reclamos.tipo_doc, 
	reclamos.rec_nombre, 
	reclamos.rec_apepat, 
	reclamos.rec_apemat, 
	reclamos.rec_direccion, 
	reclamos.rec_telefono, 
	reclamos.rec_email, 
	reclamos.tipo_rec, 
	reclamos.rec_fecha, 
	reclamos.rec_hora, 
	reclamos.rec_asunto, 
	reclamos.rec_archivo, 
	reclamos.rec_documento, 
	reclamos.rec_fecha_registro, 
	area.area_nombre,
	CONCAT_WS(' ',reclamos.rec_nombre,reclamos.rec_apepat,reclamos.rec_apemat) AS administrado
FROM
	reclamos
	INNER JOIN
	area
	ON 
		reclamos.rec_area_destino = area.area_cod
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_LISTAR_SLIDER
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_LISTAR_SLIDER`;
delimiter ;;
CREATE PROCEDURE `SP_LISTAR_SLIDER`()
SELECT
	slider.slider_id, 
	slider.slider_titulo, 
	slider.slider_descripcion, 
	slider.slider_imagen, 
	slider.slider_feccreacion, 
	slider.slider_orden, 
	area.area_nombre,
	slider.slider_estado
FROM
	slider
	INNER JOIN
	area
	ON 
		slider.slider_area_origen_id = area.area_cod
		ORDER BY slider_orden ASC
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
-- Procedure structure for SP_MODIFCAR_SLIDER
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFCAR_SLIDER`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFCAR_SLIDER`(IN ID INT,IN TITULO VARCHAR(255),IN DESCRIPCION VARCHAR(255),IN RUTAIMG VARCHAR(255),IN ORDEN INT,IN ESTADO VARCHAR(40))
BEGIN
DECLARE RUTAACTUALIMG VARCHAR(255);
DECLARE RUTANUEVAIMG VARCHAR(255);

SET @RUTANUEVAIMG = RUTAIMG;

SET @RUTAACTUALIMG:= (SELECT slider_imagen FROM slider WHERE slider_id=ID);

IF RUTAIMG = '' THEN
	SET @RUTANUEVAIMG= @RUTAACTUALIMG;
END IF;

	UPDATE slider SET slider_titulo = TITULO, slider_descripcion = DESCRIPCION, slider_imagen = @RUTANUEVAIMG, slider_orden = ORDEN, slider_estado = ESTADO WHERE slider_id = ID;
	SELECT 1;
END
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
-- Procedure structure for SP_MODIFICAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_CONVOCATORIA`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_CONVOCATORIA`(IN ID INT,IN TITULO VARCHAR(255),IN RUTA1 VARCHAR(255),IN RUTA2 VARCHAR(255),IN RUTA3 VARCHAR(255),IN RUTA4 VARCHAR(255),IN RUTA5 VARCHAR(255), IN ESTADO VARCHAR(40))
BEGIN
DECLARE RUTAACTUALDOC1 VARCHAR(255);
DECLARE RUTAACTUALDOC2 VARCHAR(255);
DECLARE RUTAACTUALDOC3 VARCHAR(255);
DECLARE RUTAACTUALDOC4 VARCHAR(255);
DECLARE RUTAACTUALDOC5 VARCHAR(255);

DECLARE RUTANUEVADOC1 VARCHAR(255);
DECLARE RUTANUEVADOC2 VARCHAR(255);
DECLARE RUTANUEVADOC3 VARCHAR(255);
DECLARE RUTANUEVADOC4 VARCHAR(255);
DECLARE RUTANUEVADOC5 VARCHAR(255);


SET @RUTANUEVADOC1 = RUTA1;
SET @RUTANUEVADOC2 = RUTA2;
SET @RUTANUEVADOC3 = RUTA3;
SET @RUTANUEVADOC4 = RUTA4;
SET @RUTANUEVADOC5 = RUTA5;

SET @RUTAACTUALDOC1:= (SELECT conv_bases  FROM convocatorias WHERE convocatoria_id=ID);
SET @RUTAACTUALDOC2:= (SELECT conv_preliminar_cv  FROM convocatorias WHERE convocatoria_id=ID);
SET @RUTAACTUALDOC3:= (SELECT conv_reclamos  FROM convocatorias WHERE convocatoria_id=ID);
SET @RUTAACTUALDOC4:= (SELECT conv_final_cv  FROM convocatorias WHERE convocatoria_id=ID);
SET @RUTAACTUALDOC5:= (SELECT conv_final  FROM convocatorias WHERE convocatoria_id=ID);

IF RUTA1 = '' THEN
	SET @RUTANUEVADOC1= @RUTAACTUALDOC1;
END IF;
IF RUTA2 = '' THEN
	SET @RUTANUEVADOC2= @RUTAACTUALDOC2;
END IF;
IF RUTA3 = '' THEN
	SET @RUTANUEVADOC3= @RUTAACTUALDOC3;
END IF;
IF RUTA4 = '' THEN
	SET @RUTANUEVADOC4= @RUTAACTUALDOC4;
END IF;
IF RUTA5 = '' THEN
	SET @RUTANUEVADOC5= @RUTAACTUALDOC5;
END IF;

	UPDATE convocatorias SET conv_titulo = TITULO,conv_bases = @RUTANUEVADOC1,conv_preliminar_cv = @RUTANUEVADOC2,conv_reclamos = @RUTANUEVADOC3,conv_final_cv = @RUTANUEVADOC4,conv_final = @RUTANUEVADOC5, conv_estado = ESTADO WHERE convocatoria_id = ID;
	SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_DIRECTORIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_DIRECTORIO`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_DIRECTORIO`(IN ID INT,IN CARGO VARCHAR(255),IN AREA INT, IN EMPLEADO INT, IN PROFESION VARCHAR(40), IN ORDEN INT)
BEGIN
UPDATE directorio SET dir_cargo = CARGO, area_id = AREA, empleado_id = EMPLEADO, dir_profesion = PROFESION, dir_orden = ORDEN WHERE directorio_id = ID;
SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_MODIFICAR_EMPLEADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_EMPLEADO`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_EMPLEADO`(IN ID INT, IN NDOCUMENTO VARCHAR(12), IN NOMBRE VARCHAR(45), IN APEPAT VARCHAR(45), IN APEMAT VARCHAR(45), IN FECHA DATE, IN MOVIL VARCHAR(9), IN DIRECCION VARCHAR(45), IN EMAIL VARCHAR(45), IN ESTATUS VARCHAR(20),IN IMGRUT VARCHAR(255))
BEGIN
DECLARE RUTAACTUALIMG VARCHAR(255);
DECLARE RUTANUEVAIMG VARCHAR(255);
DECLARE NDOCUMENTOACTUAL VARCHAR(12);
DECLARE CANTIDAD INT;
SET @RUTANUEVAIMG = IMGRUT;


SET @RUTAACTUALIMG:= (SELECT empleado.emple_fotoperfil FROM empleado WHERE empleado_id=ID);
SET @NDOCUMENTOACTUAL:= (SELECT emple_nrodocumento FROM empleado WHERE empleado_id=ID);
IF IMGRUT = '' THEN
	SET @RUTANUEVAIMG= @RUTAACTUALIMG;
END IF;
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
	emple_estatus=ESTATUS,
	emple_fotoperfil = @RUTANUEVAIMG
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
		emple_estatus=ESTATUS,
		emple_fotoperfil = @RUTANUEVAIMG
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
-- Procedure structure for SP_MODIFICAR_MODAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_MODAL`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_MODAL`(IN ID INT,IN COMUNICADO VARCHAR(255),IN RUTA VARCHAR(255))
BEGIN
DECLARE RUTAACTUALIMG VARCHAR(255);
DECLARE RUTANUEVAIMG VARCHAR(255);

SET @RUTANUEVAIMG = RUTA;

SET @RUTAACTUALIMG:= (SELECT modal_imagen FROM modal WHERE modal_id=ID);

IF RUTA = '' THEN
	SET @RUTANUEVAIMG= @RUTAACTUALIMG;
END IF;

	UPDATE modal SET modal_desc=COMUNICADO,modal_imagen=@RUTANUEVAIMG WHERE modal_id=ID;
	SELECT 1;
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
-- Procedure structure for SP_MODIFICAR_SLIDER
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_MODIFICAR_SLIDER`;
delimiter ;;
CREATE PROCEDURE `SP_MODIFICAR_SLIDER`(IN ID INT,IN TITULO VARCHAR(255),IN DESCRIPCION VARCHAR(255),IN RUTAIMG VARCHAR(255),IN ORDEN INT,IN ESTADO VARCHAR(40))
BEGIN
DECLARE RUTAACTUALIMG VARCHAR(255);
DECLARE RUTANUEVAIMG VARCHAR(255);

SET @RUTANUEVAIMG = RUTAIMG;

SET @RUTAACTUALIMG:= (SELECT slider_imagen FROM slider WHERE slider_id=ID);

IF RUTAIMG = '' THEN
	SET @RUTANUEVAIMG= @RUTAACTUALIMG;
END IF;

	UPDATE slider SET slider_titulo = TITULO, slider_descripcion = DESCRIPCION, slider_imagen = @RUTANUEVAIMG, slider_orden = ORDEN, slider_estado = ESTADO WHERE slider_id = ID;
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
-- Procedure structure for SP_REGISTRAR_CONVOCATORIA
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_CONVOCATORIA`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_CONVOCATORIA`(IN TIPO VARCHAR(40),IN TITULO VARCHAR(255),IN RUTA1 VARCHAR(255),IN RUTA2 VARCHAR(255),IN RUTA3 VARCHAR(255),IN RUTA4 VARCHAR(255),IN RUTA5 VARCHAR(255),IN IDAREA INT)
BEGIN
INSERT INTO convocatorias(conv_titulo,conv_fecpublicacion,conv_bases,conv_preliminar_cv,conv_reclamos,conv_final_cv,conv_final,conv_estado,conv_area_id,conv_tipo)VALUES(TITULO,NOW(),RUTA1,RUTA2,RUTA3,RUTA4,RUTA5,'ABIERTO',IDAREA,TIPO);
SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_DIRECTORIO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_DIRECTORIO`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_DIRECTORIO`(IN CARGO VARCHAR(255),IN AREA INT, IN EMPLEADO INT, IN PROFESION VARCHAR(40), IN ORDEN INT)
BEGIN
INSERT INTO directorio(empleado_id,area_id,dir_cargo,dir_profesion,dir_orden)VALUES(EMPLEADO,AREA,CARGO,PROFESION,ORDEN);
SELECT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_EMPLEADO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_EMPLEADO`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_EMPLEADO`(IN NDOCUMENTO VARCHAR(12), IN NOMBRE VARCHAR(45), IN APEPAT VARCHAR(45), IN APEMAT VARCHAR(45), IN FECHA DATE, IN MOVIL VARCHAR(9), IN DIRECCION VARCHAR(45), IN EMAIL VARCHAR(45),IN FOTOURL VARCHAR(255))
BEGIN
DECLARE CANTIDAD INT;
SET @CANTIDAD:=(SELECT COUNT(*) FROM empleado WHERE emple_nrodocumento=NDOCUMENTO);
IF @CANTIDAD = 0 THEN
	INSERT INTO empleado(emple_nrodocumento,emple_nombre,emple_apepat,emple_apemat,emple_fechanacimiento,emple_movil,emple_direccion,emple_email,emple_feccreacion,emple_estatus,emple_fotoperfil)VALUES(NDOCUMENTO,NOMBRE,APEPAT,APEMAT,FECHA,MOVIL,DIRECCION,EMAIL,CURDATE(),'ACTIVO',FOTOURL);
	SELECT 1; 
ELSE
	SELECT 2;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_MODAL
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_MODAL`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_MODAL`(IN COMUNICADO VARCHAR(255),IN RUTA VARCHAR(255), IN IDAREA INT)
BEGIN
INSERT INTO  modal(modal_desc,modal_imagen,modal_fecha,modal_area_id)VALUES(COMUNICADO,RUTA,NOW(),IDAREA);
SELECT 1;
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
-- Procedure structure for SP_REGISTRAR_RECLAMO
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_RECLAMO`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_RECLAMO`(IN TIPODOC VARCHAR(40),IN NRODOC VARCHAR(40),IN NOMBRE VARCHAR(255),IN PATERNO VARCHAR(255),IN MATERNO VARCHAR(255), DIRECCION VARCHAR(255),IN TELEFONO VARCHAR(40),IN EMAIL VARCHAR(60),IN TIPOREC VARCHAR(60),IN FECHA DATE,IN HORA TIME,IN ASUNTO VARCHAR(255),IN DOCUMENTO VARCHAR(255))
BEGIN
INSERT INTO reclamos(tipo_doc,rec_documento,rec_nombre,rec_apepat,rec_apemat,rec_direccion,rec_telefono,rec_email,tipo_rec,rec_fecha,rec_hora,rec_asunto,rec_archivo,rec_area_destino,rec_fecha_registro)VALUES(TIPODOC,NRODOC,NOMBRE,PATERNO,MATERNO,DIRECCION,TELEFONO,EMAIL,TIPOREC,FECHA,HORA,ASUNTO,DOCUMENTO,1,NOW());
SELECT 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_REGISTRAR_SLIDER
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_REGISTRAR_SLIDER`;
delimiter ;;
CREATE PROCEDURE `SP_REGISTRAR_SLIDER`(IN TITULO VARCHAR(255),IN DESCRIPCION VARCHAR(255),IN RUTAIMG VARCHAR(255),IN ORDEN INT,IN IDAREA INT)
BEGIN
	INSERT INTO slider(slider_titulo,slider_descripcion,slider_imagen,slider_orden,slider_area_origen_id,slider_feccreacion,slider_estado)VALUES(TITULO,DESCRIPCION,RUTAIMG,ORDEN,IDAREA,NOW(),'ACTIVO');
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
-- Procedure structure for SP_TRAER_DOCUMENTO_COM
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_TRAER_DOCUMENTO_COM`;
delimiter ;;
CREATE PROCEDURE `SP_TRAER_DOCUMENTO_COM`(IN ID INT)
SELECT
	comunicados.comunicado_id, 
	comunicados.com_descripcion, 
	comunicados.com_feccreacion, 
	comunicados.com_imgprev, 
	comunicados.com_documento, 
	comunicados.com_titulo
FROM
	comunicados
	WHERE comunicado_id = ID
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SP_TRAER_DOCUMENTO_OFI
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_TRAER_DOCUMENTO_OFI`;
delimiter ;;
CREATE PROCEDURE `SP_TRAER_DOCUMENTO_OFI`(IN ID INT)
SELECT
	oficios.oficio_id, 
	oficios.ofi_titulo, 
	oficios.ofi_descripcion, 
	oficios.ofi_img_prev, 
	oficios.ofi_documento, 
	oficios.ofi_feccreacion
FROM
	oficios
	WHERE oficio_id= ID
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
