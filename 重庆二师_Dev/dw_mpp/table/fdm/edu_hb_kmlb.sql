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
DROP TABLE IF EXISTS `edu_hb_kmlb`;
CREATE TABLE `edu_hb_kmlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(2) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[科目类别代码]高等学校财务资金科目类别的划分';
-- ----------------------------
-- Records of edu_hb_kmlb
-- ----------------------------
INSERT INTO `edu_hb_kmlb` VALUES ('1', '现金');
INSERT INTO `edu_hb_kmlb` VALUES ('2', '银行');
INSERT INTO `edu_hb_kmlb` VALUES ('3', '暂付');
INSERT INTO `edu_hb_kmlb` VALUES ('4', '暂存');
INSERT INTO `edu_hb_kmlb` VALUES ('5', '其他');
