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
use gdm;
DROP TABLE IF EXISTS `edu_gdm_txr_da`;
CREATE TABLE IF NOT exists "edu_gdm_txr_da" (
  "XH" varchar(20) NOT NULL,
  "XM" varchar(50) DEFAULT NULL,
  "XH_TX" varchar(20) NOT NULL,
  "XM_TX" varchar(50) DEFAULT NULL,
  "TXCS" int(11) DEFAULT NULL COMMENT '同行次数',
  "TXLX" char(2) DEFAULT NULL COMMENT '同行类型',
  "GX" varchar(50) DEFAULT NULL
) ENGINE=EXPRESS DEFAULT CHARSET=utf8 TABLESPACE='sys_tablespace' COMMENT='同行人明细表';
