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
-- Table structure for edu_hb_syspgjg
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_syspgjg;
CREATE TABLE edu_hb_syspgjg (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[实验室评估结果代码]规定高等学校实验室综合评估的结果分类。';

-- ----------------------------
-- Records of edu_hb_syspgjg
-- ----------------------------
INSERT INTO `edu_hb_syspgjg` VALUES ('11', '国家级评估为 A');
INSERT INTO `edu_hb_syspgjg` VALUES ('12', '国家级评估为 B');
INSERT INTO `edu_hb_syspgjg` VALUES ('13', '国家级评估为 C');
INSERT INTO `edu_hb_syspgjg` VALUES ('14', '国家级评估为 D');
INSERT INTO `edu_hb_syspgjg` VALUES ('20', '省部委级评估不合格');
INSERT INTO `edu_hb_syspgjg` VALUES ('21', '省部委级评估合格');
INSERT INTO `edu_hb_syspgjg` VALUES ('30', '校级评估不合格');
INSERT INTO `edu_hb_syspgjg` VALUES ('31', '校级评估合格');

