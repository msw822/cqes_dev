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
use tmp;
DROP TABLE IF EXISTS tmp.edu_tmp_ts_jyjl;
CREATE TABLE
IF NOT EXISTS tmp.edu_tmp_ts_jyjl (
`XH`          VARCHAR(20)  COMMENT '学号、教工号',
`TSLB_MC` VARCHAR(100) COMMENT '图书类别名称',
`CNTS` BIGINT(21) COMMENT '图书数量'
) DEFAULT CHARSET=utf8 COMMENT='图书借阅记录临时';