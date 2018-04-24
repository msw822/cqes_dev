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
-- Table structure for edu_hb_gsqk
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_gsqk;
CREATE TABLE edu_hb_gsqk (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[供水情况代码]规定基础教育学校（机构）供水情况的分类。';

-- ----------------------------
-- Records of edu_hb_gsqk
-- ----------------------------
INSERT INTO edu_hb_gsqk VALUES('1', '自备水源'),('2', '网管供水'),
                                ('3', '无水源');
