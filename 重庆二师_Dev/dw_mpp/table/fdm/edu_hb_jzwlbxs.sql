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
-- Table structure for edu_hb_jzwlbxs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwlbxs;
CREATE TABLE edu_hb_jzwlbxs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[建筑物楼板形式代码]规定建筑物楼板形式的分类。';

-- ----------------------------
-- Records of edu_hb_jzwlbxs
-- ----------------------------
INSERT INTO edu_hb_jzwlbxs VALUES('1', '预测'),('2', '现浇'),
                                ('3', '木板'),('4', '其他');
