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
-- Table structure for edu_hb_pxjxsx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_pxjxsx;
CREATE TABLE edu_hb_pxjxsx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[培训进修时限代码]规定教育统计所要求的高等教育、中等职业教育学校培训时限的分类。';

-- ----------------------------
-- Records of edu_hb_pxjxsx
-- ----------------------------
INSERT INTO `edu_hb_pxjxsx` VALUES ('1', '一个月以内');
INSERT INTO `edu_hb_pxjxsx` VALUES ('2', '一个月至三个月内');
INSERT INTO `edu_hb_pxjxsx` VALUES ('3', '三个月至半年内');
INSERT INTO `edu_hb_pxjxsx` VALUES ('4', '半年至一年以内');
INSERT INTO `edu_hb_pxjxsx` VALUES ('5', '一年及以上');

