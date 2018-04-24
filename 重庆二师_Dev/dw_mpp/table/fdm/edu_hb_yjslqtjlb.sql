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
DROP TABLE IF EXISTS `edu_hb_yjslqtjlb`;
CREATE TABLE `edu_hb_yjslqtjlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[研究生录取调剂类别代码]高等学校研究生招生调剂录取方式的分类';
-- ----------------------------
-- Records of edu_hb_yjslqtjlb
-- ----------------------------
INSERT INTO `edu_hb_yjslqtjlb` VALUES ('1', '调剂出');
INSERT INTO `edu_hb_yjslqtjlb` VALUES ('2', '调剂入');
