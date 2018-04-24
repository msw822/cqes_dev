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
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/



-- ----------------------------
-- Table structure for edu_hb_jjcd
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jjcd;
CREATE TABLE edu_hb_jjcd (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[紧急程度代码]规定公文处理紧急程度的分类。';

-- ----------------------------
-- Records of edu_hb_jjcd
-- ----------------------------
INSERT INTO edu_hb_jjcd VALUES('1', '特提'),('2', '特急'),
                              ('3', '加急'),('4', '平急'),
                              ('5', '急件'),('9', '其他');
