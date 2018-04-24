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
DROP TABLE IF EXISTS `edu_hb_wjzjlhqd`;
CREATE TABLE `edu_hb_wjzjlhqd` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[外籍专家来华渠道代码]适用于高等学校';
-- ----------------------------
-- Records of edu_hb_wjzjlhqd
-- ----------------------------
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('01', '外专局推荐');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('02', '政府协议');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('03', '校际交流');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('04', '民间组织推荐');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('05', '驻外使领馆');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('06', '国内其他组织推荐');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('07', '自荐');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('08', '国际组织推荐');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('09', '友好城市交流');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('99', '其他');
INSERT INTO `edu_hb_wjzjlhqd` VALUES ('', '');
