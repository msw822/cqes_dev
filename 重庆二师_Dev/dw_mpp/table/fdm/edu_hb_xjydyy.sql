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
DROP TABLE IF EXISTS edu_hb_xjydyy;
CREATE TABLE edu_hb_xjydyy (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(40) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[学籍异动原因代码表]本代码采用二层二位数字码，第一位表示大类，第二位表示小类';

-- ----------------------------
-- Records of edu_hb_xjydyy
-- ----------------------------
INSERT INTO `edu_hb_xjydyy` VALUES ('01', '成绩优秀');
INSERT INTO `edu_hb_xjydyy` VALUES ('10', '疾病');
INSERT INTO `edu_hb_xjydyy` VALUES ('11', '精神疾病');
INSERT INTO `edu_hb_xjydyy` VALUES ('12', '传染疾病');
INSERT INTO `edu_hb_xjydyy` VALUES ('19', '其他疾病');
INSERT INTO `edu_hb_xjydyy` VALUES ('21', '自动退学');
INSERT INTO `edu_hb_xjydyy` VALUES ('22', '成绩太差');
INSERT INTO `edu_hb_xjydyy` VALUES ('23', '触犯刑法');
INSERT INTO `edu_hb_xjydyy` VALUES ('24', '休学创业');
INSERT INTO `edu_hb_xjydyy` VALUES ('25', '停学实践（求职）');
INSERT INTO `edu_hb_xjydyy` VALUES ('26', '家长病重');
INSERT INTO `edu_hb_xjydyy` VALUES ('27', '贫困');
INSERT INTO `edu_hb_xjydyy` VALUES ('28', '非留学出国（境）');
INSERT INTO `edu_hb_xjydyy` VALUES ('29', '自费出国退学');
INSERT INTO `edu_hb_xjydyy` VALUES ('30', '自费留学');
INSERT INTO `edu_hb_xjydyy` VALUES ('31', '休学期满未办理复学');
INSERT INTO `edu_hb_xjydyy` VALUES ('32', '恶意欠缴学费');
INSERT INTO `edu_hb_xjydyy` VALUES ('33', '超过最长学习期限未完成学业');
INSERT INTO `edu_hb_xjydyy` VALUES ('34', '应征入伍');

INSERT INTO `edu_hb_xjydyy` VALUES ('39', '其他原因退学');
INSERT INTO `edu_hb_xjydyy` VALUES ('40', '事故灾难致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('41', '溺水死亡');
INSERT INTO `edu_hb_xjydyy` VALUES ('42', '交通事故致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('43', '拥挤踩踏致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('44', '房屋倒塌致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('45', '坠楼坠崖致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('46', '中毒致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('47', '爆炸致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('50', '社会安全事件致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('51', '打架斗殴致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('52', '校园伤害致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('53', '刑事案件致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('54', '火灾致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('60', '自然灾害致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('61', '山体滑坡致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('62', '泥石流致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('63', '洪水致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('64', '地震致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('65', '暴雨致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('66', '冰雹致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('67', '雪灾致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('68', '龙卷风致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('70', '因病死亡');
INSERT INTO `edu_hb_xjydyy` VALUES ('71', '传染病致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('72', '猝死');
INSERT INTO `edu_hb_xjydyy` VALUES ('79', '其他疾病致死');
INSERT INTO `edu_hb_xjydyy` VALUES ('81', '自杀死亡');
INSERT INTO `edu_hb_xjydyy` VALUES ('89', '其他原因死亡');
INSERT INTO `edu_hb_xjydyy` VALUES ('99', '其他');