/*
#  DESCRIPTION: 校区信息表
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
use fdm;
DROP TABLE IF EXISTS EDU_dim_BJXX;
CREATE TABLE
IF NOT EXISTS EDU_dim_BJXX (
  `BH` VARCHAR(20) NOT NULL COMMENT '班号',
  `BJMC` VARCHAR(20) COMMENT '班级名称',
  `BJJC` VARCHAR(10) COMMENT '班级简称',
  `JBNY` VARCHAR(10) DEFAULT NULL COMMENT '建班年月 格式YYYY-MM-DD',
  `SSNJ` varchar(10) COMMENT'所属年级',
  `BZRGH` varchar(20)	COMMENT '班主任工号',
  `BZXH`	VARCHAR(20) COMMENT '班长学号',
  `FDYH`	VARCHAR(20) COMMENT '辅导员号',
  `SFDDB`	VARCHAR(1) COMMENT '是否订单班,本数据项只适用于高职院校,1是,0:否',
  `SSYXM` varchar(10) COMMENT '所属学院码,见[edu_dim_dw]', 
  `SSYCMC` VARCHAR(40) COMMENT '所属学院名称', 
  `SSZYM` VARCHAR(8)  DEFAULT NULL COMMENT '（所属)专业号,学校自编,见[edu_dim_zyxx]',
  `SSZYMC` VARCHAR(60) DEFAULT NULL COMMENT '所属专业名称',
  `RZND` VARCHAR(6) COMMENT '入学年份,YYYYMM',
  `XN`	VARCHAR(9) COMMENT '学年(度),格式：YYYY-YYYY,如:2001-2002',
  `XZ` VARCHAR(5) COMMENT '学制',
  `CREATED_TIME` VARCHAR(20) COMMENT '创建时间',
  `MODIFIED_TIME` VARCHAR(20) COMMENT '修改时间'
) DEFAULT CHARSET=utf8 COMMENT = '[班级信息表]本数据类规定了有关（行政）班级的基本数据项';