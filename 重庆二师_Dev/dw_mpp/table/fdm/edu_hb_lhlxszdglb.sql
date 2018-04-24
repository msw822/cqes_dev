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
DROP TABLE IF EXISTS `edu_hb_lhlxszdglb`;
CREATE TABLE `edu_hb_lhlxszdglb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[来华留学生重点关注类别代码]需重点关注的来华留学生类别，适用于高等学校和教育行政部门';
-- ----------------------------
-- Records of edu_hb_lhlxszdglb
-- ----------------------------
INSERT INTO `edu_hb_lhlxszdglb` VALUES ('1', '驻华使馆外交官子女');
INSERT INTO `edu_hb_lhlxszdglb` VALUES ('2', '外国友好人士子女');
INSERT INTO `edu_hb_lhlxszdglb` VALUES ('3', '重要人物子女');
INSERT INTO `edu_hb_lhlxszdglb` VALUES ('4', '重要人物');
INSERT INTO `edu_hb_lhlxszdglb` VALUES ('9', '其他');
