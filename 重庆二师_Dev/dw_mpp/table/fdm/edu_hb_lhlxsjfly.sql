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
DROP TABLE IF EXISTS `edu_hb_lhlxsjfly`;
CREATE TABLE `edu_hb_lhlxsjfly` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[来华留学生经费来源代码]适用于高等学校和教育行政部门';
-- ----------------------------
-- Records of edu_hb_lhlxsjfly
-- ----------------------------
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('1', '国际组织资助');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('11', '外国基金会奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('2', '中国政府资助');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('21', '中国政府奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('22', '中国地方政府奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('23', '中国政府各部门奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('3', '本国政府资助');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('31', '外国政府奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('4', '学校间交换');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('41', '校际交流');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('42', '中国学校奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('43', '外国学校奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('5', '自费');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('6', '企业资助');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('61', '中国企业奖学金');
INSERT INTO `edu_hb_lhlxsjfly` VALUES ('62', '外国企业奖学金');
