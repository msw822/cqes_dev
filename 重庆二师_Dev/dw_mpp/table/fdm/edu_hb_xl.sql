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
DROP TABLE IF EXISTS edu_hb_xl;
CREATE TABLE edu_hb_xl (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[学历代码表]本代码引自GB/T 4658-2006';

-- ----------------------------
-- Records of edu_hb_xl
-- ----------------------------
INSERT INTO `edu_hb_xl` VALUES ('10', '研究生教育');
INSERT INTO `edu_hb_xl` VALUES ('11', '博士研究生毕业');
INSERT INTO `edu_hb_xl` VALUES ('12', '博士研究生结业');
INSERT INTO `edu_hb_xl` VALUES ('13', '博士研究生肄业');
INSERT INTO `edu_hb_xl` VALUES ('14', '硕士研究生毕业');
INSERT INTO `edu_hb_xl` VALUES ('15', '硕士研究生结业');
INSERT INTO `edu_hb_xl` VALUES ('16', '硕士研究生肄业');
INSERT INTO `edu_hb_xl` VALUES ('17', '研究生班毕业');
INSERT INTO `edu_hb_xl` VALUES ('18', '研究生班结业');
INSERT INTO `edu_hb_xl` VALUES ('19', '研究生班肄业');
INSERT INTO `edu_hb_xl` VALUES ('20', '大学本科教育');
INSERT INTO `edu_hb_xl` VALUES ('21', '大学本科毕业');
INSERT INTO `edu_hb_xl` VALUES ('22', '大学本科结业');
INSERT INTO `edu_hb_xl` VALUES ('23', '大学本科肄业');
INSERT INTO `edu_hb_xl` VALUES ('28', '大学普通班毕业');
INSERT INTO `edu_hb_xl` VALUES ('30', '大学专科教育');
INSERT INTO `edu_hb_xl` VALUES ('31', '大学专科毕业');
INSERT INTO `edu_hb_xl` VALUES ('32', '大学专科结业');
INSERT INTO `edu_hb_xl` VALUES ('33', '大学专科肄业');
INSERT INTO `edu_hb_xl` VALUES ('40', '中等职业教育');
INSERT INTO `edu_hb_xl` VALUES ('41', '中等专科毕业');
INSERT INTO `edu_hb_xl` VALUES ('42', '中等专科结业');
INSERT INTO `edu_hb_xl` VALUES ('43', '中等专科肄业');
INSERT INTO `edu_hb_xl` VALUES ('44', '职业高中毕业');
INSERT INTO `edu_hb_xl` VALUES ('45', '职业高中结业');
INSERT INTO `edu_hb_xl` VALUES ('46', '职业高中肄业');
INSERT INTO `edu_hb_xl` VALUES ('47', '技工学校毕业');
INSERT INTO `edu_hb_xl` VALUES ('48', '技工学校结业');
INSERT INTO `edu_hb_xl` VALUES ('49', '技工学校肄业');
INSERT INTO `edu_hb_xl` VALUES ('60', '普通高级中学教育');
INSERT INTO `edu_hb_xl` VALUES ('61', '普通高中毕业');
INSERT INTO `edu_hb_xl` VALUES ('62', '普通高中结业');
INSERT INTO `edu_hb_xl` VALUES ('63', '普通高中肄业');
INSERT INTO `edu_hb_xl` VALUES ('70', '初级中学教育');
INSERT INTO `edu_hb_xl` VALUES ('71', '初中毕业');
INSERT INTO `edu_hb_xl` VALUES ('63', '初中肄业');
INSERT INTO `edu_hb_xl` VALUES ('81', '小学毕业');
INSERT INTO `edu_hb_xl` VALUES ('83', '小学肄业');
INSERT INTO `edu_hb_xl` VALUES ('90', '其他');