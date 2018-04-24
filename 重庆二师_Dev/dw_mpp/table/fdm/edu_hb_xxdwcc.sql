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
-- Table structure for edu_hb_xxdwcc
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xxdwcc;
CREATE TABLE edu_hb_xxdwcc (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[学校单位层次代码]规定中小学校、中等职业学校和高等学校内的单位层次分类。';

-- ----------------------------
-- Records of edu_hb_xxdwcc
-- ----------------------------
INSERT INTO edu_hb_xxdwcc VALUES('1', '校本部'),
                                ('2', '分校'),
                                ('9', '其他');
