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
DROP TABLE IF EXISTS adm.edu_adm_ts_jyjl_zyhz_da;
CREATE TABLE
IF NOT EXISTS adm.edu_adm_ts_jyjl_zyhz_da (
  `ZYM`         VARCHAR (50) COMMENT '专业码',
  `TS_JSCES`    int(4)  COMMENT '专业人均借书册数',
  `JSCES_HIGH`  int(4)  COMMENT '该专业借书册数最高值',
  `JSCES_LOW`   int(4)  COMMENT '该专业借书册数最低值'
)DEFAULT CHARSET=utf8 COMMENT='[专业图书借阅记录汇总统计]图书模型，每日全量更新';
