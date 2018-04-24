/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wu.yabing@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_jzwjcxs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwjcxs;
CREATE TABLE edu_hb_jzwjcxs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[建筑物基础形式代码]规定建筑物基础采用的形式分类。';

-- ----------------------------
-- Records of edu_hb_jzwjcxs
-- ----------------------------
INSERT INTO `edu_hb_jzwjcxs` VALUES ('11', '浅基础：条形基础');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('12', '浅基础：筏板基础');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('13', '浅基础：独立基础');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('14', '浅基础：其他');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('21', '深基础：桩基础');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('22', '深基础：箱型基础');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('23', '深基础：其他');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('31', '其他基础形式');
INSERT INTO `edu_hb_jzwjcxs` VALUES ('41', '无基础');
