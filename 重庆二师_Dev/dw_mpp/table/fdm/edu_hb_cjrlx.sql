/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: song.shengjie@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use FDM;
DROP TABLE IF EXISTS `edu_hb_cjrlx`;
CREATE TABLE `edu_hb_cjrlx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[残疾人类型代码]教育统计所要求的残疾学生类型，适用于初中、小学、特殊教育对残疾学生的统计';

-- ----------------------------
-- Records of edu_hb_cjrlx
-- ----------------------------
INSERT INTO `edu_hb_cjrlx` VALUES ('2', '听力残疾');
INSERT INTO `edu_hb_cjrlx` VALUES ('3', '智力残疾');
INSERT INTO `edu_hb_cjrlx` VALUES ('9', '其他残疾');
