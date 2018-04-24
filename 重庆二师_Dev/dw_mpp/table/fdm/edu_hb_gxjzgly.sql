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
DROP TABLE IF EXISTS `edu_hb_gxjzgly`;
CREATE TABLE `edu_hb_gxjzgly` (
  `DM` char(3) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[高校教职工来源代码]高等学校教职工入校工作时的来源分类';
-- ----------------------------
-- Records of edu_hb_gxjzgly
-- ----------------------------
INSERT INTO `edu_hb_gxjzgly` VALUES ('10', '录用应届毕业生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('11', '应届本科生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('111', '本校应届本科生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('112', '外校应届本科生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('12', '应届硕士生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('121', '本校应届硕士生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('122', '外校应届本科生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('13', '应届博士生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('131', '本校应届博士生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('132', '外校应届博士生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('14', '国内博士后');
INSERT INTO `edu_hb_gxjzgly` VALUES ('15', '国外博士/博士后');
INSERT INTO `edu_hb_gxjzgly` VALUES ('16', '其他应届生');
INSERT INTO `edu_hb_gxjzgly` VALUES ('20', '军队转业、复员');
INSERT INTO `edu_hb_gxjzgly` VALUES ('21', '军转干部安置');
INSERT INTO `edu_hb_gxjzgly` VALUES ('22', '复员军人安置');
INSERT INTO `edu_hb_gxjzgly` VALUES ('30', '调入');
INSERT INTO `edu_hb_gxjzgly` VALUES ('31', '系统内高校调入');
INSERT INTO `edu_hb_gxjzgly` VALUES ('32', '系统内其他单位调入');
INSERT INTO `edu_hb_gxjzgly` VALUES ('321', '地方教育系统调入');
INSERT INTO `edu_hb_gxjzgly` VALUES ('33', '系统外调入');
INSERT INTO `edu_hb_gxjzgly` VALUES ('331', '中央其他部门调入');
INSERT INTO `edu_hb_gxjzgly` VALUES ('332', '地方其他部门调入');
INSERT INTO `edu_hb_gxjzgly` VALUES ('40', '引进人才');
INSERT INTO `edu_hb_gxjzgly` VALUES ('41', '院士');
INSERT INTO `edu_hb_gxjzgly` VALUES ('42', '特聘教授');
INSERT INTO `edu_hb_gxjzgly` VALUES ('43', '杰出人才');
INSERT INTO `edu_hb_gxjzgly` VALUES ('44', '优秀人才');
INSERT INTO `edu_hb_gxjzgly` VALUES ('45', '录用学成归国人员');
INSERT INTO `edu_hb_gxjzgly` VALUES ('46', '其他引进人才');
INSERT INTO `edu_hb_gxjzgly` VALUES ('49', '外国专家');
INSERT INTO `edu_hb_gxjzgly` VALUES ('50', '社会招聘');
INSERT INTO `edu_hb_gxjzgly` VALUES ('51', '社会招聘专业技术人员');
INSERT INTO `edu_hb_gxjzgly` VALUES ('52', '其他社会招聘人员');
INSERT INTO `edu_hb_gxjzgly` VALUES ('52', '社会招聘工勤人员');
INSERT INTO `edu_hb_gxjzgly` VALUES ('99', '其他进校人员');
