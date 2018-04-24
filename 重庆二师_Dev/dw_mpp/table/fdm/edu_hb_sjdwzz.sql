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
-- Table structure for edu_hb_sjdwzz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_sjdwzz;
CREATE TABLE edu_hb_sjdwzz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[设计单位资质代码]规定项目设计承担单位所具有的设计资质等级的分类。';

-- ----------------------------
-- Records of edu_hb_sjdwzz
-- ----------------------------
INSERT INTO edu_hb_sjdwzz VALUES('A', '一类'),('B', '二类'),
                                ('C', '三类'),('D', '无');
