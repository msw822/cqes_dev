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
-- Table structure for edu_hb_cq
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_cq;
CREATE TABLE edu_hb_cq (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[产权代码]规定中小学校、中等职业学校、高等学校和幼儿园资产的产权分类。';

-- ----------------------------
-- Records of edu_hb_cq
-- ----------------------------
INSERT INTO edu_hb_cq VALUES('1', '学校独立产权'),('2', '产权非学校但独立使用'),
                                ('3', '产权非属学校共同使用');
