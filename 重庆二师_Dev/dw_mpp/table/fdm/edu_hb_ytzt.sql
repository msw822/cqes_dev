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
-- Table structure for edu_hb_ytzt
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_ytzt;
CREATE TABLE edu_hb_ytzt (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[议题状态代码]规定高等学校会议管理中的议题状态分类。';

-- ----------------------------
-- Records of edu_hb_ytzt
-- ----------------------------
INSERT INTO edu_hb_ytzt VALUES('1', '待审批'),('2', '已上会'),('3', '已结题');
