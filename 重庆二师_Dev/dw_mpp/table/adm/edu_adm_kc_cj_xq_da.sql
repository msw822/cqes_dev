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
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
*/
DROP TABLE IF EXISTS ADM.EDU_ADM_KC_CJ_XQ_DA;
CREATE TABLE IF NOT EXISTS ADM.EDU_ADM_KC_CJ_XQ_DA(
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "XN" varchar(30) NOT NULL COMMENT '学年',
  "XQM" varchar(1) NOT NULL COMMENT '学期码',
  "PJCJ" decimal(10,2) DEFAULT NULL COMMENT '平均成绩',
  "GKS" int DEFAULT '0' COMMENT '挂科数'
) DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='学生学期成绩挂科信息adm表';
