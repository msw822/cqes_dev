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
DROP TABLE IF EXISTS ADM.EDU_ADM_SWJZSD;
CREATE TABLE
IF NOT EXISTS ADM.EDU_ADM_SWJZSD(
  "XH" varchar(50) NOT NULL COMMENT '学号/教工号',
  "SW_JZSD" varchar(50) DEFAULT NULL COMMENT '上网集中时段'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='上网集中时段表adm';
