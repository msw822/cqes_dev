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
-- Table structure for edu_hb_gnfs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_gnfs;
CREATE TABLE edu_hb_gnfs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[供暖方式代码]规定建筑物供暖采用的形式。';

-- ----------------------------
-- Records of edu_hb_gnfs
-- ----------------------------
INSERT INTO edu_hb_gnfs VALUES('1', '集中供热'),('2', '采暖锅炉'),
                                ('3', '地热'),('4', '火炉'),
                                ('5', '热风'),('6', '其他形式'),
                                ('7', '无采暖');
