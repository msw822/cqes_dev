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
-- Table structure for edu_hb_yqsyfx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_yqsyfx;
CREATE TABLE edu_hb_yqsyfx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[仪器使用方向代码]规定仪器设备使用方向的分类。';

-- ----------------------------
-- Records of edu_hb_yqsyfx
-- ----------------------------
INSERT INTO `edu_hb_yqsyfx` VALUES ('1', '教学');
INSERT INTO `edu_hb_yqsyfx` VALUES ('2', '科研');
INSERT INTO `edu_hb_yqsyfx` VALUES ('3', '行政');
INSERT INTO `edu_hb_yqsyfx` VALUES ('4', '生活与后勤');
INSERT INTO `edu_hb_yqsyfx` VALUES ('5', '生产');
INSERT INTO `edu_hb_yqsyfx` VALUES ('6', '技术开发');
INSERT INTO `edu_hb_yqsyfx` VALUES ('7', '社会服务');
INSERT INTO `edu_hb_yqsyfx` VALUES ('8', '其他');
