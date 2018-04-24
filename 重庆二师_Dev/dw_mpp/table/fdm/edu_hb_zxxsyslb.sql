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
-- Table structure for edu_hb_zxxsyslb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zxxsyslb;
CREATE TABLE edu_hb_zxxsyslb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[中小学实验室类别代码]规定中小学校教学实验室的分类。';

-- ----------------------------
-- Records of edu_hb_zxxsyslb
-- ----------------------------
INSERT INTO `edu_hb_zxxsyslb` VALUES ('1', '物理实验室');
INSERT INTO `edu_hb_zxxsyslb` VALUES ('2', '化学实验室');
INSERT INTO `edu_hb_zxxsyslb` VALUES ('3', '生物实验室');
INSERT INTO `edu_hb_zxxsyslb` VALUES ('9', '其他');

