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
DROP TABLE IF EXISTS `edu_hb_cfmc`;
CREATE TABLE `edu_hb_cfmc` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[处分名称代码]对学生处分的分类，适用于高等学校';

-- ----------------------------
-- Records of edu_hb_cfmc
-- ----------------------------
INSERT INTO `edu_hb_cfmc` VALUES ('2', '严重警告');
INSERT INTO `edu_hb_cfmc` VALUES ('3', '记过');
INSERT INTO `edu_hb_cfmc` VALUES ('4', '留校察看');
INSERT INTO `edu_hb_cfmc` VALUES ('6', '开除学籍');
INSERT INTO `edu_hb_cfmc` VALUES ('9', '其他');
