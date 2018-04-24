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
DROP TABLE IF EXISTS edu_hb_xmjfly;
CREATE TABLE edu_hb_xmjfly (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(60) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='XMJFLY 项目经费来源代码，采用顺序码，用二位数字表示。';

-- ----------------------------
-- Records of edu_hb_xmjfly
-- ----------------------------
INSERT INTO `edu_hb_xmjfly` VALUES ('01', '主管部门专项费');
INSERT INTO `edu_hb_xmjfly` VALUES ('02', '国家发改委、科技部专项费');
INSERT INTO `edu_hb_xmjfly` VALUES ('04', '国家社科规划、基金项目经费');
INSERT INTO `edu_hb_xmjfly` VALUES ('05', '国家自然科学基金');
INSERT INTO `edu_hb_xmjfly` VALUES ('06', '中央、国家其他部门专项费');
INSERT INTO `edu_hb_xmjfly` VALUES ('07', '省、市、自治区专项费');
INSERT INTO `edu_hb_xmjfly` VALUES ('08', '地（市、州）专项费');
INSERT INTO `edu_hb_xmjfly` VALUES ('09', '县（区、旗）专项费');
INSERT INTO `edu_hb_xmjfly` VALUES ('10', '企、事业单位委托项目经费');
INSERT INTO `edu_hb_xmjfly` VALUES ('11', '各种收入中转为当年研究与发展经费');
INSERT INTO `edu_hb_xmjfly` VALUES ('12', '自筹经费');
INSERT INTO `edu_hb_xmjfly` VALUES ('13', '贷款');
INSERT INTO `edu_hb_xmjfly` VALUES ('14', '国外资金');
INSERT INTO `edu_hb_xmjfly` VALUES ('15', '港、澳、台地区资金');
INSERT INTO `edu_hb_xmjfly` VALUES ('99', '其他')