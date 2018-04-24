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
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_gwfzfs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_gwfzfs;
CREATE TABLE edu_hb_gwfzfs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[公文封装方式代码]规定公文封装方式的分类。';

-- ----------------------------
-- Records of edu_hb_gwfzfs
-- ----------------------------
INSERT INTO `edu_hb_gwfzfs` VALUES ('1', '粘封');
INSERT INTO `edu_hb_gwfzfs` VALUES ('2', '缝封');
INSERT INTO `edu_hb_gwfzfs` VALUES ('3', '轧封');
INSERT INTO `edu_hb_gwfzfs` VALUES ('4', '捆轧');
INSERT INTO `edu_hb_gwfzfs` VALUES ('5', '印存');
INSERT INTO `edu_hb_gwfzfs` VALUES ('6', '纸封');
INSERT INTO `edu_hb_gwfzfs` VALUES ('7', '铅封');
INSERT INTO `edu_hb_gwfzfs` VALUES ('9', '其他');
