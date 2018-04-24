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
DROP TABLE IF EXISTS edu_hb_jhwcqk;
CREATE TABLE edu_hb_jhwcqk (
  `DM` char(1) DEFAULT NULL,
  `MC` varchar(20) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[JHWCQK计划完成情况代码]本代码采用顺序码，用一位数字表示';

-- ----------------------------
-- Records of edu_hb_jhwcqk
-- ----------------------------
INSERT INTO `edu_hb_jhwcqk` VALUES ('1', '提前完成');
INSERT INTO `edu_hb_jhwcqk` VALUES ('2', '如期执行');
INSERT INTO `edu_hb_jhwcqk` VALUES ('3', '未完成计划');
INSERT INTO `edu_hb_jhwcqk` VALUES ('4', '撤消或未进行');
INSERT INTO `edu_hb_jhwcqk` VALUES ('5', '正在进行');