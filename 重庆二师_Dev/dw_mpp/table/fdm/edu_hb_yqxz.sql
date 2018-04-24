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
-- Table structure for edu_hb_yqxz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_yqxz;
CREATE TABLE edu_hb_yqxz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[仪器现状代码]规定仪器设备现状的分类。';

-- ----------------------------
-- Records of edu_hb_yqxz
-- ----------------------------
INSERT INTO `edu_hb_yqxz` VALUES ('1', '在用');
INSERT INTO `edu_hb_yqxz` VALUES ('2', '闲置');
INSERT INTO `edu_hb_yqxz` VALUES ('3', '待修');
INSERT INTO `edu_hb_yqxz` VALUES ('4', '待报废');
INSERT INTO `edu_hb_yqxz` VALUES ('5', '丢失');
INSERT INTO `edu_hb_yqxz` VALUES ('6', '报废');
INSERT INTO `edu_hb_yqxz` VALUES ('7', '调出');
INSERT INTO `edu_hb_yqxz` VALUES ('8', '降档');
INSERT INTO `edu_hb_yqxz` VALUES ('9', '其他');
