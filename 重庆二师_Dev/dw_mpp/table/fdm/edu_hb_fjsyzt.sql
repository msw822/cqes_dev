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
-- Table structure for edu_hb_fjsyzt
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_fjsyzt;
CREATE TABLE edu_hb_fjsyzt (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[房间使用状态代码]规定高等学校房间使用状态的分类。';

-- ----------------------------
-- Records of edu_hb_fjsyzt
-- ----------------------------
INSERT INTO edu_hb_fjsyzt VALUES('1', '本校使用'),('2', '外单位租赁'),
                                ('3', '空闲'),('4', '不能使用');
