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
-- Table structure for edu_hb_syzk
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_syzk;
CREATE TABLE edu_hb_syzk (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[使用状况代码]规定中小学校、中等职业学校、高等学校和幼儿园资产使用状况的分类。';

-- ----------------------------
-- Records of edu_hb_syzk
-- ----------------------------
INSERT INTO `edu_hb_syzk` VALUES ('1', '使用');
INSERT INTO `edu_hb_syzk` VALUES ('2', '闲置');
INSERT INTO `edu_hb_syzk` VALUES ('3', '被借用');
INSERT INTO `edu_hb_syzk` VALUES ('4', '借用');
INSERT INTO `edu_hb_syzk` VALUES ('5', '租用');
INSERT INTO `edu_hb_syzk` VALUES ('6', '出租');
INSERT INTO `edu_hb_syzk` VALUES ('7', '对外投资');
INSERT INTO `edu_hb_syzk` VALUES ('8', '担保');

