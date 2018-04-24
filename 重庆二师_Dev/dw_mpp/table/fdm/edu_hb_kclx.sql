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
-- Table structure for edu_hb_kclx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kclx;
CREATE TABLE edu_hb_kclx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[课程类型代码]规定高等学校按培养层次分类的课程类型。';

-- ----------------------------
-- Records of edu_hb_kclx
-- ----------------------------
INSERT INTO `edu_hb_kclx` VALUES ('11', '本校博士生课');
INSERT INTO `edu_hb_kclx` VALUES ('12', '本校硕士生课');
INSERT INTO `edu_hb_kclx` VALUES ('13', '本校本科生课');
INSERT INTO `edu_hb_kclx` VALUES ('14', '本校专科生课');
INSERT INTO `edu_hb_kclx` VALUES ('21', '外校博士生课');
INSERT INTO `edu_hb_kclx` VALUES ('22', '外校硕士生课');
INSERT INTO `edu_hb_kclx` VALUES ('23', '外校本科生课');
INSERT INTO `edu_hb_kclx` VALUES ('24', '外校专科生课');
INSERT INTO `edu_hb_kclx` VALUES ('50', '国外学校课程');
INSERT INTO `edu_hb_kclx` VALUES ('99', '其他');
