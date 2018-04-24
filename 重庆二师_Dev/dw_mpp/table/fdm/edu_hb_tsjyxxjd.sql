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
-- Table structure for edu_hb_tsjyxxjd
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_tsjyxxjd;
CREATE TABLE edu_hb_tsjyxxjd(
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[特殊教育学习阶段代码]规定特殊教育学校基础教育学习阶段的分类。';

-- ----------------------------
-- Records of edu_hb_tsjyxxjd
-- ----------------------------
INSERT INTO `edu_hb_tsjyxxjd` VALUES ('1', '小学阶段');
INSERT INTO `edu_hb_tsjyxxjd` VALUES ('2', '初中阶段');
INSERT INTO `edu_hb_tsjyxxjd` VALUES ('3', '高中阶段');
INSERT INTO `edu_hb_tsjyxxjd` VALUES ('4', '大学阶段');
