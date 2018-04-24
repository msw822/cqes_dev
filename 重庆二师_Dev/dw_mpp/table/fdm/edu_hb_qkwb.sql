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
-- Table structure for edu_hb_qkwb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_qkwb;
CREATE TABLE edu_hb_qkwb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[缺考舞弊代码]规定高等学校学生在考试中的缺考或舞弊的分类。';

-- ----------------------------
-- Records of edu_hb_qkwb
-- ----------------------------
INSERT INTO edu_hb_qkwb VALUES('1', '缺考'),('2', '舞弊');
