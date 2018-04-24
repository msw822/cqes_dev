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
-- Table structure for edu_hb_jxlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jxlx;
CREATE TABLE edu_hb_jxlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[教学类型代码]规定教师从事教学工作的分类。';

-- ----------------------------
-- Records of edu_hb_jxlx
-- ----------------------------
INSERT INTO `edu_hb_jxlx` VALUES ('11', '讲课');
INSERT INTO `edu_hb_jxlx` VALUES ('12', '编写教材');
INSERT INTO `edu_hb_jxlx` VALUES ('13', '辅导');
INSERT INTO `edu_hb_jxlx` VALUES ('21', '带实验');
INSERT INTO `edu_hb_jxlx` VALUES ('22', '带实习');
INSERT INTO `edu_hb_jxlx` VALUES ('23', '带设计');
INSERT INTO `edu_hb_jxlx` VALUES ('24', '带社会实践');
INSERT INTO `edu_hb_jxlx` VALUES ('25', '指导论文');
INSERT INTO `edu_hb_jxlx` VALUES ('31', '带军训');
INSERT INTO `edu_hb_jxlx` VALUES ('32', '带学工');
INSERT INTO `edu_hb_jxlx` VALUES ('33', '带学农');
INSERT INTO `edu_hb_jxlx` VALUES ('41', '班主任');
INSERT INTO `edu_hb_jxlx` VALUES ('42', '指导员');
INSERT INTO `edu_hb_jxlx` VALUES ('43', '政治辅导员');
INSERT INTO `edu_hb_jxlx` VALUES ('51', '指导研究生');
INSERT INTO `edu_hb_jxlx` VALUES ('99', '其他');
