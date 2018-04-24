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
DROP TABLE IF EXISTS `edu_hb_jsnl`;
CREATE TABLE `edu_hb_jsnl` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称',
  `JYTJSYXX` varchar(30) NOT NULL COMMENT '教育统计适用学校'
) DEFAULT CHARSET=utf8 COMMENT= '[教师年龄代码]各级各类学校（包括幼儿园和其他教育机构）的专任教师及研究生导师等人员年龄段';
-- ----------------------------
-- Records of edu_hb_jsnl
-- ----------------------------
INSERT INTO `edu_hb_jsnl` VALUES ('1', '25 岁及以下', '基础教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('2', '26-30 岁', '基础教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('3', '30 岁及以下', '中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('4', '31-35 岁', '基础教育各类学校，中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('5', '36-40 岁', '基础教育各类学校，中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('6', '41-45 岁', '基础教育各类学校，中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('7', '46-50 岁', '基础教育各类学校，中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('8', '51-55 岁', '基础教育各类学校，中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('9', '56-60 岁', '基础教育各类学校，中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('10', '61 岁及以上', '基础教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('11', '61-65 岁', '中等职业教育各类学校，高等教育各类学校');
INSERT INTO `edu_hb_jsnl` VALUES ('12', '66 岁及以上', '中等职业教育各类学校，高等教育各类学校');
