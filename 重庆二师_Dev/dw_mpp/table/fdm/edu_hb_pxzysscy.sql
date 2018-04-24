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
-- Table structure for edu_hb_pxzysscy
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_pxzysscy;
CREATE TABLE edu_hb_pxzysscy (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[培训专业所属产业代码]规定教育统计所要求的培训专业所属产业的分类。';

-- ----------------------------
-- Records of edu_hb_pxzysscy
-- ----------------------------
INSERT INTO edu_hb_pxzysscy VALUES('1', '第一产业'),('2', '第二产业'),('3', '第三产业');
