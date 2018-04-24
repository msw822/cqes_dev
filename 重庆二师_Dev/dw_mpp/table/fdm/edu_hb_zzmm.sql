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
DROP TABLE IF EXISTS `edu_hb_zzmm`;
CREATE TABLE "edu_hb_zzmm" (
  `DM` varchar(2) NOT NULL COMMENT '代码',
  `MC` varchar(50) NOT NULL COMMENT '名称',
  `JC` varchar(20) DEFAULT NULL COMMENT '简称'
) DEFAULT CHARSET=utf8  COMMENT='[政治面貌码]本代码引自GB/T 4762-1984。';

-- ----------------------------
-- Records of edu_hb_zzmm
-- ----------------------------
INSERT INTO `edu_hb_zzmm` VALUES ('01', '中国共产党党员', '中共党员');
INSERT INTO `edu_hb_zzmm` VALUES ('02', '中国共产党预备党员', '中共预备党员');
INSERT INTO `edu_hb_zzmm` VALUES ('03', '中国共产主义青年团团员', '共青团员');
INSERT INTO `edu_hb_zzmm` VALUES ('04', '中国国民党革命委员会会员', '民革会员');
INSERT INTO `edu_hb_zzmm` VALUES ('05', '中国民主同盟盟员', '民盟盟员');
INSERT INTO `edu_hb_zzmm` VALUES ('06', '中国民主建国会会员', '民建会员');
INSERT INTO `edu_hb_zzmm` VALUES ('07', '中国民主促进会会员', '民进会员');
INSERT INTO `edu_hb_zzmm` VALUES ('08', '中国农工民主党党员', '农工党党员');
INSERT INTO `edu_hb_zzmm` VALUES ('09', '中国致公党党员', '致公党党员');
INSERT INTO `edu_hb_zzmm` VALUES ('10', '九三学社社员', '九三学社社员');
INSERT INTO `edu_hb_zzmm` VALUES ('11', '台湾民主自治同盟盟员', '台盟盟员');
INSERT INTO `edu_hb_zzmm` VALUES ('12', '无党派民主人士', '无党派民主人士');
INSERT INTO `edu_hb_zzmm` VALUES ('13', '群众', '群众');
