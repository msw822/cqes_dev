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
DROP TABLE IF EXISTS `edu_hb_cglx`;
CREATE TABLE `edu_hb_cglx` (
  `DM` char(3) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[成果类型代码]适用于中小学校、中等职业学校、高等学校和幼儿园';

-- ----------------------------
-- Records of edu_hb_cglx
-- ----------------------------
INSERT INTO `edu_hb_cglx` VALUES ('100', '新产品');
INSERT INTO `edu_hb_cglx` VALUES ('200', '新技术、新工艺');
INSERT INTO `edu_hb_cglx` VALUES ('300', '理论性研究成果');
INSERT INTO `edu_hb_cglx` VALUES ('301', '专著');
INSERT INTO `edu_hb_cglx` VALUES ('302', '编著');
INSERT INTO `edu_hb_cglx` VALUES ('303', '教材');
INSERT INTO `edu_hb_cglx` VALUES ('304', '译著');
INSERT INTO `edu_hb_cglx` VALUES ('305', '工具书');
INSERT INTO `edu_hb_cglx` VALUES ('306', '参考书');
INSERT INTO `edu_hb_cglx` VALUES ('307', '古籍整理');
INSERT INTO `edu_hb_cglx` VALUES ('308', '论文');
INSERT INTO `edu_hb_cglx` VALUES ('309', '译文');
INSERT INTO `edu_hb_cglx` VALUES ('310', '调查报告');
INSERT INTO `edu_hb_cglx` VALUES ('311', '咨询报告');
INSERT INTO `edu_hb_cglx` VALUES ('312', '音像软件');
INSERT INTO `edu_hb_cglx` VALUES ('400', 'IT 产品');
INSERT INTO `edu_hb_cglx` VALUES ('401', '音像制品（教学课件');
INSERT INTO `edu_hb_cglx` VALUES ('402', 'IT 软件');
INSERT INTO `edu_hb_cglx` VALUES ('999', '其他');
