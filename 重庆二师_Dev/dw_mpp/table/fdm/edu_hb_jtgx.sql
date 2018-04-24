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
DROP TABLE IF EXISTS edu_hb_jtgx;
CREATE TABLE edu_hb_jtgx (
  `DM` char(2) NOT NULL COMMENT '名称',
  `MC` varchar(20) NOT NULL COMMENT '代码'
)DEFAULT CHARSET=utf8 COMMENT='[家庭关系码]本代码引自GB/T 4761-2008';

-- ----------------------------
-- Records of edu_hb_jtgx
-- ----------------------------
INSERT INTO `edu_hb_jtgx` VALUES ('01', '本人');
INSERT INTO `edu_hb_jtgx` VALUES ('02', '户主');
INSERT INTO `edu_hb_jtgx` VALUES ('10', '配偶');
INSERT INTO `edu_hb_jtgx` VALUES ('11', '夫');
INSERT INTO `edu_hb_jtgx` VALUES ('12', '妻');
INSERT INTO `edu_hb_jtgx` VALUES ('20', '子');
INSERT INTO `edu_hb_jtgx` VALUES ('21', '独生子');
INSERT INTO `edu_hb_jtgx` VALUES ('22', '长子');
INSERT INTO `edu_hb_jtgx` VALUES ('23', '次子');
INSERT INTO `edu_hb_jtgx` VALUES ('24', '三子');
INSERT INTO `edu_hb_jtgx` VALUES ('25', '四子');
INSERT INTO `edu_hb_jtgx` VALUES ('26', '五子');
INSERT INTO `edu_hb_jtgx` VALUES ('27', '养子或继子');
INSERT INTO `edu_hb_jtgx` VALUES ('28', '女婿');
INSERT INTO `edu_hb_jtgx` VALUES ('29', '其他子');
INSERT INTO `edu_hb_jtgx` VALUES ('28', '女婿');
INSERT INTO `edu_hb_jtgx` VALUES ('29', '其他子');
INSERT INTO `edu_hb_jtgx` VALUES ('30', '女');
INSERT INTO `edu_hb_jtgx` VALUES ('31', '独生女');
INSERT INTO `edu_hb_jtgx` VALUES ('32', '长女');
INSERT INTO `edu_hb_jtgx` VALUES ('33', '二女');
INSERT INTO `edu_hb_jtgx` VALUES ('34', '三女');
INSERT INTO `edu_hb_jtgx` VALUES ('35', '四女');
INSERT INTO `edu_hb_jtgx` VALUES ('36', '五女');
INSERT INTO `edu_hb_jtgx` VALUES ('37', '养女');
INSERT INTO `edu_hb_jtgx` VALUES ('38', '儿媳');
INSERT INTO `edu_hb_jtgx` VALUES ('39', '其他女儿');
INSERT INTO `edu_hb_jtgx` VALUES ('40', '孙子、孙女或外孙子、外孙女');
INSERT INTO `edu_hb_jtgx` VALUES ('41', '孙子');
INSERT INTO `edu_hb_jtgx` VALUES ('42', '孙女');
INSERT INTO `edu_hb_jtgx` VALUES ('43', '外孙子');
INSERT INTO `edu_hb_jtgx` VALUES ('44', '外孙女');
INSERT INTO `edu_hb_jtgx` VALUES ('45', '孙媳妇或外孙媳妇');
INSERT INTO `edu_hb_jtgx` VALUES ('46', '孙女婿或外孙女婿');
INSERT INTO `edu_hb_jtgx` VALUES ('47', '曾孙子或外曾孙子');
INSERT INTO `edu_hb_jtgx` VALUES ('48', '曾孙女或外曾孙女');
INSERT INTO `edu_hb_jtgx` VALUES ('49', '其他孙子、孙女或外孙子、外孙女');
INSERT INTO `edu_hb_jtgx` VALUES ('50', '父母');
INSERT INTO `edu_hb_jtgx` VALUES ('51', '父亲');
INSERT INTO `edu_hb_jtgx` VALUES ('52', '母亲');
INSERT INTO `edu_hb_jtgx` VALUES ('53', '公公');
INSERT INTO `edu_hb_jtgx` VALUES ('54', '婆婆');
INSERT INTO `edu_hb_jtgx` VALUES ('55', '岳父');
INSERT INTO `edu_hb_jtgx` VALUES ('56', '岳母');
INSERT INTO `edu_hb_jtgx` VALUES ('57', '继父或养父');
INSERT INTO `edu_hb_jtgx` VALUES ('58', '继母或养母');
INSERT INTO `edu_hb_jtgx` VALUES ('59', '其他父母关系');
INSERT INTO `edu_hb_jtgx` VALUES ('60', '祖父母或外祖父母');
INSERT INTO `edu_hb_jtgx` VALUES ('61', '祖父');
INSERT INTO `edu_hb_jtgx` VALUES ('62', '祖母');
INSERT INTO `edu_hb_jtgx` VALUES ('63', '外祖父');
INSERT INTO `edu_hb_jtgx` VALUES ('64', '外祖母');
INSERT INTO `edu_hb_jtgx` VALUES ('65', '配偶的祖父母或外祖父母');
INSERT INTO `edu_hb_jtgx` VALUES ('66', '曾祖父');
INSERT INTO `edu_hb_jtgx` VALUES ('67', '曾祖母');
INSERT INTO `edu_hb_jtgx` VALUES ('68', '配偶的曾祖父母');
INSERT INTO `edu_hb_jtgx` VALUES ('69', '其他祖父母或外祖父母关系');
INSERT INTO `edu_hb_jtgx` VALUES ('70', '兄弟姐妹');
INSERT INTO `edu_hb_jtgx` VALUES ('71', '兄');
INSERT INTO `edu_hb_jtgx` VALUES ('72', '嫂');
INSERT INTO `edu_hb_jtgx` VALUES ('73', '弟');
INSERT INTO `edu_hb_jtgx` VALUES ('74', '弟媳');
INSERT INTO `edu_hb_jtgx` VALUES ('75', '姐姐');
INSERT INTO `edu_hb_jtgx` VALUES ('76', '姐夫');
INSERT INTO `edu_hb_jtgx` VALUES ('77', '妹妹');
INSERT INTO `edu_hb_jtgx` VALUES ('78', '妹夫');
INSERT INTO `edu_hb_jtgx` VALUES ('79', '其他兄弟姐妹');
INSERT INTO `edu_hb_jtgx` VALUES ('80', '其他');
INSERT INTO `edu_hb_jtgx` VALUES ('81', '伯父');
INSERT INTO `edu_hb_jtgx` VALUES ('82', '伯母');
INSERT INTO `edu_hb_jtgx` VALUES ('83', '叔父');
INSERT INTO `edu_hb_jtgx` VALUES ('84', '婶母');
INSERT INTO `edu_hb_jtgx` VALUES ('85', '舅父');
INSERT INTO `edu_hb_jtgx` VALUES ('86', '舅母');
INSERT INTO `edu_hb_jtgx` VALUES ('87', '姨父');
INSERT INTO `edu_hb_jtgx` VALUES ('88', '姨母');
INSERT INTO `edu_hb_jtgx` VALUES ('89', '姑父');
INSERT INTO `edu_hb_jtgx` VALUES ('90', '姑母');
INSERT INTO `edu_hb_jtgx` VALUES ('91', '堂兄弟、堂姐妹');
INSERT INTO `edu_hb_jtgx` VALUES ('92', '堂兄弟、堂姐妹');
INSERT INTO `edu_hb_jtgx` VALUES ('93', '侄子');
INSERT INTO `edu_hb_jtgx` VALUES ('94', '侄女');
INSERT INTO `edu_hb_jtgx` VALUES ('95', '外甥');
INSERT INTO `edu_hb_jtgx` VALUES ('96', '外甥女');
INSERT INTO `edu_hb_jtgx` VALUES ('97', '其他亲属');
INSERT INTO `edu_hb_jtgx` VALUES ('99', '非亲属');