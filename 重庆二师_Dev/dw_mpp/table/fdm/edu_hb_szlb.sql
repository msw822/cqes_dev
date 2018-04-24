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
DROP TABLE IF EXISTS `edu_hb_szlb`;
CREATE TABLE `edu_hb_szlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[三助类别代码]高等学校研究生三助活动的类别';
-- ----------------------------
-- Records of edu_hb_szlb
-- ----------------------------
INSERT INTO `edu_hb_szlb` VALUES ('1', '助教');
INSERT INTO `edu_hb_szlb` VALUES ('2', '助研');
INSERT INTO `edu_hb_szlb` VALUES ('3', '助管');
