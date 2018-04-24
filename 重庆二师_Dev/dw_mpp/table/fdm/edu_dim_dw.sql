/*
#  DESCRIPTION: 学校各个单位信息
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
use FDM;
DROP TABLE IF EXISTS `edu_dim_dw`;
CREATE TABLE "edu_dim_dw" (
  "DWH" varchar(40) NOT NULL COMMENT '单位码',
  "DWMC" varchar(150) DEFAULT NULL COMMENT '名称',
  "DWYWMC" varchar(180) DEFAULT NULL COMMENT '单位英文名称',
  "DWYWJC" varchar(180) DEFAULT NULL COMMENT '单位英文简称',
  "DWJP" varchar(20) DEFAULT NULL COMMENT '简称',
  "DWDZ" varchar(60) DEFAULT NULL COMMENT '单位地址',
  "LSDWH" varchar(60) DEFAULT NULL COMMENT '隶属单位号',
  "DWLBM" varchar(40) DEFAULT NULL COMMENT '单位类别码',
  "DWBBM" varchar(40) DEFAULT NULL COMMENT '单位办别码',
  "DWYXBS" varchar(1) DEFAULT NULL COMMENT '单位有效标志,1:有效,0:无效',
  "SXRQ" varchar(8) DEFAULT NULL COMMENT '单位失效日期 YYYYMMDD',
  "SFST" varchar(1) DEFAULT NULL COMMENT '是否实体',
  "JLNY" char(6) DEFAULT NULL COMMENT '建立年月',
  "DWFZRH" varchar(20) DEFAULT NULL COMMENT '单位负责人号',
  "DWJB" varchar(1) DEFAULT NULL COMMENT '单位级别,层次',
  "DWXJM" varchar(60) DEFAULT NULL COMMENT '助记码',
  "CREATED_TIME" varchar(20) DEFAULT NULL COMMENT '创建时间',
  "MODIFIED_TIME" varchar(20) DEFAULT NULL COMMENT '修改时间'
) DEFAULT CHARSET=utf8 COMMENT='[单位维表]学校各个单位信息';

-- ----------------------------
-- Records of edu_dim_dw
-- ----------------------------
INSERT INTO `edu_dim_dw` VALUES ('050000', '附属单位', '', null, '', null, '10006', '050000', null, null, null, null, null, null, '2', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('060000', '挂靠单位', '', null, '', null, '10006', '060000', null, null, null, null, null, null, '2', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('070000', '学术组织', '', null, '', null, '10006', '070000', null, null, null, null, null, null, '2', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('990000', '其他部门', '', null, '', null, '10006', '990000', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('000000', '学校领导', '', null, '', null, '10006', '000000', null, null, null, null, null, null, '2', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('6', '教学院系', '', null, '', null, '10006', '', null, null, null, null, null, null, '2', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012400', '大数据工程师学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011100', '人文社会科学学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011200', '外国语学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011300', '交通科学与工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011400', '新华三学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011500', '汽车学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011600', '食品科学学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011700', '光电工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011900', '物理科学学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012000', '法学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012100', '软件学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012200', '教育学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012300', '理工学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012600', '设计学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012700', '化学学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012800', '马克思学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('012900', '工程研究所', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('013000', '工程训练中心', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('013100', '体育部', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011000', '生物与医学工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010400', '能源与动力工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010700', '机械工程及自动化学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010800', '经济管理学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010500', '科学与工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010200', '电子信息工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010600', '计算机学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010900', '数学科学学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011209', '语言科学与工程系', '', null, '', null, '011200', '011200', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011210', '俄语系', '', null, '', null, '011200', '011200', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011211', '翻译系', '', null, '', null, '011200', '011200', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011301', '汽车机关', '', null, '', null, '011300', '011300', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011302', '交通运输工程系', '', null, '', null, '011300', '011300', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011303', '汽车工程系', '', null, '', null, '011300', '011300', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011401', '院机关', '', null, '', null, '011400', '011400', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011402', '院科技办', '', null, '', null, '011400', '011400', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010300', '电气工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010100', '材料科学与工程学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010101', '院机关', '', null, '', null, '010100', '010100', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010000', '石油提炼学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('050900', '新主楼物业', '', null, '', null, '050000', '050000', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('022601', '烟草科学技术研究院', '', null, '', null, '022600', '022600', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('022603', '基础研究院', '', null, '', null, '022600', '022600', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('013200', '人文高等研究院', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('041104', '工程国际研究中心', '', null, '', null, '041100', '041100', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('041105', '清洁材料中心', '', null, '', null, '041100', '041100', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('041106', '器械研究中心', '', null, '', null, '041100', '041100', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('01FJ00', '有才开发', '', null, '', null, '6', '6', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('041100', '交叉研究院', '', null, '', null, '040000', '040000', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('010810', '循环研究中心', '', null, '', null, '010800', '010800', null, null, null, null, null, null, '3', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('013500', '人文学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011708', '烟草技术研究所', '', null, '', null, '011700', '011700', null, null, null, null, null, null, '', null, null, null);
INSERT INTO `edu_dim_dw` VALUES ('011800', '郑州学院', '', null, '', null, '6', '6', null, null, null, null, null, null, '', null, null, null);
