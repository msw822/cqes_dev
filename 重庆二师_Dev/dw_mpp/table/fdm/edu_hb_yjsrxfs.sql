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
DROP TABLE IF EXISTS `edu_hb_yjsrxfs`;
CREATE TABLE `edu_hb_yjsrxfs` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[研究生入学方式代码]高等学校攻读研究生学位的学生入学方式的分类';
-- ----------------------------
-- Records of edu_hb_yjsrxfs
-- ----------------------------
INSERT INTO `edu_hb_yjsrxfs` VALUES ('10', '博士');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('11', '博士生公开招考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('12', '博士生推荐免试');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('13', '硕士博士连读');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('14', '本科硕士博士生连读');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('15', '博士生港澳台考试');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('16', '来华留学博士生考试');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('17', '本科毕业生直接攻博');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('18', '硕士生提前攻博');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('19', '博士生保留资格返校');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('20', '硕士');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('21', '硕士生全国统考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('22', '硕士生推荐免试');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('23', '硕士生单独考试');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('24', '硕士生保留资格返校');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('25', '硕士生港澳台考试');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('26', '来华留学硕士生考试');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('30', '硕士专业学位联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('31', '经济类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('32', '法律类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('33', '教育类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('34', '文学类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('35', '文博类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('36', '工程类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('37', '农学类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('38', '医学类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('39', '军事类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('40', '管理类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('41', '艺术类联考');
INSERT INTO `edu_hb_yjsrxfs` VALUES ('99', '其他');
