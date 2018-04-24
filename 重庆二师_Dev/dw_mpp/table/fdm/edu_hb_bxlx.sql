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
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/



-- ----------------------------
-- Table structure for edu_hb_bxlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_bxlx;
CREATE TABLE edu_hb_bxlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[办学类型代码]采用三层三位数字码，第一位表示教育层次行业分类，第二层用前二位数字表示学校类别，第三位表示办学类型。';

-- ----------------------------
-- Records of edu_hb_bxlx
-- ----------------------------
INSERT INTO `edu_hb_bxlx` VALUES ('1', '学前教育');
INSERT INTO `edu_hb_bxlx` VALUES ('11', '幼儿园');
INSERT INTO `edu_hb_bxlx` VALUES ('111', '幼儿园');
INSERT INTO `edu_hb_bxlx` VALUES ('119', '附设幼儿班');
INSERT INTO `edu_hb_bxlx` VALUES ('2', '初等教育');
INSERT INTO `edu_hb_bxlx` VALUES ('21', '小学');
INSERT INTO `edu_hb_bxlx` VALUES ('211', '小学');
INSERT INTO `edu_hb_bxlx` VALUES ('218', '小学教学点');
INSERT INTO `edu_hb_bxlx` VALUES ('219', '附设小学班');
INSERT INTO `edu_hb_bxlx` VALUES ('22', '成人小学');
INSERT INTO `edu_hb_bxlx` VALUES ('221', '职工小学');
INSERT INTO `edu_hb_bxlx` VALUES ('222', '农民小学');
INSERT INTO `edu_hb_bxlx` VALUES ('228', '小学班');
INSERT INTO `edu_hb_bxlx` VALUES ('229', '扫盲班');
INSERT INTO `edu_hb_bxlx` VALUES ('3', '中等教育');
INSERT INTO `edu_hb_bxlx` VALUES ('31', '普通初中');
INSERT INTO `edu_hb_bxlx` VALUES ('311', '初级中学');
INSERT INTO `edu_hb_bxlx` VALUES ('312', '九年一贯制学校');
INSERT INTO `edu_hb_bxlx` VALUES ('319', '附设普通初中班');
INSERT INTO `edu_hb_bxlx` VALUES ('32', '职业初中');
INSERT INTO `edu_hb_bxlx` VALUES ('321', '职业初中');
INSERT INTO `edu_hb_bxlx` VALUES ('329', '附设职业初中班');
INSERT INTO `edu_hb_bxlx` VALUES ('33', '成人初中');
INSERT INTO `edu_hb_bxlx` VALUES ('331', '成人职工初中');
INSERT INTO `edu_hb_bxlx` VALUES ('332', '成人农民初中');
INSERT INTO `edu_hb_bxlx` VALUES ('34', '普通高中');
INSERT INTO `edu_hb_bxlx` VALUES ('341', '完全中学');
INSERT INTO `edu_hb_bxlx` VALUES ('342', '高级中学');
INSERT INTO `edu_hb_bxlx` VALUES ('345', '十二年一贯制学校');
INSERT INTO `edu_hb_bxlx` VALUES ('349', '附设普通高中班');
INSERT INTO `edu_hb_bxlx` VALUES ('35', '成人高中');
INSERT INTO `edu_hb_bxlx` VALUES ('351', '成人职工高中');
INSERT INTO `edu_hb_bxlx` VALUES ('352', '成人农民高中');
INSERT INTO `edu_hb_bxlx` VALUES ('36', '中等职业学校');
INSERT INTO `edu_hb_bxlx` VALUES ('361', '调整后中等职业学校');
INSERT INTO `edu_hb_bxlx` VALUES ('362', '中等技术学校');
INSERT INTO `edu_hb_bxlx` VALUES ('363', '中等师范学校');
INSERT INTO `edu_hb_bxlx` VALUES ('364', '成人中等专业学校');
INSERT INTO `edu_hb_bxlx` VALUES ('365', '职业高中学校');
INSERT INTO `edu_hb_bxlx` VALUES ('366', '技工学校');
INSERT INTO `edu_hb_bxlx` VALUES ('368', '附设中职班');
INSERT INTO `edu_hb_bxlx` VALUES ('369', '其他机构');
INSERT INTO `edu_hb_bxlx` VALUES ('37', '工读学校');
INSERT INTO `edu_hb_bxlx` VALUES ('371', '工读学校');
INSERT INTO `edu_hb_bxlx` VALUES ('4', '高等学校');
INSERT INTO `edu_hb_bxlx` VALUES ('41', '普通高等学校');
INSERT INTO `edu_hb_bxlx` VALUES ('411', '本科院校：大学');
INSERT INTO `edu_hb_bxlx` VALUES ('412', '本科院校：学院');
INSERT INTO `edu_hb_bxlx` VALUES ('413', '本科院校：独立学院');
INSERT INTO `edu_hb_bxlx` VALUES ('414', '专科院校：高等专科学校');
INSERT INTO `edu_hb_bxlx` VALUES ('415', '专科院校：高等职业学校');
INSERT INTO `edu_hb_bxlx` VALUES ('419', '其他机构：分校、大专班');
INSERT INTO `edu_hb_bxlx` VALUES ('42', '成人高等学校');
INSERT INTO `edu_hb_bxlx` VALUES ('421', '职工高校');
INSERT INTO `edu_hb_bxlx` VALUES ('422', '农民高校');
INSERT INTO `edu_hb_bxlx` VALUES ('423', '管理干部学院');
INSERT INTO `edu_hb_bxlx` VALUES ('424', '教育学院');
INSERT INTO `edu_hb_bxlx` VALUES ('425', '独立函授学院');
INSERT INTO `edu_hb_bxlx` VALUES ('426', '广播电视大学');
INSERT INTO `edu_hb_bxlx` VALUES ('429', '其他成人高等教育机构');
INSERT INTO `edu_hb_bxlx` VALUES ('5', '特殊教育');
INSERT INTO `edu_hb_bxlx` VALUES ('51', '特殊教育学校');
INSERT INTO `edu_hb_bxlx` VALUES ('511', '盲人学校');
INSERT INTO `edu_hb_bxlx` VALUES ('512', '聋人学校');
INSERT INTO `edu_hb_bxlx` VALUES ('513', '弱智学校');
INSERT INTO `edu_hb_bxlx` VALUES ('514', '其他特殊教育学校');
INSERT INTO `edu_hb_bxlx` VALUES ('519', '附设特教班');
INSERT INTO `edu_hb_bxlx` VALUES ('9', '其他教育');
INSERT INTO `edu_hb_bxlx` VALUES ('91', '培养研究生的科研机构');
INSERT INTO `edu_hb_bxlx` VALUES ('911', '培养研究生的科研机构');
INSERT INTO `edu_hb_bxlx` VALUES ('92', '民办的其他高等教育机构');
INSERT INTO `edu_hb_bxlx` VALUES ('921', '民办的其他高等教育机构');
INSERT INTO `edu_hb_bxlx` VALUES ('93', '中等职业培训机构');
INSERT INTO `edu_hb_bxlx` VALUES ('931', '职工技术培训学校（机构）');
INSERT INTO `edu_hb_bxlx` VALUES ('932', '农村成人文化技术培训学校（机构）');
INSERT INTO `edu_hb_bxlx` VALUES ('933', '其他培训机构（含社会培训机构）');
