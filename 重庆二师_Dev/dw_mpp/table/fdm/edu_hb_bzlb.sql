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
DROP TABLE IF EXISTS edu_hb_bzlb;
CREATE TABLE edu_hb_bzlb (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[编制类别代码]规定了在职教职工编制的类别,采用顺序码,用二位数字表示';

-- ----------------------------
-- Records of edu_hb_bzlb
-- ----------------------------
INSERT INTO `edu_hb_bzlb` VALUES ('10', '教学类');
INSERT INTO `edu_hb_bzlb` VALUES ('20', '行政类');
INSERT INTO `edu_hb_bzlb` VALUES ('30', '教辅类');
INSERT INTO `edu_hb_bzlb` VALUES ('40', '工勤类');
INSERT INTO `edu_hb_bzlb` VALUES ('50', '科研类');
INSERT INTO `edu_hb_bzlb` VALUES ('60', '校办企业类');
INSERT INTO `edu_hb_bzlb` VALUES ('70', '辅设机构类');
INSERT INTO `edu_hb_bzlb` VALUES ('99', '其他类');