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
DROP TABLE IF EXISTS ADM.EDU_ADM_KC_CJ_ZY_DA;
CREATE TABLE IF NOT EXISTS ADM.EDU_ADM_KC_CJ_ZY_DA(
  "XN" varchar(30) NOT NULL COMMENT '学号',
  "XQM" varchar(1) NOT NULL COMMENT '学期码',
  "ZYM" varchar(10) DEFAULT NULL COMMENT '专业码',
  "PJCJ" decimal(10,2) DEFAULT NULL COMMENT '专业平均成绩',
  "GKS" int DEFAULT NULL COMMENT '专业挂科数'
) DEFAULT CHARSET=utf8 COMMENT='专业学期成绩挂科信息adm表';
