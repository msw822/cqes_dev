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
-- Table structure for edu_hb_shdwxz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_shdwxz;
CREATE TABLE edu_hb_shdwxz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[社会单位性质代码]规定社会单位性质的类别。';

-- ----------------------------
-- Records of edu_hb_shdwxz
-- ----------------------------
INSERT INTO `edu_hb_shdwxz` VALUES ('10', '机关');
INSERT INTO `edu_hb_shdwxz` VALUES ('11', '省级以上党政机关');
INSERT INTO `edu_hb_shdwxz` VALUES ('12', '省级以下党政机关');
INSERT INTO `edu_hb_shdwxz` VALUES ('20', '事业单位');
INSERT INTO `edu_hb_shdwxz` VALUES ('21', '科研设计单位');
INSERT INTO `edu_hb_shdwxz` VALUES ('22', '高等学校');
INSERT INTO `edu_hb_shdwxz` VALUES ('23', '其他教育单位');
INSERT INTO `edu_hb_shdwxz` VALUES ('24', '医疗卫生单位');
INSERT INTO `edu_hb_shdwxz` VALUES ('25', '体育文化单位');
INSERT INTO `edu_hb_shdwxz` VALUES ('29', '其他事业单位');
INSERT INTO `edu_hb_shdwxz` VALUES ('30', '企业');
INSERT INTO `edu_hb_shdwxz` VALUES ('31', '国有企业');
INSERT INTO `edu_hb_shdwxz` VALUES ('32', '中外合资企业');
INSERT INTO `edu_hb_shdwxz` VALUES ('33', '民营（私营）企业');
INSERT INTO `edu_hb_shdwxz` VALUES ('34', '外资企业');
INSERT INTO `edu_hb_shdwxz` VALUES ('35', '集体企业');
INSERT INTO `edu_hb_shdwxz` VALUES ('39', '其他企业');
INSERT INTO `edu_hb_shdwxz` VALUES ('40', '部队');
INSERT INTO `edu_hb_shdwxz` VALUES ('50', '社会组织机构');
INSERT INTO `edu_hb_shdwxz` VALUES ('60', '国际组织机构');
INSERT INTO `edu_hb_shdwxz` VALUES ('70', '国防科工机构');
INSERT INTO `edu_hb_shdwxz` VALUES ('80', '财政金融机构');
INSERT INTO `edu_hb_shdwxz` VALUES ('99', '其他');
