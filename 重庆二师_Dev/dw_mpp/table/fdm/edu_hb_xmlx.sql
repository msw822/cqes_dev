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
DROP TABLE IF EXISTS `edu_hb_xmlx`;
CREATE TABLE `edu_hb_xmlx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[项目类型代码]中小学校和中等职业学校研究项目的类型';
-- ----------------------------
-- Records of edu_hb_xmlx
-- ----------------------------
INSERT INTO `edu_hb_xmlx` VALUES ('1', '基础研究');
INSERT INTO `edu_hb_xmlx` VALUES ('2', '应用研究');
INSERT INTO `edu_hb_xmlx` VALUES ('3', '教学研究');
INSERT INTO `edu_hb_xmlx` VALUES ('4', '教材编写');
INSERT INTO `edu_hb_xmlx` VALUES ('5', '教育改革试验');
INSERT INTO `edu_hb_xmlx` VALUES ('6', '教具标本制作');
INSERT INTO `edu_hb_xmlx` VALUES ('7', '课件开发');
INSERT INTO `edu_hb_xmlx` VALUES ('9', '其他');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
INSERT INTO `edu_hb_xmlx` VALUES ('', '');
