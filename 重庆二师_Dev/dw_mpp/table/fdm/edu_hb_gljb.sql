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
-- Table structure for edu_hb_gljb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_gljb;
CREATE TABLE edu_hb_gljb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[管理级别代码]规定高等学校实验室的管理级别分类。';

-- ----------------------------
-- Records of edu_hb_gljb
-- ----------------------------
INSERT INTO edu_hb_gljb VALUES('1', '国家级'),('2', '国家重点'),
                                ('3', '省部级'),('4', '学校级'),
                                ('5', '院系级'),('4', '其他');
