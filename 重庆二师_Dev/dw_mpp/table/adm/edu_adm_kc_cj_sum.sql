/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
use adm;
DROP TABLE IF EXISTS adm.edu_adm_kc_cj_sum;
CREATE TABLE
IF NOT EXISTS adm.edu_adm_kc_cj_sum(
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "ZYM" VARCHAR (8) COMMENT '专业码',
  "ZYM_MC" VARCHAR (200) COMMENT '专业名称',
  "LYDQM" VARCHAR (10) COMMENT '学生来源地区码,见中华人民共和国行政区划代码表',
  "LYDQM_SM" VARCHAR (200) COMMENT '来源地',
  "JGM" VARCHAR (10) COMMENT '籍贯码',
  "JGM_SM" VARCHAR (200) COMMENT '籍贯',
  "KC_ZKS" varchar(256) DEFAULT NULL COMMENT '总课程数',
  "KC_ZXS" decimal(5,1) DEFAULT NULL COMMENT '总学时',
  "KC_ZXF" decimal(5,1) DEFAULT NULL COMMENT '总学分',
  "KC_PJCJ" varchar(10) DEFAULT NULL COMMENT '课程平均分',
  "ZH_KCH" varchar(256) DEFAULT NULL COMMENT '最好成绩'
)DEFAULT CHARSET=utf8 COMMENT='[课程成绩记录]课程成绩汇总';
