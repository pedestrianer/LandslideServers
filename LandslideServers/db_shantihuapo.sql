/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : db_shantihuapo

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-09-11 08:41:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for concentrator
-- ----------------------------
DROP TABLE IF EXISTS `concentrator`;
CREATE TABLE `concentrator` (
  `UnitID` varchar(4) NOT NULL DEFAULT '',
  `UnitIpAddress` varchar(50) NOT NULL,
  `UnitStatus` varchar(2) NOT NULL,
  `UnitLongitude` varchar(7) NOT NULL,
  `UnitLatitude` varchar(7) NOT NULL,
  PRIMARY KEY (`UnitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of concentrator
-- ----------------------------
INSERT INTO `concentrator` VALUES ('001', '192.168.1.127', '1', '120', '130');
INSERT INTO `concentrator` VALUES ('005', '192.168.1.130', '1', '291', '73');
INSERT INTO `concentrator` VALUES ('006', '192.168.1.56', '1', '405', '58');
INSERT INTO `concentrator` VALUES ('6', '192.168.1.32', '1', '199', '42');

-- ----------------------------
-- Table structure for distance
-- ----------------------------
DROP TABLE IF EXISTS `distance`;
CREATE TABLE `distance` (
  `SSID` varchar(2) NOT NULL,
  `DTInterface` varchar(2) NOT NULL,
  `DTStatus` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SSID`,`DTInterface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distance
-- ----------------------------
INSERT INTO `distance` VALUES ('01', '1', '1');
INSERT INTO `distance` VALUES ('01', '2', '2');

-- ----------------------------
-- Table structure for earthpressure
-- ----------------------------
DROP TABLE IF EXISTS `earthpressure`;
CREATE TABLE `earthpressure` (
  `SSID` varchar(2) NOT NULL,
  `EPInterface` varchar(2) NOT NULL,
  `EPStatus` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SSID`,`EPInterface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of earthpressure
-- ----------------------------

-- ----------------------------
-- Table structure for mountainmodel
-- ----------------------------
DROP TABLE IF EXISTS `mountainmodel`;
CREATE TABLE `mountainmodel` (
  `MMID` int(2) NOT NULL,
  `MMDiscrible` varchar(200) DEFAULT NULL,
  `MMType` varchar(2) NOT NULL,
  `MMLongitude` double(10,5) NOT NULL,
  `MMLatitude` double(10,5) DEFAULT NULL,
  `MMLocationPrivences` varchar(200) DEFAULT NULL,
  `MMLocationCity` varchar(200) DEFAULT NULL,
  `MMLocationVillage` varchar(200) DEFAULT NULL,
  `MMLocationSupply` varchar(200) DEFAULT NULL,
  `MMLocationName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mountainmodel
-- ----------------------------
INSERT INTO `mountainmodel` VALUES ('1', '测试', '土质', '123.00000', '456.00000', '四川省', '成都市', '郫县', '犀浦', '儿子山');

-- ----------------------------
-- Table structure for mountainsafety
-- ----------------------------
DROP TABLE IF EXISTS `mountainsafety`;
CREATE TABLE `mountainsafety` (
  `MSID` int(10) NOT NULL,
  `MSPosition` varchar(10) NOT NULL,
  `MSAlarmType` varchar(10) NOT NULL,
  `MSTime` datetime NOT NULL,
  PRIMARY KEY (`MSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mountainsafety
-- ----------------------------
INSERT INTO `mountainsafety` VALUES ('1', '1', '0.4', '2019-04-29 22:53:21');

-- ----------------------------
-- Table structure for porewaterpressure
-- ----------------------------
DROP TABLE IF EXISTS `porewaterpressure`;
CREATE TABLE `porewaterpressure` (
  `SSID` varchar(2) NOT NULL,
  `PWPInterface` varchar(2) NOT NULL,
  `PWPStatus` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SSID`,`PWPInterface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of porewaterpressure
-- ----------------------------
INSERT INTO `porewaterpressure` VALUES ('01', '2', '1');

-- ----------------------------
-- Table structure for rainfall
-- ----------------------------
DROP TABLE IF EXISTS `rainfall`;
CREATE TABLE `rainfall` (
  `SSID` varchar(2) NOT NULL,
  `RFInterface` varchar(2) NOT NULL,
  `RFStatus` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SSID`,`RFInterface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rainfall
-- ----------------------------
INSERT INTO `rainfall` VALUES ('01', '1', '1');
INSERT INTO `rainfall` VALUES ('01', '2', '3');
INSERT INTO `rainfall` VALUES ('02', '1', '1');

-- ----------------------------
-- Table structure for sensordata
-- ----------------------------
DROP TABLE IF EXISTS `sensordata`;
CREATE TABLE `sensordata` (
  `SDID` varchar(4) NOT NULL,
  `SDInterface` varchar(2) NOT NULL,
  `SDData` varchar(10) NOT NULL,
  `SDTime` datetime NOT NULL,
  `SDKind` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensordata
-- ----------------------------
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:53:35', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.5', '2018-08-14 15:53:35', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:53:35', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 15:53:35', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:53:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 15:53:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:53:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:53:46', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.5', '2018-08-14 15:53:46', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.14', '2018-08-14 15:53:46', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:53:46', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 15:53:46', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:53:46', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:53:46', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:53:55', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 15:53:55', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:53:56', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.53', '2018-08-14 15:53:56', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:53:56', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 15:53:56', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:53:56', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:54:05', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.5', '2018-08-14 15:54:05', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 15:54:05', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:54:05', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:54:05', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 15:54:05', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:54:06', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:54:16', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 15:54:16', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:54:16', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:54:16', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 15:54:16', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:54:16', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:54:16', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:54:26', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.5', '2018-08-14 15:54:26', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.24', '2018-08-14 15:54:26', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.35', '2018-08-14 15:54:26', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 15:54:26', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:54:26', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:54:26', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:54:35', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.7', '2018-08-14 15:54:35', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:54:35', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 15:54:35', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:54:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 15:54:36', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:54:36', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:54:45', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.7', '2018-08-14 15:54:45', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:54:45', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.22', '2018-08-14 15:54:45', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 15:54:45', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:54:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:54:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:54:56', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 15:54:56', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:54:56', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 15:54:56', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:54:56', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.67', '2018-08-14 15:54:56', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:54:56', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:55:05', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.8', '2018-08-14 15:55:05', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:55:05', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 15:55:06', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 15:55:06', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:55:06', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:55:06', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:55:15', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.7', '2018-08-14 15:55:15', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:55:15', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 15:55:15', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:55:15', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:55:15', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 15:55:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:55:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.9', '2018-08-14 15:55:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:55:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.45', '2018-08-14 15:55:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:55:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 15:55:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.97', '2018-08-14 15:55:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:55:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.9', '2018-08-14 15:55:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:55:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:55:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:55:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.72', '2018-08-14 15:55:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:55:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:56:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28', '2018-08-14 15:56:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:56:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:56:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 15:56:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.67', '2018-08-14 15:56:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:56:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:56:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.1', '2018-08-14 15:56:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:56:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 15:56:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:56:15', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 15:56:15', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:56:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:56:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.1', '2018-08-14 15:56:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 15:56:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:56:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:56:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 15:56:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:56:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:56:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.1', '2018-08-14 15:56:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.24', '2018-08-14 15:56:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 15:56:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:56:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:56:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:56:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:56:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 15:56:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:56:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 15:56:45', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 15:56:45', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:56:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:56:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:56:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 15:56:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.3', '2018-08-14 15:56:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 15:56:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 15:56:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 15:56:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:56:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:57:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 15:57:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 15:57:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:57:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 15:57:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 15:57:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:57:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 15:57:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 15:57:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.18', '2018-08-14 15:57:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 15:57:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 15:57:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.67', '2018-08-14 15:57:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 15:57:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:02:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:02:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.24', '2018-08-14 16:02:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:02:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:02:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:02:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 16:02:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:02:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.6', '2018-08-14 16:02:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:02:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:02:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:02:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.67', '2018-08-14 16:02:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '1.96', '2018-08-14 16:02:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0.6', '2018-08-14 16:07:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '29.3', '2018-08-14 16:07:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.3', '2018-08-14 16:07:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:07:35', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:07:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:07:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:07:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:07:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '29.3', '2018-08-14 16:07:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.18', '2018-08-14 16:07:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:07:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:07:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:07:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:07:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:07:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '29.2', '2018-08-14 16:07:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:07:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:07:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:07:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.69', '2018-08-14 16:07:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:07:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:08:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '29.1', '2018-08-14 16:08:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:08:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:08:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:08:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.69', '2018-08-14 16:08:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:08:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:08:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '29', '2018-08-14 16:08:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:08:55', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:08:55', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:08:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:08:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:08:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:08:55', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '29', '2018-08-14 16:08:55', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:08:55', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:08:55', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:08:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.51', '2018-08-14 16:08:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:08:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:08:55', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.9', '2018-08-14 16:08:55', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:08:55', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.35', '2018-08-14 16:08:55', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:08:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.73', '2018-08-14 16:08:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:08:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:08:55', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.9', '2018-08-14 16:08:55', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:08:55', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:08:55', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:08:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:08:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:08:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:08:56', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.9', '2018-08-14 16:08:56', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:08:56', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:08:56', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:08:56', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:08:56', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:08:56', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:09:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.8', '2018-08-14 16:09:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:09:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:09:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:09:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:09:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:09:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:09:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.8', '2018-08-14 16:09:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:09:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:09:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:09:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.74', '2018-08-14 16:09:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:09:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:09:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.7', '2018-08-14 16:09:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.28', '2018-08-14 16:09:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:09:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:09:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.71', '2018-08-14 16:09:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:09:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:09:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.6', '2018-08-14 16:09:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:09:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:09:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:09:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:09:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:09:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:09:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.7', '2018-08-14 16:09:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:09:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:09:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:09:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:09:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:09:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:09:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.7', '2018-08-14 16:09:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:09:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:09:55', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:09:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:09:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:09:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:10:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.7', '2018-08-14 16:10:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:10:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:10:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:10:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:10:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:10:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:10:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.6', '2018-08-14 16:10:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:10:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:10:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:10:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:10:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:10:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:10:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.7', '2018-08-14 16:10:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:10:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:10:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:10:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:10:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:10:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:10:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.6', '2018-08-14 16:10:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:10:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:10:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:10:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.57', '2018-08-14 16:10:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:10:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:10:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.7', '2018-08-14 16:10:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:10:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:10:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:10:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:10:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:10:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:10:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:10:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.28', '2018-08-14 16:10:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:10:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:10:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:10:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:10:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:11:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:11:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:11:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:11:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:11:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:11:05', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:11:05', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:11:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:11:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.24', '2018-08-14 16:11:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:11:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:11:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.69', '2018-08-14 16:11:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:11:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:11:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:11:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:11:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:11:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:11:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:11:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:11:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:11:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:11:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:11:35', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:11:35', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:11:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:11:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:11:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:11:46', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:11:46', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:11:46', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.4', '2018-08-14 16:11:46', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:11:46', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:11:46', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:11:46', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:11:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:11:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:11:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:11:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:11:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:11:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:11:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:12:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:12:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:12:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:12:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:12:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:12:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:12:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:12:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.6', '2018-08-14 16:12:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:12:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:12:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:12:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.56', '2018-08-14 16:12:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:12:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:12:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:12:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.24', '2018-08-14 16:12:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.33', '2018-08-14 16:12:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:12:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:12:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:12:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:12:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.6', '2018-08-14 16:12:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:12:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:12:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:12:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:12:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:12:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:12:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:12:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.26', '2018-08-14 16:12:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:12:45', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:12:45', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:12:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:12:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:12:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:12:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:12:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:12:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:12:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.7', '2018-08-14 16:12:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:12:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:13:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:13:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.28', '2018-08-14 16:13:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:13:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:13:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:13:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:13:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:13:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.4', '2018-08-14 16:13:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:13:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:13:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:13:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:13:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:13:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:13:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.4', '2018-08-14 16:13:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:13:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:13:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:13:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.68', '2018-08-14 16:13:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:13:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:13:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.4', '2018-08-14 16:13:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:13:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:13:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.07', '2018-08-14 16:13:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:13:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:13:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:13:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 16:13:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:13:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.32', '2018-08-14 16:13:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:13:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.69', '2018-08-14 16:13:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:13:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0.2', '2018-08-14 16:13:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 16:13:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:13:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:13:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:13:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:13:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:13:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:14:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 16:14:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:14:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:14:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:14:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.7', '2018-08-14 16:14:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:14:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:14:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 16:14:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:14:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.38', '2018-08-14 16:14:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:14:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.6', '2018-08-14 16:14:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:14:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:14:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 16:14:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:14:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:14:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:14:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:14:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:14:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:14:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 16:14:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:14:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:14:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:14:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:14:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:14:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:14:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:14:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:14:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.53', '2018-08-14 16:14:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:14:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:14:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:14:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:14:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.3', '2018-08-14 16:14:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.2', '2018-08-14 16:14:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.32', '2018-08-14 16:14:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:14:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.55', '2018-08-14 16:14:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:14:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:15:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.4', '2018-08-14 16:15:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.76', '2018-08-14 16:15:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:15:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:15:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.57', '2018-08-14 16:15:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:15:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:15:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.9', '2018-08-14 16:15:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '3', '2018-08-14 16:15:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:15:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.94', '2018-08-14 16:15:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:15:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.19', '2018-08-14 16:15:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:15:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.7', '2018-08-14 16:15:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.88', '2018-08-14 16:15:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:15:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.06', '2018-08-14 16:15:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:15:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:15:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:15:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:15:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.92', '2018-08-14 16:15:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:15:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '0.05', '2018-08-14 16:15:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:15:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:15:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:15:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:15:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.8', '2018-08-14 16:15:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:15:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.07', '2018-08-14 16:15:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:15:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:15:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:15:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:15:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.78', '2018-08-14 16:15:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:15:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.64', '2018-08-14 16:15:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:15:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:15:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:16:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:16:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.82', '2018-08-14 16:16:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:16:05', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.47', '2018-08-14 16:16:05', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:16:05', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:16:05', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:16:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:16:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.78', '2018-08-14 16:16:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:16:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.3', '2018-08-14 16:16:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.53', '2018-08-14 16:16:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:16:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:16:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:16:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.71', '2018-08-14 16:16:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:16:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.46', '2018-08-14 16:16:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:16:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:16:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:16:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:16:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.65', '2018-08-14 16:16:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:16:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.43', '2018-08-14 16:16:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:16:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:16:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:16:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:16:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.65', '2018-08-14 16:16:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.32', '2018-08-14 16:16:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.95', '2018-08-14 16:16:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:16:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:16:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0.4', '2018-08-14 16:16:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:16:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.69', '2018-08-14 16:16:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:16:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.4', '2018-08-14 16:16:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:16:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:16:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0.2', '2018-08-14 16:17:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:17:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.78', '2018-08-14 16:17:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:17:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.73', '2018-08-14 16:17:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:17:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:17:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:17:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.5', '2018-08-14 16:17:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.67', '2018-08-14 16:17:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.35', '2018-08-14 16:17:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.78', '2018-08-14 16:17:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:17:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:17:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:17:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:17:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.84', '2018-08-14 16:17:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:17:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.56', '2018-08-14 16:17:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:17:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:17:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:17:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:17:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.67', '2018-08-14 16:17:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:17:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.75', '2018-08-14 16:17:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:17:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:17:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:17:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:17:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.73', '2018-08-14 16:17:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:17:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.95', '2018-08-14 16:17:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.75', '2018-08-14 16:17:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:17:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:17:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:17:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.65', '2018-08-14 16:17:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:17:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.68', '2018-08-14 16:17:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:17:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:17:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:18:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:18:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.67', '2018-08-14 16:18:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:18:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.22', '2018-08-14 16:18:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:18:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:18:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:18:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:18:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.69', '2018-08-14 16:18:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:18:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.77', '2018-08-14 16:18:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:18:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:18:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:18:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:18:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.67', '2018-08-14 16:18:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:18:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.55', '2018-08-14 16:18:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:18:25', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:18:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0.6', '2018-08-14 16:18:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:18:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '2.67', '2018-08-14 16:18:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.2', '2018-08-14 16:18:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.07', '2018-08-14 16:18:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:18:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:18:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:18:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:18:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '1.22', '2018-08-14 16:18:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '5.33', '2018-08-14 16:18:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.6', '2018-08-14 16:18:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:18:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:18:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0.6', '2018-08-14 16:18:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '30.2', '2018-08-14 16:18:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '9.87', '2018-08-14 16:18:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '7.17', '2018-08-14 16:18:55', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.55', '2018-08-14 16:18:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.6', '2018-08-14 16:18:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:18:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:19:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.5', '2018-08-14 16:19:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '22.28', '2018-08-14 16:19:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '7.76', '2018-08-14 16:19:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.62', '2018-08-14 16:19:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '19.4', '2018-08-14 16:19:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:19:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:19:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28', '2018-08-14 16:19:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.45', '2018-08-14 16:19:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:19:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.96', '2018-08-14 16:19:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:19:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:19:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:19:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '28.1', '2018-08-14 16:19:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.08', '2018-08-14 16:19:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.41', '2018-08-14 16:19:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.61', '2018-08-14 16:19:25', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:19:25', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:19:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:19:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.7', '2018-08-14 16:19:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.04', '2018-08-14 16:19:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:19:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.57', '2018-08-14 16:19:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:19:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:19:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:19:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.8', '2018-08-14 16:19:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '16.45', '2018-08-14 16:19:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:19:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.35', '2018-08-14 16:19:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:19:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:19:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:19:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.7', '2018-08-14 16:19:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '16.23', '2018-08-14 16:19:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:19:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.47', '2018-08-14 16:19:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:19:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:19:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:20:15', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:20:15', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '16.03', '2018-08-14 16:20:15', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:20:15', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.18', '2018-08-14 16:20:15', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:20:15', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:20:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:20:15', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:20:15', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.95', '2018-08-14 16:20:15', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.48', '2018-08-14 16:20:15', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.52', '2018-08-14 16:20:15', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.56', '2018-08-14 16:20:15', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:20:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:20:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.5', '2018-08-14 16:20:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.87', '2018-08-14 16:20:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:20:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.1', '2018-08-14 16:20:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:20:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:20:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:20:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:20:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.75', '2018-08-14 16:20:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:20:35', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.5', '2018-08-14 16:20:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.59', '2018-08-14 16:20:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:20:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:20:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:20:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.67', '2018-08-14 16:20:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:20:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.58', '2018-08-14 16:20:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.54', '2018-08-14 16:20:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:20:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:20:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.7', '2018-08-14 16:20:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.53', '2018-08-14 16:20:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:20:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.31', '2018-08-14 16:20:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.55', '2018-08-14 16:20:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:20:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:21:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:21:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.57', '2018-08-14 16:21:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.22', '2018-08-14 16:21:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.81', '2018-08-14 16:21:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:21:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:21:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:21:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:21:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.37', '2018-08-14 16:21:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:21:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.47', '2018-08-14 16:21:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:21:15', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:21:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:21:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:21:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.41', '2018-08-14 16:21:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:21:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.84', '2018-08-14 16:21:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:21:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:21:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:21:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:21:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.21', '2018-08-14 16:21:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:21:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.67', '2018-08-14 16:21:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:21:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:21:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:21:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:21:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '15.19', '2018-08-14 16:21:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:21:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.35', '2018-08-14 16:21:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:21:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:21:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:21:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:21:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.98', '2018-08-14 16:21:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:21:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.47', '2018-08-14 16:21:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:21:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:21:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:22:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:22:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.9', '2018-08-14 16:22:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.38', '2018-08-14 16:22:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.3', '2018-08-14 16:22:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:22:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:22:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:22:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:22:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.84', '2018-08-14 16:22:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:22:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.53', '2018-08-14 16:22:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:22:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:22:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:22:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:22:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.76', '2018-08-14 16:22:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:22:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.09', '2018-08-14 16:22:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:22:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:22:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:22:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:22:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.64', '2018-08-14 16:22:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:22:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.35', '2018-08-14 16:22:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:22:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:22:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:22:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:22:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.6', '2018-08-14 16:22:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.33', '2018-08-14 16:22:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.07', '2018-08-14 16:22:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:22:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:22:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:22:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:22:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.6', '2018-08-14 16:22:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:22:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.83', '2018-08-14 16:22:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:22:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:22:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:23:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.6', '2018-08-14 16:23:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.46', '2018-08-14 16:23:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:23:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.91', '2018-08-14 16:23:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:23:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:23:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:23:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:23:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.54', '2018-08-14 16:23:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:23:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.64', '2018-08-14 16:23:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.64', '2018-08-14 16:23:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:23:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:23:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:23:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.36', '2018-08-14 16:23:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:23:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.48', '2018-08-14 16:23:25', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:23:25', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:23:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:23:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:23:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.36', '2018-08-14 16:23:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:23:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.32', '2018-08-14 16:23:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:23:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:23:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:23:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:23:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.28', '2018-08-14 16:23:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.33', '2018-08-14 16:23:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.75', '2018-08-14 16:23:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.49', '2018-08-14 16:23:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:23:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:23:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:23:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.22', '2018-08-14 16:23:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:23:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.84', '2018-08-14 16:23:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:23:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:23:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:24:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:24:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.14', '2018-08-14 16:24:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:24:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.75', '2018-08-14 16:24:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.49', '2018-08-14 16:24:05', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:24:05', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:24:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:24:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '14.1', '2018-08-14 16:24:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:24:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.91', '2018-08-14 16:24:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:24:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:24:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:24:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:24:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.98', '2018-08-14 16:24:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:24:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.67', '2018-08-14 16:24:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.6', '2018-08-14 16:24:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:24:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:24:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:24:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.96', '2018-08-14 16:24:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.4', '2018-08-14 16:24:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.06', '2018-08-14 16:24:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:24:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:24:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:24:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:24:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.94', '2018-08-14 16:24:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.38', '2018-08-14 16:24:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.17', '2018-08-14 16:24:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:24:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:24:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:24:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:24:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.8', '2018-08-14 16:24:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.4', '2018-08-14 16:24:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.27', '2018-08-14 16:24:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:24:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:24:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:25:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:25:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.84', '2018-08-14 16:25:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.32', '2018-08-14 16:25:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.11', '2018-08-14 16:25:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:25:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:25:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:25:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:25:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.63', '2018-08-14 16:25:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:25:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.2', '2018-08-14 16:25:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:25:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:25:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:25:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:25:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.67', '2018-08-14 16:25:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:25:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '11.99', '2018-08-14 16:25:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:25:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:25:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:25:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:25:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.53', '2018-08-14 16:25:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:25:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.73', '2018-08-14 16:25:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:25:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:25:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:25:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:25:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.45', '2018-08-14 16:25:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:25:45', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.15', '2018-08-14 16:25:45', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.71', '2018-08-14 16:25:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:25:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:25:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:25:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.43', '2018-08-14 16:25:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:25:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.82', '2018-08-14 16:25:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.59', '2018-08-14 16:25:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:25:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:26:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:26:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.37', '2018-08-14 16:26:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:26:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.98', '2018-08-14 16:26:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.54', '2018-08-14 16:26:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:26:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:26:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:26:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.31', '2018-08-14 16:26:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:26:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.61', '2018-08-14 16:26:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.69', '2018-08-14 16:26:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:26:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:26:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:26:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.25', '2018-08-14 16:26:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:26:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.71', '2018-08-14 16:26:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.59', '2018-08-14 16:26:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:26:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:26:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.1', '2018-08-14 16:26:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.15', '2018-08-14 16:26:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:26:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.24', '2018-08-14 16:26:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:26:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:26:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:26:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.4', '2018-08-14 16:26:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.11', '2018-08-14 16:26:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:26:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.77', '2018-08-14 16:26:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:26:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:26:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:26:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.1', '2018-08-14 16:26:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.21', '2018-08-14 16:26:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:26:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.4', '2018-08-14 16:26:55', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.82', '2018-08-14 16:26:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:26:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:27:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:27:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.03', '2018-08-14 16:27:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:27:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.82', '2018-08-14 16:27:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.25', '2018-08-14 16:27:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:27:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:27:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:27:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '13.05', '2018-08-14 16:27:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:27:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.38', '2018-08-14 16:27:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:27:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:27:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:27:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:27:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.93', '2018-08-14 16:27:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:27:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.5', '2018-08-14 16:27:25', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:27:25', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:27:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:27:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:27:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.89', '2018-08-14 16:27:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:27:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.79', '2018-08-14 16:27:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.5', '2018-08-14 16:27:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:27:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:27:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:27:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.79', '2018-08-14 16:27:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:27:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.33', '2018-08-14 16:27:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:27:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:27:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:27:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:27:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.77', '2018-08-14 16:27:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:27:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.98', '2018-08-14 16:27:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:27:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:27:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:28:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:28:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.75', '2018-08-14 16:28:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:28:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.27', '2018-08-14 16:28:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:28:05', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:28:05', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:28:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.1', '2018-08-14 16:28:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.67', '2018-08-14 16:28:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.33', '2018-08-14 16:28:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.13', '2018-08-14 16:28:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.69', '2018-08-14 16:28:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:28:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:28:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:28:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.63', '2018-08-14 16:28:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:28:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.22', '2018-08-14 16:28:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:28:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:28:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:28:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:28:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.61', '2018-08-14 16:28:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:28:35', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.15', '2018-08-14 16:28:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:28:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:28:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:28:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:28:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.69', '2018-08-14 16:28:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.38', '2018-08-14 16:28:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.41', '2018-08-14 16:28:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:28:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:28:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:28:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:28:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.57', '2018-08-14 16:28:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:28:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.05', '2018-08-14 16:28:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.57', '2018-08-14 16:28:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:28:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:29:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:29:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.59', '2018-08-14 16:29:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '1.33', '2018-08-14 16:29:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.79', '2018-08-14 16:29:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:29:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:29:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:29:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:29:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.47', '2018-08-14 16:29:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:29:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.15', '2018-08-14 16:29:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:29:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:29:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:29:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:29:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.47', '2018-08-14 16:29:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:29:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.4', '2018-08-14 16:29:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.9', '2018-08-14 16:29:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:29:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:29:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:29:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.36', '2018-08-14 16:29:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:29:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.64', '2018-08-14 16:29:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:29:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:29:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:29:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:29:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.34', '2018-08-14 16:29:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:29:45', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.25', '2018-08-14 16:29:45', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:29:45', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:29:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:29:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:29:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.3', '2018-08-14 16:29:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:29:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.22', '2018-08-14 16:29:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:29:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:29:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:30:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:30:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.26', '2018-08-14 16:30:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:30:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.69', '2018-08-14 16:30:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:30:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:30:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:30:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:30:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.22', '2018-08-14 16:30:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:30:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.04', '2018-08-14 16:30:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:30:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:30:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:30:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:30:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.18', '2018-08-14 16:30:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:30:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.7', '2018-08-14 16:30:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.6', '2018-08-14 16:30:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:30:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:30:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:30:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.32', '2018-08-14 16:30:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:30:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.57', '2018-08-14 16:30:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.58', '2018-08-14 16:30:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:30:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:30:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:30:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.24', '2018-08-14 16:30:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:30:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.33', '2018-08-14 16:30:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:30:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:30:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:31:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:31:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12.06', '2018-08-14 16:31:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.35', '2018-08-14 16:31:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.82', '2018-08-14 16:31:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:31:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:31:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:31:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:31:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '12', '2018-08-14 16:31:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:31:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.95', '2018-08-14 16:31:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:31:25', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:31:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:31:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:31:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.94', '2018-08-14 16:31:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:31:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.26', '2018-08-14 16:31:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.54', '2018-08-14 16:31:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:31:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:31:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:31:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.86', '2018-08-14 16:31:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:31:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.72', '2018-08-14 16:31:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.6', '2018-08-14 16:31:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:31:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:31:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.1', '2018-08-14 16:31:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.9', '2018-08-14 16:31:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:31:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.66', '2018-08-14 16:31:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:31:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:31:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:32:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:32:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.84', '2018-08-14 16:32:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:32:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.54', '2018-08-14 16:32:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:32:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:32:05', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:32:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:32:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.8', '2018-08-14 16:32:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:32:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.46', '2018-08-14 16:32:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:32:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:32:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:32:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:32:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.88', '2018-08-14 16:32:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:32:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.58', '2018-08-14 16:32:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:32:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:32:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:32:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:32:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.76', '2018-08-14 16:32:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:32:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.24', '2018-08-14 16:32:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.63', '2018-08-14 16:32:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:32:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:32:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:32:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.8', '2018-08-14 16:32:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:32:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.6', '2018-08-14 16:32:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:32:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:32:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:32:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:32:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.66', '2018-08-14 16:32:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.35', '2018-08-14 16:32:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.11', '2018-08-14 16:32:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.44', '2018-08-14 16:32:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:32:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:33:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '26.9', '2018-08-14 16:33:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.74', '2018-08-14 16:33:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:33:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.46', '2018-08-14 16:33:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:33:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:33:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:33:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:33:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.64', '2018-08-14 16:33:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:33:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.84', '2018-08-14 16:33:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:33:15', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:33:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:33:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '26.8', '2018-08-14 16:33:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.6', '2018-08-14 16:33:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:33:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.57', '2018-08-14 16:33:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:33:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:33:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:33:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '26.8', '2018-08-14 16:33:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.56', '2018-08-14 16:33:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:33:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.42', '2018-08-14 16:33:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:33:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:33:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:33:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:33:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.54', '2018-08-14 16:33:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.33', '2018-08-14 16:33:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.25', '2018-08-14 16:33:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.6', '2018-08-14 16:33:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:33:45', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:33:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '26.9', '2018-08-14 16:33:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.46', '2018-08-14 16:33:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.4', '2018-08-14 16:33:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.67', '2018-08-14 16:33:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.59', '2018-08-14 16:33:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:33:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:34:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:34:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.44', '2018-08-14 16:34:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.2', '2018-08-14 16:34:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.15', '2018-08-14 16:34:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:34:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:34:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:34:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '26.9', '2018-08-14 16:34:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.56', '2018-08-14 16:34:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:34:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.11', '2018-08-14 16:34:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:34:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:34:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:34:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:34:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.4', '2018-08-14 16:34:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:34:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.41', '2018-08-14 16:34:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.58', '2018-08-14 16:34:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:34:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:34:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '26.9', '2018-08-14 16:34:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.54', '2018-08-14 16:34:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:34:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.84', '2018-08-14 16:34:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:34:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:34:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:34:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:34:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.38', '2018-08-14 16:34:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:34:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.36', '2018-08-14 16:34:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:34:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:34:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:34:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:34:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.38', '2018-08-14 16:34:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:34:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.98', '2018-08-14 16:34:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:34:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:34:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:35:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:35:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.3', '2018-08-14 16:35:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:35:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.84', '2018-08-14 16:35:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:35:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:35:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:35:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:35:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.3', '2018-08-14 16:35:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.33', '2018-08-14 16:35:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.49', '2018-08-14 16:35:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.74', '2018-08-14 16:35:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:35:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:35:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:35:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.26', '2018-08-14 16:35:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:35:25', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.67', '2018-08-14 16:35:25', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:35:25', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:35:25', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:35:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.1', '2018-08-14 16:35:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.26', '2018-08-14 16:35:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:35:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.61', '2018-08-14 16:35:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.4', '2018-08-14 16:35:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:35:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:35:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:35:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.2', '2018-08-14 16:35:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:35:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.07', '2018-08-14 16:35:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.57', '2018-08-14 16:35:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:35:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:35:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.3', '2018-08-14 16:35:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.2', '2018-08-14 16:35:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:35:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.72', '2018-08-14 16:35:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:35:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:35:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:36:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:36:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.34', '2018-08-14 16:36:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:36:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14', '2018-08-14 16:36:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:36:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:36:05', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:36:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:36:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.2', '2018-08-14 16:36:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:36:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.59', '2018-08-14 16:36:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:36:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:36:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:36:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:36:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.3', '2018-08-14 16:36:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:36:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.78', '2018-08-14 16:36:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:36:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:36:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:36:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:36:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.16', '2018-08-14 16:36:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:36:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.73', '2018-08-14 16:36:35', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:36:35', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:36:35', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:36:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:36:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.12', '2018-08-14 16:36:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:36:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.45', '2018-08-14 16:36:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.6', '2018-08-14 16:36:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:36:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:36:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:36:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.12', '2018-08-14 16:36:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:36:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.32', '2018-08-14 16:36:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.66', '2018-08-14 16:36:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:36:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:37:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:37:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.06', '2018-08-14 16:37:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:37:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.16', '2018-08-14 16:37:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:37:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:37:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:37:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:37:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.06', '2018-08-14 16:37:14', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.29', '2018-08-14 16:37:14', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.05', '2018-08-14 16:37:14', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.65', '2018-08-14 16:37:14', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:37:14', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:37:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.1', '2018-08-14 16:37:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.02', '2018-08-14 16:37:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:37:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.13', '2018-08-14 16:37:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:37:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:37:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:37:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:37:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.02', '2018-08-14 16:37:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:37:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.74', '2018-08-14 16:37:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:37:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:37:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:37:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:37:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '10.95', '2018-08-14 16:37:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.22', '2018-08-14 16:37:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.14', '2018-08-14 16:37:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:37:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:37:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:37:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:37:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.14', '2018-08-14 16:37:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:37:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.8', '2018-08-14 16:37:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:37:54', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:37:54', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:38:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27.2', '2018-08-14 16:38:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '10.91', '2018-08-14 16:38:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.51', '2018-08-14 16:38:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '11.95', '2018-08-14 16:38:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.48', '2018-08-14 16:38:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:38:04', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:38:14', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:38:14', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '11.04', '2018-08-14 16:38:15', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.4', '2018-08-14 16:38:15', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.82', '2018-08-14 16:38:15', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:38:15', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:38:15', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:38:24', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:38:24', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '10.87', '2018-08-14 16:38:24', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:38:24', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '12.36', '2018-08-14 16:38:24', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:38:24', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:38:24', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:38:34', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:38:34', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '10.91', '2018-08-14 16:38:34', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.24', '2018-08-14 16:38:34', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '15.57', '2018-08-14 16:38:34', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:38:34', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:38:34', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:38:44', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:38:44', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '10.83', '2018-08-14 16:38:44', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.3', '2018-08-14 16:38:44', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '14.67', '2018-08-14 16:38:44', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:38:44', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:38:44', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:38:54', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:38:54', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '10.79', '2018-08-14 16:38:54', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.27', '2018-08-14 16:38:54', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.26', '2018-08-14 16:38:54', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.61', '2018-08-14 16:38:55', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:38:55', '7');
INSERT INTO `sensordata` VALUES ('1', '1', '0', '2018-08-14 16:39:04', '1');
INSERT INTO `sensordata` VALUES ('1', '1', '27', '2018-08-14 16:39:04', '2');
INSERT INTO `sensordata` VALUES ('1', '1', '10.79', '2018-08-14 16:39:04', '3');
INSERT INTO `sensordata` VALUES ('1', '1', '0.25', '2018-08-14 16:39:04', '4');
INSERT INTO `sensordata` VALUES ('1', '1', '13.13', '2018-08-14 16:39:04', '5');
INSERT INTO `sensordata` VALUES ('1', '1', '8.62', '2018-08-14 16:39:04', '6');
INSERT INTO `sensordata` VALUES ('1', '1', '3.18', '2018-08-14 16:39:04', '7');

-- ----------------------------
-- Table structure for sensorinterface
-- ----------------------------
DROP TABLE IF EXISTS `sensorinterface`;
CREATE TABLE `sensorinterface` (
  `SSID` varchar(2) NOT NULL,
  `CCID` varchar(4) NOT NULL,
  `SIStatus` varchar(1) DEFAULT NULL,
  `SSIF0` varchar(2) DEFAULT NULL,
  `SSIF1` varchar(2) DEFAULT NULL,
  `SSIF2` varchar(2) DEFAULT NULL,
  `SSIF3` varchar(2) DEFAULT NULL,
  `SSIF4` varchar(2) DEFAULT NULL,
  `SSIF5` varchar(2) DEFAULT NULL,
  `SSIF6` varchar(2) DEFAULT NULL,
  `SSIF7` varchar(7) DEFAULT NULL,
  `SSIF8` varchar(8) DEFAULT NULL,
  `SSIF9` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`SSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensorinterface
-- ----------------------------
INSERT INTO `sensorinterface` VALUES ('1', '001', '1', 'R', 'T', '', 'R', 'E', 'V', '', 'R', 'D', 'P');
INSERT INTO `sensorinterface` VALUES ('2', '003', '1', 'R', 'R', 'R', null, 'R', null, 'R', null, 'R', 'R');
INSERT INTO `sensorinterface` VALUES ('3', '003', '1', 'R', null, 'R', null, 'R', null, 'R', null, 'R', 'R');
INSERT INTO `sensorinterface` VALUES ('4', '001', '1', 'R', null, 'R', 'R', 'R', null, 'R', null, null, null);

-- ----------------------------
-- Table structure for sensorlist
-- ----------------------------
DROP TABLE IF EXISTS `sensorlist`;
CREATE TABLE `sensorlist` (
  `sensorID` int(5) NOT NULL,
  `concentratorID` int(5) NOT NULL,
  `sensorStatus` int(2) DEFAULT NULL,
  `sensorLongitude` double(7,0) NOT NULL,
  `sensorLatitude` double(7,0) NOT NULL,
  `sensorPower` int(2) DEFAULT NULL,
  PRIMARY KEY (`sensorID`,`concentratorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensorlist
-- ----------------------------
INSERT INTO `sensorlist` VALUES ('0', '3', '0', '475', '139', '0');
INSERT INTO `sensorlist` VALUES ('1', '1', '1', '120', '230', '0');
INSERT INTO `sensorlist` VALUES ('1', '3', '0', '351', '139', '0');
INSERT INTO `sensorlist` VALUES ('2', '1', '1', '200', '200', '0');
INSERT INTO `sensorlist` VALUES ('3', '1', '1', '300', '300', '0');
INSERT INTO `sensorlist` VALUES ('4', '2', '0', '400', '400', '0');
INSERT INTO `sensorlist` VALUES ('5', '1', '1', '320', '350', '0');
INSERT INTO `sensorlist` VALUES ('6', '1', '1', '320', '300', '0');
INSERT INTO `sensorlist` VALUES ('7', '1', '1', '220', '280', '0');
INSERT INTO `sensorlist` VALUES ('8', '3', '0', '277', '202', '0');
INSERT INTO `sensorlist` VALUES ('10', '1', '1', '420', '186', '0');
INSERT INTO `sensorlist` VALUES ('12', '1', '1', '543', '109', '0');
INSERT INTO `sensorlist` VALUES ('13', '3', '0', '558', '175', '0');
INSERT INTO `sensorlist` VALUES ('23', '1', '1', '402', '273', '0');
INSERT INTO `sensorlist` VALUES ('34', '1', '1', '542', '263', '0');
INSERT INTO `sensorlist` VALUES ('45', '1', '1', '460', '256', '0');
INSERT INTO `sensorlist` VALUES ('76', '1', '1', '623', '152', '0');
INSERT INTO `sensorlist` VALUES ('78', '1', '1', '621', '246', '0');

-- ----------------------------
-- Table structure for temhum
-- ----------------------------
DROP TABLE IF EXISTS `temhum`;
CREATE TABLE `temhum` (
  `SSID` varchar(2) NOT NULL,
  `THInterface` varchar(2) NOT NULL,
  `THStatus` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SSID`,`THInterface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temhum
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` varchar(4) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserPassWord` varchar(20) NOT NULL,
  `UserAuthority` varchar(1) NOT NULL,
  `UserDescription` varchar(100) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1000', 'huazexi', '123', '1', 'test', '2018-01-20 21:47:06');
INSERT INTO `user` VALUES ('1001', 'ze', '123', '2', null, null);
INSERT INTO `user` VALUES ('1006', 'penghuan', '123', '1', 'test', '2018-08-04 09:56:15');
INSERT INTO `user` VALUES ('1007', 'echo', '123', '', null, null);

-- ----------------------------
-- Table structure for vibration
-- ----------------------------
DROP TABLE IF EXISTS `vibration`;
CREATE TABLE `vibration` (
  `SSID` varchar(2) NOT NULL,
  `VBInterface` varchar(2) NOT NULL,
  `VBStatus` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SSID`,`VBInterface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vibration
-- ----------------------------
INSERT INTO `vibration` VALUES ('01', '1', '4');
INSERT INTO `vibration` VALUES ('01', '2', '1');
