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
-- Table structure for edu_hb_syzlb
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_syzlb;
CREATE TABLE edu_hb_syzlb (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[实验者类别代码]规定实验者的分类，适用于中小学校、中等职业学校和高等学校。';

-- ----------------------------
-- Records of edu_hb_syzlb
-- ----------------------------
INSERT INTO `edu_hb_syzlb` VALUES ('0', '中小学生/中职学生');
INSERT INTO `edu_hb_syzlb` VALUES ('1', '博士生');
INSERT INTO `edu_hb_syzlb` VALUES ('2', '硕士生');
INSERT INTO `edu_hb_syzlb` VALUES ('3', '本科生');
INSERT INTO `edu_hb_syzlb` VALUES ('5', '教师');
INSERT INTO `edu_hb_syzlb` VALUES ('5', '工程与实验技术人员');
INSERT INTO `edu_hb_syzlb` VALUES ('6', '研究人员');
INSERT INTO `edu_hb_syzlb` VALUES ('9', '其他');
