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
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/



-- ----------------------------
-- Table structure for edu_hb_gkfs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_gkfs;
CREATE TABLE edu_hb_gkfs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[公开方式代码]规定公文的公开方式分类。';

-- ----------------------------
-- Records of edu_hb_gkfs
-- ----------------------------
INSERT INTO edu_hb_gkfs VALUES('1', '主动公开'),('2', '依申请公开'),('3', '不予公开');
