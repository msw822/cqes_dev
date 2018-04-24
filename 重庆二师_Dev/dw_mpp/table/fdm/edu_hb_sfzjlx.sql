/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS `edu_hb_sfzjlx`;
CREATE TABLE "edu_hb_sfzjlx" (
  `DM` varchar(2) NOT NULL COMMENT '代码',
  `MC` varchar(40) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[身份证件类型代码]规定了对师生员工身份证件的类别，采用一位顺序码。';

-- ----------------------------
-- Records of edu_hb_sfzjlx
-- ----------------------------
INSERT INTO `edu_hb_sfzjlx` VALUES ('1', '居民身份证');
INSERT INTO `edu_hb_sfzjlx` VALUES ('2', '军官证');
INSERT INTO `edu_hb_sfzjlx` VALUES ('3', '士兵证');
INSERT INTO `edu_hb_sfzjlx` VALUES ('4', '文职干部证');
INSERT INTO `edu_hb_sfzjlx` VALUES ('5', '部队离退休证');
INSERT INTO `edu_hb_sfzjlx` VALUES ('6', '香港特区护照/身份证明');
INSERT INTO `edu_hb_sfzjlx` VALUES ('7', '澳门特区护照/身份证明');
INSERT INTO `edu_hb_sfzjlx` VALUES ('8', '台湾居民来往大陆通行证');
INSERT INTO `edu_hb_sfzjlx` VALUES ('9', '境外永久居住证');
INSERT INTO `edu_hb_sfzjlx` VALUES ('A', '护照');
INSERT INTO `edu_hb_sfzjlx` VALUES ('B', '户口簿');
INSERT INTO `edu_hb_sfzjlx` VALUES ('Z', '其他');