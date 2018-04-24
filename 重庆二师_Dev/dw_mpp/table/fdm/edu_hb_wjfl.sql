/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wu.yabing@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_wjfl
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_wjfl;
CREATE TABLE edu_hb_wjfl (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[文件分类代码]规定公文种类的划分。';

-- ----------------------------
-- Records of edu_hb_wjfl
-- ----------------------------
INSERT INTO `edu_hb_wjfl` VALUES ('01', '决议');
INSERT INTO `edu_hb_wjfl` VALUES ('02', '决定');
INSERT INTO `edu_hb_wjfl` VALUES ('03', '指示');
INSERT INTO `edu_hb_wjfl` VALUES ('04', '意见');
INSERT INTO `edu_hb_wjfl` VALUES ('05', '通知');
INSERT INTO `edu_hb_wjfl` VALUES ('06', '通报');
INSERT INTO `edu_hb_wjfl` VALUES ('07', '公告');
INSERT INTO `edu_hb_wjfl` VALUES ('08', '报告');
INSERT INTO `edu_hb_wjfl` VALUES ('09', '请示');
INSERT INTO `edu_hb_wjfl` VALUES ('10', '批复');
INSERT INTO `edu_hb_wjfl` VALUES ('11', '条例');
INSERT INTO `edu_hb_wjfl` VALUES ('12', '规定');
INSERT INTO `edu_hb_wjfl` VALUES ('13', '会议纪要');
INSERT INTO `edu_hb_wjfl` VALUES ('14', '简报');
INSERT INTO `edu_hb_wjfl` VALUES ('15', '函');
INSERT INTO `edu_hb_wjfl` VALUES ('16', '通告');
INSERT INTO `edu_hb_wjfl` VALUES ('17', '对外报文');
INSERT INTO `edu_hb_wjfl` VALUES ('18', '命令（令)');
INSERT INTO `edu_hb_wjfl` VALUES ('19', '公报');
INSERT INTO `edu_hb_wjfl` VALUES ('20', '议案');

