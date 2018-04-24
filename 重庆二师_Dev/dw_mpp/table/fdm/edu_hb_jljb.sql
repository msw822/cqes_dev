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
DROP TABLE IF EXISTS `EDU_HB_JLJB`;
CREATE TABLE IF NOT exists "EDU_HB_JLJB" (
  "DM" char(2) NOT NULL COMMENT '代码',
  "MC" varchar(60) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='奖励级别码/JB 级别代码';

-- ----------------------------
-- Records of EDU_HB_JLJB
-- ----------------------------
INSERT INTO `EDU_HB_JLJB` VALUES ('10', '国家级');
INSERT INTO `EDU_HB_JLJB` VALUES ('20', '省、部委级');
INSERT INTO `EDU_HB_JLJB` VALUES ('21', '教育部');
INSERT INTO `EDU_HB_JLJB` VALUES ('22', '中央其他部委');
INSERT INTO `EDU_HB_JLJB` VALUES ('23', '省（自治区、直辖市）级');
INSERT INTO `EDU_HB_JLJB` VALUES ('30', '省部门级、地（市、州）级');
INSERT INTO `EDU_HB_JLJB` VALUES ('31', '省级教育行政部门');
INSERT INTO `EDU_HB_JLJB` VALUES ('32', '省级其他部门');
INSERT INTO `EDU_HB_JLJB` VALUES ('33', '地（市、州）级');
INSERT INTO `EDU_HB_JLJB` VALUES ('40', '地（市、州）部门级、县（区、旗）级');
INSERT INTO `EDU_HB_JLJB` VALUES ('41', '地级教育行政部门');
INSERT INTO `EDU_HB_JLJB` VALUES ('42', '地级其他部门');
INSERT INTO `EDU_HB_JLJB` VALUES ('43', '县级');
INSERT INTO `EDU_HB_JLJB` VALUES ('50', '县部门级、乡（镇）级');
INSERT INTO `EDU_HB_JLJB` VALUES ('51', '县级教育行政部门');
INSERT INTO `EDU_HB_JLJB` VALUES ('52', '县级其他部门');
INSERT INTO `EDU_HB_JLJB` VALUES ('53', '乡（镇）级');
INSERT INTO `EDU_HB_JLJB` VALUES ('60', '学校级');
INSERT INTO `EDU_HB_JLJB` VALUES ('70', '国际');
INSERT INTO `EDU_HB_JLJB` VALUES ('99', '其他');