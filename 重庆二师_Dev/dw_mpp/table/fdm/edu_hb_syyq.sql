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
-- Table structure for edu_hb_syyq
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_syyq;
CREATE TABLE edu_hb_syyq (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[实验要求代码]规定实验课程的分类，适用于高等学校和中等职业学校。';

-- ----------------------------
-- Records of edu_hb_syyq
-- ----------------------------
INSERT INTO edu_hb_syyq VALUES('1', '必修'),('2', '选修'),('9', '其他');
