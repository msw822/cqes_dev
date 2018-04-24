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
DROP TABLE IF EXISTS edu_hb_xsly;
CREATE TABLE edu_hb_xsly (
  `DM` char(3) NOT NULL COMMENT '代码',
  `MC` varchar(100) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[学生来源代码表]本代码代替2002年DM-XSLY《学生来源代码》';

-- ----------------------------
-- Records of edu_hb_xsly
-- ----------------------------
INSERT INTO `edu_hb_xsly` VALUES ('000', '研究生');
INSERT INTO `edu_hb_xsly` VALUES ('001', '科技人员');
INSERT INTO `edu_hb_xsly` VALUES ('002', '高校教师');
INSERT INTO `edu_hb_xsly` VALUES ('003', '中学教师');
INSERT INTO `edu_hb_xsly` VALUES ('004', '其他在职');
INSERT INTO `edu_hb_xsly` VALUES ('005', '应届本科');
INSERT INTO `edu_hb_xsly` VALUES ('006', '成人应届本科');
INSERT INTO `edu_hb_xsly` VALUES ('007', '网络教育应届本科');
INSERT INTO `edu_hb_xsly` VALUES ('009', '其他人员');
INSERT INTO `edu_hb_xsly` VALUES ('100', '普通高校本专科/中等职业学校');
INSERT INTO `edu_hb_xsly` VALUES ('101', '城镇应届');
INSERT INTO `edu_hb_xsly` VALUES ('102', '农村应届');
INSERT INTO `edu_hb_xsly` VALUES ('103', '城镇往届');
INSERT INTO `edu_hb_xsly` VALUES ('104', '农村往届');
INSERT INTO `edu_hb_xsly` VALUES ('105', '工人');
INSERT INTO `edu_hb_xsly` VALUES ('106', '干部');
INSERT INTO `edu_hb_xsly` VALUES ('107', '复退军人');
INSERT INTO `edu_hb_xsly` VALUES ('108', '现役军人');
INSERT INTO `edu_hb_xsly` VALUES ('109', '香港生');
INSERT INTO `edu_hb_xsly` VALUES ('110', '澳门生');
INSERT INTO `edu_hb_xsly` VALUES ('111', '台湾生');
INSERT INTO `edu_hb_xsly` VALUES ('112', '归国华侨/港澳台侨');
INSERT INTO `edu_hb_xsly` VALUES ('113', '留学生/外籍');
INSERT INTO `edu_hb_xsly` VALUES ('199', '其他');
INSERT INTO `edu_hb_xsly` VALUES ('200', '成人高校');
INSERT INTO `edu_hb_xsly` VALUES ('201', '国家机关、党群组织、企业、事业单位负责人');
INSERT INTO `edu_hb_xsly` VALUES ('209', '军人');
INSERT INTO `edu_hb_xsly` VALUES ('211', '专业技术人员');
INSERT INTO `edu_hb_xsly` VALUES ('231', '办事人员和有关人员');
INSERT INTO `edu_hb_xsly` VALUES ('241', '商业、服务业人员');
INSERT INTO `edu_hb_xsly` VALUES ('251', '农、林、牧、渔、水利业生产人员');
INSERT INTO `edu_hb_xsly` VALUES ('261', '生产、运输设备操作人员及有关人员');
INSERT INTO `edu_hb_xsly` VALUES ('299', '不便分类的其他从业人员');
