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
-- Table structure for edu_hb_xfnhdj
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xfnhdj;
CREATE TABLE edu_hb_xfnhdj (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[消防耐火等级代码]规定单体建筑物的耐火等级的分类。';

-- ----------------------------
-- Records of edu_hb_xfnhdj
-- ----------------------------
INSERT INTO edu_hb_xfnhdj VALUES('1', '一级'),('2', '二级'),
                                ('3', '三级'),('4', '四级');
