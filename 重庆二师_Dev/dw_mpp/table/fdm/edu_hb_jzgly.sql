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
DROP TABLE IF EXISTS `edu_hb_jzgly`;
CREATE TABLE `edu_hb_jzgly` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[教职工来源代码]教职工入校工作时来源的分类。适用于中小学校、中等职业学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_jzgly
-- ----------------------------
INSERT INTO `edu_hb_jzgly` VALUES ('10', '录用');
INSERT INTO `edu_hb_jzgly` VALUES ('11', '城镇应届毕业生');
INSERT INTO `edu_hb_jzgly` VALUES ('12', '农村应届毕业生');
INSERT INTO `edu_hb_jzgly` VALUES ('13', '城镇非应届毕业生');
INSERT INTO `edu_hb_jzgly` VALUES ('14', '农村非应届毕业生');
INSERT INTO `edu_hb_jzgly` VALUES ('20', '军队转业、复员');
INSERT INTO `edu_hb_jzgly` VALUES ('21', '军队转业');
INSERT INTO `edu_hb_jzgly` VALUES ('22', '军队复员');
INSERT INTO `edu_hb_jzgly` VALUES ('30', '调入');
INSERT INTO `edu_hb_jzgly` VALUES ('31', '系统内调入');
INSERT INTO `edu_hb_jzgly` VALUES ('32', '系统外调入');
INSERT INTO `edu_hb_jzgly` VALUES ('40', '回国定居');
INSERT INTO `edu_hb_jzgly` VALUES ('99', '其他');
