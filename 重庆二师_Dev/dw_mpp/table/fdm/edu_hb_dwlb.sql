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
-- Table structure for edu_hb_dwlb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_dwlb;
CREATE TABLE edu_hb_dwlb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[单位类别代码]规定高等学校校内单位的职能、性质类别。';

-- ----------------------------
-- Records of edu_hb_dwlb
-- ----------------------------
INSERT INTO edu_hb_dwlb VALUES('1', '教学院系'),('2', '科研机构'),
                              ('3', '公共服务'),('4', '党务部门'),
                              ('5', '行政机构'),('6', '附属单位'),
                              ('7', '后勤部门'),('8', '校办产业'),
                              ('9', '其他');
