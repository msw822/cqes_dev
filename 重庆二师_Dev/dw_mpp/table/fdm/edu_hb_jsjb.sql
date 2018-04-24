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
DROP TABLE IF EXISTS `edu_hb_jsjb`;
CREATE TABLE `edu_hb_jsjb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[竞赛级别代码]高等学校学生参加课外竞赛的级别分类';
-- ----------------------------
-- Records of edu_hb_jsjb
-- ----------------------------
INSERT INTO `edu_hb_jsjb` VALUES ('1', '国际级');
INSERT INTO `edu_hb_jsjb` VALUES ('2', '国家级');
INSERT INTO `edu_hb_jsjb` VALUES ('3', '省（区、市）部级');
INSERT INTO `edu_hb_jsjb` VALUES ('4', '校级');
INSERT INTO `edu_hb_jsjb` VALUES ('5', '行业或企业级');
INSERT INTO `edu_hb_jsjb` VALUES ('9', '其他');
