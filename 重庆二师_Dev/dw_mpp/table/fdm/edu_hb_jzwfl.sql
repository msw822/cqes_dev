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
-- Table structure for edu_hb_jzwfl
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwfl;
CREATE TABLE edu_hb_jzwfl (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[建筑物分类代码]规定校园建筑物的分类。';

-- ----------------------------
-- Records of edu_hb_jzwfl
-- ----------------------------
INSERT INTO edu_hb_jzwfl VALUES('1', '房屋建筑'),('2', '围墙'),
                                ('3', '校门'),('4', '其他');
