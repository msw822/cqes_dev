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
DROP TABLE IF EXISTS `edu_hb_gzgwxz`;
CREATE TABLE `edu_hb_gzgwxz` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[工作岗位性质代码]高等学校毕业生在就业单位中的工作岗位性质分类';
-- ----------------------------
-- Records of edu_hb_gzgwxz
-- ----------------------------
INSERT INTO `edu_hb_gzgwxz` VALUES ('1', '科研');
INSERT INTO `edu_hb_gzgwxz` VALUES ('2', '教学');
INSERT INTO `edu_hb_gzgwxz` VALUES ('3', '设计');
INSERT INTO `edu_hb_gzgwxz` VALUES ('4', '管理');
INSERT INTO `edu_hb_gzgwxz` VALUES ('5', '生产');
INSERT INTO `edu_hb_gzgwxz` VALUES ('6', '行政');
INSERT INTO `edu_hb_gzgwxz` VALUES ('7', '后勤');
INSERT INTO `edu_hb_gzgwxz` VALUES ('9', '其他');
