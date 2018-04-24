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
DROP TABLE IF EXISTS `edu_adm_zyhz_da`;
CREATE TABLE IF NOT exists adm.edu_adm_zyhz_da (
  "ZYM" varchar(10) DEFAULT NULL COMMENT '专业码',
  "PJCJ" decimal(10,2) DEFAULT NULL COMMENT '专业平均成绩',
  "GKS" decimal(10,2) DEFAULT NULL COMMENT '专业挂科数',
  "ZQCS" decimal(10,2) DEFAULT NULL COMMENT '准签次数',
  "CDCS" decimal(10,2) DEFAULT NULL COMMENT '迟到次数',
  "KKCS" decimal(10,2) DEFAULT NULL COMMENT '旷课次数',
  "QJCS" decimal(10,2) DEFAULT NULL COMMENT '请假次数',
  "XF_ZYJE" decimal(36,6) DEFAULT NULL COMMENT '专业均消费金额',
  "SW_ZSC" decimal(10,0) DEFAULT NULL COMMENT '专业均上网总时长(秒)',
  "TS_JSCES" int(4) DEFAULT NULL COMMENT '借书册数',
  "PJCJ_HIGH" decimal(10,2) DEFAULT NULL COMMENT '该专业平均成绩最高值',
  "PJCJ_LOW" decimal(10,2) DEFAULT NULL COMMENT '该专业平均成绩最低值',
  "GKS_HIGH" decimal(10,2) DEFAULT NULL COMMENT '该专业挂科数最高值',
  "GKS_LOW" decimal(10,2) DEFAULT NULL COMMENT '该专业挂科数最低值',
  "ZQCS_HIGH" decimal(10,2) DEFAULT NULL COMMENT '准签次数最高值',
  "ZQCS_LOW" decimal(10,2) DEFAULT NULL COMMENT '准签次数最低值',
  "XFJE_HIGH" decimal(36,6) DEFAULT NULL COMMENT '专业均消费金额最高值',
  "XFJE_LOW" decimal(36,6) DEFAULT NULL COMMENT '专业均消费金额最低值',
  "SWZSC_HIGH" decimal(10,0) DEFAULT NULL COMMENT '专业均上网总时长(秒)最高值',
  "SWZSC_LOW" decimal(10,0) DEFAULT NULL COMMENT '专业均上网总时长(秒)最低值',
  "JSCES_HIGH" int(4) DEFAULT NULL COMMENT '借书册数最高值',
  "JSCES_LOW" int(4) DEFAULT NULL COMMENT '借书册数最低值'
 )CHARSET=utf8 COMMENT='专业数据汇总';
