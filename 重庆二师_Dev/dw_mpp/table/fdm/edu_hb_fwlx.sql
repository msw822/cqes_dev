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
DROP TABLE IF EXISTS edu_hb_fwlx;
CREATE TABLE edu_hb_fwlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[房屋类型代码]规定中小学校、中等职业学校、高等学校和幼儿园的房屋类型分类。';

-- ----------------------------
-- Records of edu_hb_fwlx
-- ----------------------------
INSERT INTO edu_hb_fwlx VALUES('1', '楼房'),('2', '平房'),
                                ('9', '其他');
