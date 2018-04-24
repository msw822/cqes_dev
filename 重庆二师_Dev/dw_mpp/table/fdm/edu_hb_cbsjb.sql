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
DROP TABLE IF EXISTS edu_hb_cbsjb;
CREATE TABLE edu_hb_cbsjb (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[出版社级别代码表]本代码采用顺序码，用一位数字表示';

-- ----------------------------
-- Records of edu_hb_cbsjb
-- ----------------------------
INSERT INTO `edu_hb_cbsjb` VALUES ('1', '中央出版社');
INSERT INTO `edu_hb_cbsjb` VALUES ('2', '地方出版社');
INSERT INTO `edu_hb_cbsjb` VALUES ('3','国外（境外）出版社');

