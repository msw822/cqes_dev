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
DROP TABLE IF EXISTS `edu_hb_xsnl`;
CREATE TABLE `edu_hb_xsnl` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称',
  `JYTJSYXX` varchar(30) NOT NULL COMMENT '教育统计适用学校'
) DEFAULT CHARSET=utf8 COMMENT= '[学生年龄代码]适用于各级各类学校（包括幼儿园和其他教育机构）';
-- ----------------------------
-- Records of edu_hb_xsnl
-- ----------------------------
INSERT INTO `edu_hb_xsnl` VALUES ('1', '3 岁以下', '幼儿园');
INSERT INTO `edu_hb_xsnl` VALUES ('2', '3 岁', '幼儿园');
INSERT INTO `edu_hb_xsnl` VALUES ('3', '4 岁', '幼儿园');
INSERT INTO `edu_hb_xsnl` VALUES ('4', '5 岁及以下', '小学');
INSERT INTO `edu_hb_xsnl` VALUES ('5', '5 岁', '幼儿园');
INSERT INTO `edu_hb_xsnl` VALUES ('6', '5 岁以上', '幼儿园');
INSERT INTO `edu_hb_xsnl` VALUES ('7', '6 岁', '小学');
INSERT INTO `edu_hb_xsnl` VALUES ('8', '7 岁', '小学');
INSERT INTO `edu_hb_xsnl` VALUES ('9', '8 岁', '小学');
INSERT INTO `edu_hb_xsnl` VALUES ('10', '9 岁', '小学');
INSERT INTO `edu_hb_xsnl` VALUES ('11', '10 岁及以下', '初中');
INSERT INTO `edu_hb_xsnl` VALUES ('12', '10 岁', '小学');
INSERT INTO `edu_hb_xsnl` VALUES ('13', '11 岁', '小学,初中');
INSERT INTO `edu_hb_xsnl` VALUES ('14', '12 岁', '小学,初中');
INSERT INTO `edu_hb_xsnl` VALUES ('15', '13 岁', '小学,初中');
INSERT INTO `edu_hb_xsnl` VALUES ('16', '14 岁及以下', '高中,中等职业教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('17', '14 岁', '小学,初中');
INSERT INTO `edu_hb_xsnl` VALUES ('18', '15 岁', '初中,高中，中等职业教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('19', '15 岁及以上', '小学');
INSERT INTO `edu_hb_xsnl` VALUES ('20', '16 岁', '初中,高中,中等职业教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('21', '17 岁及以下', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('22', '17 岁', '初中,高中,中等职业教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('23', '18 岁', '高中,中等职业教育各类学校,高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('24', '18 岁及以上', '初中');
INSERT INTO `edu_hb_xsnl` VALUES ('25', '19 岁', '高中,中等职业教育各类学校,高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('26', '20 岁', '高中,中等职业教育各类学校,高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('27', '21 岁', '高中,中等职业教育各类学校,高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('28', '22 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('29', '22 岁及以上', '高中,中等职业教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('30', '23 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('31', '24 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('32', '25 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('33', '26 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('34', '27 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('35', '28 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('36', '29 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('37', '30 岁', '高等教育各类学校');
INSERT INTO `edu_hb_xsnl` VALUES ('38', '31 岁及以上', '高等教育各类学校');
