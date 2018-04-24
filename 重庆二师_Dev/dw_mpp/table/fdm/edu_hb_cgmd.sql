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
-- Table structure for edu_hb_cgmd
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_cgmd;
CREATE TABLE edu_hb_cgmd (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[出国目的代码]规定出国目的分类，适用于高等学校师生员工。';

-- ----------------------------
-- Records of edu_hb_cgmd
-- ----------------------------
INSERT INTO `edu_hb_cgmd` VALUES ('01', '常驻国外使馆、领事馆');
INSERT INTO `edu_hb_cgmd` VALUES ('02', '常驻国际组织及其代表机构');
INSERT INTO `edu_hb_cgmd` VALUES ('04', '常驻国外其他组织');
INSERT INTO `edu_hb_cgmd` VALUES ('05', '短期派驻国外使馆、领事馆');
INSERT INTO `edu_hb_cgmd` VALUES ('06', '短期派驻国际组织及其他代表机构');
INSERT INTO `edu_hb_cgmd` VALUES ('08', '短期派驻国外其他组织');
INSERT INTO `edu_hb_cgmd` VALUES ('10', '党政代表团出访');
INSERT INTO `edu_hb_cgmd` VALUES ('11', '军事代表团出访');
INSERT INTO `edu_hb_cgmd` VALUES ('12', '经济贸易和财务方面代表团出访与洽谈');
INSERT INTO `edu_hb_cgmd` VALUES ('13', '学术、文艺、体育代表团和其他社会团体出访');
INSERT INTO `edu_hb_cgmd` VALUES ('14', '参加国际性的各类比赛');
INSERT INTO `edu_hb_cgmd` VALUES ('15', '参加交易会和展览会');
INSERT INTO `edu_hb_cgmd` VALUES ('20', '引进技术和设备');
INSERT INTO `edu_hb_cgmd` VALUES ('21', '商务出国');
INSERT INTO `edu_hb_cgmd` VALUES ('22', '实习');
INSERT INTO `edu_hb_cgmd` VALUES ('23', '监造');
INSERT INTO `edu_hb_cgmd` VALUES ('30', '援外技术工作');
INSERT INTO `edu_hb_cgmd` VALUES ('31', '援建工作');
INSERT INTO `edu_hb_cgmd` VALUES ('32', '援外培训工作');
INSERT INTO `edu_hb_cgmd` VALUES ('33', '劳务出口');
INSERT INTO `edu_hb_cgmd` VALUES ('34', '合营工程');
INSERT INTO `edu_hb_cgmd` VALUES ('36', '航空、邮电、海运、公路等国际联运业务');
INSERT INTO `edu_hb_cgmd` VALUES ('37', '随船工作');
INSERT INTO `edu_hb_cgmd` VALUES ('39', '科技合作项目');
INSERT INTO `edu_hb_cgmd` VALUES ('40', '考察');
INSERT INTO `edu_hb_cgmd` VALUES ('41', '领奖');
INSERT INTO `edu_hb_cgmd` VALUES ('42', '参加各种会议');
INSERT INTO `edu_hb_cgmd` VALUES ('43', '进修');
INSERT INTO `edu_hb_cgmd` VALUES ('44', '讲学');
INSERT INTO `edu_hb_cgmd` VALUES ('45', '公派留学');
INSERT INTO `edu_hb_cgmd` VALUES ('451', '国家公派博士后');
INSERT INTO `edu_hb_cgmd` VALUES ('452', '国家公派博士');
INSERT INTO `edu_hb_cgmd` VALUES ('453', '国家公派硕士');
INSERT INTO `edu_hb_cgmd` VALUES ('454', '国家公派本科');
INSERT INTO `edu_hb_cgmd` VALUES ('455', '国家公派进修学习');
INSERT INTO `edu_hb_cgmd` VALUES ('456', '单位公派博士后');
INSERT INTO `edu_hb_cgmd` VALUES ('457', '单位公派博士');
INSERT INTO `edu_hb_cgmd` VALUES ('458', '单位公派硕士');
INSERT INTO `edu_hb_cgmd` VALUES ('459', '单位公派本科');
INSERT INTO `edu_hb_cgmd` VALUES ('45A', '单位公派进修学习');
INSERT INTO `edu_hb_cgmd` VALUES ('46', '自费留学');
INSERT INTO `edu_hb_cgmd` VALUES ('461', '自费博士后');
INSERT INTO `edu_hb_cgmd` VALUES ('462', '自费博士');
INSERT INTO `edu_hb_cgmd` VALUES ('463', '自费硕士');
INSERT INTO `edu_hb_cgmd` VALUES ('464', '自费本科');
INSERT INTO `edu_hb_cgmd` VALUES ('465', '自费进修学习');
INSERT INTO `edu_hb_cgmd` VALUES ('47', '自费公派留学');
INSERT INTO `edu_hb_cgmd` VALUES ('60', '旅游');
INSERT INTO `edu_hb_cgmd` VALUES ('61', '探亲');
INSERT INTO `edu_hb_cgmd` VALUES ('62', '会友');
INSERT INTO `edu_hb_cgmd` VALUES ('63', '结婚');
INSERT INTO `edu_hb_cgmd` VALUES ('64', '继承财产');
INSERT INTO `edu_hb_cgmd` VALUES ('65', '就业');
INSERT INTO `edu_hb_cgmd` VALUES ('66', '定居');
INSERT INTO `edu_hb_cgmd` VALUES ('70', '特殊任务');
INSERT INTO `edu_hb_cgmd` VALUES ('80', '换发护照');
INSERT INTO `edu_hb_cgmd` VALUES ('99', '其他原因出国');
