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
-- Table structure for edu_hb_nj
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_nj;
CREATE TABLE edu_hb_nj (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[年级代码]规定教育统计所要求的各级各类学校（机构）在校学生年级的分类。';

-- ----------------------------
-- Records of edu_hb_nj
-- ----------------------------
INSERT INTO `edu_hb_nj` VALUES ('1', '一年级');
INSERT INTO `edu_hb_nj` VALUES ('2', '二年级');
INSERT INTO `edu_hb_nj` VALUES ('3', '三年级');
INSERT INTO `edu_hb_nj` VALUES ('4', '三年级及以上');
INSERT INTO `edu_hb_nj` VALUES ('5', '四年级');
INSERT INTO `edu_hb_nj` VALUES ('6', '四年级及以上');
INSERT INTO `edu_hb_nj` VALUES ('7', '五年级');
INSERT INTO `edu_hb_nj` VALUES ('8', '五年级及以上');
INSERT INTO `edu_hb_nj` VALUES ('9', '六年级');
INSERT INTO `edu_hb_nj` VALUES ('10', '六年级及以上');
