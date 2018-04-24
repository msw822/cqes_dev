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
-- Table structure for edu_hb_be
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_be;
CREATE TABLE edu_hb_be (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[班额代码]规定教育统计所要求的基础教育学校（机构）的班级学生人数的分类。';

-- ----------------------------
-- Records of edu_hb_be
-- ----------------------------
INSERT INTO `edu_hb_be` VALUES ('1', '25 人及以下');
INSERT INTO `edu_hb_be` VALUES ('2', '26 至 35 人');
INSERT INTO `edu_hb_be` VALUES ('3', '36 至 45 人');
INSERT INTO `edu_hb_be` VALUES ('4', '46 至 55 人');
INSERT INTO `edu_hb_be` VALUES ('5', '56 至 65 人');
INSERT INTO `edu_hb_be` VALUES ('6', '66 人及以上');
