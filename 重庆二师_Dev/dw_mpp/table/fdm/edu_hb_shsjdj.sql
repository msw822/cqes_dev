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
DROP TABLE IF EXISTS `edu_hb_shsjdj`;
CREATE TABLE `edu_hb_shsjdj` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[社会实践等级代码]高等学校学生参加社会实践等级的分类';
-- ----------------------------
-- Records of edu_hb_shsjdj
-- ----------------------------
INSERT INTO `edu_hb_shsjdj` VALUES ('1', '校级及以上');
INSERT INTO `edu_hb_shsjdj` VALUES ('2', '院系级及以下');
