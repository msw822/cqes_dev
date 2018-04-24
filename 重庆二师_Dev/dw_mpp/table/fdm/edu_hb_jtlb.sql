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
DROP TABLE IF EXISTS `edu_hb_jtlb`;
CREATE TABLE `edu_hb_jtlb` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[家庭类别代码]学生家庭类别的分类，适用于了解学生家庭经济困难原因';
-- ----------------------------
-- Records of edu_hb_jtlb
-- ----------------------------
INSERT INTO `edu_hb_jtlb` VALUES ('1', '双亲健全');
INSERT INTO `edu_hb_jtlb` VALUES ('2', '孤儿');
INSERT INTO `edu_hb_jtlb` VALUES ('3', '单亲（父母一方去世）');
INSERT INTO `edu_hb_jtlb` VALUES ('4', '父母离异');
INSERT INTO `edu_hb_jtlb` VALUES ('5', '双亲有残疾');
INSERT INTO `edu_hb_jtlb` VALUES ('6', '本人残疾');
INSERT INTO `edu_hb_jtlb` VALUES ('7', '军烈属或优抚对象');
INSERT INTO `edu_hb_jtlb` VALUES ('8', '重病');
INSERT INTO `edu_hb_jtlb` VALUES ('9', '五保户');
