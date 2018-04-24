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
-- Table structure for edu_hb_dwbb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_dwbb;
CREATE TABLE edu_hb_dwbb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[单位办别代码]规定高等学校和中等职业学校校内单位的举办类别。';

-- ----------------------------
-- Records of edu_hb_dwbb
-- ----------------------------
INSERT INTO edu_hb_dwbb VALUES('1', '直属（校办）'),('2', '中外合作办'),
                              ('3', '校企合办'),('4', '民办'),('9', '其他');
