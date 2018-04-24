/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wu.yabing@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for edu_hb_jkrlb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jkrlb;
CREATE TABLE `edu_hb_jkrlb` (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[监考人类别代码]规定高等学校和科研机构研究生招生考试时考场监督人员的职责分类。';

-- ----------------------------
-- Records of edu_hb_jkrlb
-- ----------------------------
INSERT INTO `edu_hb_jkrlb` VALUES ('1', '主考');
INSERT INTO `edu_hb_jkrlb` VALUES ('2', '副主考');
INSERT INTO `edu_hb_jkrlb` VALUES ('3', '一般监考人员');
INSERT INTO `edu_hb_jkrlb` VALUES ('4', '巡考人员');
INSERT INTO `edu_hb_jkrlb` VALUES ('9', '其他');
