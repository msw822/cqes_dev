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
DROP TABLE IF EXISTS `edu_hb_zphlb`;
CREATE TABLE `edu_hb_zphlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[招聘会类别代码]适用于高等学校学生就业管理中社会单位对即将毕业的学生举办招聘会的类型划分';
-- ----------------------------
-- Records of edu_hb_zphlb
-- ----------------------------
INSERT INTO `edu_hb_zphlb` VALUES ('1', '校园专场招聘会');
INSERT INTO `edu_hb_zphlb` VALUES ('2', '校园集中洽谈会');
INSERT INTO `edu_hb_zphlb` VALUES ('3', '社会招聘会');
INSERT INTO `edu_hb_zphlb` VALUES ('9', '其他');
