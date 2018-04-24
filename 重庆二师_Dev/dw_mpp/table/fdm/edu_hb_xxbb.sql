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
-- Table structure for edu_hb_xxbb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xxbb;
CREATE TABLE edu_hb_xxbb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[学校办别代码]规定中小学校和中等职业学校举办者的分类。';

-- ----------------------------
-- Records of edu_hb_xxbb
-- ----------------------------
INSERT INTO edu_hb_xxbb VALUES('10', '普通中小学/职业中学'),('11', '教育部门和集体办'),
                              ('12', '社会力量办'),('19', '其他部门办'),
                              ('20', '其他中等职业学校'),('21', '公办'),
                              ('22', '民办'),('23', '民办公助'),
                              ('29', '其他');
