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
-- Table structure for edu_hb_kcxz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kcxz;
CREATE TABLE edu_hb_kcxz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[课程属性代码]规定高等学校和中等职业学校教学计划课程对学生学业要求的属性分类。';

-- ----------------------------
-- Records of edu_hb_kcxz
-- ----------------------------
INSERT INTO `edu_hb_kcxz` VALUES ('1', '公共基础课');
INSERT INTO `edu_hb_kcxz` VALUES ('2', '学科基础课');
INSERT INTO `edu_hb_kcxz` VALUES ('3', '专业课');

