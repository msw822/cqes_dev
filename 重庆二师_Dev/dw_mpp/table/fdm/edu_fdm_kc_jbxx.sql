/*
#  DESCRIPTION: 高校课程基本信息表
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
DROP TABLE IF EXISTS fdm.edu_fdm_kc_jbxx;
CREATE TABLE IF NOT EXISTS fdm.edu_fdm_kc_jbxx (
  `KCH` varchar(256) NOT NULL COMMENT '课程号',
  `KCMC` varchar(256) NOT NULL COMMENT '课程名称',
  `KCYWMC` varchar(256) DEFAULT NULL COMMENT '课程英文名称',
  `XF` double(5,1) DEFAULT NULL COMMENT '学分',
  `ZHXS` varchar(4) DEFAULT NULL COMMENT '周学时',
  `ZXS` double(4,1) DEFAULT NULL COMMENT '总学时',
  `LLXS` double(4,1) DEFAULT NULL COMMENT '理论学时',
  `SYXS` double(4,1) DEFAULT NULL COMMENT '实验学时',
  `KCJJ` varchar(4000) DEFAULT NULL COMMENT '课程简介',
  `JC` varchar(1000) DEFAULT NULL COMMENT '教材',
  `CKSM` varchar(1000) DEFAULT NULL COMMENT '参考书目',
  `KCFZRH` varchar(30) DEFAULT NULL COMMENT '课程负责人号',
  `KCKSDWH` varchar(30) DEFAULT NULL COMMENT '课程开设单位号',
  `SJXS` double(4,1) DEFAULT NULL COMMENT '实践学时',
  `KCXZ` varchar(10) DEFAULT NULL COMMENT '课程性质'
) DISTRIBUTED BY('KCH') DEFAULT CHARSET=utf8 COMMENT='[课程基本信息]关于每一门课程的详细信息';