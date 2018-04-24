/*
#  DESCRIPTION: 所属行业码
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: KF.huanghui@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/03
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS `edu_hb_sshy`;
CREATE TABLE IF NOT EXISTS "edu_hb_sshy" (
  "DM" char(2) DEFAULT NULL,
  "MC" varchar(60) DEFAULT NULL
) ENGINE=EXPRESS DEFAULT CHARSET=utf8 COMMENT='[所属行业码]本码表为国民经济行业分类代码，引用自GB/T 4754-2011，只包含大类。';
-- ----------------------------
-- Records of edu_hb_syzc
-- ----------------------------
INSERT INTO `edu_hb_sshy` VALUES ('01', '农业');
INSERT INTO `edu_hb_sshy` VALUES ('02', '林业');
INSERT INTO `edu_hb_sshy` VALUES ('03', '畜牧业');
INSERT INTO `edu_hb_sshy` VALUES ('04', '渔业');
INSERT INTO `edu_hb_sshy` VALUES ('05', '农、林、牧、渔服务业');
INSERT INTO `edu_hb_sshy` VALUES ('06', '煤炭开采和洗选业');
INSERT INTO `edu_hb_sshy` VALUES ('07', '石油和天然气开采业');
INSERT INTO `edu_hb_sshy` VALUES ('08', '黑色金属矿采选业');
INSERT INTO `edu_hb_sshy` VALUES ('09', '有色金属矿采选业');
INSERT INTO `edu_hb_sshy` VALUES ('10', '非金属矿采选业');
INSERT INTO `edu_hb_sshy` VALUES ('11', '开采辅助活动');
INSERT INTO `edu_hb_sshy` VALUES ('12', '其他采矿业');
INSERT INTO `edu_hb_sshy` VALUES ('13', '农副食品加工业');
INSERT INTO `edu_hb_sshy` VALUES ('14', '食品制造业');
INSERT INTO `edu_hb_sshy` VALUES ('15', '酒、饮料和精制茶制造业');
INSERT INTO `edu_hb_sshy` VALUES ('16', '烟草制品业');
INSERT INTO `edu_hb_sshy` VALUES ('17', '纺织业');
INSERT INTO `edu_hb_sshy` VALUES ('18', '纺织服装、服饰业');
INSERT INTO `edu_hb_sshy` VALUES ('19', '皮革、毛皮、羽毛及其制品和制鞋业');
INSERT INTO `edu_hb_sshy` VALUES ('20', '木材加工和木、竹、藤、棕、草制品业');
INSERT INTO `edu_hb_sshy` VALUES ('21', '家具制造业');
INSERT INTO `edu_hb_sshy` VALUES ('22', '造纸及纸制品业');
INSERT INTO `edu_hb_sshy` VALUES ('23', '印刷和记录媒介复制业');
INSERT INTO `edu_hb_sshy` VALUES ('24', '文教、工美、体育和娱乐用品制造业');
INSERT INTO `edu_hb_sshy` VALUES ('25', '石油加工、炼焦和核燃料加工业');
INSERT INTO `edu_hb_sshy` VALUES ('26', '化学原料和化学制品制造业');
INSERT INTO `edu_hb_sshy` VALUES ('27', '医药制造业');
INSERT INTO `edu_hb_sshy` VALUES ('28', '化学纤维制造业');
INSERT INTO `edu_hb_sshy` VALUES ('29', '橡胶和塑料制品业');
INSERT INTO `edu_hb_sshy` VALUES ('30', '非金属矿物制品业');
INSERT INTO `edu_hb_sshy` VALUES ('31', '黑色金属冶炼和压延加工业');
INSERT INTO `edu_hb_sshy` VALUES ('32', '有色金属冶炼和压延加工业');
INSERT INTO `edu_hb_sshy` VALUES ('33', '金属制品业');
INSERT INTO `edu_hb_sshy` VALUES ('34', '通用设备制造业');
INSERT INTO `edu_hb_sshy` VALUES ('35', '专用设备制造业');
INSERT INTO `edu_hb_sshy` VALUES ('36', '汽车制造业');
INSERT INTO `edu_hb_sshy` VALUES ('37', '铁路、船舶、航空航天和其他运输设备制造业');
INSERT INTO `edu_hb_sshy` VALUES ('38', '电气机械及器材制造业');
INSERT INTO `edu_hb_sshy` VALUES ('39', '计算机、通信和其他电子设备制造业');
INSERT INTO `edu_hb_sshy` VALUES ('40', '仪器仪表制造业');
INSERT INTO `edu_hb_sshy` VALUES ('41', '其他制造业');
INSERT INTO `edu_hb_sshy` VALUES ('42', '废弃资源综合利用业');
INSERT INTO `edu_hb_sshy` VALUES ('43', '金属制品、机械和设备修理业');
INSERT INTO `edu_hb_sshy` VALUES ('44', '电力、热力生产和供应业');
INSERT INTO `edu_hb_sshy` VALUES ('45', '燃气生产和供应业');
INSERT INTO `edu_hb_sshy` VALUES ('46', '水的生产和供应业');
INSERT INTO `edu_hb_sshy` VALUES ('47', '房屋建筑业');
INSERT INTO `edu_hb_sshy` VALUES ('48', '土木工程建筑业');
INSERT INTO `edu_hb_sshy` VALUES ('49', '建筑安装业');
INSERT INTO `edu_hb_sshy` VALUES ('50', '建筑装饰和其他建筑业');
INSERT INTO `edu_hb_sshy` VALUES ('51', '批发业');
INSERT INTO `edu_hb_sshy` VALUES ('52', '零售业');
INSERT INTO `edu_hb_sshy` VALUES ('53', '铁路运输业');
INSERT INTO `edu_hb_sshy` VALUES ('54', '道路运输业');
INSERT INTO `edu_hb_sshy` VALUES ('55', '水上运输业');
INSERT INTO `edu_hb_sshy` VALUES ('56', '航空运输业');
INSERT INTO `edu_hb_sshy` VALUES ('57', '管道运输业');
INSERT INTO `edu_hb_sshy` VALUES ('58', '装卸搬运和运输代理业');
INSERT INTO `edu_hb_sshy` VALUES ('59', '仓储业');
INSERT INTO `edu_hb_sshy` VALUES ('60', '邮政业');
INSERT INTO `edu_hb_sshy` VALUES ('61', '住宿业');
INSERT INTO `edu_hb_sshy` VALUES ('62', '餐饮业');
INSERT INTO `edu_hb_sshy` VALUES ('63', '电信、广播电视和卫星传输服务');
INSERT INTO `edu_hb_sshy` VALUES ('64', '互联网和相关服务');
INSERT INTO `edu_hb_sshy` VALUES ('65', '软件和信息技术服务业');
INSERT INTO `edu_hb_sshy` VALUES ('66', '货币金融服务');
INSERT INTO `edu_hb_sshy` VALUES ('67', '资本市场服务');
INSERT INTO `edu_hb_sshy` VALUES ('68', '保险业');
INSERT INTO `edu_hb_sshy` VALUES ('69', '其他金融业');
INSERT INTO `edu_hb_sshy` VALUES ('70', '房地产业');
INSERT INTO `edu_hb_sshy` VALUES ('71', '租赁业');
INSERT INTO `edu_hb_sshy` VALUES ('72', '商务服务业');
INSERT INTO `edu_hb_sshy` VALUES ('73', '研究和试验发展');
INSERT INTO `edu_hb_sshy` VALUES ('74', '专业技术服务业');
INSERT INTO `edu_hb_sshy` VALUES ('75', '科技推广和应用服务业');
INSERT INTO `edu_hb_sshy` VALUES ('76', '水利管理业');
INSERT INTO `edu_hb_sshy` VALUES ('77', '生态保护和环境治理业');
INSERT INTO `edu_hb_sshy` VALUES ('78', '公共设施管理业');
INSERT INTO `edu_hb_sshy` VALUES ('79', '居民服务业');
INSERT INTO `edu_hb_sshy` VALUES ('80', '机动车、电子产品和日用产品修理业');
INSERT INTO `edu_hb_sshy` VALUES ('81', '其他服务业');
INSERT INTO `edu_hb_sshy` VALUES ('82', '教育');
INSERT INTO `edu_hb_sshy` VALUES ('83', '卫生');
INSERT INTO `edu_hb_sshy` VALUES ('84', '社会工作');
INSERT INTO `edu_hb_sshy` VALUES ('85', '新闻出版业');
INSERT INTO `edu_hb_sshy` VALUES ('86', '广播、电视、电影和影视录音制作业');
INSERT INTO `edu_hb_sshy` VALUES ('87', '文化艺术业');
INSERT INTO `edu_hb_sshy` VALUES ('88', '体育');
INSERT INTO `edu_hb_sshy` VALUES ('89', '娱乐业');
INSERT INTO `edu_hb_sshy` VALUES ('90', '中国共产党机关');
INSERT INTO `edu_hb_sshy` VALUES ('91', '国家机构');
INSERT INTO `edu_hb_sshy` VALUES ('92', '人民政协、民主党派');
INSERT INTO `edu_hb_sshy` VALUES ('93', '社会保障');
INSERT INTO `edu_hb_sshy` VALUES ('94', '群众团体、社会团体和其他成员组织');
INSERT INTO `edu_hb_sshy` VALUES ('95', '基层群众自治组织');
INSERT INTO `edu_hb_sshy` VALUES ('96', '国际组织');
