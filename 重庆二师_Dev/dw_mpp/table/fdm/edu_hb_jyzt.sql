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
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/



-- ----------------------------
-- Table structure for edu_hb_jyzt
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jyzt;
CREATE TABLE edu_hb_jyzt (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[纪要状态代码]规定高等学校会议纪要形成过程的状态分类。';

-- ----------------------------
-- Records of edu_hb_jyzt
-- ----------------------------
INSERT INTO edu_hb_jyzt VALUES('1', '整理中'),('2', '待审批'),('3', '已分发');
