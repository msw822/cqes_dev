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
DROP TABLE IF EXISTS `edu_hb_jdjl`;
CREATE TABLE `edu_hb_jdjl` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[鉴定结论代码]科研项目等成果的鉴定结论';
-- ----------------------------
-- Records of edu_hb_jdjl
-- ----------------------------
INSERT INTO `edu_hb_jdjl` VALUES ('11', '国际首创');
INSERT INTO `edu_hb_jdjl` VALUES ('12', '国际领先');
INSERT INTO `edu_hb_jdjl` VALUES ('13', '国际水平');
INSERT INTO `edu_hb_jdjl` VALUES ('14', '国际先进');
INSERT INTO `edu_hb_jdjl` VALUES ('21', '国内首创');
INSERT INTO `edu_hb_jdjl` VALUES ('22', '国内领先');
INSERT INTO `edu_hb_jdjl` VALUES ('23', '国内先进');
INSERT INTO `edu_hb_jdjl` VALUES ('31', '能投入生产应用');
INSERT INTO `edu_hb_jdjl` VALUES ('41', '省（部）先进');
INSERT INTO `edu_hb_jdjl` VALUES ('51', '军内先进');
INSERT INTO `edu_hb_jdjl` VALUES ('99', '一般水平');
