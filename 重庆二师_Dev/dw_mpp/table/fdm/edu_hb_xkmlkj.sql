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
DROP TABLE IF EXISTS `edu_hb_xkmlkj`;
CREATE TABLE `edu_hb_xkmlkj` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[学科门类（科技）代码]适用于中小学校、中等职业学校和高等学校科研管理的学科门类划分';
-- ----------------------------
-- Records of edu_hb_xkmlkj
-- ----------------------------
INSERT INTO `edu_hb_xkmlkj` VALUES ('1', '自然科学');
INSERT INTO `edu_hb_xkmlkj` VALUES ('2', '农业科学');
INSERT INTO `edu_hb_xkmlkj` VALUES ('3', '医药科学');
INSERT INTO `edu_hb_xkmlkj` VALUES ('4', '工程与技术');
INSERT INTO `edu_hb_xkmlkj` VALUES ('5', '人文与社会科学');
