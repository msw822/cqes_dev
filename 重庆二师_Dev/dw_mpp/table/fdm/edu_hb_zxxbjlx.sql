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
-- Table structure for edu_hb_zxxbjlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zxxbjlx;
CREATE TABLE edu_hb_zxxbjlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[中小学班级类型代码]规定中小学班级类型的分类。';

-- ----------------------------
-- Records of edu_hb_zxxbjlx
-- ----------------------------
INSERT INTO `edu_hb_zxxbjlx` VALUES ('10', '普通小学班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('11', '少数民族小学班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('12', '小学复式班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('13', '小学教学点班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('14', '小学特长班（文体艺智等班）');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('15', '小学视力残疾班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('16', '小学听力残疾班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('17', '小学智力残疾班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('20', '普通初中班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('21', '少数民族初中班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('22', '初中复式班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('23', '初中教学点班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('24', '初中特长班（文体艺智等班）');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('25', '初中视力残疾班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('26', '初中听力残疾班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('27', '初中智力残疾班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('40', '普通高中班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('41', '少数民族高中班');
INSERT INTO `edu_hb_zxxbjlx` VALUES ('42', '高中特长班（文体艺智等班）');
