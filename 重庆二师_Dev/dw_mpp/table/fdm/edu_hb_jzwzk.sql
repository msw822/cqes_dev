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
-- Table structure for edu_hb_jzwzk
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwzk;
CREATE TABLE edu_hb_jzwzk (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[建筑物状况代码]规定中小学校、中等职业学校、高等学校和幼儿园建筑物安全状况的分类。';

-- ----------------------------
-- Records of edu_hb_jzwzk
-- ----------------------------
INSERT INTO `edu_hb_jzwzk` VALUES ('10', '正常');
INSERT INTO `edu_hb_jzwzk` VALUES ('20', '危房');
INSERT INTO `edu_hb_jzwzk` VALUES ('21', 'a 级危房');
INSERT INTO `edu_hb_jzwzk` VALUES ('22', 'b 级危房');
INSERT INTO `edu_hb_jzwzk` VALUES ('23', 'c 级危房');
INSERT INTO `edu_hb_jzwzk` VALUES ('24', 'd 级危房');
INSERT INTO `edu_hb_jzwzk` VALUES ('30', '正在施工');
INSERT INTO `edu_hb_jzwzk` VALUES ('99', '其他');
