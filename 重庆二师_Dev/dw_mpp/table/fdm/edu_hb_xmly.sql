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
DROP TABLE IF EXISTS edu_hb_xmly;
CREATE TABLE edu_hb_xmly (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[XMLY项目来源代码]本代码代替2002年的DM-XMLY《项目来源代码》';

-- ----------------------------
-- Records of edu_hb_xmly
-- ----------------------------
INSERT INTO `edu_hb_xmly` VALUES ('01', '国家“973”项目');
INSERT INTO `edu_hb_xmly` VALUES ('02', '国家科技攻关项目');
INSERT INTO `edu_hb_xmly` VALUES ('03', '国家“863”项目');
INSERT INTO `edu_hb_xmly` VALUES ('04', '国家自然科学基金项目');
INSERT INTO `edu_hb_xmly` VALUES ('05', '主管部门科技项目');
INSERT INTO `edu_hb_xmly` VALUES ('06', '国家科技部');
INSERT INTO `edu_hb_xmly` VALUES ('07', '国家发改委');
INSERT INTO `edu_hb_xmly` VALUES ('08', '国家社科规划、基金项目');
INSERT INTO `edu_hb_xmly` VALUES ('09', '教育部人文、社科规划项目');
INSERT INTO `edu_hb_xmly` VALUES ('10', '高校古籍整理研究项目');
INSERT INTO `edu_hb_xmly` VALUES ('11', '中央、国家其他部委项目');
INSERT INTO `edu_hb_xmly` VALUES ('12', '国际合作项目');
INSERT INTO `edu_hb_xmly` VALUES ('13', '未知的性别');
INSERT INTO `edu_hb_xmly` VALUES ('14', '与港、澳、台合作项目');
INSERT INTO `edu_hb_xmly` VALUES ('15', '企、事业单位委托');
INSERT INTO `edu_hb_xmly` VALUES ('16', '外资项目');
INSERT INTO `edu_hb_xmly` VALUES ('17', '地（市、州）项目');
INSERT INTO `edu_hb_xmly` VALUES ('18', '县（区、旗）项目');
INSERT INTO `edu_hb_xmly` VALUES ('19', '学校自选项目');
INSERT INTO `edu_hb_xmly` VALUES ('20', '国防项目');
INSERT INTO `edu_hb_xmly` VALUES ('90', '非立项');
INSERT INTO `edu_hb_xmly` VALUES ('99', '其他');