/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wu.yabing@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_daywxw
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_daywxw;
CREATE TABLE edu_hb_daywxw (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[档案业务行为代码]规定档案业务行为的分类。';

-- ----------------------------
-- Records of edu_hb_daywxw
-- ----------------------------
INSERT INTO `edu_hb_daywxw` VALUES ('10', '收集');
INSERT INTO `edu_hb_daywxw` VALUES ('20', '鉴定');
INSERT INTO `edu_hb_daywxw` VALUES ('30', '整理');
INSERT INTO `edu_hb_daywxw` VALUES ('40', '保管');
INSERT INTO `edu_hb_daywxw` VALUES ('50', '检索');
INSERT INTO `edu_hb_daywxw` VALUES ('60', '编研');
INSERT INTO `edu_hb_daywxw` VALUES ('70', '利用');
INSERT INTO `edu_hb_daywxw` VALUES ('80', '统计');
