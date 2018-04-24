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
DROP TABLE IF EXISTS `edu_hb_mz`;
CREATE TABLE "edu_hb_mz" (
  `DM` varchar(2) NOT NULL COMMENT '代码',
  `MC` varchar(30) NOT NULL COMMENT '民族名称',
  `ZMDM` varchar(10) DEFAULT NULL COMMENT '名族拼音代码'
) DEFAULT CHARSET=utf8 COMMENT='[民族码表]本代码引自GB/T 3304-1991。';

-- ----------------------------
-- Records of edu_hb_mz
-- ----------------------------
INSERT INTO `edu_hb_mz` VALUES ('01', '汉族', 'HA');
INSERT INTO `edu_hb_mz` VALUES ('02', '蒙古族', 'MG');
INSERT INTO `edu_hb_mz` VALUES ('03', '回族', 'HU');
INSERT INTO `edu_hb_mz` VALUES ('04', '藏族', 'ZA');
INSERT INTO `edu_hb_mz` VALUES ('05', '维吾尔族', 'UG');
INSERT INTO `edu_hb_mz` VALUES ('06', '苗族', 'MH');
INSERT INTO `edu_hb_mz` VALUES ('07', '彝族', 'YI');
INSERT INTO `edu_hb_mz` VALUES ('08', '壮族', 'ZH');
INSERT INTO `edu_hb_mz` VALUES ('09', '布依族', 'BY');
INSERT INTO `edu_hb_mz` VALUES ('10', '朝鲜族', 'CS');
INSERT INTO `edu_hb_mz` VALUES ('11', '满族', 'MA');
INSERT INTO `edu_hb_mz` VALUES ('12', '侗族', 'DO');
INSERT INTO `edu_hb_mz` VALUES ('13', '瑶族', 'YA');
INSERT INTO `edu_hb_mz` VALUES ('14', '白族', 'BA');
INSERT INTO `edu_hb_mz` VALUES ('15', '土家族', 'TJ');
INSERT INTO `edu_hb_mz` VALUES ('16', '哈尼族', 'HN');
INSERT INTO `edu_hb_mz` VALUES ('17', '哈萨克族', 'KZ');
INSERT INTO `edu_hb_mz` VALUES ('18', '傣族', 'DA');
INSERT INTO `edu_hb_mz` VALUES ('19', '黎族', 'LI');
INSERT INTO `edu_hb_mz` VALUES ('20', '傈僳族', 'LS');
INSERT INTO `edu_hb_mz` VALUES ('21', '佤族', 'VA');
INSERT INTO `edu_hb_mz` VALUES ('22', '畲族', 'SH');
INSERT INTO `edu_hb_mz` VALUES ('23', '高山族', 'GS');
INSERT INTO `edu_hb_mz` VALUES ('24', '拉祜族', 'LG');
INSERT INTO `edu_hb_mz` VALUES ('25', '水族', 'SU');
INSERT INTO `edu_hb_mz` VALUES ('26', '东乡族', 'DX');
INSERT INTO `edu_hb_mz` VALUES ('27', '纳西族', 'NX');
INSERT INTO `edu_hb_mz` VALUES ('28', '景颇族', 'JP');
INSERT INTO `edu_hb_mz` VALUES ('29', '柯尔克孜族', 'KG');
INSERT INTO `edu_hb_mz` VALUES ('30', '土族', 'TU');
INSERT INTO `edu_hb_mz` VALUES ('31', '达斡尔族', 'DU');
INSERT INTO `edu_hb_mz` VALUES ('32', '仫佬族', 'ML');
INSERT INTO `edu_hb_mz` VALUES ('33', '羌族', 'QI');
INSERT INTO `edu_hb_mz` VALUES ('34', '布朗族', 'BL');
INSERT INTO `edu_hb_mz` VALUES ('35', '撒拉族', 'SL');
INSERT INTO `edu_hb_mz` VALUES ('36', '毛难族', 'MN');
INSERT INTO `edu_hb_mz` VALUES ('37', '仡佬族', 'GL');
INSERT INTO `edu_hb_mz` VALUES ('38', '锡伯族', 'XB');
INSERT INTO `edu_hb_mz` VALUES ('39', '阿昌族', 'AC');
INSERT INTO `edu_hb_mz` VALUES ('40', '普米族', 'PM');
INSERT INTO `edu_hb_mz` VALUES ('41', '塔吉克族', 'TA');
INSERT INTO `edu_hb_mz` VALUES ('42', '怒族', 'NU');
INSERT INTO `edu_hb_mz` VALUES ('43', '乌孜别克族', 'UZ');
INSERT INTO `edu_hb_mz` VALUES ('44', '俄罗斯族', 'RS');
INSERT INTO `edu_hb_mz` VALUES ('45', '鄂温克族', 'EW');
INSERT INTO `edu_hb_mz` VALUES ('46', '德昂族', 'DE');
INSERT INTO `edu_hb_mz` VALUES ('47', '保安族', 'BN');
INSERT INTO `edu_hb_mz` VALUES ('48', '裕固族', 'YG');
INSERT INTO `edu_hb_mz` VALUES ('49', '京族', 'GI');
INSERT INTO `edu_hb_mz` VALUES ('50', '塔塔尔族', 'TT');
INSERT INTO `edu_hb_mz` VALUES ('51', '独龙族', 'DR');
INSERT INTO `edu_hb_mz` VALUES ('52', '鄂伦春族', 'OR');
INSERT INTO `edu_hb_mz` VALUES ('53', '赫哲族', 'HZ');
INSERT INTO `edu_hb_mz` VALUES ('54', '门巴族', 'MB');
INSERT INTO `edu_hb_mz` VALUES ('55', '珞巴族', 'LB');
INSERT INTO `edu_hb_mz` VALUES ('56', '基诺族', 'JN');
INSERT INTO `edu_hb_mz` VALUES ('81', '穿青人族', 'CQ');
INSERT INTO `edu_hb_mz` VALUES ('97', '其他', 'QT');
INSERT INTO `edu_hb_mz` VALUES ('98', '外国血统中国籍人士', 'WG');