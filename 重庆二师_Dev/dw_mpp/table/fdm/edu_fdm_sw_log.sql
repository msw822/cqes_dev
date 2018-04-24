/*
#  DESCRIPTION: 上网信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_SW_LOG;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_SW_LOG (
  "XH" varchar(50) NOT NULL COMMENT '学号',
  "LOGIN_TIME" varchar(20) DEFAULT NULL COMMENT '上网开始时间',
  "LOGOUT_TIME" varchar(20) DEFAULT NULL COMMENT '上网结束时间',
  "TIME_LONG" int(11) DEFAULT NULL COMMENT '上网总时长',
  "BYTES_IN" varchar(255) DEFAULT NULL COMMENT 'ipv4入流量(bytes)',
  "BYTES_OUT" varchar(255) DEFAULT NULL COMMENT 'ipv4出流量(bytes)',
  "BYTES_IN6" varchar(255) DEFAULT NULL COMMENT 'ipv6入流量(bytes)',
  "BYTES_OUT6" varchar(255) DEFAULT NULL COMMENT 'ipv6出流量(bytes)',
  "TOTAL_BYTES" varchar(255) DEFAULT NULL COMMENT '总流量(bytes)'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT = '上网信息表fdm';
