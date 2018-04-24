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
DROP TABLE IF EXISTS `edu_hb_xshydj`;
CREATE TABLE `edu_hb_xshydj` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[学术会议等级代码]学术会议的等级。适用于中小学、中等职业学校和高等学校';
-- ----------------------------
-- Records of edu_hb_xshydj
-- ----------------------------
INSERT INTO `edu_hb_xshydj` VALUES ('1', '世界性、区域性、国际间学术会议');
INSERT INTO `edu_hb_xshydj` VALUES ('2', '两国间双边学术会议');
INSERT INTO `edu_hb_xshydj` VALUES ('3', '全国、地区性学术会议');
INSERT INTO `edu_hb_xshydj` VALUES ('4', '省内学术会议');
INSERT INTO `edu_hb_xshydj` VALUES ('5', '港、澳、台学术会议');
INSERT INTO `edu_hb_xshydj` VALUES ('6', '校内学术会议');
INSERT INTO `edu_hb_xshydj` VALUES ('9', '其他');
