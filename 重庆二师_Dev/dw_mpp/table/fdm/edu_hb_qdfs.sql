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
-- Table structure for edu_hb_qdfs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_qdfs;
CREATE TABLE edu_hb_qdfs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[取得方式代码]规定土地的取得方式，适用于各级各类学校（机构）。';

-- ----------------------------
-- Records of edu_hb_qdfs
-- ----------------------------
INSERT INTO edu_hb_qdfs VALUES('1', '购置'),('2', '调剂'),
                              ('3', '接受捐赠'),('4', '置换'),
                              ('9', '其他');
