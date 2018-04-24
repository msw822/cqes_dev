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
DROP TABLE IF EXISTS `edu_hb_xtxyy`;
CREATE TABLE `edu_hb_xtxyy` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称',
  `JYTJSYXX` varchar(30) NOT NULL COMMENT '教育统计适用学校'
) DEFAULT CHARSET=utf8 COMMENT= '[休退学原因代码]本代码与“XJYDYY 学籍异动原因代码”有关联';
-- ----------------------------
-- Records of edu_hb_xtxyy
-- ----------------------------
INSERT INTO `edu_hb_xtxyy` VALUES ('1', '病患', '高等教育、中等职业教育');
INSERT INTO `edu_hb_xtxyy` VALUES ('2', '停学实践（求职）', '高等教育');
INSERT INTO `edu_hb_xtxyy` VALUES ('3', '贫困', '高等教育、中等职业教育');
INSERT INTO `edu_hb_xtxyy` VALUES ('4', '学习成绩不好', '高等教育、中等职业教育');
INSERT INTO `edu_hb_xtxyy` VALUES ('5', '出国', '高等教育、中等职业教育');
INSERT INTO `edu_hb_xtxyy` VALUES ('6', '其他', '高等教育、中等职业教育');
