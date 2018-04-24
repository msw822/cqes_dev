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
DROP TABLE IF EXISTS edu_hb_jkzk;
CREATE TABLE edu_hb_jkzk (
  `DM` char(2) DEFAULT NULL,
  `MC` varchar(20) DEFAULT NULL,
  `SM` VARCHAR(100) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[健康状况码]本代码引自GB/T 2261.3-2003.';

-- ----------------------------
-- Records of edu_hb_jkzk
-- ----------------------------
INSERT INTO `edu_hb_jkzk` VALUES ('1', '健康或良好','人体生理机能、营养、发育状况良好');
INSERT INTO `edu_hb_jkzk` VALUES ('2', '一般货较弱','人体生理机能、营养、发育状况正常，但身体体质较弱');
INSERT INTO `edu_hb_jkzk` VALUES ('3', '有慢性病','有慢性疾病');
INSERT INTO `edu_hb_jkzk` VALUES ('6', '残疾','心理、生理、人体结构上，某种组织、功能丧失或不正常，全部或部
分丧失以正常方式从事某种活动的人');
