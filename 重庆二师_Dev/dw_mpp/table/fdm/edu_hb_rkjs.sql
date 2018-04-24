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
DROP TABLE IF EXISTS `edu_hb_rkjs`;
CREATE TABLE `edu_hb_rkjs` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[任课角色代码]中小学校、中等职业学校和高等学校中教师任课的角色分类';
-- ----------------------------
-- Records of edu_hb_rkjs
-- ----------------------------
INSERT INTO `edu_hb_rkjs` VALUES ('1', '主讲');
INSERT INTO `edu_hb_rkjs` VALUES ('2', '辅导');
INSERT INTO `edu_hb_rkjs` VALUES ('3', '实验');
INSERT INTO `edu_hb_rkjs` VALUES ('4', '习题');
INSERT INTO `edu_hb_rkjs` VALUES ('9', '其他');
