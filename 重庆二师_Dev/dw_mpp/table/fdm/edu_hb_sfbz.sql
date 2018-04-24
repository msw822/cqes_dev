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
-- Table structure for edu_hb_sfbz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_sfbz;
CREATE TABLE edu_hb_sfbz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[是否标志代码]用于描述“是”与“否” 的2种标志状态。';

-- ----------------------------
-- Records of edu_hb_sfbz
-- ----------------------------
INSERT INTO edu_hb_sfbz VALUES('0', '否'),('1', '是');
