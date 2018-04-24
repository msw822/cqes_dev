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
DROP TABLE IF EXISTS edu_hb_whcd;
CREATE TABLE edu_hb_whcd (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(40) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[学历代码]本代码引自GB/T 4658-2006。';

-- ----------------------------
-- Records of edu_hb_whcd
-- ----------------------------
INSERT INTO `edu_hb_whcd` VALUES ('10', '研究生教育');
INSERT INTO `edu_hb_whcd` VALUES ('11', '博士研究生毕业');
INSERT INTO `edu_hb_whcd` VALUES ('12', '博士研究生结业');
INSERT INTO `edu_hb_whcd` VALUES ('13', '博士研究生肄业');
INSERT INTO `edu_hb_whcd` VALUES ('14', '硕士研究生毕业');
INSERT INTO `edu_hb_whcd` VALUES ('15', '硕士研究生结业');
INSERT INTO `edu_hb_whcd` VALUES ('16', '硕士研究生肄业');
INSERT INTO `edu_hb_whcd` VALUES ('17', '研究生班毕业');