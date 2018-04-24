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
-- Table structure for edu_hb_kzsfld
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kzsfld;
CREATE TABLE edu_hb_kzsfld (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL,
  `JC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[抗震设防烈度代码]规定建筑物抗震设防烈度的分类。';

-- ----------------------------
-- Records of edu_hb_kzsfld
-- ----------------------------
INSERT INTO edu_hb_kzsfld VALUES('1', '抗震设防烈度为6度以下', '5度'),('2', '抗震设防烈度为6度', '6度'),
                                ('3', '抗震设防烈度为7度', '7度'),('4', '抗震设防烈度为7.5度', '7.5度'),
                                ('5', '抗震设防烈度为8度', '8度'),
                                ('6', '抗震设防烈度为8.5度', '8.5度'),('9', '抗震设防烈度为9度', '9度');
