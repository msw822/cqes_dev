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
-- Table structure for edu_hb_jgdwzz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jgdwzz;
CREATE TABLE edu_hb_jgdwzz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[监管单位资质代码]规定监理单位所具有的工程监理资质等级。';

-- ----------------------------
-- Records of edu_hb_jgdwzz
-- ----------------------------
INSERT INTO edu_hb_jgdwzz VALUES('A', '甲级'),('B', '乙级'),
                                ('C', '丙级'),('D', '无');
