/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : dormitory

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2019-01-17 11:36:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminPhone` varchar(11) DEFAULT NULL,
  `adminPassword` varchar(50) DEFAULT NULL,
  `adminName` varchar(20) DEFAULT NULL,
  `adminSex` varchar(10) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  PRIMARY KEY (`adminId`),
  KEY `buildingId` (`buildingId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('3', '18235447205', '123123', '赵曼薛', '女', '17');
INSERT INTO `admin` VALUES ('17', '18235769048', '123123', '王五全', '男', '16');

-- ----------------------------
-- Table structure for `building`
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `buildingId` int(11) NOT NULL AUTO_INCREMENT,
  `buildingName` varchar(50) NOT NULL,
  `dormitoryCount` int(11) NOT NULL,
  `floorCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`buildingId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('16', '一号学士公寓楼', '20', '5');
INSERT INTO `building` VALUES ('17', '二号学士公寓楼', '30', '5');
INSERT INTO `building` VALUES ('18', '三号学士公寓', '20', '6');
INSERT INTO `building` VALUES ('19', '四号公寓楼', '30', '4');

-- ----------------------------
-- Table structure for `dormitory`
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory` (
  `dormitoryId` int(11) NOT NULL AUTO_INCREMENT,
  `dormitoryName` varchar(11) NOT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `bedCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`dormitoryId`),
  KEY `fk_dormitory_buldingId` (`buildingId`)
) ENGINE=InnoDB AUTO_INCREMENT=971 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO `dormitory` VALUES ('401', '101', '16', '6');
INSERT INTO `dormitory` VALUES ('402', '102', '16', '6');
INSERT INTO `dormitory` VALUES ('403', '103', '16', '6');
INSERT INTO `dormitory` VALUES ('404', '104', '16', '6');
INSERT INTO `dormitory` VALUES ('405', '105', '16', '6');
INSERT INTO `dormitory` VALUES ('406', '106', '16', '6');
INSERT INTO `dormitory` VALUES ('407', '107', '16', '6');
INSERT INTO `dormitory` VALUES ('408', '108', '16', '6');
INSERT INTO `dormitory` VALUES ('409', '109', '16', '6');
INSERT INTO `dormitory` VALUES ('410', '110', '16', '6');
INSERT INTO `dormitory` VALUES ('411', '111', '16', '6');
INSERT INTO `dormitory` VALUES ('412', '112', '16', '6');
INSERT INTO `dormitory` VALUES ('413', '113', '16', '6');
INSERT INTO `dormitory` VALUES ('414', '114', '16', '6');
INSERT INTO `dormitory` VALUES ('415', '115', '16', '6');
INSERT INTO `dormitory` VALUES ('416', '116', '16', '6');
INSERT INTO `dormitory` VALUES ('417', '117', '16', '6');
INSERT INTO `dormitory` VALUES ('418', '118', '16', '6');
INSERT INTO `dormitory` VALUES ('419', '119', '16', '6');
INSERT INTO `dormitory` VALUES ('420', '120', '16', '6');
INSERT INTO `dormitory` VALUES ('421', '201', '16', '6');
INSERT INTO `dormitory` VALUES ('422', '202', '16', '6');
INSERT INTO `dormitory` VALUES ('423', '203', '16', '6');
INSERT INTO `dormitory` VALUES ('424', '204', '16', '6');
INSERT INTO `dormitory` VALUES ('425', '205', '16', '6');
INSERT INTO `dormitory` VALUES ('426', '206', '16', '6');
INSERT INTO `dormitory` VALUES ('427', '207', '16', '6');
INSERT INTO `dormitory` VALUES ('428', '208', '16', '6');
INSERT INTO `dormitory` VALUES ('429', '209', '16', '6');
INSERT INTO `dormitory` VALUES ('430', '210', '16', '6');
INSERT INTO `dormitory` VALUES ('431', '211', '16', '6');
INSERT INTO `dormitory` VALUES ('432', '212', '16', '6');
INSERT INTO `dormitory` VALUES ('433', '213', '16', '6');
INSERT INTO `dormitory` VALUES ('434', '214', '16', '6');
INSERT INTO `dormitory` VALUES ('435', '215', '16', '6');
INSERT INTO `dormitory` VALUES ('436', '216', '16', '6');
INSERT INTO `dormitory` VALUES ('437', '217', '16', '6');
INSERT INTO `dormitory` VALUES ('438', '218', '16', '6');
INSERT INTO `dormitory` VALUES ('439', '219', '16', '6');
INSERT INTO `dormitory` VALUES ('440', '220', '16', '6');
INSERT INTO `dormitory` VALUES ('441', '301', '16', '6');
INSERT INTO `dormitory` VALUES ('442', '302', '16', '6');
INSERT INTO `dormitory` VALUES ('443', '303', '16', '6');
INSERT INTO `dormitory` VALUES ('444', '304', '16', '6');
INSERT INTO `dormitory` VALUES ('445', '305', '16', '6');
INSERT INTO `dormitory` VALUES ('446', '306', '16', '6');
INSERT INTO `dormitory` VALUES ('447', '307', '16', '6');
INSERT INTO `dormitory` VALUES ('448', '308', '16', '6');
INSERT INTO `dormitory` VALUES ('449', '309', '16', '6');
INSERT INTO `dormitory` VALUES ('450', '310', '16', '6');
INSERT INTO `dormitory` VALUES ('451', '311', '16', '6');
INSERT INTO `dormitory` VALUES ('452', '312', '16', '6');
INSERT INTO `dormitory` VALUES ('453', '313', '16', '6');
INSERT INTO `dormitory` VALUES ('454', '314', '16', '6');
INSERT INTO `dormitory` VALUES ('455', '315', '16', '6');
INSERT INTO `dormitory` VALUES ('456', '316', '16', '6');
INSERT INTO `dormitory` VALUES ('457', '317', '16', '6');
INSERT INTO `dormitory` VALUES ('458', '318', '16', '6');
INSERT INTO `dormitory` VALUES ('459', '319', '16', '6');
INSERT INTO `dormitory` VALUES ('460', '320', '16', '6');
INSERT INTO `dormitory` VALUES ('461', '401', '16', '6');
INSERT INTO `dormitory` VALUES ('462', '402', '16', '6');
INSERT INTO `dormitory` VALUES ('463', '403', '16', '6');
INSERT INTO `dormitory` VALUES ('464', '404', '16', '6');
INSERT INTO `dormitory` VALUES ('465', '405', '16', '6');
INSERT INTO `dormitory` VALUES ('466', '406', '16', '6');
INSERT INTO `dormitory` VALUES ('467', '407', '16', '6');
INSERT INTO `dormitory` VALUES ('468', '408', '16', '6');
INSERT INTO `dormitory` VALUES ('469', '409', '16', '6');
INSERT INTO `dormitory` VALUES ('470', '410', '16', '6');
INSERT INTO `dormitory` VALUES ('471', '411', '16', '6');
INSERT INTO `dormitory` VALUES ('472', '412', '16', '6');
INSERT INTO `dormitory` VALUES ('473', '413', '16', '6');
INSERT INTO `dormitory` VALUES ('474', '414', '16', '6');
INSERT INTO `dormitory` VALUES ('475', '415', '16', '6');
INSERT INTO `dormitory` VALUES ('476', '416', '16', '6');
INSERT INTO `dormitory` VALUES ('477', '417', '16', '6');
INSERT INTO `dormitory` VALUES ('478', '418', '16', '6');
INSERT INTO `dormitory` VALUES ('479', '419', '16', '6');
INSERT INTO `dormitory` VALUES ('480', '420', '16', '6');
INSERT INTO `dormitory` VALUES ('481', '501', '16', '6');
INSERT INTO `dormitory` VALUES ('482', '502', '16', '6');
INSERT INTO `dormitory` VALUES ('483', '503', '16', '6');
INSERT INTO `dormitory` VALUES ('484', '504', '16', '6');
INSERT INTO `dormitory` VALUES ('485', '505', '16', '6');
INSERT INTO `dormitory` VALUES ('486', '506', '16', '6');
INSERT INTO `dormitory` VALUES ('487', '507', '16', '6');
INSERT INTO `dormitory` VALUES ('488', '508', '16', '6');
INSERT INTO `dormitory` VALUES ('489', '509', '16', '6');
INSERT INTO `dormitory` VALUES ('490', '510', '16', '6');
INSERT INTO `dormitory` VALUES ('491', '511', '16', '6');
INSERT INTO `dormitory` VALUES ('492', '512', '16', '6');
INSERT INTO `dormitory` VALUES ('493', '513', '16', '6');
INSERT INTO `dormitory` VALUES ('494', '514', '16', '6');
INSERT INTO `dormitory` VALUES ('495', '515', '16', '6');
INSERT INTO `dormitory` VALUES ('496', '516', '16', '6');
INSERT INTO `dormitory` VALUES ('497', '517', '16', '6');
INSERT INTO `dormitory` VALUES ('498', '518', '16', '6');
INSERT INTO `dormitory` VALUES ('499', '519', '16', '6');
INSERT INTO `dormitory` VALUES ('500', '520', '16', '6');
INSERT INTO `dormitory` VALUES ('501', '101', '17', '6');
INSERT INTO `dormitory` VALUES ('502', '102', '17', '6');
INSERT INTO `dormitory` VALUES ('503', '103', '17', '6');
INSERT INTO `dormitory` VALUES ('504', '104', '17', '6');
INSERT INTO `dormitory` VALUES ('505', '105', '17', '6');
INSERT INTO `dormitory` VALUES ('506', '106', '17', '6');
INSERT INTO `dormitory` VALUES ('507', '107', '17', '6');
INSERT INTO `dormitory` VALUES ('508', '108', '17', '6');
INSERT INTO `dormitory` VALUES ('509', '109', '17', '6');
INSERT INTO `dormitory` VALUES ('510', '110', '17', '6');
INSERT INTO `dormitory` VALUES ('511', '111', '17', '6');
INSERT INTO `dormitory` VALUES ('512', '112', '17', '6');
INSERT INTO `dormitory` VALUES ('513', '113', '17', '6');
INSERT INTO `dormitory` VALUES ('514', '114', '17', '6');
INSERT INTO `dormitory` VALUES ('515', '115', '17', '6');
INSERT INTO `dormitory` VALUES ('516', '116', '17', '6');
INSERT INTO `dormitory` VALUES ('517', '117', '17', '6');
INSERT INTO `dormitory` VALUES ('518', '118', '17', '6');
INSERT INTO `dormitory` VALUES ('519', '119', '17', '6');
INSERT INTO `dormitory` VALUES ('520', '120', '17', '6');
INSERT INTO `dormitory` VALUES ('521', '201', '17', '6');
INSERT INTO `dormitory` VALUES ('522', '202', '17', '6');
INSERT INTO `dormitory` VALUES ('523', '203', '17', '6');
INSERT INTO `dormitory` VALUES ('524', '204', '17', '6');
INSERT INTO `dormitory` VALUES ('525', '205', '17', '6');
INSERT INTO `dormitory` VALUES ('526', '206', '17', '6');
INSERT INTO `dormitory` VALUES ('527', '207', '17', '6');
INSERT INTO `dormitory` VALUES ('528', '208', '17', '6');
INSERT INTO `dormitory` VALUES ('529', '209', '17', '6');
INSERT INTO `dormitory` VALUES ('530', '210', '17', '6');
INSERT INTO `dormitory` VALUES ('531', '211', '17', '6');
INSERT INTO `dormitory` VALUES ('532', '212', '17', '6');
INSERT INTO `dormitory` VALUES ('533', '213', '17', '6');
INSERT INTO `dormitory` VALUES ('534', '214', '17', '6');
INSERT INTO `dormitory` VALUES ('535', '215', '17', '6');
INSERT INTO `dormitory` VALUES ('536', '216', '17', '6');
INSERT INTO `dormitory` VALUES ('537', '217', '17', '6');
INSERT INTO `dormitory` VALUES ('538', '218', '17', '6');
INSERT INTO `dormitory` VALUES ('539', '219', '17', '6');
INSERT INTO `dormitory` VALUES ('540', '220', '17', '6');
INSERT INTO `dormitory` VALUES ('541', '301', '17', '6');
INSERT INTO `dormitory` VALUES ('542', '302', '17', '6');
INSERT INTO `dormitory` VALUES ('543', '303', '17', '6');
INSERT INTO `dormitory` VALUES ('544', '304', '17', '6');
INSERT INTO `dormitory` VALUES ('545', '305', '17', '6');
INSERT INTO `dormitory` VALUES ('546', '306', '17', '6');
INSERT INTO `dormitory` VALUES ('547', '307', '17', '6');
INSERT INTO `dormitory` VALUES ('548', '308', '17', '6');
INSERT INTO `dormitory` VALUES ('549', '309', '17', '6');
INSERT INTO `dormitory` VALUES ('550', '310', '17', '6');
INSERT INTO `dormitory` VALUES ('551', '311', '17', '6');
INSERT INTO `dormitory` VALUES ('552', '312', '17', '6');
INSERT INTO `dormitory` VALUES ('553', '313', '17', '6');
INSERT INTO `dormitory` VALUES ('554', '314', '17', '6');
INSERT INTO `dormitory` VALUES ('555', '315', '17', '6');
INSERT INTO `dormitory` VALUES ('556', '316', '17', '6');
INSERT INTO `dormitory` VALUES ('557', '317', '17', '6');
INSERT INTO `dormitory` VALUES ('558', '318', '17', '6');
INSERT INTO `dormitory` VALUES ('559', '319', '17', '6');
INSERT INTO `dormitory` VALUES ('560', '320', '17', '6');
INSERT INTO `dormitory` VALUES ('561', '401', '17', '6');
INSERT INTO `dormitory` VALUES ('562', '402', '17', '6');
INSERT INTO `dormitory` VALUES ('563', '403', '17', '6');
INSERT INTO `dormitory` VALUES ('564', '404', '17', '6');
INSERT INTO `dormitory` VALUES ('565', '405', '17', '6');
INSERT INTO `dormitory` VALUES ('566', '406', '17', '6');
INSERT INTO `dormitory` VALUES ('567', '407', '17', '6');
INSERT INTO `dormitory` VALUES ('568', '408', '17', '6');
INSERT INTO `dormitory` VALUES ('569', '409', '17', '6');
INSERT INTO `dormitory` VALUES ('570', '410', '17', '6');
INSERT INTO `dormitory` VALUES ('571', '411', '17', '6');
INSERT INTO `dormitory` VALUES ('572', '412', '17', '6');
INSERT INTO `dormitory` VALUES ('573', '413', '17', '6');
INSERT INTO `dormitory` VALUES ('574', '414', '17', '6');
INSERT INTO `dormitory` VALUES ('575', '415', '17', '6');
INSERT INTO `dormitory` VALUES ('576', '416', '17', '6');
INSERT INTO `dormitory` VALUES ('577', '417', '17', '6');
INSERT INTO `dormitory` VALUES ('578', '418', '17', '6');
INSERT INTO `dormitory` VALUES ('579', '419', '17', '6');
INSERT INTO `dormitory` VALUES ('580', '420', '17', '6');
INSERT INTO `dormitory` VALUES ('704', '504', '17', '6');
INSERT INTO `dormitory` VALUES ('705', '505', '17', '6');
INSERT INTO `dormitory` VALUES ('706', '506', '17', '6');
INSERT INTO `dormitory` VALUES ('707', '507', '17', '6');
INSERT INTO `dormitory` VALUES ('708', '508', '17', '6');
INSERT INTO `dormitory` VALUES ('709', '509', '17', '6');
INSERT INTO `dormitory` VALUES ('710', '510', '17', '6');
INSERT INTO `dormitory` VALUES ('711', '511', '17', '6');
INSERT INTO `dormitory` VALUES ('712', '512', '17', '6');
INSERT INTO `dormitory` VALUES ('731', '101', '18', '6');
INSERT INTO `dormitory` VALUES ('732', '102', '18', '6');
INSERT INTO `dormitory` VALUES ('733', '103', '18', '6');
INSERT INTO `dormitory` VALUES ('734', '104', '18', '6');
INSERT INTO `dormitory` VALUES ('735', '105', '18', '6');
INSERT INTO `dormitory` VALUES ('736', '106', '18', '6');
INSERT INTO `dormitory` VALUES ('737', '107', '18', '6');
INSERT INTO `dormitory` VALUES ('738', '108', '18', '6');
INSERT INTO `dormitory` VALUES ('739', '109', '18', '6');
INSERT INTO `dormitory` VALUES ('740', '110', '18', '6');
INSERT INTO `dormitory` VALUES ('741', '111', '18', '6');
INSERT INTO `dormitory` VALUES ('742', '112', '18', '6');
INSERT INTO `dormitory` VALUES ('743', '113', '18', '6');
INSERT INTO `dormitory` VALUES ('744', '114', '18', '6');
INSERT INTO `dormitory` VALUES ('745', '115', '18', '6');
INSERT INTO `dormitory` VALUES ('746', '116', '18', '6');
INSERT INTO `dormitory` VALUES ('747', '117', '18', '6');
INSERT INTO `dormitory` VALUES ('748', '118', '18', '6');
INSERT INTO `dormitory` VALUES ('749', '119', '18', '6');
INSERT INTO `dormitory` VALUES ('750', '120', '18', '6');
INSERT INTO `dormitory` VALUES ('751', '201', '18', '6');
INSERT INTO `dormitory` VALUES ('752', '202', '18', '6');
INSERT INTO `dormitory` VALUES ('753', '203', '18', '6');
INSERT INTO `dormitory` VALUES ('754', '204', '18', '6');
INSERT INTO `dormitory` VALUES ('755', '205', '18', '6');
INSERT INTO `dormitory` VALUES ('756', '206', '18', '6');
INSERT INTO `dormitory` VALUES ('757', '207', '18', '6');
INSERT INTO `dormitory` VALUES ('758', '208', '18', '6');
INSERT INTO `dormitory` VALUES ('759', '209', '18', '6');
INSERT INTO `dormitory` VALUES ('760', '210', '18', '6');
INSERT INTO `dormitory` VALUES ('761', '211', '18', '6');
INSERT INTO `dormitory` VALUES ('762', '212', '18', '6');
INSERT INTO `dormitory` VALUES ('763', '213', '18', '6');
INSERT INTO `dormitory` VALUES ('764', '214', '18', '6');
INSERT INTO `dormitory` VALUES ('765', '215', '18', '6');
INSERT INTO `dormitory` VALUES ('766', '216', '18', '6');
INSERT INTO `dormitory` VALUES ('767', '217', '18', '6');
INSERT INTO `dormitory` VALUES ('768', '218', '18', '6');
INSERT INTO `dormitory` VALUES ('769', '219', '18', '6');
INSERT INTO `dormitory` VALUES ('770', '220', '18', '6');
INSERT INTO `dormitory` VALUES ('771', '301', '18', '6');
INSERT INTO `dormitory` VALUES ('772', '302', '18', '6');
INSERT INTO `dormitory` VALUES ('773', '303', '18', '6');
INSERT INTO `dormitory` VALUES ('774', '304', '18', '6');
INSERT INTO `dormitory` VALUES ('775', '305', '18', '6');
INSERT INTO `dormitory` VALUES ('776', '306', '18', '6');
INSERT INTO `dormitory` VALUES ('777', '307', '18', '6');
INSERT INTO `dormitory` VALUES ('778', '308', '18', '6');
INSERT INTO `dormitory` VALUES ('779', '309', '18', '6');
INSERT INTO `dormitory` VALUES ('780', '310', '18', '6');
INSERT INTO `dormitory` VALUES ('781', '311', '18', '6');
INSERT INTO `dormitory` VALUES ('782', '312', '18', '6');
INSERT INTO `dormitory` VALUES ('783', '313', '18', '6');
INSERT INTO `dormitory` VALUES ('784', '314', '18', '6');
INSERT INTO `dormitory` VALUES ('785', '315', '18', '6');
INSERT INTO `dormitory` VALUES ('786', '316', '18', '6');
INSERT INTO `dormitory` VALUES ('787', '317', '18', '6');
INSERT INTO `dormitory` VALUES ('788', '318', '18', '6');
INSERT INTO `dormitory` VALUES ('789', '319', '18', '6');
INSERT INTO `dormitory` VALUES ('790', '320', '18', '6');
INSERT INTO `dormitory` VALUES ('791', '401', '18', '6');
INSERT INTO `dormitory` VALUES ('792', '402', '18', '6');
INSERT INTO `dormitory` VALUES ('793', '403', '18', '6');
INSERT INTO `dormitory` VALUES ('794', '404', '18', '6');
INSERT INTO `dormitory` VALUES ('795', '405', '18', '6');
INSERT INTO `dormitory` VALUES ('796', '406', '18', '6');
INSERT INTO `dormitory` VALUES ('797', '407', '18', '6');
INSERT INTO `dormitory` VALUES ('798', '408', '18', '6');
INSERT INTO `dormitory` VALUES ('799', '409', '18', '6');
INSERT INTO `dormitory` VALUES ('800', '410', '18', '6');
INSERT INTO `dormitory` VALUES ('801', '411', '18', '6');
INSERT INTO `dormitory` VALUES ('802', '412', '18', '6');
INSERT INTO `dormitory` VALUES ('803', '413', '18', '6');
INSERT INTO `dormitory` VALUES ('804', '414', '18', '6');
INSERT INTO `dormitory` VALUES ('805', '415', '18', '6');
INSERT INTO `dormitory` VALUES ('806', '416', '18', '6');
INSERT INTO `dormitory` VALUES ('807', '417', '18', '6');
INSERT INTO `dormitory` VALUES ('808', '418', '18', '6');
INSERT INTO `dormitory` VALUES ('809', '419', '18', '6');
INSERT INTO `dormitory` VALUES ('810', '420', '18', '6');
INSERT INTO `dormitory` VALUES ('811', '501', '18', '6');
INSERT INTO `dormitory` VALUES ('812', '502', '18', '6');
INSERT INTO `dormitory` VALUES ('813', '503', '18', '6');
INSERT INTO `dormitory` VALUES ('814', '504', '18', '6');
INSERT INTO `dormitory` VALUES ('815', '505', '18', '6');
INSERT INTO `dormitory` VALUES ('816', '506', '18', '6');
INSERT INTO `dormitory` VALUES ('817', '507', '18', '6');
INSERT INTO `dormitory` VALUES ('818', '508', '18', '6');
INSERT INTO `dormitory` VALUES ('819', '509', '18', '6');
INSERT INTO `dormitory` VALUES ('820', '510', '18', '6');
INSERT INTO `dormitory` VALUES ('821', '511', '18', '6');
INSERT INTO `dormitory` VALUES ('822', '512', '18', '6');
INSERT INTO `dormitory` VALUES ('823', '513', '18', '6');
INSERT INTO `dormitory` VALUES ('824', '514', '18', '6');
INSERT INTO `dormitory` VALUES ('825', '515', '18', '6');
INSERT INTO `dormitory` VALUES ('826', '516', '18', '6');
INSERT INTO `dormitory` VALUES ('827', '517', '18', '6');
INSERT INTO `dormitory` VALUES ('828', '518', '18', '6');
INSERT INTO `dormitory` VALUES ('829', '519', '18', '6');
INSERT INTO `dormitory` VALUES ('830', '520', '18', '6');
INSERT INTO `dormitory` VALUES ('831', '601', '18', '6');
INSERT INTO `dormitory` VALUES ('832', '602', '18', '6');
INSERT INTO `dormitory` VALUES ('833', '603', '18', '6');
INSERT INTO `dormitory` VALUES ('834', '604', '18', '6');
INSERT INTO `dormitory` VALUES ('835', '605', '18', '6');
INSERT INTO `dormitory` VALUES ('836', '606', '18', '6');
INSERT INTO `dormitory` VALUES ('837', '607', '18', '6');
INSERT INTO `dormitory` VALUES ('838', '608', '18', '6');
INSERT INTO `dormitory` VALUES ('839', '609', '18', '6');
INSERT INTO `dormitory` VALUES ('840', '610', '18', '6');
INSERT INTO `dormitory` VALUES ('841', '611', '18', '6');
INSERT INTO `dormitory` VALUES ('842', '612', '18', '6');
INSERT INTO `dormitory` VALUES ('843', '613', '18', '6');
INSERT INTO `dormitory` VALUES ('844', '614', '18', '6');
INSERT INTO `dormitory` VALUES ('845', '615', '18', '6');
INSERT INTO `dormitory` VALUES ('846', '616', '18', '6');
INSERT INTO `dormitory` VALUES ('847', '617', '18', '6');
INSERT INTO `dormitory` VALUES ('848', '618', '18', '6');
INSERT INTO `dormitory` VALUES ('849', '619', '18', '6');
INSERT INTO `dormitory` VALUES ('850', '620', '18', '6');
INSERT INTO `dormitory` VALUES ('851', '101', '19', '6');
INSERT INTO `dormitory` VALUES ('852', '102', '19', '6');
INSERT INTO `dormitory` VALUES ('853', '103', '19', '6');
INSERT INTO `dormitory` VALUES ('854', '104', '19', '6');
INSERT INTO `dormitory` VALUES ('855', '105', '19', '6');
INSERT INTO `dormitory` VALUES ('856', '106', '19', '6');
INSERT INTO `dormitory` VALUES ('857', '107', '19', '6');
INSERT INTO `dormitory` VALUES ('858', '108', '19', '6');
INSERT INTO `dormitory` VALUES ('859', '109', '19', '6');
INSERT INTO `dormitory` VALUES ('860', '110', '19', '6');
INSERT INTO `dormitory` VALUES ('861', '111', '19', '6');
INSERT INTO `dormitory` VALUES ('862', '112', '19', '6');
INSERT INTO `dormitory` VALUES ('863', '113', '19', '6');
INSERT INTO `dormitory` VALUES ('864', '114', '19', '6');
INSERT INTO `dormitory` VALUES ('865', '115', '19', '6');
INSERT INTO `dormitory` VALUES ('866', '116', '19', '6');
INSERT INTO `dormitory` VALUES ('867', '117', '19', '6');
INSERT INTO `dormitory` VALUES ('868', '118', '19', '6');
INSERT INTO `dormitory` VALUES ('869', '119', '19', '6');
INSERT INTO `dormitory` VALUES ('870', '120', '19', '6');
INSERT INTO `dormitory` VALUES ('871', '121', '19', '6');
INSERT INTO `dormitory` VALUES ('872', '122', '19', '6');
INSERT INTO `dormitory` VALUES ('873', '123', '19', '6');
INSERT INTO `dormitory` VALUES ('874', '124', '19', '6');
INSERT INTO `dormitory` VALUES ('875', '125', '19', '6');
INSERT INTO `dormitory` VALUES ('876', '126', '19', '6');
INSERT INTO `dormitory` VALUES ('877', '127', '19', '6');
INSERT INTO `dormitory` VALUES ('878', '128', '19', '6');
INSERT INTO `dormitory` VALUES ('879', '129', '19', '6');
INSERT INTO `dormitory` VALUES ('880', '130', '19', '6');
INSERT INTO `dormitory` VALUES ('881', '201', '19', '6');
INSERT INTO `dormitory` VALUES ('882', '202', '19', '6');
INSERT INTO `dormitory` VALUES ('883', '203', '19', '6');
INSERT INTO `dormitory` VALUES ('884', '204', '19', '6');
INSERT INTO `dormitory` VALUES ('885', '205', '19', '6');
INSERT INTO `dormitory` VALUES ('886', '206', '19', '6');
INSERT INTO `dormitory` VALUES ('887', '207', '19', '6');
INSERT INTO `dormitory` VALUES ('888', '208', '19', '6');
INSERT INTO `dormitory` VALUES ('889', '209', '19', '6');
INSERT INTO `dormitory` VALUES ('890', '210', '19', '6');
INSERT INTO `dormitory` VALUES ('891', '211', '19', '6');
INSERT INTO `dormitory` VALUES ('892', '212', '19', '6');
INSERT INTO `dormitory` VALUES ('893', '213', '19', '6');
INSERT INTO `dormitory` VALUES ('894', '214', '19', '6');
INSERT INTO `dormitory` VALUES ('895', '215', '19', '6');
INSERT INTO `dormitory` VALUES ('896', '216', '19', '6');
INSERT INTO `dormitory` VALUES ('897', '217', '19', '6');
INSERT INTO `dormitory` VALUES ('898', '218', '19', '6');
INSERT INTO `dormitory` VALUES ('899', '219', '19', '6');
INSERT INTO `dormitory` VALUES ('900', '220', '19', '6');
INSERT INTO `dormitory` VALUES ('901', '221', '19', '6');
INSERT INTO `dormitory` VALUES ('902', '222', '19', '6');
INSERT INTO `dormitory` VALUES ('903', '223', '19', '6');
INSERT INTO `dormitory` VALUES ('904', '224', '19', '6');
INSERT INTO `dormitory` VALUES ('905', '225', '19', '6');
INSERT INTO `dormitory` VALUES ('906', '226', '19', '6');
INSERT INTO `dormitory` VALUES ('907', '227', '19', '6');
INSERT INTO `dormitory` VALUES ('908', '228', '19', '6');
INSERT INTO `dormitory` VALUES ('909', '229', '19', '6');
INSERT INTO `dormitory` VALUES ('910', '230', '19', '6');
INSERT INTO `dormitory` VALUES ('911', '301', '19', '6');
INSERT INTO `dormitory` VALUES ('912', '302', '19', '6');
INSERT INTO `dormitory` VALUES ('913', '303', '19', '6');
INSERT INTO `dormitory` VALUES ('914', '304', '19', '6');
INSERT INTO `dormitory` VALUES ('915', '305', '19', '6');
INSERT INTO `dormitory` VALUES ('916', '306', '19', '6');
INSERT INTO `dormitory` VALUES ('917', '307', '19', '6');
INSERT INTO `dormitory` VALUES ('918', '308', '19', '6');
INSERT INTO `dormitory` VALUES ('919', '309', '19', '6');
INSERT INTO `dormitory` VALUES ('920', '310', '19', '6');
INSERT INTO `dormitory` VALUES ('921', '311', '19', '6');
INSERT INTO `dormitory` VALUES ('922', '312', '19', '6');
INSERT INTO `dormitory` VALUES ('923', '313', '19', '6');
INSERT INTO `dormitory` VALUES ('924', '314', '19', '6');
INSERT INTO `dormitory` VALUES ('925', '315', '19', '6');
INSERT INTO `dormitory` VALUES ('926', '316', '19', '6');
INSERT INTO `dormitory` VALUES ('927', '317', '19', '6');
INSERT INTO `dormitory` VALUES ('928', '318', '19', '6');
INSERT INTO `dormitory` VALUES ('929', '319', '19', '6');
INSERT INTO `dormitory` VALUES ('930', '320', '19', '6');
INSERT INTO `dormitory` VALUES ('931', '321', '19', '6');
INSERT INTO `dormitory` VALUES ('932', '322', '19', '6');
INSERT INTO `dormitory` VALUES ('933', '323', '19', '6');
INSERT INTO `dormitory` VALUES ('934', '324', '19', '6');
INSERT INTO `dormitory` VALUES ('935', '325', '19', '6');
INSERT INTO `dormitory` VALUES ('936', '326', '19', '6');
INSERT INTO `dormitory` VALUES ('937', '327', '19', '6');
INSERT INTO `dormitory` VALUES ('938', '328', '19', '6');
INSERT INTO `dormitory` VALUES ('939', '329', '19', '6');
INSERT INTO `dormitory` VALUES ('940', '330', '19', '6');
INSERT INTO `dormitory` VALUES ('941', '401', '19', '6');
INSERT INTO `dormitory` VALUES ('942', '402', '19', '6');
INSERT INTO `dormitory` VALUES ('943', '403', '19', '6');
INSERT INTO `dormitory` VALUES ('944', '404', '19', '6');
INSERT INTO `dormitory` VALUES ('945', '405', '19', '6');
INSERT INTO `dormitory` VALUES ('946', '406', '19', '6');
INSERT INTO `dormitory` VALUES ('947', '407', '19', '6');
INSERT INTO `dormitory` VALUES ('948', '408', '19', '6');
INSERT INTO `dormitory` VALUES ('949', '409', '19', '6');
INSERT INTO `dormitory` VALUES ('950', '410', '19', '6');
INSERT INTO `dormitory` VALUES ('951', '411', '19', '6');
INSERT INTO `dormitory` VALUES ('952', '412', '19', '6');
INSERT INTO `dormitory` VALUES ('953', '413', '19', '6');
INSERT INTO `dormitory` VALUES ('954', '414', '19', '6');
INSERT INTO `dormitory` VALUES ('955', '415', '19', '6');
INSERT INTO `dormitory` VALUES ('956', '416', '19', '6');
INSERT INTO `dormitory` VALUES ('957', '417', '19', '6');
INSERT INTO `dormitory` VALUES ('958', '418', '19', '6');
INSERT INTO `dormitory` VALUES ('959', '419', '19', '6');
INSERT INTO `dormitory` VALUES ('960', '420', '19', '6');
INSERT INTO `dormitory` VALUES ('961', '421', '19', '6');
INSERT INTO `dormitory` VALUES ('962', '422', '19', '6');
INSERT INTO `dormitory` VALUES ('963', '423', '19', '6');
INSERT INTO `dormitory` VALUES ('964', '424', '19', '6');
INSERT INTO `dormitory` VALUES ('965', '425', '19', '6');
INSERT INTO `dormitory` VALUES ('966', '426', '19', '6');
INSERT INTO `dormitory` VALUES ('967', '427', '19', '6');
INSERT INTO `dormitory` VALUES ('968', '428', '19', '6');
INSERT INTO `dormitory` VALUES ('969', '429', '19', '6');
INSERT INTO `dormitory` VALUES ('970', '430', '19', '6');

