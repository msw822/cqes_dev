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
-- Table structure for edu_hb_syqlb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_syqlb;
CREATE TABLE edu_hb_syqlb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[授予权类别代码]规定高等学校学科点（学位）授予权的分类。';

-- ----------------------------
-- Records of edu_hb_syqlb
-- ----------------------------
INSERT INTO `edu_hb_syqlb` VALUES ('0', '无学位授予权');
INSERT INTO `edu_hb_syqlb` VALUES ('1', '博士学位授予权');
INSERT INTO `edu_hb_syqlb` VALUES ('2', '硕士学位授予权');
INSERT INTO `edu_hb_syqlb` VALUES ('3', '学士学位授予权');
