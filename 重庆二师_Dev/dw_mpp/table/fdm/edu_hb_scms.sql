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
-- Table structure for edu_hb_scms
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_scms;
CREATE TABLE edu_hb_scms (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[色彩模式代码]规定多媒体档案文件的色彩模式分类，适用于各级各类学校和教育行政部门。';

-- ----------------------------
-- Records of edu_hb_scms
-- ----------------------------
INSERT INTO edu_hb_scms VALUES('1', '黑白'),('2', '灰度'),('3', '彩色');
