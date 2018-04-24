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
-- Table structure for edu_hb_kclb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kclb;
CREATE TABLE edu_hb_kclb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[课程类别代码]规定高等学校的课程类别。';

-- ----------------------------
-- Records of edu_hb_kclb
-- ----------------------------
INSERT INTO `edu_hb_kclb` VALUES ('1', '理论类');
INSERT INTO `edu_hb_kclb` VALUES ('2', '语言类');
INSERT INTO `edu_hb_kclb` VALUES ('3', '实验（实训）类');
INSERT INTO `edu_hb_kclb` VALUES ('4', '体育类');
INSERT INTO `edu_hb_kclb` VALUES ('5', '实践类');
INSERT INTO `edu_hb_kclb` VALUES ('6', '艺术类');
INSERT INTO `edu_hb_kclb` VALUES ('9', '其他类');
