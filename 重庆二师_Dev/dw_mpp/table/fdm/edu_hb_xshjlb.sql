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
DROP TABLE IF EXISTS `EDU_HB_XSHJLB`;
CREATE TABLE IF NOT exists "EDU_HB_XSHJLB" (
  "DM" char(1) NOT NULL COMMENT '代码',
  "MC" varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[学生获奖类别码]规定了学生获奖的类别，采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of EDU_HB_XSHJLB
-- ----------------------------
INSERT INTO `EDU_HB_XSHJLB` VALUES ('1', '学科获奖');
INSERT INTO `EDU_HB_XSHJLB` VALUES ('2', '科技获奖');
INSERT INTO `EDU_HB_XSHJLB` VALUES ('3', '文艺获奖');
INSERT INTO `EDU_HB_XSHJLB` VALUES ('4', '体育获奖');
INSERT INTO `EDU_HB_XSHJLB` VALUES ('5', '综合获奖');
INSERT INTO `EDU_HB_XSHJLB` VALUES ('6', '社会工作获奖');
INSERT INTO `EDU_HB_XSHJLB` VALUES ('7', '公益事业获奖');
INSERT INTO `EDU_HB_XSHJLB` VALUES ('9', '其他');