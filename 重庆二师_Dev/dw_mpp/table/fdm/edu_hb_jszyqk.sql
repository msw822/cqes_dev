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
-- Table structure for edu_hb_jszyqk
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_jszyqk;
CREATE TABLE edu_hb_jszyqk (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[教室占用情况代码]规定高等学校教室占用情况与占用用途的分类。';

-- ----------------------------
-- Records of edu_hb_jszyqk
-- ----------------------------
INSERT INTO `edu_hb_jszyqk` VALUES ('1', '讲课');
INSERT INTO `edu_hb_jszyqk` VALUES ('2', '讲座');
INSERT INTO `edu_hb_jszyqk` VALUES ('3', '考试');
INSERT INTO `edu_hb_jszyqk` VALUES ('4', '实验');
INSERT INTO `edu_hb_jszyqk` VALUES ('5', '社团活动');
INSERT INTO `edu_hb_jszyqk` VALUES ('6', '空闲');
INSERT INTO `edu_hb_jszyqk` VALUES ('9', '其他');
