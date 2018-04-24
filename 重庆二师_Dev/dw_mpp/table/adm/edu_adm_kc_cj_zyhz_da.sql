/*
#  DESCRIPTION: 专业成绩挂科信息汇总表adm
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
DROP TABLE IF EXISTS ADM.EDU_ADM_KC_CJ_ZYHZ_DA;
CREATE TABLE IF NOT EXISTS ADM.EDU_ADM_KC_CJ_ZYHZ_DA(
  "ZYM" varchar(10) DEFAULT NULL COMMENT '专业码',
  "PJCJ" decimal(10,2) DEFAULT NULL COMMENT '专业平均成绩',
  "GKS" DECIMAL(10, 2) DEFAULT NULL COMMENT '专业挂科数',
  "PJCJ_HIGH" decimal(10,2) DEFAULT NULL COMMENT '该专业平均成绩最高值',
  "PJCJ_LOW" decimal(10,2) DEFAULT NULL COMMENT '该专业平均成绩最低值',
  "GKS_HIGH" DECIMAL(10, 2) DEFAULT NULL COMMENT '该专业挂科数最高值',
  "GKS_LOW" DECIMAL(10, 2) DEFAULT NULL COMMENT '该专业挂科数最低值'
) DEFAULT CHARSET=utf8 COMMENT='专业成绩挂科信息汇总表adm';
