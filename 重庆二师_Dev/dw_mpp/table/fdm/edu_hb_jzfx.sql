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
DROP TABLE IF EXISTS `edu_hb_jzfx`;
CREATE TABLE `edu_hb_jzfx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(2) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[记账方向代码]高等学校财务凭证记账方向的分类';
-- ----------------------------
-- Records of edu_hb_jzfx
-- ----------------------------
INSERT INTO `edu_hb_jzfx` VALUES ('1', '借方');
INSERT INTO `edu_hb_jzfx` VALUES ('2', '贷方');
