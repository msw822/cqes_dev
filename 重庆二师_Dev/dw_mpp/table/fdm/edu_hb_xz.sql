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
DROP TABLE IF EXISTS `edu_hb_xz`;
CREATE TABLE "edu_hb_xz" (
  "start_time" varchar(8) NOT NULL COMMENT '开启日期，包括',
  "end_time" varchar(8) NOT NULL COMMENT '结束日期，包括',
  "MC" varchar(10) DEFAULT NULL COMMENT '星座名称',
  "JC" varchar(8) DEFAULT NULL COMMENT '星座简称'
)DEFAULT CHARSET=utf8 COMMENT '[星座代码]非教育标准,来自互联网定义';

-- ----------------------------
-- Records of edu_hb_xz
-- ----------------------------
INSERT INTO `edu_hb_xz` VALUES ('0420', '0520', '金牛座', 'JN');
INSERT INTO `edu_hb_xz` VALUES ('0521', '0621', '双子座', 'SZ');
INSERT INTO `edu_hb_xz` VALUES ('0622', '0722', '巨蟹座', 'JX');
INSERT INTO `edu_hb_xz` VALUES ('0723', '0822', '狮子座', 'SZ');
INSERT INTO `edu_hb_xz` VALUES ('0823', '0922', '处女座', 'CN');
INSERT INTO `edu_hb_xz` VALUES ('0923', '1023', '天秤座', 'TC');
INSERT INTO `edu_hb_xz` VALUES ('1024', '1122', '天蝎座', 'TX');
INSERT INTO `edu_hb_xz` VALUES ('1123', '1221', '射手座', 'SS');
INSERT INTO `edu_hb_xz` VALUES ('1222', '0119', '摩羯座', 'MJ');
INSERT INTO `edu_hb_xz` VALUES ('0120', '0218', '水瓶座', 'SP');
INSERT INTO `edu_hb_xz` VALUES ('0219', '0320', '双鱼座', 'SY');
INSERT INTO `edu_hb_xz` VALUES ('0321', '0419', '白羊座', 'BY');
