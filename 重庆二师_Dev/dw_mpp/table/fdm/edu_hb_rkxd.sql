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
DROP TABLE IF EXISTS `edu_hb_rkxd`;
CREATE TABLE `edu_hb_rkxd` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[任课学段代码]中小学校和中等职业学校教师任课学段的分类';
-- ----------------------------
-- Records of edu_hb_rkxd
-- ----------------------------
INSERT INTO `edu_hb_rkxd` VALUES ('1', '学前教育');
INSERT INTO `edu_hb_rkxd` VALUES ('2', '小学');
INSERT INTO `edu_hb_rkxd` VALUES ('3', '普通初中');
INSERT INTO `edu_hb_rkxd` VALUES ('4', '普通高中');
INSERT INTO `edu_hb_rkxd` VALUES ('5', '职业初中');
INSERT INTO `edu_hb_rkxd` VALUES ('6', '职业高中');
INSERT INTO `edu_hb_rkxd` VALUES ('7', '成人中等专业学校');
INSERT INTO `edu_hb_rkxd` VALUES ('8', '成人中学');
INSERT INTO `edu_hb_rkxd` VALUES ('A', '特殊教育');
INSERT INTO `edu_hb_rkxd` VALUES ('Z', '其他');
