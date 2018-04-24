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
-- Table structure for edu_hb_zdyt
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zdyt;
CREATE TABLE edu_hb_zdyt (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[占地用途代码]规定高等学校和中等职业学校土地用途的分类。';

-- ----------------------------
-- Records of edu_hb_zdyt
-- ----------------------------
INSERT INTO `edu_hb_zdyt` VALUES ('1', '房屋用地');
INSERT INTO `edu_hb_zdyt` VALUES ('2', '体育场地');
INSERT INTO `edu_hb_zdyt` VALUES ('3', '绿化用地');
INSERT INTO `edu_hb_zdyt` VALUES ('4', '农、林场用地');
INSERT INTO `edu_hb_zdyt` VALUES ('9', '其他用地');
