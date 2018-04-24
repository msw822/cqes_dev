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
-- Table structure for edu_hb_kzsfbz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kzsfbz;
CREATE TABLE edu_hb_kzsfbz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL,
  `JC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[抗震设防标准代码]规定建筑物抗震设防标准的分类。';

-- ----------------------------
-- Records of edu_hb_kzsfbz
-- ----------------------------
INSERT INTO edu_hb_kzsfbz VALUES('1', '特殊设防类', '甲类'),('2', '重点设防类', '乙类'),
                                ('3', '标准设防类', '丙类'),('4', '适度设防类', '丁类');
