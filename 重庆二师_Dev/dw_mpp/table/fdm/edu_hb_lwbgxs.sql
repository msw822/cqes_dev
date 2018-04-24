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
DROP TABLE IF EXISTS `edu_hb_lwbgxs`;
CREATE TABLE `edu_hb_lwbgxs` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[论文报告形式代码]中小学校、中等职业学校和高等学校学术论文的报告形式';
-- ----------------------------
-- Records of edu_hb_lwbgxs
-- ----------------------------
INSERT INTO `edu_hb_lwbgxs` VALUES ('1', '大会发言');
INSERT INTO `edu_hb_lwbgxs` VALUES ('2', '分会场发言');
INSERT INTO `edu_hb_lwbgxs` VALUES ('3', '海报交流');
INSERT INTO `edu_hb_lwbgxs` VALUES ('9', '其他');
