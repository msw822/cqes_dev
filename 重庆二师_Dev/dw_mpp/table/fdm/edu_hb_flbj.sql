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
DROP TABLE IF EXISTS `edu_hb_flbj`;
CREATE TABLE `edu_hb_flbj` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[分录标记代码]高等学校财务管理的借贷分类';
-- ----------------------------
-- Records of edu_hb_flbj
-- ----------------------------
INSERT INTO `edu_hb_flbj` VALUES ('1', '一借多贷');
INSERT INTO `edu_hb_flbj` VALUES ('2', '一贷多借');
INSERT INTO `edu_hb_flbj` VALUES ('3', '多贷多借');
