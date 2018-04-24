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
DROP TABLE IF EXISTS `edu_hb_xssftzfs`;
CREATE TABLE `edu_hb_xssftzfs` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[学生收费调整方式代码]学校根据具体情况对学生个体进行收费调整';
-- ----------------------------
-- Records of edu_hb_xssftzfs
-- ----------------------------
INSERT INTO `edu_hb_xssftzfs` VALUES ('1', '减');
INSERT INTO `edu_hb_xssftzfs` VALUES ('2', '免');
INSERT INTO `edu_hb_xssftzfs` VALUES ('3', '缓');
INSERT INTO `edu_hb_xssftzfs` VALUES ('4', '贷');
INSERT INTO `edu_hb_xssftzfs` VALUES ('5', '缓+减');
INSERT INTO `edu_hb_xssftzfs` VALUES ('6', '缓+免');
INSERT INTO `edu_hb_xssftzfs` VALUES ('7', '缓+贷');
