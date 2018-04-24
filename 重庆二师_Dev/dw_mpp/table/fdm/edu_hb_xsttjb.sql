/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: song.shengjie@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use FDM;
DROP TABLE IF EXISTS `edu_hb_xsttjb`;
CREATE TABLE `edu_hb_xsttjb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(15) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[学术团体级别代码]适用于中小学校、中等职业学校、高等学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_xsttjb
-- ----------------------------
INSERT INTO `edu_hb_xsttjb` VALUES ('1', '国际学术团体');
INSERT INTO `edu_hb_xsttjb` VALUES ('2', '国家级学术团体');
INSERT INTO `edu_hb_xsttjb` VALUES ('3', '省市、部委级学术团体');
INSERT INTO `edu_hb_xsttjb` VALUES ('4', '地（市）级学术团体');
INSERT INTO `edu_hb_xsttjb` VALUES ('5', '县（区、旗）级学术团体');
