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
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_tsqkzt;
CREATE TABLE edu_hb_tsqkzt (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[图书期刊状态代码]规定了馆藏图书、期刊的状态分类，采用顺序码，用一位数字表示。';

-- ----------------------------
-- Records of edu_hb_tsqkzt
-- ----------------------------

INSERT INTO `edu_hb_tsqkzt` VALUES ('1', '在借');
INSERT INTO `edu_hb_tsqkzt` VALUES ('2', '在库');
INSERT INTO `edu_hb_tsqkzt` VALUES ('3', '挂失');
INSERT INTO `edu_hb_tsqkzt` VALUES ('4', '残缺');
INSERT INTO `edu_hb_tsqkzt` VALUES ('5', '报废');
INSERT INTO `edu_hb_tsqkzt` VALUES ('6', '已订未到货');
INSERT INTO `edu_hb_tsqkzt` VALUES ('7', '待编目');
INSERT INTO `edu_hb_tsqkzt` VALUES ('9', '其他');