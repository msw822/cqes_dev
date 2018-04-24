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
DROP TABLE IF EXISTS `edu_hb_gwlb`;
CREATE TABLE `edu_hb_gwlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[岗位类别代码]中等职业学校教师岗位的分类';
-- ----------------------------
-- Records of edu_hb_gwlb
-- ----------------------------
INSERT INTO `edu_hb_gwlb` VALUES ('1', '文化基础课');
INSERT INTO `edu_hb_gwlb` VALUES ('2', '专业课');
INSERT INTO `edu_hb_gwlb` VALUES ('3', '实践技术指导课');
INSERT INTO `edu_hb_gwlb` VALUES ('9', '其他');
