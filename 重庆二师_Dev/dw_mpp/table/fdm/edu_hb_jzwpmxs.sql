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
-- Table structure for edu_hb_jzwpmxs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwpmxs;
CREATE TABLE edu_hb_jzwpmxs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[建筑物平面形式代码]规定建筑物平面形式的分类。';

-- ----------------------------
-- Records of edu_hb_jzwpmxs
-- ----------------------------
INSERT INTO edu_hb_jzwpmxs VALUES('1', '走道式组合'),('2', '套件式组合'),
                                ('3', '大厅式组合'),
                                ('4', '单元式组合'),
                                ('5', '混合式组合');
