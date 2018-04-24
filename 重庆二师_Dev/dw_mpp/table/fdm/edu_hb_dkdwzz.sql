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
-- Table structure for edu_hb_dkdwzz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_dkdwzz;
CREATE TABLE edu_hb_dkdwzz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[地勘单位资质代码]规定勘察单位所具有的勘察资质等级。';

-- ----------------------------
-- Records of edu_hb_dkdwzz
-- ----------------------------
INSERT INTO edu_hb_dkdwzz VALUES('A', '甲级'),('B', '乙级'),
                                ('C', '丙级'),('D', '无');
