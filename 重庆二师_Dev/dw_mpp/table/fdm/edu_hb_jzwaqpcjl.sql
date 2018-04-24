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
-- Table structure for edu_hb_fwlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwaqpcjl;
CREATE TABLE edu_hb_jzwaqpcjl (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[建筑物安全排查结论代码]规定建筑物安全排查的结论分类。';

-- ----------------------------
-- Records of edu_hb_fwlx
-- ----------------------------
INSERT INTO edu_hb_jzwaqpcjl VALUES('1', '安全'),('2', '存在一般安全隐患'),
                                ('3', '存在重大安全隐患');
