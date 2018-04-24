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
DROP TABLE IF EXISTS `edu_hb_gwzy`;
CREATE TABLE `edu_hb_gwzy` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT= '[岗位职业代码]中小学校教职工岗位职业的分类';
-- ----------------------------
-- Records of edu_hb_gwzy
-- ----------------------------
INSERT INTO `edu_hb_gwzy` VALUES ('10', '教师');
INSERT INTO `edu_hb_gwzy` VALUES ('20', '教师兼行政');
INSERT INTO `edu_hb_gwzy` VALUES ('21', '教研室主任（组长）');
INSERT INTO `edu_hb_gwzy` VALUES ('22', '年级主任（组长）');
INSERT INTO `edu_hb_gwzy` VALUES ('23', '班主任');
INSERT INTO `edu_hb_gwzy` VALUES ('24', '辅导员、教练员');
INSERT INTO `edu_hb_gwzy` VALUES ('25', '共青团工作负责人');
INSERT INTO `edu_hb_gwzy` VALUES ('26', '工会工作负责人');
INSERT INTO `edu_hb_gwzy` VALUES ('27', '妇女工作负责人');
INSERT INTO `edu_hb_gwzy` VALUES ('28', '其他工作负责人');
INSERT INTO `edu_hb_gwzy` VALUES ('30', '行政');
INSERT INTO `edu_hb_gwzy` VALUES ('31', '校领导');
INSERT INTO `edu_hb_gwzy` VALUES ('32', '行政处室负责人');
INSERT INTO `edu_hb_gwzy` VALUES ('33', '行政处室工作');
INSERT INTO `edu_hb_gwzy` VALUES ('34', '行政兼教学工作');
INSERT INTO `edu_hb_gwzy` VALUES ('40', '教辅');
INSERT INTO `edu_hb_gwzy` VALUES ('41', '实习实验工作与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('42', '教学仪器设备维护与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('43', '体育设备设施维护与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('44', '文艺设备设施维护与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('45', '图书教材工作与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('46', '档案资料工作与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('47', '电教设备维护与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('48', '宣传教育工作与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('49', '教辅兼教学工作');
INSERT INTO `edu_hb_gwzy` VALUES ('60', '工勤');
INSERT INTO `edu_hb_gwzy` VALUES ('61', '医护保健工作与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('62', '财务统计工作与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('63', '校园维护与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('64', '建筑维护与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('65', '餐饮服务与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('66', '生活服务与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('67', '商贸服务与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('68', '教学服务与管理');
INSERT INTO `edu_hb_gwzy` VALUES ('70', '校办企业');
INSERT INTO `edu_hb_gwzy` VALUES ('71', '校办企业负责人');
INSERT INTO `edu_hb_gwzy` VALUES ('79', '校办企业职工');
INSERT INTO `edu_hb_gwzy` VALUES ('80', '其他工作');
