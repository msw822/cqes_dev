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
-- Table structure for edu_hb_ztlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_ztlx;
CREATE TABLE edu_hb_ztlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[载体类型代码]规定档案文件载体的类型。';

-- ----------------------------
-- Records of edu_hb_ztlx
-- ----------------------------
INSERT INTO `edu_hb_ztlx` VALUES ('1', '纸质');
INSERT INTO `edu_hb_ztlx` VALUES ('2', '磁盘');
INSERT INTO `edu_hb_ztlx` VALUES ('3', '光盘');
INSERT INTO `edu_hb_ztlx` VALUES ('4', '磁带');
INSERT INTO `edu_hb_ztlx` VALUES ('5', '闪存');
INSERT INTO `edu_hb_ztlx` VALUES ('6', '胶片');
INSERT INTO `edu_hb_ztlx` VALUES ('9', '其他');
