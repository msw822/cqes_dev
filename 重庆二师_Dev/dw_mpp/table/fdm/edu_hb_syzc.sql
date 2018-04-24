/*
#  DESCRIPTION: 授予职称码
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: KF.huanghui@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/03
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS `edu_hb_syzc`;
CREATE TABLE IF NOT EXISTS "edu_hb_syzc" (
  "DM" char(3) DEFAULT NULL,
  "MC" varchar(60) DEFAULT NULL
) ENGINE=EXPRESS DEFAULT CHARSET=utf8 COMMENT='[授予职称码]本码表为专业技术职务代码，引用自GB/T 8561-2001，只包含大类。';
-- ----------------------------
-- Records of edu_hb_syzc
-- ----------------------------
INSERT INTO `edu_hb_syzc` VALUES ('010', '高等学校教师');
INSERT INTO `edu_hb_syzc` VALUES ('020', '中等专业学校教师');
INSERT INTO `edu_hb_syzc` VALUES ('030', '技工学校教师');
INSERT INTO `edu_hb_syzc` VALUES ('040', '技工学校教师（实习指导）');
INSERT INTO `edu_hb_syzc` VALUES ('050', '中学教师');
INSERT INTO `edu_hb_syzc` VALUES ('070', '实验技术人员');
INSERT INTO `edu_hb_syzc` VALUES ('080', '工程技术人员');
INSERT INTO `edu_hb_syzc` VALUES ('090', '农业技术人员（农艺）');
INSERT INTO `edu_hb_syzc` VALUES ('100', '农业技术人员（兽医）');
INSERT INTO `edu_hb_syzc` VALUES ('110', '农业技术人员（畜牧）');
INSERT INTO `edu_hb_syzc` VALUES ('120', '经济专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('130', '会计专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('140', '统计专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('150', '出版专业人员（编审）');
INSERT INTO `edu_hb_syzc` VALUES ('160', '出版专业人员（技术编辑）');
INSERT INTO `edu_hb_syzc` VALUES ('170', '出版专业人员（校对）');
INSERT INTO `edu_hb_syzc` VALUES ('180', '翻译人员');
INSERT INTO `edu_hb_syzc` VALUES ('190', '新闻专业人员（记者）');
INSERT INTO `edu_hb_syzc` VALUES ('200', '新闻专业人员（编辑）');
INSERT INTO `edu_hb_syzc` VALUES ('220', '播音员');
INSERT INTO `edu_hb_syzc` VALUES ('230', '卫生技术人员（医师）');
INSERT INTO `edu_hb_syzc` VALUES ('240', '卫生技术人员（药剂）');
INSERT INTO `edu_hb_syzc` VALUES ('250', '卫生技术人员（护理）');
INSERT INTO `edu_hb_syzc` VALUES ('260', '卫生技术人员（技师）');
INSERT INTO `edu_hb_syzc` VALUES ('270', '工艺美术人员');
INSERT INTO `edu_hb_syzc` VALUES ('280', '艺术人员（演员）');
INSERT INTO `edu_hb_syzc` VALUES ('290', '艺术人员（演奏员）');
INSERT INTO `edu_hb_syzc` VALUES ('300', '艺术人员（编剧）');
INSERT INTO `edu_hb_syzc` VALUES ('310', '艺术人员（导演）');
INSERT INTO `edu_hb_syzc` VALUES ('320', '艺术人员（指挥）');
INSERT INTO `edu_hb_syzc` VALUES ('330', '艺术人员（作曲）');
INSERT INTO `edu_hb_syzc` VALUES ('340', '艺术人员（美术）');
INSERT INTO `edu_hb_syzc` VALUES ('350', '艺术人员（舞美设计）');
INSERT INTO `edu_hb_syzc` VALUES ('360', '艺术人员（舞台技术）');
INSERT INTO `edu_hb_syzc` VALUES ('370', '体育锻炼');
INSERT INTO `edu_hb_syzc` VALUES ('390', '律师');
INSERT INTO `edu_hb_syzc` VALUES ('400', '公证员');
INSERT INTO `edu_hb_syzc` VALUES ('410', '小学教师');
INSERT INTO `edu_hb_syzc` VALUES ('420', '船舶技术人员（驾驶）');
INSERT INTO `edu_hb_syzc` VALUES ('430', '船舶技术人员（轮机）');
INSERT INTO `edu_hb_syzc` VALUES ('440', '船舶技术人员（电机）');
INSERT INTO `edu_hb_syzc` VALUES ('450', '船舶技术人员（报务）');
INSERT INTO `edu_hb_syzc` VALUES ('460', '飞行技术人员（驾驶）');
INSERT INTO `edu_hb_syzc` VALUES ('470', '飞行技术人员（领航）');
INSERT INTO `edu_hb_syzc` VALUES ('480', '飞行技术人员（通信）');
INSERT INTO `edu_hb_syzc` VALUES ('490', '飞行技术人员（机械）');
INSERT INTO `edu_hb_syzc` VALUES ('500', '船舶技术人员（引航）');
INSERT INTO `edu_hb_syzc` VALUES ('610', '自然科学研究人员');
INSERT INTO `edu_hb_syzc` VALUES ('620', '社会科学研究人员');
INSERT INTO `edu_hb_syzc` VALUES ('640', '图书、资料专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('650', '文博专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('660', '档案专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('670', '群众文化专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('680', '审计专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('690', '法医专业人员');
INSERT INTO `edu_hb_syzc` VALUES ('980', '思想政治工作人员');
