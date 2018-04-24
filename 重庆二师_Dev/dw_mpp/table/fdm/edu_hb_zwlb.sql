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
DROP TABLE IF EXISTS `edu_hb_zwlb`;
CREATE TABLE `edu_hb_zwlb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[职务类别代码]教职工担任党政、社会团体、民主党派职务的分类。适用于中小学校、中等职业学校、高等学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_zwlb
-- ----------------------------
INSERT INTO `edu_hb_zwlb` VALUES ('11', '党委正职');
INSERT INTO `edu_hb_zwlb` VALUES ('12', '行政正职');
INSERT INTO `edu_hb_zwlb` VALUES ('13', '党的职能部门正职');
INSERT INTO `edu_hb_zwlb` VALUES ('14', '行政职能部门正职');
INSERT INTO `edu_hb_zwlb` VALUES ('15', '民主党派正职');
INSERT INTO `edu_hb_zwlb` VALUES ('16', '社会团体正职');
INSERT INTO `edu_hb_zwlb` VALUES ('21', '党委副职');
INSERT INTO `edu_hb_zwlb` VALUES ('22', '行政副职');
INSERT INTO `edu_hb_zwlb` VALUES ('23', '党的职能部门副职');
INSERT INTO `edu_hb_zwlb` VALUES ('24', '行政职能部门副职');
INSERT INTO `edu_hb_zwlb` VALUES ('25', '民主党派副职');
INSERT INTO `edu_hb_zwlb` VALUES ('26', '社会团体副职');
INSERT INTO `edu_hb_zwlb` VALUES ('31', '党委常委');
INSERT INTO `edu_hb_zwlb` VALUES ('32', '党委委员');
INSERT INTO `edu_hb_zwlb` VALUES ('33', '纪委委员');
INSERT INTO `edu_hb_zwlb` VALUES ('34', '校长助理');
INSERT INTO `edu_hb_zwlb` VALUES ('35', '总会计师');
INSERT INTO `edu_hb_zwlb` VALUES ('36', '总经济师');
INSERT INTO `edu_hb_zwlb` VALUES ('38', '党委其他职');
INSERT INTO `edu_hb_zwlb` VALUES ('39', '行政其他职');
INSERT INTO `edu_hb_zwlb` VALUES ('41', '党的职能部门其他职');
INSERT INTO `edu_hb_zwlb` VALUES ('42', '行政职能部门其他职');
INSERT INTO `edu_hb_zwlb` VALUES ('43', '民主党派其他职');
INSERT INTO `edu_hb_zwlb` VALUES ('44', '社会团体其他职');
