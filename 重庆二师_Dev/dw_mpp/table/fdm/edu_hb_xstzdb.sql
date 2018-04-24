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
DROP TABLE IF EXISTS `edu_hb_xstzdb`;
CREATE TABLE `edu_hb_xstzdb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[学生体质达标代码]基础教育学生参加“国家学生体质健康标准达标测试”结果';
-- ----------------------------
-- Records of edu_hb_xstzdb
-- ----------------------------
INSERT INTO `edu_hb_xstzdb` VALUES ('1', '优秀');
INSERT INTO `edu_hb_xstzdb` VALUES ('2', '良好');
INSERT INTO `edu_hb_xstzdb` VALUES ('3', '及格');
INSERT INTO `edu_hb_xstzdb` VALUES ('4', '不及格');
