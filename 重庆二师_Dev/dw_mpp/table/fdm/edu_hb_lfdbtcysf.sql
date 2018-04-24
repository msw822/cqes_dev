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
-- Table structure for edu_hb_lfdbtcysf
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_lfdbtcysf;
CREATE TABLE edu_hb_lfdbtcysf (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[来访代表团成员身份代码]规定来访代表团的成员身份，适用于高等学校国际合作与交流。';

-- ----------------------------
-- Records of edu_hb_lfdbtcysf
-- ----------------------------
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('1', '国家元首');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('2', '政府要员');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('3', '驻华使节');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('4', '知名人士');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('5', '业界首脑');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('6', '大学校长');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('7', '基金会代表');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('8', '一般人士');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('9', '其他');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('', '');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('', '');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('', '');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('', '');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('', '');
INSERT INTO `edu_hb_lfdbtcysf` VALUES ('', '');
