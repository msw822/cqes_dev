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
DROP TABLE IF EXISTS `edu_hb_pyxz`;
CREATE TABLE `edu_hb_pyxz` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[聘用性质代码]高等学校教职工校内岗位聘任的性质分类';
-- ----------------------------
-- Records of edu_hb_pyxz
-- ----------------------------
INSERT INTO `edu_hb_pyxz` VALUES ('1', '校聘');
INSERT INTO `edu_hb_pyxz` VALUES ('2', '院系聘');
INSERT INTO `edu_hb_pyxz` VALUES ('3', '双聘');
INSERT INTO `edu_hb_pyxz` VALUES ('4', '返聘');
INSERT INTO `edu_hb_pyxz` VALUES ('9', '其他');
