/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_kwjb;
CREATE TABLE edu_hb_kwjb (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[KWJB 刊物级别代码]本代码代替2002年的DM-KWJB《刊物级别代码》';

-- ----------------------------
-- Records of edu_hb_kwjb
-- ----------------------------
INSERT INTO `edu_hb_kwjb` VALUES ('10', '国际学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('11', '国际权威学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('12', '国际一般学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('19', '国际其他刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('20', '全国性学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('21', '国内一级、权威、重点学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('22', '国内一般学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('29', '国内其他刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('30', '省级学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('31', '省级公开发行学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('39', '省级公开发行其他刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('40', '院校级学术刊物');
INSERT INTO `edu_hb_kwjb` VALUES ('41', '重点院校学报');
INSERT INTO `edu_hb_kwjb` VALUES ('42', '一般院校学报');
INSERT INTO `edu_hb_kwjb` VALUES ('49', '院校其他公开发行学术刊物');