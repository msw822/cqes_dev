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
DROP TABLE IF EXISTS ADM.EDU_ADM_SWSDTJ;
CREATE TABLE
IF NOT EXISTS ADM.EDU_ADM_SWSDTJ(
  "XH" varchar(50) DEFAULT NULL COMMENT '学号/教工号',
  "SWSJ" varchar(8) NOT NULL COMMENT '上网开始时间',
  "XWSJ" varchar(8) NOT NULL COMMENT '上网结束时间',
  "ZSWSC" decimal(42,0) DEFAULT NULL COMMENT '总时长'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='上网时段统计表adm';
