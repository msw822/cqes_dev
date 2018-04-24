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
-- Table structure for edu_hb_zsdx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zsdx;
CREATE TABLE edu_hb_zsdx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[招生对象代码]规定中等职业教育招生对象的分类。';

-- ----------------------------
-- Records of edu_hb_zsdx
-- ----------------------------
INSERT INTO `edu_hb_zsdx` VALUES ('111', '应届初中毕业生');
INSERT INTO `edu_hb_zsdx` VALUES ('211', '应届高中毕业生');
INSERT INTO `edu_hb_zsdx` VALUES ('311', '城镇下岗职工');
INSERT INTO `edu_hb_zsdx` VALUES ('411', '进城务工人员');
INSERT INTO `edu_hb_zsdx` VALUES ('420', '进城务工人员随迁子女');
INSERT INTO `edu_hb_zsdx` VALUES ('421', '外省迁入');
INSERT INTO `edu_hb_zsdx` VALUES ('422', '本省外县迁入');
INSERT INTO `edu_hb_zsdx` VALUES ('511', '农村留守儿童');
INSERT INTO `edu_hb_zsdx` VALUES ('611', '退役士兵');
INSERT INTO `edu_hb_zsdx` VALUES ('711', '农民');
INSERT INTO `edu_hb_zsdx` VALUES ('811', '五年制高职中职段学生');
