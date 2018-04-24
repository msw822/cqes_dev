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
DROP TABLE IF EXISTS `edu_hb_fjflb`;
CREATE TABLE `edu_hb_fjflb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(30) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[附加分类别代码]高等学校招生考试附加分类别';
-- ----------------------------
-- Records of edu_hb_fjflb
-- ----------------------------
INSERT INTO `edu_hb_fjflb` VALUES ('2', '竞赛获奖');
INSERT INTO `edu_hb_fjflb` VALUES ('3', '文艺特长');
INSERT INTO `edu_hb_fjflb` VALUES ('4', '美术特长');
INSERT INTO `edu_hb_fjflb` VALUES ('5', '体育特长');
INSERT INTO `edu_hb_fjflb` VALUES ('6', '品学兼优');
INSERT INTO `edu_hb_fjflb` VALUES ('9', '其他自主认定');
