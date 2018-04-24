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
-- Table structure for edu_hb_jslx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jslx;
CREATE TABLE edu_hb_jslx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[教室类型代码]规定高等学校教室的分类。';

-- ----------------------------
-- Records of edu_hb_jslx
-- ----------------------------
INSERT INTO `edu_hb_jslx` VALUES ('1', '多媒体教室');
INSERT INTO `edu_hb_jslx` VALUES ('2', '语音室');
INSERT INTO `edu_hb_jslx` VALUES ('3', '实验室');
INSERT INTO `edu_hb_jslx` VALUES ('4', '计算机房');
INSERT INTO `edu_hb_jslx` VALUES ('5', '普通教室');
INSERT INTO `edu_hb_jslx` VALUES ('6', '专用教室');
INSERT INTO `edu_hb_jslx` VALUES ('9', '其他');
