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
DROP TABLE IF EXISTS `edu_hb_flfx`;
CREATE TABLE `edu_hb_flfx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(30) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT= '[分流方向代码]高等学校学生学业结束时的分流方向类别';
-- ----------------------------
-- Records of edu_hb_flfx
-- ----------------------------
INSERT INTO `edu_hb_flfx` VALUES ('2', '直博');
INSERT INTO `edu_hb_flfx` VALUES ('3', '直硕博');
INSERT INTO `edu_hb_flfx` VALUES ('4', '外推读研');
INSERT INTO `edu_hb_flfx` VALUES ('5', '保留研究生学籍');
INSERT INTO `edu_hb_flfx` VALUES ('6', '出国（境）');
INSERT INTO `edu_hb_flfx` VALUES ('7', '就业');
INSERT INTO `edu_hb_flfx` VALUES ('8', '待就业');
INSERT INTO `edu_hb_flfx` VALUES ('9', '其他');
