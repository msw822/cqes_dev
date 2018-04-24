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
DROP TABLE IF EXISTS `edu_hb_hyjbxs`;
CREATE TABLE `edu_hb_hyjbxs` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[会议举办形式代码]学术会议的举办形式分类。适用于中小学校、中等职业学校和高等学校';
-- ----------------------------
-- Records of edu_hb_hyjbxs
-- ----------------------------
INSERT INTO `edu_hb_hyjbxs` VALUES ('1', '本校独立举办');
INSERT INTO `edu_hb_hyjbxs` VALUES ('2', '与外单位合办');
INSERT INTO `edu_hb_hyjbxs` VALUES ('3', '主办');
INSERT INTO `edu_hb_hyjbxs` VALUES ('4', '协办');
INSERT INTO `edu_hb_hyjbxs` VALUES ('5', '承办');
INSERT INTO `edu_hb_hyjbxs` VALUES ('9', '其他');
