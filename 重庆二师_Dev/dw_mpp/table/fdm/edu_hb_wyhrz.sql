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
DROP TABLE IF EXISTS `edu_hb_wyhrz`;
CREATE TABLE `edu_hb_wyhrz` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(15) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[委员会任职代码]高等学校设立的委员会/领导小组中成员任职的分类';
-- ----------------------------
-- Records of edu_hb_wyhrz
-- ----------------------------
INSERT INTO `edu_hb_wyhrz` VALUES ('1', '主席/主任/组长');
INSERT INTO `edu_hb_wyhrz` VALUES ('2', '副主席/副主任/副组长');
INSERT INTO `edu_hb_wyhrz` VALUES ('3', '委员/成员');
INSERT INTO `edu_hb_wyhrz` VALUES ('4', '秘书长/秘书');
