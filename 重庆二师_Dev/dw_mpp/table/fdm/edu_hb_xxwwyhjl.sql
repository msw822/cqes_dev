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
-- Table structure for edu_hb_xxwwyhjl
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xxwwyhjl;
CREATE TABLE edu_hb_xxwwyhjl (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[校学位委员会结论代码]规定高等学校学位委员会对学位评审结论的分类。';

-- ----------------------------
-- Records of edu_hb_xxwwyhjl
-- ----------------------------
INSERT INTO `edu_hb_xxwwyhjl` VALUES ('1', '同意授予学位');
INSERT INTO `edu_hb_xxwwyhjl` VALUES ('2', '同意毕业');
INSERT INTO `edu_hb_xxwwyhjl` VALUES ('3', '缓授学位');
INSERT INTO `edu_hb_xxwwyhjl` VALUES ('4', '不通过');
INSERT INTO `edu_hb_xxwwyhjl` VALUES ('9', '其他');

