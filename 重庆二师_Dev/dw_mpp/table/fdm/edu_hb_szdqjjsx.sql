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
-- Table structure for edu_hb_szdqjjsx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_szdqjjsx;
CREATE TABLE edu_hb_szdqjjsx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[所在地区经济属性代码]规定中小学校和幼儿园所在地区是否贫困县的分类。';

-- ----------------------------
-- Records of edu_hb_szdqjjsx
-- ----------------------------
INSERT INTO edu_hb_szdqjjsx VALUES('0', '非贫困县'),
                                  ('1', '国家级贫困县'),
                                  ('2', '省级贫困县');
