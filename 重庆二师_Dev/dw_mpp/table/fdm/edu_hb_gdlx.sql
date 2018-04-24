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
DROP TABLE IF EXISTS `edu_hb_gdlx`;
CREATE TABLE `edu_hb_gdlx` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(80) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[攻读类型代码]高等学校研究生入学或攻读学位的类型';
-- ----------------------------
-- Records of edu_hb_gdlx
-- ----------------------------
INSERT INTO `edu_hb_gdlx` VALUES ('11', '公开招考');
INSERT INTO `edu_hb_gdlx` VALUES ('22', '提前攻博');
INSERT INTO `edu_hb_gdlx` VALUES ('23', '硕博连读');
INSERT INTO `edu_hb_gdlx` VALUES ('24', '本科直博');
INSERT INTO `edu_hb_gdlx` VALUES ('35', '本博连读（八年制临床医学博士）');
INSERT INTO `edu_hb_gdlx` VALUES ('46', '同等学力申请');
INSERT INTO `edu_hb_gdlx` VALUES ('99', '其他');
