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
DROP TABLE IF EXISTS `edu_hb_yjszxjhlb`;
CREATE TABLE `edu_hb_yjszxjhlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称',
  `SYFW` varchar(20) NOT NULL COMMENT '适用范围'
) DEFAULT CHARSET=utf8 COMMENT= '[研究生专项计划类别代码]高等学校研究生招生专项计划的类别';
-- ----------------------------
-- Records of edu_hb_yjszxjhlb
-- ----------------------------
INSERT INTO `edu_hb_yjszxjhlb` VALUES ('1', '强军计划', '硕士研究生');
INSERT INTO `edu_hb_yjszxjhlb` VALUES ('2', '援藏计划', '硕士研究生');
INSERT INTO `edu_hb_yjszxjhlb` VALUES ('3', '农村师资计划', '硕士研究生');
INSERT INTO `edu_hb_yjszxjhlb` VALUES ('4', '少数民族骨干计划', '硕士研究生、博士研究生');
INSERT INTO `edu_hb_yjszxjhlb` VALUES ('5', '高校辅导员专项', '博士研究生');
INSERT INTO `edu_hb_yjszxjhlb` VALUES ('6', '两课教师专项', '博士研究生');
INSERT INTO `edu_hb_yjszxjhlb` VALUES ('0', '无专项计划', '硕士研究生、博士研究生');
