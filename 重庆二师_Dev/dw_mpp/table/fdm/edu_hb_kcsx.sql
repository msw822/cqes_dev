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


-- ----------------------------
-- Table structure for edu_hb_kcsx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kcsx;
CREATE TABLE edu_hb_kcsx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[课程属性代码]规定高等学校和中等职业学校教学计划课程对学生学业要求的属性分类。';

-- ----------------------------
-- Records of edu_hb_kcsx
-- ----------------------------
INSERT INTO `edu_hb_kcsx` VALUES ('1', '必修');
INSERT INTO `edu_hb_kcsx` VALUES ('2', '限选');
INSERT INTO `edu_hb_kcsx` VALUES ('3', '任选');
INSERT INTO `edu_hb_kcsx` VALUES ('4', '辅修');
INSERT INTO `edu_hb_kcsx` VALUES ('5', '实践');
INSERT INTO `edu_hb_kcsx` VALUES ('6', '双必');
INSERT INTO `edu_hb_kcsx` VALUES ('7', '双选');
INSERT INTO `edu_hb_kcsx` VALUES ('8', '通选');
INSERT INTO `edu_hb_kcsx` VALUES ('9', '其他');

