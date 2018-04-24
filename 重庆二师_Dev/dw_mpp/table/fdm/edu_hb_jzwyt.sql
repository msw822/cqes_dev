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
-- Table structure for edu_hb_jzwyt
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jzwyt;
CREATE TABLE edu_hb_jzwyt(
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[建筑物用途代码]规定单体建筑物具体用途的分类。';

-- ----------------------------
-- Records of edu_hb_jzwyt
-- ----------------------------
INSERT INTO `edu_hb_jzwyt` VALUES ('10', '教学及辅助用房');
INSERT INTO `edu_hb_jzwyt` VALUES ('11', '教学楼');
INSERT INTO `edu_hb_jzwyt` VALUES ('12', '综合楼');
INSERT INTO `edu_hb_jzwyt` VALUES ('13', '实验楼');
INSERT INTO `edu_hb_jzwyt` VALUES ('14', '图书馆(室)');
INSERT INTO `edu_hb_jzwyt` VALUES ('15', '体育活动室');
INSERT INTO `edu_hb_jzwyt` VALUES ('16', '礼堂');
INSERT INTO `edu_hb_jzwyt` VALUES ('20', '生活用房');
INSERT INTO `edu_hb_jzwyt` VALUES ('21', '学生宿舍');
INSERT INTO `edu_hb_jzwyt` VALUES ('22', '食堂');
INSERT INTO `edu_hb_jzwyt` VALUES ('23', '厕所');
INSERT INTO `edu_hb_jzwyt` VALUES ('24', '锅炉房(开水房)');
INSERT INTO `edu_hb_jzwyt` VALUES ('25', '浴室');
INSERT INTO `edu_hb_jzwyt` VALUES ('26', '教工宿舍');
INSERT INTO `edu_hb_jzwyt` VALUES ('30', '行政办公用房');
INSERT INTO `edu_hb_jzwyt` VALUES ('31', '办公楼');
INSERT INTO `edu_hb_jzwyt` VALUES ('32', '卫生保健室');
INSERT INTO `edu_hb_jzwyt` VALUES ('40', '其他用房');
INSERT INTO `edu_hb_jzwyt` VALUES ('41', '其他用房');
INSERT INTO `edu_hb_jzwyt` VALUES ('51', '其他配套设施');
