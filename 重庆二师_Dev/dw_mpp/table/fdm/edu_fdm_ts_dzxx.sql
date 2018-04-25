/*
#  DESCRIPTION: 读者信息表
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
DROP TABLE IF EXISTS fdm.edu_fdm_ts_dzxx;
CREATE TABLE
IF NOT EXISTS fdm.edu_fdm_ts_dzxx (
  `JSZH` VARCHAR(20) COMMENT '借书证号',
  `DZTM`	VARCHAR(20) COMMENT '读者条码',
  `XH` VARCHAR(20) NOT NULL COMMENT '学号',
  `SFZJH` VARCHAR (20) COMMENT '身份证件号',
  `YJ` bigint(11) COMMENT '押金',
  `KWJ` TINYINT(4) COMMENT '可外借数量',
  `YWJ`	TINYINT(4) COMMENT '已外借数量',
  `FZRQ` VARCHAR(8) COMMENT '发证日期',
  `SXRQ` VARCHAR(8) COMMENT '失效日期',
  `GSZX` VARCHAR(8) COMMENT '挂失注销',
  `GSRQ` VARCHAR(8) COMMENT '挂失日期',
  `QFK`	BIGINT(11) COMMENT '欠罚款,单位：分',
  `YE`	BIGINT(11) COMMENT '余额',
  `SCDGSJ` VARCHAR(18) COMMENT '上次到馆时间 YYYYMMDD HH:mm:ss',
  `LJWJCS` INT(8) COMMENT '累计外借册数',
  `LJCQCS` INT(8) COMMENT '累计超期册数',
  `LJJFK`	 YINT(8) COMMENT '累计交罚款',
  `LJPK`	BIGINT(11) COMMENT '累计赔款',
  `LJDGCS`	INT(4) COMMENT'累计到馆次数'
)DEFAULT CHARSET=utf8 COMMENT='[读者信息表]学生借阅情况的基础表';