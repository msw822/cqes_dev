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
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_gwzt
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_gwzt;
CREATE TABLE edu_hb_gwzt (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[公文状态代码]规定高等学校在办公流程中公文的当前办理状态分类。';

-- ----------------------------
-- Records of edu_hb_gwzt
-- ----------------------------
INSERT INTO `edu_hb_gwzt` VALUES ('1', '待签收');
INSERT INTO `edu_hb_gwzt` VALUES ('2', '已签收');
INSERT INTO `edu_hb_gwzt` VALUES ('3', '已拒收');
INSERT INTO `edu_hb_gwzt` VALUES ('4', '审批中');
INSERT INTO `edu_hb_gwzt` VALUES ('5', '已审批');
INSERT INTO `edu_hb_gwzt` VALUES ('6', '待签发');
INSERT INTO `edu_hb_gwzt` VALUES ('7', '已签发');
INSERT INTO `edu_hb_gwzt` VALUES ('8', '处理中');
INSERT INTO `edu_hb_gwzt` VALUES ('9', '已办结');
