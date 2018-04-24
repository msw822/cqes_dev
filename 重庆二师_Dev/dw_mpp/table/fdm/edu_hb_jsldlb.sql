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
DROP TABLE IF EXISTS `edu_hb_jsldlb`;
CREATE TABLE `edu_hb_jsldlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(30) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[教师流动类别代码]适用于幼儿园、中小学校和中等职业学校的教师';
-- ----------------------------
-- Records of edu_hb_jsldlb
-- ----------------------------
INSERT INTO `edu_hb_jsldlb` VALUES ('1', '由农村学校向城区学校的流动');
INSERT INTO `edu_hb_jsldlb` VALUES ('2', '城区县直学校之间或农村跨乡镇学校之间的流动');
INSERT INTO `edu_hb_jsldlb` VALUES ('3', '城区学校向农村学校流动');
INSERT INTO `edu_hb_jsldlb` VALUES ('9', '其他');
