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
-- Table structure for edu_hb_skfs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_skfs;
CREATE TABLE edu_hb_skfs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[授课方式代码]规定中小学校、中等职业学校和高等学校教师授课方式的分类。';

-- ----------------------------
-- Records of edu_hb_skfs
-- ----------------------------
INSERT INTO `edu_hb_skfs` VALUES ('1', '面授讲课');
INSERT INTO `edu_hb_skfs` VALUES ('2', '辅导');
INSERT INTO `edu_hb_skfs` VALUES ('3', '录像讲课');
INSERT INTO `edu_hb_skfs` VALUES ('4', '网络教学');
INSERT INTO `edu_hb_skfs` VALUES ('5', '实验');
INSERT INTO `edu_hb_skfs` VALUES ('6', '实习');
INSERT INTO `edu_hb_skfs` VALUES ('9', '其他');
