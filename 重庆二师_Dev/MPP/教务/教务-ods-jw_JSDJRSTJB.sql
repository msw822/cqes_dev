use ods;
DROP TABLE IF EXISTS ods.jw_JSDJRSTJB;
CREATE TABLE IF NOT EXISTS  ods.jw_JSDJRSTJB(
"XN" varchar(9) COMMENT '099学年',
"XQ" varchar(1) COMMENT '099学期',
"JSZGH" varchar(255) COMMENT '099教师职工号',
"KCDM" varchar(10) COMMENT '099课程代码',
"PJH" varchar(10) COMMENT '099评价号',
"DXDM" varchar(10) COMMENT '099对象代码',
"DJ" varchar(20) COMMENT '099等级',
"PJNR" varchar(250) COMMENT '099评价内容',
"RS" int COMMENT '课序号',
"BSX" varchar(20) 
)DEFAULT CHARSET=utf8 COMMENT='jw_JSDJRSTJB';


select * from ods.jw_JSDJRSTJB;