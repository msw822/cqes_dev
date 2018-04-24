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
-- Table structure for edu_hb_sysfy
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_sysfy;
CREATE TABLE edu_hb_sysfy(
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[实验室费用代码]规定高等学校和中等职业学校实验室费用的分类。';

-- ----------------------------
-- Records of edu_hb_sysfy
-- ----------------------------
INSERT INTO `edu_hb_sysfy` VALUES ('1', '设备购置费');
INSERT INTO `edu_hb_sysfy` VALUES ('2', '基建费');
INSERT INTO `edu_hb_sysfy` VALUES ('3', '运行费');
INSERT INTO `edu_hb_sysfy` VALUES ('4', '教改费');
INSERT INTO `edu_hb_sysfy` VALUES ('5', '水费');
INSERT INTO `edu_hb_sysfy` VALUES ('6', '电费');
INSERT INTO `edu_hb_sysfy` VALUES ('7', '维护费');
INSERT INTO `edu_hb_sysfy` VALUES ('8', '其他');
