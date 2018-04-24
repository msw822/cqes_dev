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
DROP TABLE IF EXISTS `edu_hb_gkkm`;
CREATE TABLE `edu_hb_gkkm` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[高考科目代码]高等学校统一招生考试的科目分类';
-- ----------------------------
-- Records of edu_hb_gkkm
-- ----------------------------
INSERT INTO `edu_hb_gkkm` VALUES ('01', '语文');
INSERT INTO `edu_hb_gkkm` VALUES ('02', '数学');
INSERT INTO `edu_hb_gkkm` VALUES ('03', '外语');
INSERT INTO `edu_hb_gkkm` VALUES ('04', '物理');
INSERT INTO `edu_hb_gkkm` VALUES ('05', '化学');
INSERT INTO `edu_hb_gkkm` VALUES ('06', '生物');
INSERT INTO `edu_hb_gkkm` VALUES ('07', '政治');
INSERT INTO `edu_hb_gkkm` VALUES ('08', '历史');
INSERT INTO `edu_hb_gkkm` VALUES ('09', '地理');
INSERT INTO `edu_hb_gkkm` VALUES ('10', '综合');
INSERT INTO `edu_hb_gkkm` VALUES ('11', '文科综合');
INSERT INTO `edu_hb_gkkm` VALUES ('12', '理科综合');
INSERT INTO `edu_hb_gkkm` VALUES ('99', '其他');
INSERT INTO `edu_hb_gkkm` VALUES ('', '');
