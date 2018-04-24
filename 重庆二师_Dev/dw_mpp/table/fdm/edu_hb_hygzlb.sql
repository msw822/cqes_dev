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
DROP TABLE IF EXISTS `edu_hb_hygzlb`;
CREATE TABLE `edu_hb_hygzlb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[行业工种类别]教职工中工人编制人员的行业工种类别';
-- ----------------------------
-- Records of edu_hb_hygzlb
-- ----------------------------
INSERT INTO `edu_hb_hygzlb` VALUES ('1', '机械加工类');
INSERT INTO `edu_hb_hygzlb` VALUES ('2', '电工电器工程类');
INSERT INTO `edu_hb_hygzlb` VALUES ('3', '建筑工程类');
INSERT INTO `edu_hb_hygzlb` VALUES ('4', '仪器仪表工程类');
INSERT INTO `edu_hb_hygzlb` VALUES ('5', '水暖通风工程类');
INSERT INTO `edu_hb_hygzlb` VALUES ('6', '机动车驾驶类');
INSERT INTO `edu_hb_hygzlb` VALUES ('7', '家具维修类');
INSERT INTO `edu_hb_hygzlb` VALUES ('8', '宣传广告标本制作类');
INSERT INTO `edu_hb_hygzlb` VALUES ('9', '餐饮服务类');
INSERT INTO `edu_hb_hygzlb` VALUES ('10', '商贸服务类');
INSERT INTO `edu_hb_hygzlb` VALUES ('11', '护理保健类');
INSERT INTO `edu_hb_hygzlb` VALUES ('12', '花木养殖类');
INSERT INTO `edu_hb_hygzlb` VALUES ('99', '其他');
