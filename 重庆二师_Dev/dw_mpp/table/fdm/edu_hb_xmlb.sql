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
DROP TABLE IF EXISTS edu_hb_xmlb;
CREATE TABLE edu_hb_xmlb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(20) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[科技项目类别代码]本代码引自GB/T 14946.1-2009。';

-- ----------------------------
-- Records of edu_hb_xmlb
-- ----------------------------
INSERT INTO `edu_hb_xmlb` VALUES ('0', '国际项目');
INSERT INTO `edu_hb_xmlb` VALUES ('01', '国际合作研究项目');
INSERT INTO `edu_hb_xmlb` VALUES ('1', '国家科技计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('11', '863 计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('12', '国家科技支撑计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('13', '973 计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('14', '研究开发条件建设计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('141', '国家重点实验室计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('142', '国家重大科学工程项目');
INSERT INTO `edu_hb_xmlb` VALUES ('143', '国家工程技术研究中心项目');
INSERT INTO `edu_hb_xmlb` VALUES ('144', '中央级科研院所科技基础性工作专项');
INSERT INTO `edu_hb_xmlb` VALUES ('145', '中央级科研院所社会公益研究专项');
INSERT INTO `edu_hb_xmlb` VALUES ('146', '国际合作重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('147', '国家软科学研究计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('15', '科技产业化环境建设项目');
INSERT INTO `edu_hb_xmlb` VALUES ('151', '星火计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('152', '火炬计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('153', '科技成果重点推广计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('154', '国家重点新产品计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('155', '科技型中小企业技术创新基金项目');
INSERT INTO `edu_hb_xmlb` VALUES ('156', '农业科技成果转化资金项目');
INSERT INTO `edu_hb_xmlb` VALUES ('157', '科技兴贸行动计划项目');
INSERT INTO `edu_hb_xmlb` VALUES ('158', '生产力促进中心项目');
INSERT INTO `edu_hb_xmlb` VALUES ('159', '科研院所技术开发研究专项资金项目');
INSERT INTO `edu_hb_xmlb` VALUES ('2', '省、部项目');
INSERT INTO `edu_hb_xmlb` VALUES ('21', '省、部级重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('29', '省、部级其他项目');
INSERT INTO `edu_hb_xmlb` VALUES ('3', '地、市级项目');
INSERT INTO `edu_hb_xmlb` VALUES ('31', '地、市级重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('39', '地、市级其他项目');
INSERT INTO `edu_hb_xmlb` VALUES ('6', '军队项目');
INSERT INTO `edu_hb_xmlb` VALUES ('61', '全军项目');
INSERT INTO `edu_hb_xmlb` VALUES ('611', '全军重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('619', '全军其他项目');
INSERT INTO `edu_hb_xmlb` VALUES ('62', '大军区、军兵种级项目');
INSERT INTO `edu_hb_xmlb` VALUES ('621', '大军区、军兵种级重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('629', '大军区、军兵种级其他项目');
INSERT INTO `edu_hb_xmlb` VALUES ('63', '军级项目');
INSERT INTO `edu_hb_xmlb` VALUES ('631', '军级重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('639', '军级其他项目');
INSERT INTO `edu_hb_xmlb` VALUES ('64', '师级项目');
INSERT INTO `edu_hb_xmlb` VALUES ('641', '师级重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('649', '师级其他项目');
INSERT INTO `edu_hb_xmlb` VALUES ('65', '团级项目');
INSERT INTO `edu_hb_xmlb` VALUES ('651', '团级重点项目');
INSERT INTO `edu_hb_xmlb` VALUES ('659', '团级其他项目');
INSERT INTO `edu_hb_xmlb` VALUES ('7', '合同项目');
INSERT INTO `edu_hb_xmlb` VALUES ('8', '自选项目');
INSERT INTO `edu_hb_xmlb` VALUES ('9', '其他项目');
