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
DROP TABLE IF EXISTS edu_hb_js;
CREATE TABLE edu_hb_js (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[JS角色代码]采用三层三位数字码，第一位表示大类，第二位表示中类，第三位表示小类。';

-- ----------------------------
-- Records of edu_hb_js
-- ----------------------------
INSERT INTO `edu_hb_js` VALUES ('100', '独立完成人');
INSERT INTO `edu_hb_js` VALUES ('110', '项目主持人');
INSERT INTO `edu_hb_js` VALUES ('120', '项目主要负责人');
INSERT INTO `edu_hb_js` VALUES ('130', '项目主要参加者');
INSERT INTO `edu_hb_js` VALUES ('200', '独著人');
INSERT INTO `edu_hb_js` VALUES ('210', '主编');
INSERT INTO `edu_hb_js` VALUES ('220', '副主编');
INSERT INTO `edu_hb_js` VALUES ('230', '作者');
INSERT INTO `edu_hb_js` VALUES ('240', '编写者');
INSERT INTO `edu_hb_js` VALUES ('250', '译者');
INSERT INTO `edu_hb_js` VALUES ('310', '机构负责人');
INSERT INTO `edu_hb_js` VALUES ('320', '机构参加者');
INSERT INTO `edu_hb_js` VALUES ('410', '获奖成果负责人');
INSERT INTO `edu_hb_js` VALUES ('420', '获奖成果参加人');
INSERT INTO `edu_hb_js` VALUES ('510', '专利成果负责人');
INSERT INTO `edu_hb_js` VALUES ('520', '专利成果参加人');
INSERT INTO `edu_hb_js` VALUES ('610', '鉴定成果负责人');
INSERT INTO `edu_hb_js` VALUES ('620', '鉴定成果参加人');
INSERT INTO `edu_hb_js` VALUES ('710', '转让成果负责人');
INSERT INTO `edu_hb_js` VALUES ('720', '转让成果参加人');