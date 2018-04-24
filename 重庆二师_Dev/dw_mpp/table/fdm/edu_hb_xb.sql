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
DROP TABLE IF EXISTS edu_hb_xb;
CREATE TABLE edu_hb_xb (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[人的性别代码]本代码引自GB/T 2261.1-2003。';

-- ----------------------------
-- Records of edu_hb_xb
-- ----------------------------
INSERT INTO `edu_hb_xb` VALUES ('0', '未知的性别');
INSERT INTO `edu_hb_xb` VALUES ('1', '男性');
INSERT INTO `edu_hb_xb` VALUES ('2', '女性');
INSERT INTO `edu_hb_xb` VALUES ('9', '未说明的性别');
