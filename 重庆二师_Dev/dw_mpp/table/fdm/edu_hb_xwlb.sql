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
-- Table structure for edu_hb_xwlb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xwlb;
CREATE TABLE edu_hb_xwlb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[学位类别代码]规定高等教育各阶段授予学位的类别。';

-- ----------------------------
-- Records of edu_hb_xwlb
-- ----------------------------
INSERT INTO `edu_hb_xwlb` VALUES ('11', '学术型学士');
INSERT INTO `edu_hb_xwlb` VALUES ('12', '专业学位学士');
INSERT INTO `edu_hb_xwlb` VALUES ('21', '学术型硕士');
INSERT INTO `edu_hb_xwlb` VALUES ('22', '专业学位硕士');
INSERT INTO `edu_hb_xwlb` VALUES ('31', '学术型博士');
INSERT INTO `edu_hb_xwlb` VALUES ('32', '专业学位博士');

