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
-- Table structure for edu_hb_yebjlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_yebjlx;
CREATE TABLE edu_hb_yebjlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[幼儿班级类型代码]规定学前教育幼儿班级分类，适用于幼儿园和教育统计。';

-- ----------------------------
-- Records of edu_hb_yrbjlx
-- ----------------------------
INSERT INTO edu_hb_yebjlx VALUES('1', '托班'),
                                ('2', '小班'),
                                ('3', '中班'),
                                ('4', '大班');
