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
DROP TABLE IF EXISTS `edu_adm_qd_zyhz_da`;
CREATE TABLE IF NOT exists "edu_adm_qd_zyhz_da" (
  "ZYM" varchar(50) NOT NULL,
  "ZQCS" decimal(10,2) DEFAULT NULL COMMENT '准签次数',
  "CDCS" decimal(10,2)  DEFAULT NULL COMMENT '迟到次数',
  "KKCS" decimal(10,2)  DEFAULT NULL COMMENT '旷课次数',
  "QJCS" decimal(10,2)  DEFAULT NULL COMMENT '请假次数',
  "ZQCS_HIGH" decimal(10,2) DEFAULT NULL COMMENT '准签次数最高值',
  "ZQCS_LOW" decimal(10,2) DEFAULT NULL COMMENT '准签次数最低值'
) DEFAULT CHARSET=utf8 COMMENT='专业签到汇总数据';
