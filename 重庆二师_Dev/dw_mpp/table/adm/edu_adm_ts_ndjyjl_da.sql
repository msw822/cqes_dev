/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wang.longfei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
use adm;
DROP TABLE IF EXISTS adm.edu_adm_ts_ndjyjl_da;
CREATE TABLE
IF NOT EXISTS adm.edu_adm_ts_ndjyjl_da (
  `XH`          VARCHAR(20)  COMMENT '学号、教工号',
  `TS_WJNF`     VARCHAR(4)  COMMENT '图书外借年份',
  `TS_JSCIS`    int(4)  COMMENT '借书次数',
  `TS_JSCES`    int(4)  COMMENT '借书册数'
)DEFAULT CHARSET=utf8 COMMENT='[图书借阅记录年度统计]图书模型，每日全量更新';