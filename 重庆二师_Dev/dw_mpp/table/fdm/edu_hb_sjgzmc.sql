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
-- Table structure for edu_hb_sjgzmc
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_sjgzmc;
CREATE TABLE edu_hb_sjgzmc (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[世界各洲名称代码]规定世界各洲名称，适用于高等学校留学生的来源洲别。';

-- ----------------------------
-- Records of edu_hb_sjgzmc
-- ----------------------------
INSERT INTO `edu_hb_sjgzmc` VALUES ('1', '亚洲');
INSERT INTO `edu_hb_sjgzmc` VALUES ('2', '非洲');
INSERT INTO `edu_hb_sjgzmc` VALUES ('3', '欧洲');
INSERT INTO `edu_hb_sjgzmc` VALUES ('4', '北美洲');
INSERT INTO `edu_hb_sjgzmc` VALUES ('5', '南美洲');
INSERT INTO `edu_hb_sjgzmc` VALUES ('6', '大洋洲');
INSERT INTO `edu_hb_sjgzmc` VALUES ('7', '南极洲');

