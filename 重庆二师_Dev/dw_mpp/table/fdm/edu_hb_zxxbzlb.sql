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
-- Table structure for edu_hb_zxxbzlb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zxxbzlb;
CREATE TABLE edu_hb_zxxbzlb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[中小学编制类别代码]规定中小学校在职教职工编制的类别。';

-- ----------------------------
-- Records of edu_hb_zxxbzlb
-- ----------------------------
INSERT INTO `edu_hb_zxxbzlb` VALUES ('1', '专任教师');
INSERT INTO `edu_hb_zxxbzlb` VALUES ('2', '行政人员');
INSERT INTO `edu_hb_zxxbzlb` VALUES ('3', '教辅人员');
INSERT INTO `edu_hb_zxxbzlb` VALUES ('4', '工勤人员');
INSERT INTO `edu_hb_zxxbzlb` VALUES ('5', '校办企业职工');
INSERT INTO `edu_hb_zxxbzlb` VALUES ('6', '代课教师');
INSERT INTO `edu_hb_zxxbzlb` VALUES ('7', '兼任（职）教师');
INSERT INTO `edu_hb_zxxbzlb` VALUES ('9', '其他');
