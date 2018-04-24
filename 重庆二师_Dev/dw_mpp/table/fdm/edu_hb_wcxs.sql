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
DROP TABLE IF EXISTS `edu_hb_wcxs`;
CREATE TABLE `edu_hb_wcxs` (
  `DM` varchar(255) DEFAULT NULL,
  `MC` varchar(255) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT= '[完成形式代码]科研成果的完成形式分类。适用于中小学校、中等职业学校和高等学校';
-- ----------------------------
-- Records of edu_hb_wcxs
-- ----------------------------
INSERT INTO `edu_hb_wcxs` VALUES ('1', '独立完成');
INSERT INTO `edu_hb_wcxs` VALUES ('2', '有协作单位');
INSERT INTO `edu_hb_wcxs` VALUES ('3', '本单位为协作单位');
