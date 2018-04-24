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
DROP TABLE IF EXISTS `edu_hb_ksxz`;
CREATE TABLE `edu_hb_ksxz` (
"DM" CHAR(2) NOT NULL COMMENT '代码',
"MC" VARCHAR(50) NOT NULL COMMENT '名称',
"SM" VARCHAR(100) NULL COMMENT '说明'
) DEFAULT CHARSET=utf8 COMMENT='[考试性质码]规定了学生参加某门课程考试的性质分类.第一位表示大类，第二位表示小类.'
;

-- ----------------------------
-- Records of T_ZXBZ_KSXZ
-- ----------------------------
INSERT INTO `edu_hb_ksxz` VALUES ('01', '正常考试',null);
INSERT INTO `edu_hb_ksxz` VALUES ('02', '缓考', '指因特殊原因未能参加正常考试的学生再给其一次考试机会');
INSERT INTO `edu_hb_ksxz` VALUES ('03', '旷考', '指无因特殊原因未请假而没能参加正常考试的');
INSERT INTO `edu_hb_ksxz` VALUES ('11', '补考一', '指学生正常考试成绩未及格，再给一次补考机会');
INSERT INTO `edu_hb_ksxz` VALUES ('12', '补考二', '指第一次补考仍未及格，再给第二次补考机会');
INSERT INTO `edu_hb_ksxz` VALUES ('13', '重修', '指有关课程考试未通过，必须重修（参加下一年级的听课、学习）后，再参加考试');
INSERT INTO `edu_hb_ksxz` VALUES ('14', '免修', '指有特殊原因，经教务部门认定可以不修某一（或某一些）课程，不影响毕业');
INSERT INTO `edu_hb_ksxz` VALUES ('21', '结业后回校补考', null);
INSERT INTO `edu_hb_ksxz` VALUES ('41', '国家级考试', null);
INSERT INTO `edu_hb_ksxz` VALUES ('99', '其他', null);