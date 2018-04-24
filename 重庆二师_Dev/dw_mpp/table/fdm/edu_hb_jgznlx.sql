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
DROP TABLE IF EXISTS `edu_hb_jgznlx`;
CREATE TABLE `edu_hb_jgznlx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[机构职能类型代码]高等学校科研机构职能的分类';
-- ----------------------------
-- Records of edu_hb_jgznlx
-- ----------------------------
INSERT INTO `edu_hb_jgznlx` VALUES ('1', '基础研究');
INSERT INTO `edu_hb_jgznlx` VALUES ('2', '应用研究');
INSERT INTO `edu_hb_jgznlx` VALUES ('3', '试验发展');
INSERT INTO `edu_hb_jgznlx` VALUES ('4', '技术开发');
INSERT INTO `edu_hb_jgznlx` VALUES ('5', '应用理论研究');
INSERT INTO `edu_hb_jgznlx` VALUES ('6', '综合机构');
