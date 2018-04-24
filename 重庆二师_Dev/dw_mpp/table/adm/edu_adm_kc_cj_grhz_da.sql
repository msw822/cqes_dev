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
use adm;
DROP TABLE IF EXISTS ADM.EDU_ADM_KC_CJ_GRHZ_DA;
CREATE TABLE IF NOT EXISTS ADM.EDU_ADM_KC_CJ_GRHZ_DA(
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "ZYM" VARCHAR (50) COMMENT '专业码',
  "PJCJ" decimal(10,2) DEFAULT NULL COMMENT '个人平均成绩',
  "PJCJ_PM" varchar(10) DEFAULT NULL COMMENT '平均成绩排名',
  "PJCJ_JBB" DECIMAL(10, 2) COMMENT '平均成绩击败百分比',
  "GKS" DECIMAL(10, 2) DEFAULT NULL COMMENT '挂科数'
) DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='学生学期成绩挂科信息汇总表adm';
