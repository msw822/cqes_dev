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
-- Table structure for edu_hb_sylb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_sylb;
CREATE TABLE edu_hb_sylb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[实验类别代码]规定高等学校和中等职业学校实验的分类。';

-- ----------------------------
-- Records of edu_hb_sylb
-- ----------------------------
INSERT INTO `edu_hb_sylb` VALUES ('1', '基础、专业基础或技术基础');
INSERT INTO `edu_hb_sylb` VALUES ('2', '专业');
INSERT INTO `edu_hb_sylb` VALUES ('3', '科研');
INSERT INTO `edu_hb_sylb` VALUES ('4', '生产或技术开发');
INSERT INTO `edu_hb_sylb` VALUES ('9', '其他 （含毕业论文和毕业设计实验）');
