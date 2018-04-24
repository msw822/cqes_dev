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
-- Table structure for edu_hb_xxbg
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xxbg;
CREATE TABLE edu_hb_xxbg (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[学校变更代码]规定各级各类学校（机构）变更的分类。';

-- ----------------------------
-- Records of edu_hb_xxbg
-- ----------------------------
INSERT INTO edu_hb_xxbg VALUES('1', '新设'),('2', '更名'),
                              ('3', '合并'),('4', '撤销'),
                              ('5', '转置'),('6', '升格');
