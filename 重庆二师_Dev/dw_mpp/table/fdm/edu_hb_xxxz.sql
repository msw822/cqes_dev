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
-- Table structure for edu_hb_xxxz
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xxxz;
CREATE TABLE edu_hb_xxxz (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[学校性质代码]。';

-- ----------------------------
-- Records of edu_hb_xxxz
-- ----------------------------
INSERT INTO `edu_hb_xxxz` VALUES ('01', '综合大学');
INSERT INTO `edu_hb_xxxz` VALUES ('02', '理工院校');
INSERT INTO `edu_hb_xxxz` VALUES ('03', '农业院校');
INSERT INTO `edu_hb_xxxz` VALUES ('04', '林业院校');
INSERT INTO `edu_hb_xxxz` VALUES ('05', '医药院校');
INSERT INTO `edu_hb_xxxz` VALUES ('06', '师范院校');
INSERT INTO `edu_hb_xxxz` VALUES ('07', '语文院校');
INSERT INTO `edu_hb_xxxz` VALUES ('08', '财经院校');
INSERT INTO `edu_hb_xxxz` VALUES ('09', '政法院校');
INSERT INTO `edu_hb_xxxz` VALUES ('10', '体育院校');
INSERT INTO `edu_hb_xxxz` VALUES ('11', '艺术院校');
INSERT INTO `edu_hb_xxxz` VALUES ('12', '民族院校');
