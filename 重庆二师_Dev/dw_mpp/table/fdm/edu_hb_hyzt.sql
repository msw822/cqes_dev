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
DROP TABLE IF EXISTS edu_hb_hyzt;
CREATE TABLE edu_hb_hyzt (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) DEFAULT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[婚姻状况代码]本代码引自GB/T 2261.2-2003';

-- ----------------------------
-- Records of edu_hb_hyzt
-- ----------------------------
INSERT INTO `edu_hb_hyzt` VALUES ('10', '未婚');
INSERT INTO `edu_hb_hyzt` VALUES ('20', '已婚');
INSERT INTO `edu_hb_hyzt` VALUES ('21', '初婚');
INSERT INTO `edu_hb_hyzt` VALUES ('22', '再婚');
INSERT INTO `edu_hb_hyzt` VALUES ('23', '复婚');
INSERT INTO `edu_hb_hyzt` VALUES ('30', '丧偶');
INSERT INTO `edu_hb_hyzt` VALUES ('40', '离婚');
INSERT INTO `edu_hb_hyzt` VALUES ('90', '未说明的婚姻状况');