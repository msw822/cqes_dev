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
DROP TABLE IF EXISTS `edu_hb_zjlb`;
CREATE TABLE `edu_hb_zjlb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[专家类别代码]适用于中小学校、中等职业学校、高等学校和幼儿园';
-- ----------------------------
-- Records of edu_hb_zjlb
-- ----------------------------
INSERT INTO `edu_hb_zjlb` VALUES ('10', '院士');
INSERT INTO `edu_hb_zjlb` VALUES ('11', '中国科学院院士');
INSERT INTO `edu_hb_zjlb` VALUES ('12', '中国工程院院士');
INSERT INTO `edu_hb_zjlb` VALUES ('13', '两院院士');
INSERT INTO `edu_hb_zjlb` VALUES ('14', '外国科学院院士');
INSERT INTO `edu_hb_zjlb` VALUES ('16', '中国社会科学院学部委员');
INSERT INTO `edu_hb_zjlb` VALUES ('20', '国家级专家');
INSERT INTO `edu_hb_zjlb` VALUES ('21', '国家主管部门批准的有突出贡献的专家');
INSERT INTO `edu_hb_zjlb` VALUES ('22', '享受政府特殊津贴（按月发放）专家');
INSERT INTO `edu_hb_zjlb` VALUES ('23', '享受政府特殊津贴（一次性发放）专家');
INSERT INTO `edu_hb_zjlb` VALUES ('29', '国家主管部门批准的其他专家');
INSERT INTO `edu_hb_zjlb` VALUES ('30', '省、部级有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('40', '地、市级有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('50', '县级有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('80', '解放军专家');
INSERT INTO `edu_hb_zjlb` VALUES ('81', '全军有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('82', '大军区有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('83', '军级有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('84', '师级有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('85', '团级有突出贡献专家');
INSERT INTO `edu_hb_zjlb` VALUES ('99', '其他专家');
