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
DROP TABLE IF EXISTS `edu_hb_xsjllx`;
CREATE TABLE `edu_hb_xsjllx` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[学术交流类型代码]适用于中小学校、中等职业学校和高等学校';
-- ----------------------------
-- Records of edu_hb_xsjllx
-- ----------------------------
INSERT INTO `edu_hb_xsjllx` VALUES ('1', '进修访问学者');
INSERT INTO `edu_hb_xsjllx` VALUES ('2', '攻读博士');
INSERT INTO `edu_hb_xsjllx` VALUES ('3', '攻读硕士');
INSERT INTO `edu_hb_xsjllx` VALUES ('4', '短期讲学');
INSERT INTO `edu_hb_xsjllx` VALUES ('5', '长期任教');
INSERT INTO `edu_hb_xsjllx` VALUES ('6', '考察');
INSERT INTO `edu_hb_xsjllx` VALUES ('7', '商谈合作事宜');
INSERT INTO `edu_hb_xsjllx` VALUES ('8', '校际交流');
INSERT INTO `edu_hb_xsjllx` VALUES ('9', '合作研究');
INSERT INTO `edu_hb_xsjllx` VALUES ('10', '出席国际学术会议人员');
INSERT INTO `edu_hb_xsjllx` VALUES ('11', '国际学术会议论文交流（未出席）');
INSERT INTO `edu_hb_xsjllx` VALUES ('12', '普通外教');
INSERT INTO `edu_hb_xsjllx` VALUES ('13', '访问学生');
INSERT INTO `edu_hb_xsjllx` VALUES ('14', '一般访问');
INSERT INTO `edu_hb_xsjllx` VALUES ('99', '其他');
