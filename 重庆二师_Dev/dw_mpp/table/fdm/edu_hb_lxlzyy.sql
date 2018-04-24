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
DROP TABLE IF EXISTS `edu_hb_lxlzyy`;
CREATE TABLE `edu_hb_lxlzyy` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(15) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[离校离职原因代码]。适用于中小学校、中等职业学校、高等学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_lxlzyy
-- ----------------------------
INSERT INTO `edu_hb_lxlzyy` VALUES ('11', '离休');
INSERT INTO `edu_hb_lxlzyy` VALUES ('12', '退休');
INSERT INTO `edu_hb_lxlzyy` VALUES ('21', '系统内调出/调至其他高校');
INSERT INTO `edu_hb_lxlzyy` VALUES ('22', '调出至系统外');
INSERT INTO `edu_hb_lxlzyy` VALUES ('23', '调至系统内其他单位');
INSERT INTO `edu_hb_lxlzyy` VALUES ('31', '参军');
INSERT INTO `edu_hb_lxlzyy` VALUES ('32', '进修学习');
INSERT INTO `edu_hb_lxlzyy` VALUES ('41', '辞职');
INSERT INTO `edu_hb_lxlzyy` VALUES ('42', '辞退');
INSERT INTO `edu_hb_lxlzyy` VALUES ('43', '合同期满');
INSERT INTO `edu_hb_lxlzyy` VALUES ('51', '除名');
INSERT INTO `edu_hb_lxlzyy` VALUES ('52', '开除');
INSERT INTO `edu_hb_lxlzyy` VALUES ('53', '死亡');
INSERT INTO `edu_hb_lxlzyy` VALUES ('54', '失踪');
INSERT INTO `edu_hb_lxlzyy` VALUES ('55', '借调期满');
INSERT INTO `edu_hb_lxlzyy` VALUES ('56', '借调外出');
INSERT INTO `edu_hb_lxlzyy` VALUES ('99', '其他');
