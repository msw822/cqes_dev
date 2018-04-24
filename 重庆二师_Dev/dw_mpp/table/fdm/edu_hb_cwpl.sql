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
DROP TABLE IF EXISTS `edu_hb_cwpl`;
CREATE TABLE `edu_hb_cwpl` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[财务票类代码]高等学校财务票据的种类';
-- ----------------------------
-- Records of edu_hb_cwpl
-- ----------------------------
INSERT INTO `edu_hb_cwpl` VALUES ('1', '统一票据');
INSERT INTO `edu_hb_cwpl` VALUES ('2', '银钱收据');
INSERT INTO `edu_hb_cwpl` VALUES ('3', '捐赠收据');
INSERT INTO `edu_hb_cwpl` VALUES ('4', '校内收据');
INSERT INTO `edu_hb_cwpl` VALUES ('5', '资金往来收据');
INSERT INTO `edu_hb_cwpl` VALUES ('6', '服务业发票');
