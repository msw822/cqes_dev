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
DROP TABLE IF EXISTS `edu_hb_rkkclb`;
CREATE TABLE `edu_hb_rkkclb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(15) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[任课课程类别代码]高等学校教师任课的课程性质分类';
-- ----------------------------
-- Records of edu_hb_rkkclb
-- ----------------------------
INSERT INTO `edu_hb_rkkclb` VALUES ('0', '公共基础/通识教育课程');
INSERT INTO `edu_hb_rkkclb` VALUES ('1', '政治德育类课');
INSERT INTO `edu_hb_rkkclb` VALUES ('2', '人文社科类课');
INSERT INTO `edu_hb_rkkclb` VALUES ('3', '经济管理类课');
INSERT INTO `edu_hb_rkkclb` VALUES ('4', '自然科学类课');
INSERT INTO `edu_hb_rkkclb` VALUES ('5', '外语类课');
INSERT INTO `edu_hb_rkkclb` VALUES ('6', '体育类课');
INSERT INTO `edu_hb_rkkclb` VALUES ('10', '专业课程');
INSERT INTO `edu_hb_rkkclb` VALUES ('11', '专业基础课');
INSERT INTO `edu_hb_rkkclb` VALUES ('12', '专业课');
INSERT INTO `edu_hb_rkkclb` VALUES ('20', '实践教学课程');
INSERT INTO `edu_hb_rkkclb` VALUES ('21', '实验');
INSERT INTO `edu_hb_rkkclb` VALUES ('22', '实习');
INSERT INTO `edu_hb_rkkclb` VALUES ('23', '军训');
INSERT INTO `edu_hb_rkkclb` VALUES ('24', '专业设计');
INSERT INTO `edu_hb_rkkclb` VALUES ('25', '毕业设计');
INSERT INTO `edu_hb_rkkclb` VALUES ('30', '研究生课程');
INSERT INTO `edu_hb_rkkclb` VALUES ('31', '学位课');
INSERT INTO `edu_hb_rkkclb` VALUES ('32', '非学位课');
INSERT INTO `edu_hb_rkkclb` VALUES ('99', '其他');
