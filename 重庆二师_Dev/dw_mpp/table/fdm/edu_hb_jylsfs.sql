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
DROP TABLE IF EXISTS `edu_hb_jylsfs`;
CREATE TABLE `edu_hb_jylsfs` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[就业落实方式代码]高等学校毕业生的就业落实方式';
-- ----------------------------
-- Records of edu_hb_jylsfs
-- ----------------------------
INSERT INTO `edu_hb_jylsfs` VALUES ('1', '应聘');
INSERT INTO `edu_hb_jylsfs` VALUES ('2', '挂职');
INSERT INTO `edu_hb_jylsfs` VALUES ('3', '定向');
INSERT INTO `edu_hb_jylsfs` VALUES ('4', '委培');
INSERT INTO `edu_hb_jylsfs` VALUES ('5', '创业');
INSERT INTO `edu_hb_jylsfs` VALUES ('6', '出国（境）工作');
INSERT INTO `edu_hb_jylsfs` VALUES ('7', '博士后');
INSERT INTO `edu_hb_jylsfs` VALUES ('9', '其他');
