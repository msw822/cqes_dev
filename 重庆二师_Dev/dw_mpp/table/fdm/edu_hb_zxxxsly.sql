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
DROP TABLE IF EXISTS `edu_hb_zxxxsly`;
CREATE TABLE `edu_hb_zxxxsly` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[中小学学生来源代码]';
-- ----------------------------
-- Records of edu_hb_zxxxsly
-- ----------------------------
INSERT INTO `edu_hb_zxxxsly` VALUES ('1', '正常入学');
INSERT INTO `edu_hb_zxxxsly` VALUES ('2', '借读');
INSERT INTO `edu_hb_zxxxsly` VALUES ('9', '其他');
