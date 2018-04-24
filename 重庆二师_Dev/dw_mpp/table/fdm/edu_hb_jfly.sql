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
DROP TABLE IF EXISTS `edu_hb_jfly`;
CREATE TABLE `edu_hb_jfly` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[经费来源代码]代替2002年《教育管理信息化标准 第1部分：学校管理信息标准》';
-- ----------------------------
-- Records of edu_hb_jfly
-- ----------------------------
INSERT INTO `edu_hb_jfly` VALUES ('1', '财政拨款');
INSERT INTO `edu_hb_jfly` VALUES ('2', '贷款');
INSERT INTO `edu_hb_jfly` VALUES ('3', '自筹资金');
INSERT INTO `edu_hb_jfly` VALUES ('4', '捐助');
INSERT INTO `edu_hb_jfly` VALUES ('5', '集资');
INSERT INTO `edu_hb_jfly` VALUES ('9', '其他');
