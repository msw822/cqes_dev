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
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_fywtlb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_fywtlb;
CREATE TABLE edu_hb_fywtlb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[反映问题类别代码]规定高等学校信访工作反映问题的分类。';

-- ----------------------------
-- Records of edu_hb_fywtlb
-- ----------------------------
INSERT INTO `edu_hb_fywtlb` VALUES ('01', '学生');
INSERT INTO `edu_hb_fywtlb` VALUES ('02', '招生');
INSERT INTO `edu_hb_fywtlb` VALUES ('03', '教学');
INSERT INTO `edu_hb_fywtlb` VALUES ('04', '就业');
INSERT INTO `edu_hb_fywtlb` VALUES ('05', '科研');
INSERT INTO `edu_hb_fywtlb` VALUES ('06', '人事');
INSERT INTO `edu_hb_fywtlb` VALUES ('07', '外事');
INSERT INTO `edu_hb_fywtlb` VALUES ('08', '财务');
INSERT INTO `edu_hb_fywtlb` VALUES ('09', '后勤');
INSERT INTO `edu_hb_fywtlb` VALUES ('10', '房产');
INSERT INTO `edu_hb_fywtlb` VALUES ('11', '设备');
INSERT INTO `edu_hb_fywtlb` VALUES ('12', '伙食');
INSERT INTO `edu_hb_fywtlb` VALUES ('13', '行政');
INSERT INTO `edu_hb_fywtlb` VALUES ('14', '党务');
INSERT INTO `edu_hb_fywtlb` VALUES ('15', '宣传');
INSERT INTO `edu_hb_fywtlb` VALUES ('16', '纪检');
INSERT INTO `edu_hb_fywtlb` VALUES ('17', '统战');
INSERT INTO `edu_hb_fywtlb` VALUES ('18', '保卫');
INSERT INTO `edu_hb_fywtlb` VALUES ('19', '统计');
INSERT INTO `edu_hb_fywtlb` VALUES ('20', '产业');
INSERT INTO `edu_hb_fywtlb` VALUES ('21', '信息网络');
INSERT INTO `edu_hb_fywtlb` VALUES ('22', '校园环境');
INSERT INTO `edu_hb_fywtlb` VALUES ('98', '综合');
INSERT INTO `edu_hb_fywtlb` VALUES ('99', '其他');

