/*
#  DESCRIPTION: 图书借阅记录表
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
use fdm;
DROP TABLE IF EXISTS fdm.edu_fdm_ts_jyjl;
CREATE TABLE
IF NOT EXISTS fdm.edu_fdm_ts_jyjl (
  `TSTM` VARCHAR(20) NOT NULL COMMENT '图书条码',
  `TSMC`	VARCHAR(100) COMMENT '图书名称',
  `DZTM`	VARCHAR(20) NOT NULL COMMENT '读者条码',
  `SFRZH`	VARCHAR(20) COMMENT '身份认证号',
  `JSRQ`	VARCHAR(18) COMMENT '结束时间 YYYYMMDD HH:mm:ss',
  `YHRQ`	VARCHAR(18) COMMENT '归还时间 YYYYMMDD HH:mm:ss',
  `DZXM`	VARCHAR(40) COMMENT '读者姓名',
  `WJSJ`	VARCHAR(18) COMMENT '外借时间 YYYYMMDD HH:mm:ss',
  `XJCS`	tinyint(3) COMMENT '续借次数',
  `CSBM`	VARCHAR(20) COMMENT '库室编码',
  `CSMC`	VARCHAR(20) COMMENT '库室名称'
)DEFAULT CHARSET=utf8 COMMENT='图书借阅记录表';