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
-- Table structure for edu_hb_syslb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_syslb;
CREATE TABLE edu_hb_syslb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[实验室类别代码]规定高等学校和中等职业学校实验室性质的分类。';

-- ----------------------------
-- Records of edu_hb_syslb
-- ----------------------------
INSERT INTO edu_hb_syslb VALUES('1', '基础、专业基础或技术基础'),('2', '专业'),
                                ('3', '科研'),('9', '其他');
