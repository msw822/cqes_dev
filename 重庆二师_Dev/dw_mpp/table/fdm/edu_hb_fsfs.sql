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
-- Table structure for edu_hb_fsfs
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_fsfs;
CREATE TABLE edu_hb_fsfs (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[发送方式代码]规定公文向外发送的方式类别。';

-- ----------------------------
-- Records of edu_hb_fsfs
-- ----------------------------
INSERT INTO `edu_hb_fsfs` VALUES ('1', '印送');
INSERT INTO `edu_hb_fsfs` VALUES ('2', '传抄');
INSERT INTO `edu_hb_fsfs` VALUES ('3', '网络');
INSERT INTO `edu_hb_fsfs` VALUES ('4', '传真');
INSERT INTO `edu_hb_fsfs` VALUES ('5', '电话');
INSERT INTO `edu_hb_fsfs` VALUES ('6', '电报');
INSERT INTO `edu_hb_fsfs` VALUES ('9', '其他');
