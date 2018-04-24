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
DROP TABLE IF EXISTS `edu_hb_fdynl`;
CREATE TABLE `edu_hb_fdynl` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[辅导员年龄代码]教育统计所要求的高等学校专职辅导员年龄情况的分类';
-- ----------------------------
-- Records of edu_hb_fdynl
-- ----------------------------
INSERT INTO `edu_hb_fdynl` VALUES ('1', '20 岁及以下');
INSERT INTO `edu_hb_fdynl` VALUES ('2', '21-30 岁');
INSERT INTO `edu_hb_fdynl` VALUES ('3', '31-40 岁');
INSERT INTO `edu_hb_fdynl` VALUES ('4', '41-50 岁');
INSERT INTO `edu_hb_fdynl` VALUES ('5', '51 岁及以上');
