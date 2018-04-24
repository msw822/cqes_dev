/*
#  DESCRIPTION: 高校课程成绩基本信息表
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
DROP TABLE IF EXISTS fdm.edu_fdm_kc_cjjbxx;
CREATE TABLE IF NOT EXISTS fdm.edu_fdm_kc_cjjbxx (
  `XN` varchar(30) NOT NULL COMMENT '学年（度）',
  `XQM` varchar(64) NOT NULL COMMENT '学期码',
  `KSRQ` varchar(8) COMMENT '考试日期，格式yyyymmdd',
  `XH` varchar(20) NOT NULL default '' COMMENT '学号',
  `KCH` varchar(256) COMMENT '课程号',
  `PSCJ` varchar(20) COMMENT '平时成绩',
  `KSFSM` varchar(64) COMMENT '考试方式码',
  `KSXZM` varchar(64) COMMENT '考试性质码',
  `KSXSM` varchar(64) COMMENT '考试形式码',
  `FSLKSCJ` decimal(3,1) COMMENT '分数类考试成绩',
  `DJLKSCJ` varchar(20) COMMENT '等级类考试成绩',
  `KCCJ` varchar(10) COMMENT '课程成绩',
  `ZSCJ` decimal(4,1) DEFAULT NULL COMMENT '折算成绩',
  `KCCJ_JG` decimal(4,1) DEFAULT NULL COMMENT '根据ZSCJ、KCCJ的规则计算获得的学分',
  `KCDJCJM` varchar(20) COMMENT '课程等级成绩码',
  `RKJSGH` varchar(100) COMMENT '任课教师工号',
  `CJLRRQ` varchar(100) COMMENT '成绩录入日期，格式yyyymmdd',
  `CJLRSJ` varchar(20) COMMENT '成绩录入时间，格式yyyy-mm-dd hh:mm:ss',                                             
  `QZCJ` VARCHAR(100) DEFAULT NULL COMMENT '期中成绩',                         
  `QMCJ` VARCHAR(100) DEFAULT NULL COMMENT '期末成绩',                         
  `SYCJ` VARCHAR(100) DEFAULT NULL COMMENT '实验成绩',
  `BJH_KC` VARCHAR(60)  COMMENT '班级代码,关联课程表得到的',
  `JXBH` VARCHAR(50) COMMENT '教学班号',
  `ZYM_XS`  VARCHAR(20) COMMENT '非必须,专业码,使用该表，关联学生表得到的',
  `SZYXM_XS` VARCHAR(20) COMMENT '非必须,院系码,使用该表,如果为空,学生表关联',
  `ZYM_KC`  VARCHAR(20) COMMENT '专业码,侧重于班级划分的',
  `XF` decimal(5,1) DEFAULT NULL COMMENT '课程表-学分',
  `XF_HD` decimal(5,1) DEFAULT NULL COMMENT '学分获得(根据ZSCJ、KCCJ的规则计算获得的)',
  `XS` decimal(5,1) DEFAULT NULL COMMENT '课程表-学时',
  `JD` decimal(5,2) DEFAULT NULL COMMENT '课程表-绩点',
  `KCXZM` VARCHAR(20) COMMENT '课程表-课程性质码，可以拿课程号关联课程表',
  `KCLBM` VARCHAR(20) COMMENT '课程表-课程类别码，可以拿课程号关联课程表',
  `KCGSM` VARCHAR(20) COMMENT '课程表-课程归属码',
  `PM` int(4) COMMENT '成绩排名'
) DISTRIBUTED BY('KCH') DEFAULT CHARSET=utf8 COMMENT='[课程成绩基本信息]课程成绩基本信息表，同一学生同一课程可能会有多条记录。';