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
DROP TABLE IF EXISTS `edu_hb_lhlxssflb`;
CREATE TABLE `edu_hb_lhlxssflb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[来华留学生收费类别代码]适用于高等学校';
-- ----------------------------
-- Records of edu_hb_lhlxssflb
-- ----------------------------
INSERT INTO `edu_hb_lhlxssflb` VALUES ('1', '学费');
INSERT INTO `edu_hb_lhlxssflb` VALUES ('2', '住宿费');
INSERT INTO `edu_hb_lhlxssflb` VALUES ('4', '注册费');
INSERT INTO `edu_hb_lhlxssflb` VALUES ('5', '保险费');
INSERT INTO `edu_hb_lhlxssflb` VALUES ('9', '其他');
