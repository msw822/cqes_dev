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
DROP TABLE IF EXISTS `edu_hb_shsjlx`;
CREATE TABLE `edu_hb_shsjlx` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[社会实践类型代码]高等学校学生参加社会实践的类型。';
-- ----------------------------
-- Records of edu_hb_shsjlx
-- ----------------------------
INSERT INTO `edu_hb_shsjlx` VALUES ('01', '科研技术开发');
INSERT INTO `edu_hb_shsjlx` VALUES ('02', '信息技术');
INSERT INTO `edu_hb_shsjlx` VALUES ('03', '技术改造');
INSERT INTO `edu_hb_shsjlx` VALUES ('04', '规划设计');
INSERT INTO `edu_hb_shsjlx` VALUES ('05', '工艺美术设计与研究');
INSERT INTO `edu_hb_shsjlx` VALUES ('06', '技术、管理及各类专业业务培训');
INSERT INTO `edu_hb_shsjlx` VALUES ('07', '地区或单位发展研究或规划');
INSERT INTO `edu_hb_shsjlx` VALUES ('08', '地方党政部门的管理及研究');
INSERT INTO `edu_hb_shsjlx` VALUES ('09', '政策咨询');
INSERT INTO `edu_hb_shsjlx` VALUES ('10', '中外文资料翻译、文字整理');
INSERT INTO `edu_hb_shsjlx` VALUES ('11', '接受单位大型活动的组织策划');
INSERT INTO `edu_hb_shsjlx` VALUES ('12', '行政事务性工作');
INSERT INTO `edu_hb_shsjlx` VALUES ('13', '文艺演出');
INSERT INTO `edu_hb_shsjlx` VALUES ('14', '随队医疗或医药咨询');
INSERT INTO `edu_hb_shsjlx` VALUES ('15', '中小学兼职教师');
INSERT INTO `edu_hb_shsjlx` VALUES ('21', '就业实践');
INSERT INTO `edu_hb_shsjlx` VALUES ('22', '短期挂职');
INSERT INTO `edu_hb_shsjlx` VALUES ('23', '认知考察');
INSERT INTO `edu_hb_shsjlx` VALUES ('24', '博士后实践服务团');
INSERT INTO `edu_hb_shsjlx` VALUES ('25', '志愿者工作');
INSERT INTO `edu_hb_shsjlx` VALUES ('99', '其他相应工作');
INSERT INTO `edu_hb_shsjlx` VALUES ('', '');
INSERT INTO `edu_hb_shsjlx` VALUES ('', '');
INSERT INTO `edu_hb_shsjlx` VALUES ('', '');
INSERT INTO `edu_hb_shsjlx` VALUES ('', '');
INSERT INTO `edu_hb_shsjlx` VALUES ('', '');
