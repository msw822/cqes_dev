/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use FDM;
DROP TABLE IF EXISTS `edu_HB_JB`;
CREATE TABLE IF NOT exists "edu_HB_JB" (
  "DM" char(2) NOT NULL COMMENT '代码',
  "MC" varchar(60) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[JB级别码表]以行政级别为主规定了级别';

-- ----------------------------
-- Records of edu_HB_JB
-- ----------------------------
INSERT INTO `edu_HB_JB` VALUES ('10', '国家级');
INSERT INTO `edu_HB_JB` VALUES ('20', '省、部委级');
INSERT INTO `edu_HB_JB` VALUES ('21', '教育部');
INSERT INTO `edu_HB_JB` VALUES ('22', '中央其他部委');
INSERT INTO `edu_HB_JB` VALUES ('23', '省（自治区、直辖市）级');
INSERT INTO `edu_HB_JB` VALUES ('30', '省部门级、地（市、州）级');
INSERT INTO `edu_HB_JB` VALUES ('31', '省级教育行政部门');
INSERT INTO `edu_HB_JB` VALUES ('32', '省级其他部门');
INSERT INTO `edu_HB_JB` VALUES ('33', '地（市、州）级');
INSERT INTO `edu_HB_JB` VALUES ('40', '地（市、州）部门级、县（区、旗）级');
INSERT INTO `edu_HB_JB` VALUES ('41', '地级教育行政部门');
INSERT INTO `edu_HB_JB` VALUES ('42', '地级其他部门');
INSERT INTO `edu_HB_JB` VALUES ('43', '县级');
INSERT INTO `edu_HB_JB` VALUES ('50', '县部门级、乡（镇）级');
INSERT INTO `edu_HB_JB` VALUES ('51', '县级教育行政部门');
INSERT INTO `edu_HB_JB` VALUES ('52', '县级其他部门');
INSERT INTO `edu_HB_JB` VALUES ('53', '乡（镇）级');
INSERT INTO `edu_HB_JB` VALUES ('60', '学校级');
INSERT INTO `edu_HB_JB` VALUES ('70', '国际');
INSERT INTO `edu_HB_JB` VALUES ('99', '其他');