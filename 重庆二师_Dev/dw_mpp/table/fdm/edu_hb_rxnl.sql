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
-- Table structure for edu_hb_rxnl
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_rxnl;
CREATE TABLE edu_hb_rxnl (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL,
  `SYXX` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[入学年龄代码]规定教育统计所要求的小学、初中规定入学年龄的分类。';

-- ----------------------------
-- Records of edu_hb_rxnl
-- ----------------------------
INSERT INTO `edu_hb_rxnl` VALUES ('1', '6 岁', '小学');
INSERT INTO `edu_hb_rxnl` VALUES ('2', '7 岁', '小学');
INSERT INTO `edu_hb_rxnl` VALUES ('3', '11 岁', '初中');
INSERT INTO `edu_hb_rxnl` VALUES ('4', '12 岁', '初中');
INSERT INTO `edu_hb_rxnl` VALUES ('5', '13 岁', '初中');
