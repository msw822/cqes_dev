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
DROP TABLE IF EXISTS `edu_adm_qd_grhz_da`;
CREATE TABLE IF NOT exists "edu_adm_qd_grhz_da" (
  "XH" varchar(20) DEFAULT NULL,
  "ZQCS" int(11) DEFAULT NULL COMMENT '准签次数',
  "CDCS" int(11) DEFAULT NULL COMMENT '迟到次数',
  "KKCS" int(11) DEFAULT NULL COMMENT '旷课次数',
  "QJCS" int(11) DEFAULT NULL COMMENT '请假次数',
  "ZYM" varchar(50) DEFAULT NULL COMMENT '专业码',
  "ZQCS_PM" varchar(10) DEFAULT NULL COMMENT '准签次数排名',
  "ZQCS_JBB" DECIMAL(10, 2) COMMENT '准签次数击败百分比'
)DEFAULT CHARSET=utf8 COMMENT='签到数据个人汇总';
