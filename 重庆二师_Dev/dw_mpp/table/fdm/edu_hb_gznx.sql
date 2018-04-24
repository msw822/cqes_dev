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
DROP TABLE IF EXISTS `edu_hb_gznx`;
CREATE TABLE `edu_hb_gznx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT= '[工作年限代码]教育统计所要求的高等学校教职工从事心理健康教育工作年限';
-- ----------------------------
-- Records of edu_hb_gznx
-- ----------------------------
INSERT INTO `edu_hb_gznx` VALUES ('1', '4 年及以下');
INSERT INTO `edu_hb_gznx` VALUES ('2', '5-10 年');
INSERT INTO `edu_hb_gznx` VALUES ('3', '11-20 年');
INSERT INTO `edu_hb_gznx` VALUES ('4', '21 年及以上');
