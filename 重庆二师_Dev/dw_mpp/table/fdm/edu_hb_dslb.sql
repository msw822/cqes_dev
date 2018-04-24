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
DROP TABLE IF EXISTS `edu_hb_dslb`;
CREATE TABLE `edu_hb_dslb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[导师类别]指导研究生的教师分类。适用于高等学校';
-- ----------------------------
-- Records of edu_hb_dslb
-- ----------------------------
INSERT INTO `edu_hb_dslb` VALUES ('1', '博士生导师');
INSERT INTO `edu_hb_dslb` VALUES ('2', '硕士生导师');
INSERT INTO `edu_hb_dslb` VALUES ('3', '博士硕士生导师');
INSERT INTO `edu_hb_dslb` VALUES ('4', '兼职博士生导师');
INSERT INTO `edu_hb_dslb` VALUES ('5', '兼职硕士生导师');
INSERT INTO `edu_hb_dslb` VALUES ('6', '兼职博士硕士生导师');
INSERT INTO `edu_hb_dslb` VALUES ('9', '其他');
