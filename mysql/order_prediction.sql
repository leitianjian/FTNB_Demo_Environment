

-- run first
DROP DATABASE IF EXISTS `order_prediction`;
CREATE DATABASE `order_prediction`;



-- then in order_prediction run the following
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ui_id` varchar(20) NOT NULL,
  `ui_name` varchar(20) DEFAULT NULL,
  `ui_pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ui_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for predictioninfo
-- ----------------------------
DROP TABLE IF EXISTS `predictioninfo`;
CREATE TABLE `predictioninfo` (
  `pi_region` int(11)  NOT NULL,
  `pi_time_slot` int(11) NOT NULL ,
  `pi_count` double(11,7) NOT NULL,
  PRIMARY KEY (`pi_region`, `pi_time_slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
