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
-- Table structure for edu_hb_csqk
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_csqk;
CREATE TABLE edu_hb_csqk (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[厕所情况代码]规定基础教育各类学校厕所现况的分类。';

-- ----------------------------
-- Records of edu_hb_csqk
-- ----------------------------
INSERT INTO edu_hb_csqk VALUES('1', '卫生厕所'),('2', '非卫生厕所'),
                                ('3', '无厕所');
