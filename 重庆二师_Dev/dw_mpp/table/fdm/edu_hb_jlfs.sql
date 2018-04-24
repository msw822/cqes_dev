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
DROP TABLE IF EXISTS `EDU_HB_JLFS`;
CREATE TABLE IF NOT exists "EDU_HB_JLFS" (
  "DM" char(1) NOT NULL COMMENT '代码',
  "MC" varchar(12) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[奖励方式码]规定了高等学校学生获得奖励的方式分类。采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of EDU_HB_JLFS
-- ----------------------------
INSERT INTO `EDU_HB_JLFS` VALUES ('1', '奖状');
INSERT INTO `EDU_HB_JLFS` VALUES ('2', '荣誉称号');
INSERT INTO `EDU_HB_JLFS` VALUES ('3', '奖金');
INSERT INTO `EDU_HB_JLFS` VALUES ('4', '实物');
INSERT INTO `EDU_HB_JLFS` VALUES ('9', '其他');
