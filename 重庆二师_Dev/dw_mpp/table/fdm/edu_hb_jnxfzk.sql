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
DROP TABLE IF EXISTS `edu_hb_jnxfzk`;
CREATE TABLE `edu_hb_jnxfzk` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[缴纳学费状况代码]高等学校学生缴纳学费状况的分类';
-- ----------------------------
-- Records of edu_hb_jnxfzk
-- ----------------------------
INSERT INTO `edu_hb_jnxfzk` VALUES ('1', '未缴');
INSERT INTO `edu_hb_jnxfzk` VALUES ('2', '已缴清');
INSERT INTO `edu_hb_jnxfzk` VALUES ('3', '免缴');
INSERT INTO `edu_hb_jnxfzk` VALUES ('4', '部分缴纳');
