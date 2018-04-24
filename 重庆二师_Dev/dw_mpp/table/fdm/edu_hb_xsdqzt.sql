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
DROP TABLE IF EXISTS `edu_hb_xsdqzt`;
CREATE TABLE "edu_hb_xsdqzt" (
  `DM` char(2) DEFAULT NULL,
  `MC` varchar(40) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[学生当前状态码]学籍的一个属性，采用顺序码，用二位数字表示。';

-- ----------------------------
-- Records of edu_hb_xsdqzt
-- ----------------------------
INSERT INTO `edu_hb_xsdqzt` VALUES ('01', '在读');
INSERT INTO `edu_hb_xsdqzt` VALUES ('02', '休学');
INSERT INTO `edu_hb_xsdqzt` VALUES ('03', '退学');
INSERT INTO `edu_hb_xsdqzt` VALUES ('04', '停学');
INSERT INTO `edu_hb_xsdqzt` VALUES ('05', '复学');
INSERT INTO `edu_hb_xsdqzt` VALUES ('06', '流失');
INSERT INTO `edu_hb_xsdqzt` VALUES ('07', '毕业');
INSERT INTO `edu_hb_xsdqzt` VALUES ('08', '结业');
INSERT INTO `edu_hb_xsdqzt` VALUES ('09', '肄业');
INSERT INTO `edu_hb_xsdqzt` VALUES ('10', '转学(转出)');
INSERT INTO `edu_hb_xsdqzt` VALUES ('11', '死亡');
INSERT INTO `edu_hb_xsdqzt` VALUES ('12', '保留入学资格');
INSERT INTO `edu_hb_xsdqzt` VALUES ('13', '公派出国');
INSERT INTO `edu_hb_xsdqzt` VALUES ('14', '开除');
INSERT INTO `edu_hb_xsdqzt` VALUES ('15', '下落不明');
INSERT INTO `edu_hb_xsdqzt` VALUES ('99', '其他');