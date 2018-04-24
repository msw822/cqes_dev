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
DROP TABLE IF EXISTS `edu_hb_kmjc`;
CREATE TABLE `edu_hb_kmjc` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT= '[科目级次代码]高等学校财务资金科目级次的分类';
-- ----------------------------
-- Records of edu_hb_kmjc
-- ----------------------------
INSERT INTO `edu_hb_kmjc` VALUES ('0', '总分类科目');
INSERT INTO `edu_hb_kmjc` VALUES ('1', '一级分类科目');
INSERT INTO `edu_hb_kmjc` VALUES ('2', '二级分类科目');
INSERT INTO `edu_hb_kmjc` VALUES ('3', '三级分类科目');
INSERT INTO `edu_hb_kmjc` VALUES ('4', '四级分类科目');
INSERT INTO `edu_hb_kmjc` VALUES ('5', '五级分类科目');
