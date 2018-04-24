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
DROP TABLE IF EXISTS `edu_hb_wjzjzlx`;
CREATE TABLE `edu_hb_wjzjzlx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[外籍专家证类型代码]适用于高等学校';
-- ----------------------------
-- Records of edu_hb_wjzjzlx
-- ----------------------------
INSERT INTO `edu_hb_wjzjzlx` VALUES ('1', '教科文卫类');
INSERT INTO `edu_hb_wjzjzlx` VALUES ('2', '经济技术类');
