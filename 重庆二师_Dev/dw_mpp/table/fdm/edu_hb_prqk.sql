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
DROP TABLE IF EXISTS `edu_hb_prqk`;
CREATE TABLE `edu_hb_prqk` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[聘任情况代码]教职工聘任专业技术职务情况的分类。适用于中小学校、中等职业学校、高等学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_prqk
-- ----------------------------
INSERT INTO `edu_hb_prqk` VALUES ('1', '聘任');
INSERT INTO `edu_hb_prqk` VALUES ('11', '已聘');
INSERT INTO `edu_hb_prqk` VALUES ('12', '高聘');
INSERT INTO `edu_hb_prqk` VALUES ('13', '低聘');
INSERT INTO `edu_hb_prqk` VALUES ('2', '不聘');
INSERT INTO `edu_hb_prqk` VALUES ('3', '缓聘');
INSERT INTO `edu_hb_prqk` VALUES ('9', '其他');
