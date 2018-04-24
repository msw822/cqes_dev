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
-- Table structure for edu_hb_wwjzdj
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_wwjzdj;
CREATE TABLE edu_hb_wwjzdj (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[文物建筑等级代码]规定文物建筑等级的分类。';

-- ----------------------------
-- Records of edu_hb_wwjzdj
-- ----------------------------
INSERT INTO `edu_hb_wwjzdj` VALUES ('A', '全国重点文物保护单位');
INSERT INTO `edu_hb_wwjzdj` VALUES ('B', '省级文物保护单位');
INSERT INTO `edu_hb_wwjzdj` VALUES ('C', '市县级文物保护单位');
INSERT INTO `edu_hb_wwjzdj` VALUES ('D', '尚未核定公布单位的文物');
INSERT INTO `edu_hb_wwjzdj` VALUES ('X', '非文物建筑');

