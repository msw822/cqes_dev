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
-- Table structure for edu_hb_pthspdj
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_pthspdj;
CREATE TABLE edu_hb_pthspdj (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[普通话水平等级代码]规定国家普通话水平考试认定的水平等级,适用于高等学校。';

-- ----------------------------
-- Records of edu_hb_pthspdj
-- ----------------------------
INSERT INTO `edu_hb_pthspdj` VALUES ('1', '一级甲等');
INSERT INTO `edu_hb_pthspdj` VALUES ('2', '一级乙等');
INSERT INTO `edu_hb_pthspdj` VALUES ('3', '二级甲等');
INSERT INTO `edu_hb_pthspdj` VALUES ('4', '二级乙等');
INSERT INTO `edu_hb_pthspdj` VALUES ('5', '三级甲等');
INSERT INTO `edu_hb_pthspdj` VALUES ('6', '三级乙等');