-- ----------------------------
-- Table structure for `maintain`
-- ----------------------------
DROP TABLE IF EXISTS `maintain`;
CREATE TABLE `maintain` (
  `maintainId` int(11) NOT NULL AUTO_INCREMENT,
  `subtime` date DEFAULT NULL,
  `maintainTime` date DEFAULT NULL,
  `maintainStatu` int(2) DEFAULT NULL,
  `maintainComment` varchar(200) DEFAULT NULL,
  `studentId` varchar(11) DEFAULT NULL,
  `dormitoryId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  PRIMARY KEY (`maintainId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain
-- ----------------------------
INSERT INTO `maintain` VALUES ('1', '2018-12-24', '2018-12-27', '2', '我们宿舍门锁和空调都坏啦', '10', '558', '17');
INSERT INTO `maintain` VALUES ('2', '2018-12-26', '2018-12-27', '2', '空调没修好', '10', '558', '17');
INSERT INTO `maintain` VALUES ('3', '2018-12-27', '2018-12-28', '2', '玻璃坏啦', '10', '558', '17');
INSERT INTO `maintain` VALUES ('4', '2018-12-27', '2018-12-28', '2', '暖气不热', '10', '558', '17');
INSERT INTO `maintain` VALUES ('5', '2018-12-27', null, '1', '空调坏掉啦', '10', '558', '17');
INSERT INTO `maintain` VALUES ('6', '2018-12-27', null, '1', '水管坏啦', '10', '558', '17');
INSERT INTO `maintain` VALUES ('7', '2019-01-07', '2019-01-07', '2', '宿舍的空调坏掉啦！急需维修', '31', '402', '16');
INSERT INTO `maintain` VALUES ('8', '2019-01-07', null, '1', '门锁坏啦，麻烦尽快维修', '31', '402', '16');
INSERT INTO `maintain` VALUES ('9', '2019-01-07', null, '1', '宿舍暖气不热 ，，申请维修。。', '11', '501', '17');
INSERT INTO `maintain` VALUES ('10', '2019-01-10', '2019-01-10', '2', '我们宿舍的空调坏啦', '31', '402', '16');
INSERT INTO `maintain` VALUES ('11', '2019-01-17', '2019-01-17', '2', '需要维修我们宿舍的空调，谢谢！', '31', '402', '16');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `managerId` int(11) NOT NULL AUTO_INCREMENT,
  `managerPhone` varchar(11) DEFAULT NULL,
  `managerPassword` varchar(50) DEFAULT NULL,
  `managerName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`managerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '13103496289', 'admin', '霍茶傲');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `studyId` varchar(20) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `dormitoryId` int(11) DEFAULT NULL,
  `studentPassword` varchar(20) DEFAULT NULL,
  `studentName` varchar(20) DEFAULT NULL,
  `studentSex` varchar(2) DEFAULT NULL,
  `institute` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  KEY `buildingId` (`buildingId`),
  KEY `dormitoryId` (`dormitoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('11', '20191510009', '17', '501', '123456', '霍三辉', '男', '动物科技学院', '动物检疫');
INSERT INTO `student` VALUES ('14', '20191510012', '16', '401', '123456', '马玉芸', '女', '动物科技学院', '动物检疫');
INSERT INTO `student` VALUES ('15', '20191510013', '17', '502', '123456', '秦艺菲', '男', '林学院', '林木管理');
INSERT INTO `student` VALUES ('17', '20191510015', '17', '502', '123456', '曹胡', '男', '林学院', '林木管理');
INSERT INTO `student` VALUES ('18', '20191510016', '16', '421', '123456', '赵雪琳', '女', '林学院', '林木管理');
INSERT INTO `student` VALUES ('20', '20191510018', '16', '421', '123456', '刘东倩', '女', '林学院', '林木管理');
INSERT INTO `student` VALUES ('21', '20191510019', '16', '421', '123456', '蔡菲丽', '女', '林学院', '林木管理');
INSERT INTO `student` VALUES ('27', '20191510023', '16', '419', '123456', '周星驰', '男', '软件学院', '软件工程');
INSERT INTO `student` VALUES ('28', '20151611518', '16', '401', '123456', '张三丰', '男', '公共管理学院', '农村区域管理');
INSERT INTO `student` VALUES ('31', '20191510008', '16', '402', '123456', '赵丽丽', '女', '软件学院', '软件工程');
INSERT INTO `student` VALUES ('32', '20151611517', '16', '441', '123456', '樊建军', '男', '软件学院', '软件工程');
INSERT INTO `student` VALUES ('33', '20181510001', '18', '731', '123456', '赵芸', '女', '动物科技学院', '动物检疫');
INSERT INTO `student` VALUES ('34', '20181510002', '19', '851', '123456', '杜佳慧', '女', '动物科技学院', '动物检疫');
INSERT INTO `student` VALUES ('35', '20181510003', '19', '851', '123456', '梁冬冬', '男', '林学院', '林木管理');
INSERT INTO `student` VALUES ('36', '20151611517', '19', '851', '123456', '赵东乐', '男', '软件学院', '软件工程');

-- ----------------------------
-- Table structure for `vistor`
-- ----------------------------
DROP TABLE IF EXISTS `vistor`;
CREATE TABLE `vistor` (
  `vistorId` int(11) NOT NULL AUTO_INCREMENT,
  `vistorName` varchar(20) DEFAULT NULL,
  `vistorSex` varchar(2) DEFAULT NULL,
  `vistorCometime` datetime DEFAULT NULL,
  `vistorLeavetime` datetime DEFAULT NULL,
  `vistorReason` varchar(200) DEFAULT NULL,
  `dormitoryId` int(11) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`vistorId`),
  KEY `dormitoryId` (`dormitoryId`),
  KEY `buildingId` (`buildingId`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `vistor_ibfk_1` FOREIGN KEY (`dormitoryId`) REFERENCES `dormitory` (`dormitoryId`),
  CONSTRAINT `vistor_ibfk_3` FOREIGN KEY (`studentId`) REFERENCES `student` (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vistor
-- ----------------------------
INSERT INTO `vistor` VALUES ('5', '张雪玲', '女', '2018-12-27 10:40:43', null, '访问女儿', '712', '17', '21');
INSERT INTO `vistor` VALUES ('6', '杜钟楠', '女', '2018-12-29 16:18:06', null, '看望女儿！', '401', '16', '14');
INSERT INTO `vistor` VALUES ('7', '张大锤', '男', '2018-12-29 16:19:10', null, '同学来看望霍三辉同学！', '501', '17', '11');
INSERT INTO `vistor` VALUES ('9', '胡天林', '男', '2019-01-17 09:28:19', null, '看望朋友', '851', '19', '36');
