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
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/


-- ----------------------------
-- Table structure for edu_hb_ssmzsyjxms
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_ssmzsyjxms;
CREATE TABLE edu_hb_ssmzsyjxms (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[少数民族双语教学模式代码]。';

-- ----------------------------
-- Records of edu_hb_ssmzsyjxms
-- ----------------------------
INSERT INTO `edu_hb_ssmzsyjxms` VALUES ('1', '一类模式');
INSERT INTO `edu_hb_ssmzsyjxms` VALUES ('2', '二类模式');
INSERT INTO `edu_hb_ssmzsyjxms` VALUES ('3', '三类模式');

