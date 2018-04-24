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
-- Table structure for edu_hb_jxyfxz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jxyfxz;
CREATE TABLE edu_hb_jxyfxz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[教学用房性质代码]规定中小学校教学用房性质的分类。';

-- ----------------------------
-- Records of edu_hb_jxyfxz
-- ----------------------------
INSERT INTO `edu_hb_jxyfxz` VALUES ('01', '教室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('10', '实验室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('11', '物理实验室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('12', '化学实验室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('13', '生物实验室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('14', '其他实验室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('20', '音乐室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('30', '语音室');
INSERT INTO `edu_hb_jxyfxz` VALUES ('31', '英语');
INSERT INTO `edu_hb_jxyfxz` VALUES ('39', '其他语言');
INSERT INTO `edu_hb_jxyfxz` VALUES ('40', '计算机房');
INSERT INTO `edu_hb_jxyfxz` VALUES ('99', '其他');
