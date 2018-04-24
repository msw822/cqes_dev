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
-- Table structure for edu_hb_xxjyjgjbz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xxjyjgjbz;
CREATE TABLE edu_hb_xxjyjgjbz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[学校（教育机构）举办者代码]。';

-- ----------------------------
-- Records of edu_hb_xxjyjgjbz
-- ----------------------------
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('811', '省级教育部门');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('812', '省级其他部门（党政机关）');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('821', '地级教育部门');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('822', '地级其他部门（党政机关）');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('831', '县级教育部门');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('832', '县级其他部门（党政机关）');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('891', '地方企业');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('892', '事业单位');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('893', '部队');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('894', '集体');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('999', '民办');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('8/9', '省与省级以下地方部门');
INSERT INTO `edu_hb_xxjyjgjbz` VALUES ('1/2', '中央党政机关、人民团体及其他机构');
