/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/29
#     REVIEWER:--
#     REVISION: ---
#    SRC_TABLE:
#    TGT_TABLE:
*/
-- ----------------------------
-- Table structure for `EDU_HB_BMDJ`
-- ----------------------------
set names utf8;
use FDM;
DROP TABLE IF EXISTS `EDU_HB_BMDJ`;
CREATE TABLE IF NOT exists "EDU_HB_BMDJ" (
  `DM` char(1) NOT NULL COMMENT '代码',
  `HYPYDM` char(2) NOT NULL COMMENT '汉语拼音代码',
  `HZDM` CHAR(6) NOT NULL COMMENT '汉子代码',
  `MC` CHAR(9) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[文献保密等级码表]保密等级';

-- ----------------------------
-- Records of EDU_HB_BMDJ
-- ----------------------------
INSERT INTO `EDU_HB_BMDJ` VALUES ('1', 'GK', '公开','公开级');
INSERT INTO `EDU_HB_BMDJ` VALUES ('2', 'XZ', '限制','限制级');
INSERT INTO `EDU_HB_BMDJ` VALUES ('3', 'MM', '秘密','秘密级');
INSERT INTO `EDU_HB_BMDJ` VALUES ('4', 'JM', '机密','机密级');
INSERT INTO `EDU_HB_BMDJ` VALUES ('5', 'UM', '绝密','绝密级');

