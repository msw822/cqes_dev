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
-- Table structure for edu_hb_zxxkcdj
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zxxkcdj;
CREATE TABLE edu_hb_zxxkcdj (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[中小学课程等级代码]规定中小学课程设置的等级。';

-- ----------------------------
-- Records of edu_hb_zxxkcdj
-- ----------------------------
INSERT INTO edu_hb_zxxkcdj VALUES('1', '国家课程'),('2', '地方课程'),('3', '校本课程');
