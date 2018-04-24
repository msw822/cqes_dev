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
-- Table structure for edu_hb_pxzslx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_pxzslx;
CREATE TABLE edu_hb_pxzslx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[培训证书类型代码]规定教育统计所要求的培训证书类型，适用于适用于中等教育、高等教育阶段。';

-- ----------------------------
-- Records of edu_hb_pxzslx
-- ----------------------------
INSERT INTO edu_hb_pxzslx VALUES('1', '资格证书'),('2', '岗位证书');
