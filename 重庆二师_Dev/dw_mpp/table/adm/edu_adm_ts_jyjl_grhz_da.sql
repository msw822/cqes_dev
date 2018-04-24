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
DROP TABLE IF EXISTS adm.edu_adm_ts_jyjl_grhz_da;
CREATE TABLE
IF NOT EXISTS adm.edu_adm_ts_jyjl_grhz_da (
  `XH`          VARCHAR(20)  COMMENT '学号、教工号',
  `ZYM`         VARCHAR (50) COMMENT '专业码',
  `TS_JSCIS`    int(4)  COMMENT '借书次数',
  `TS_JSCES`    int(4)  COMMENT '借书册数',
  `TS_JSCES_PM` varchar(10) DEFAULT NULL COMMENT '图书借书数量排名',
  `TS_JSCES_JBB` DECIMAL(10, 2) COMMENT '图书借书数量击败百分比'
)DEFAULT CHARSET=utf8 COMMENT='[图书借阅记录汇总统计]图书模型，每日全量更新';
