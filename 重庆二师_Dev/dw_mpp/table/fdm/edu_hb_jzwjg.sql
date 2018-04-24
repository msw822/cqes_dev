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
-- Table structure for edu_hb_jzwjg
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwjg;
CREATE TABLE edu_hb_jzwjg (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[建筑物结构代码]规定建筑物的鉴结构分类。';

-- ----------------------------
-- Records of edu_hb_jzwjg
-- ----------------------------
INSERT INTO edu_hb_jzwjg VALUES('1', '土木结构'),('2', '砖木结构'),
                                ('3', '砖混结构'),('4', '框架结构'),
                                ('5', '钢结构'),('9', '其他');
