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
-- Table structure for edu_hb_kcjb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kcjb;
CREATE TABLE edu_hb_kcjb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[课程级别代码]规定高等学校教学计划中精品/重点课程级别的分类。';

-- ----------------------------
-- Records of edu_hb_kcjb
-- ----------------------------
INSERT INTO `edu_hb_kcjb` VALUES ('1', '国家级精品课程');
INSERT INTO `edu_hb_kcjb` VALUES ('2', '省级精品课程');
INSERT INTO `edu_hb_kcjb` VALUES ('3', '校级精品课程');
INSERT INTO `edu_hb_kcjb` VALUES ('4', '校级重点课程');
INSERT INTO `edu_hb_kcjb` VALUES ('5', '其他');
